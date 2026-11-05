#include "gbafe.h"

void UnlinkProcess(struct Proc *);
struct Proc * AllocateProcess();
void FreeProcess(struct Proc * proc);
void InsertRootProcess(struct Proc * proc, s32 parent);
void InsertChildProcess(struct Proc * proc, struct Proc * parent);
void func_08004B84(ProcPtr proc);

#define PROC_COUNT 64

typedef bool (*BoolProcFunc)(ProcPtr);

struct Proc    EWRAM_DATA gProcs[PROC_COUNT] = {}; // sProcArray
struct Proc *  EWRAM_DATA gProcAllocList[PROC_COUNT + 1] = {}; // sProcAllocList
struct Proc ** EWRAM_DATA gProcAllocHead = NULL; // sProcAllocListHead
struct Proc *  EWRAM_DATA gProcTreeRoots[8] = {}; // gProcTreeRoots

void Proc_Init()
{
    int i;

    for (i = 0; i < PROC_COUNT; i++)
    {
        struct Proc * ptr = &gProcs[i];
        ptr->proc_script = 0;
        ptr->proc_scrCur = 0;
        ptr->proc_endCb = 0;
        ptr->proc_idleCb = 0;
        ptr->proc_name = 0;
        ptr->proc_parent = 0;
        ptr->proc_child = 0;
        ptr->proc_next = 0;
        ptr->proc_prev = 0;
        ptr->proc_sleepTime = 0;
        ptr->proc_mark = 0;
        ptr->proc_flags = 0;
        ptr->proc_lockCnt = 0;

        gProcAllocList[i] = ptr;
    }

    gProcAllocList[PROC_COUNT] = 0;
    gProcAllocHead = gProcAllocList;

    for (i = 0; i < 8; i++)
    {
        gProcTreeRoots[i] = 0;
    }
}

ProcPtr Proc_Start(const struct ProcCmd * script, ProcPtr parent)
{
    struct Proc * proc = AllocateProcess();
    proc->proc_script = script;
    proc->proc_scrCur = script;
    proc->proc_endCb = 0;
    proc->proc_idleCb = 0;
    proc->proc_parent = 0;
    proc->proc_child = 0;
    proc->proc_next = 0;
    proc->proc_prev = 0;
    proc->proc_sleepTime = 0;
    proc->proc_mark = 0;
    proc->proc_lockCnt = 0;
    proc->proc_flags = 8;

    if ((s32)parent < 8)
    {
        InsertRootProcess(proc, (s32)parent);
    }
    else
    {
        InsertChildProcess(proc, parent);
    }

    func_08004B84(proc);
    proc->proc_flags &= 0xf7;

    return proc;
}

ProcPtr Proc_StartBlocking(const struct ProcCmd * script, ProcPtr parent)
{
    struct Proc * proc = Proc_Start(script, parent);

    if (!proc->proc_script)
    {
        return 0;
    }

    proc->proc_flags |= 2;
    ((struct Proc *)proc->proc_parent)->proc_lockCnt++;

    return proc;
}

void DeleteProcessRecursive(struct Proc * proc)
{
    if (proc->proc_prev)
    {
        DeleteProcessRecursive(proc->proc_prev);
    }

    if (proc->proc_child)
    {
        DeleteProcessRecursive(proc->proc_child);
    }

    if (!(proc->proc_flags & 1))
    {
        if (proc->proc_endCb)
        {
            proc->proc_endCb(proc);
        }

        FreeProcess(proc);

        proc->proc_script = 0;
        proc->proc_idleCb = 0;

        proc->proc_flags |= 1;

        if (proc->proc_flags & 2)
        {
            ((struct Proc *)proc->proc_parent)->proc_lockCnt--;
        }
    }
}

void Proc_End(ProcPtr proc)
{
    if (proc)
    {
        UnlinkProcess(proc);
        DeleteProcessRecursive(proc);
    }
}

struct Proc * AllocateProcess()
{
    ProcPtr proc = *gProcAllocHead;
    gProcAllocHead++;

    return proc;
}

void FreeProcess(struct Proc * proc)
{
    gProcAllocHead--;
    *gProcAllocHead = proc;
}

void InsertRootProcess(struct Proc * proc, s32 parent)
{
    struct Proc * ptr = *(gProcTreeRoots + parent);

    if (ptr != 0)
    {
        ptr->proc_next = proc;
        proc->proc_prev = ptr;
    }

    proc->proc_parent = (ProcPtr)parent;
    gProcTreeRoots[parent] = proc;
}

void InsertChildProcess(struct Proc * proc, struct Proc * parent)
{
    if (parent->proc_child)
    {
        ((struct Proc *)parent->proc_child)->proc_next = proc;
        proc->proc_prev = parent->proc_child;
    }

    parent->proc_child = proc;
    proc->proc_parent = parent;
}

void UnlinkProcess(struct Proc * proc)
{
    if (proc->proc_next)
    {
        ((struct Proc *)proc->proc_next)->proc_prev = proc->proc_prev;
    }

    if (proc->proc_prev)
    {
        ((struct Proc *)proc->proc_prev)->proc_next = proc->proc_next;
    }

    if ((s32)proc->proc_parent > 8)
    {
        if (((struct Proc *)proc->proc_parent)->proc_child == proc)
        {
            ((struct Proc *)proc->proc_parent)->proc_child = proc->proc_prev;
        }
    }
    else
    {
        s32 idx = (s32)proc->proc_parent;
        if (*(idx + gProcTreeRoots) == proc)
        {
            gProcTreeRoots[idx] = proc->proc_prev;
        }
    }

    proc->proc_next = 0;
    proc->proc_prev = 0;
}

void RunProcessRecursive(struct Proc * proc)
{
    if (proc->proc_prev)
    {
        RunProcessRecursive(proc->proc_prev);
    }

    if (proc->proc_lockCnt != 0 || (proc->proc_flags & 8))
    {
        goto skip_exec;
    }

    if (!proc->proc_idleCb)
    {
        func_08004B84(proc);
    }

    if (proc->proc_idleCb)
    {
        proc->proc_idleCb(proc);
    }

    if (proc->proc_flags & 1)
    {
        return;
    }

skip_exec:
    if (proc->proc_child)
    {
        RunProcessRecursive(proc->proc_child);
    }
}

void Proc_Run(ProcPtr proc)
{
    if (proc)
    {
        RunProcessRecursive(proc);
    }
}

void Proc_Break(ProcPtr proc)
{
    ((struct Proc*)proc)->proc_idleCb = 0;
}

ProcPtr Proc_Find(const struct ProcCmd * script)
{
    int i;
    struct Proc * ptr = gProcs;

    for (i = 0; i < PROC_COUNT; i++, ptr++)
    {
        if (ptr->proc_script == script)
        {
            return ptr;
        }
    }

    return 0;
}

ProcPtr Proc_FindNonBlocked(const struct ProcCmd * script)
{
    int i;
    struct Proc * ptr = gProcs;

    for (i = 0; i < PROC_COUNT; i++, ptr++)
    {
        if (ptr->proc_script == script && ptr->proc_lockCnt == 0)
        {
            return ptr;
        }
    }

    return 0;
}

ProcPtr func_080046F4(int mark)
{
    int i;
    struct Proc * ptr = gProcs;

    for (i = 0; i < PROC_COUNT; i++, ptr++)
    {
        if (ptr->proc_script && ptr->proc_mark == mark)
        {
            return ptr;
        }
    }

    return 0;
}

void Proc_Goto(ProcPtr proc, int label)
{
    struct Proc * p = ((struct Proc*)proc);

    const struct ProcCmd * cmd_ptr = p->proc_script;
    while (cmd_ptr->opcode != 0)
    {
        if (cmd_ptr->opcode == 0xB && cmd_ptr->dataImm == label)
        {
            p->proc_scrCur = cmd_ptr;
            p->proc_idleCb = 0;
            return;
        }

        cmd_ptr++;
    }
}

void func_08004758(ProcPtr proc, const struct ProcCmd * script)
{
    struct Proc * p = ((struct Proc*)proc);

    p->proc_scrCur = script;
    p->proc_idleCb = 0;
}

void Proc_Mark(ProcPtr proc, u8 mark)
{
    struct Proc * p = ((struct Proc*)proc);

    p->proc_mark = mark;
}

void func_08004768(ProcPtr proc, ProcFunc func)
{
    struct Proc * p = ((struct Proc*)proc);

    p->proc_endCb = func;
}

void Proc_ForAll(ProcFunc func)
{
    int i;
    struct Proc * ptr = gProcs;

    for (i = 0; i < PROC_COUNT; i++, ptr++)
    {
        if (ptr->proc_script)
        {
            func(ptr);
        }
    }
}

void Proc_ForEach(const struct ProcCmd * script, ProcFunc func)
{
    int i;
    struct Proc * ptr = gProcs;

    for (i = 0; i < PROC_COUNT; i++, ptr++)
    {
        if (ptr->proc_script == script)
        {
            func(ptr);
        }
    }
}

void func_080047BC(int mark, ProcFunc func)
{
    int i;
    struct Proc * ptr = gProcs;

    for (i = 0; i < PROC_COUNT; i++, ptr++)
    {
        if (ptr->proc_mark == mark)
        {
            func(ptr);
        }
    }
}

void Proc_BlockEachMarked(int mark)
{
    int i;
    struct Proc * ptr = gProcs;

    for (i = 0; i < PROC_COUNT; i++, ptr++)
    {
        if (ptr->proc_mark == mark)
        {
            ptr->proc_lockCnt++;
        }
    }
}

void Proc_UnblockEachMarked(int mark)
{
    int i;
    struct Proc * ptr = gProcs;

    for (i = 0; i < PROC_COUNT; i++, ptr++)
    {
        if (ptr->proc_mark == mark)
        {
            if (ptr->proc_lockCnt)
            {
                ptr->proc_lockCnt--;
            }
        }
    }
}

void Proc_EndEachMarked(int mark)
{
    int i;
    struct Proc * ptr = gProcs;

    for (i = 0; i < PROC_COUNT; i++, ptr++)
    {
        if (ptr->proc_mark == mark)
        {
            Proc_End(ptr);
        }
    }
}

void EndProc(ProcPtr proc)
{
    Proc_End(proc);
}

void Proc_EndEach(const struct ProcCmd * script)
{
    Proc_ForEach(script, EndProc);
}

void ClearNativeCallback(ProcPtr proc)
{
    Proc_Break(proc);
}

void Proc_BreakEach(const struct ProcCmd * script)
{
    Proc_ForEach(script, ClearNativeCallback);
}

void ForAllFollowingProcs(ProcPtr proc, ProcFunc func)
{
    struct Proc * p = ((struct Proc*)proc);

    if (p->proc_prev)
    {
        ForAllFollowingProcs(p->proc_prev, func);
    }

    func(proc);

    if (p->proc_child)
    {
        ForAllFollowingProcs(p->proc_child, func);
    }
}

void func_080048C0(ProcPtr proc, ProcFunc func)
{
    struct Proc * p = ((struct Proc*)proc);

    func(proc);

    if (p->proc_child)
    {
        ForAllFollowingProcs(p->proc_child, func);
    }
}

bool func_080048DC(ProcPtr proc)
{
    Proc_End(proc);
    return 0;
}

bool func_080048E8(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    p->proc_name = p->proc_scrCur->dataPtr;
    p->proc_scrCur++;

    return 1;
}

bool func_080048F8(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    ProcFunc func = p->proc_scrCur->dataPtr;
    p->proc_scrCur++;
    func(p);

    return 1;
}

bool func_0800490C(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    BoolProcFunc func = p->proc_scrCur->dataPtr;
    p->proc_scrCur++;

    return func(p);
}

bool func_08004924(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    short arg = p->proc_scrCur->dataImm;
    bool(* func)(short, ProcPtr) = p->proc_scrCur->dataPtr;
    p->proc_scrCur++;

    return func(arg, proc);
}

bool func_08004944(ProcPtr proc)
{
    bool ret;
    struct Proc * p = ((struct Proc*)proc);

    BoolProcFunc func = p->proc_scrCur->dataPtr;
    p->proc_scrCur++;

    ret = func(p);
    if (ret == TRUE)
    {
        p->proc_scrCur--;
        return FALSE;
    }

    return TRUE;
}

bool func_08004970(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    p->proc_idleCb = p->proc_scrCur->dataPtr;
    p->proc_scrCur++;

    return 0;
}

bool func_08004980(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    ProcFunc func = p->proc_scrCur->dataPtr;
    func_08004768(p, func);
    p->proc_scrCur++;

    return 1;
}

bool func_0800499C(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    const struct ProcCmd * cmd_ptr = p->proc_scrCur->dataPtr;
    Proc_Start(cmd_ptr, p);
    p->proc_scrCur++;

    return 1;
}

bool func_080049B8(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    const struct ProcCmd * cmd_ptr = p->proc_scrCur->dataPtr;
    Proc_StartBlocking(cmd_ptr, p);
    p->proc_scrCur++;

    return 0;
}

bool func_080049D4(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    const struct ProcCmd * cmd_ptr = p->proc_scrCur->dataPtr;
    Proc_Start(cmd_ptr, (ProcPtr)(s32)p->proc_sleepTime);
    p->proc_scrCur++;

    return 1;
}

bool func_080049F4(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    const struct ProcCmd * cmd_ptr = p->proc_scrCur->dataPtr;
    s32 ret = (s32)Proc_Find(cmd_ptr);
    if (((0 - ret) | ret) < 0) // ???
    {
        return 0;
    }

    p->proc_scrCur++;
    return 1;
}

bool func_08004A1C(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    const struct ProcCmd * cmd_ptr = p->proc_scrCur->dataPtr;
    Proc_EndEach(cmd_ptr);

    p->proc_scrCur++;
    return 1;
}

bool func_08004A38(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    const struct ProcCmd * cmd_ptr = p->proc_scrCur->dataPtr;
    Proc_BreakEach(cmd_ptr);

    p->proc_scrCur++;
    return 1;
}

bool func_08004A54(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    p->proc_scrCur++;
    return 1;
}

bool func_08004A60(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    const struct ProcCmd * cmd_ptr = p->proc_scrCur->dataPtr;
    func_08004758(proc, cmd_ptr);

    return 1;
}

bool func_08004A70(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    Proc_Goto(proc, p->proc_scrCur->dataImm);

    return 1;
}

void func_08004A84(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    if (--p->proc_sleepTime == 0)
    {
        Proc_Break(p);
    }
}

bool func_08004AA0(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    const struct ProcCmd **proc_scrCur = &p->proc_scrCur;
    if ((*proc_scrCur)->dataImm)
    {
        p->proc_sleepTime = (*proc_scrCur)->dataImm;
        p->proc_idleCb = func_08004A84;
    }

    (*proc_scrCur)++;
    return 0;
}

bool func_08004AC4(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    p->proc_mark = p->proc_scrCur->dataImm;
    p->proc_scrCur++;

    return 1;
}

bool func_08004AD8(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    p->proc_scrCur++;

    return 1;
}

bool func_08004AE4(ProcPtr proc)
{
    return 0;
}

bool func_08004AE8(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);
    struct Proc * ptr = gProcs;
    int i, j;

    for (i = 0, j = 0; i < PROC_COUNT; i++, ptr++)
    {
        if (ptr->proc_script == p->proc_script)
        {
            j++;
        }
    }

    if (j > 1)
    {
        Proc_End(p);
        return 0;
    }
    else
    {
        p->proc_scrCur++;
        return 1;
    }
}

bool func_08004B28(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);
    struct Proc * ptr = gProcs;
    int i;

    for (i = 0; i < PROC_COUNT; i++, ptr++)
    {
        if (ptr != p && ptr->proc_script == p->proc_script)
        {
            Proc_End(ptr);
            break;
        }
    }

    p->proc_scrCur++;
    return 1;
}

bool func_08004B60(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    p->proc_scrCur++;

    return 1;
}

bool func_08004B6C(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    p->proc_flags |= 4;
    p->proc_scrCur++;

    return 1;
}

BoolProcFunc gUnk_08B858A4[] =
{
    func_080048DC,
    func_080048E8,
    func_080048F8,
    func_08004970,
    func_08004980,
    func_0800499C,
    func_080049B8,
    func_080049D4,
    func_080049F4,
    func_08004A1C,
    func_08004A38,
    func_08004A54,
    func_08004A70,
    func_08004A60,
    func_08004AA0,
    func_08004AC4,
    func_08004AE4,
    func_08004AE8,
    func_08004B6C,
    func_08004AD8,
    func_08004944,
    func_08004B60,
    func_0800490C,
    func_08004B28,
    func_08004924,
    func_08004A54,
};

void func_08004B84(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);

    if (p->proc_script
        && !p->proc_lockCnt
        && !p->proc_idleCb)
    {
        while (gUnk_08B858A4[p->proc_scrCur->opcode](p))
        {
            if (p->proc_script == 0)
            {
                return;
            }
        }
    }
}

void nullsub_2(ProcPtr proc)
{
}

void func_08004BD0(ProcPtr proc, int * a1)
{
    struct Proc * p = ((struct Proc*)proc);

    if (p->proc_prev)
    {
        func_08004BD0(p->proc_prev, a1);
    }

    nullsub_2(proc);

    if (p->proc_child)
    {
        *a1 += 2;
        func_08004BD0(p->proc_child, a1);
        *a1 -= 2;
    }
}

void func_08004C08(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);
    int i = 4;

    nullsub_2(p);

    if (p->proc_child)
    {
        i += 2;
        func_08004BD0(p->proc_child, &i);
        i -= 2;
    }
}

void nullsub_22(void)
{
}

void Proc_SetRepeatCb(ProcPtr proc, ProcFunc func)
{
    struct Proc * p = ((struct Proc*)proc);
    p->proc_idleCb = func;
}

void func_08004C44(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);
    p->proc_lockCnt++;
}

void func_08004C50(ProcPtr proc)
{
    struct Proc * p = ((struct Proc*)proc);
    p->proc_lockCnt--;
}

ProcPtr Proc_FindAfter(struct ProcCmd * script, struct Proc * proc)
{
    struct Proc * proc_ptr = proc;

    if (!proc_ptr)
    {
        proc_ptr = gProcs;
    }
    else
    {
        proc_ptr++;
    }

    while (proc_ptr < (struct Proc *)gProcAllocList)
    {
        if (proc_ptr->proc_script == script)
        {
            return proc_ptr;
        }

        proc_ptr++;
    }

    return 0;
}

struct Proc * Proc_FindAfterWithParent(struct Proc * proc, struct Proc * parent)
{
    struct Proc * proc_ptr = proc;

    if (!proc_ptr)
    {
        proc_ptr = gProcs;
    }
    else
    {
        proc_ptr++;
    }

    while (proc_ptr < (struct Proc *)gProcAllocList)
    {
        if (proc_ptr->proc_parent == parent)
        {
            return proc_ptr;
        }

        proc_ptr++;
    }

    return 0;
}

int func_08004CC4()
{
    int i = PROC_COUNT;
    struct Proc * ptr = gProcs;
    s32 target = (s32)ptr + 0x00001A94;

    do
    {
        if (ptr->proc_script)
        {
            i--;
        }

        ptr++;
    }
    while ((s32)ptr <= target);

    return i;
}
