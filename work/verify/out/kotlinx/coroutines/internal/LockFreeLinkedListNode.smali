.class public Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;,
        Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;,
        Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;,
        Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;,
        Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,671:1\n91#1,3:675\n91#1,3:678\n1#2:672\n155#3,2:673\n155#3,2:681\n*S KotlinDebug\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n*L\n154#1:675,3\n177#1:678,3\n99#1:673,2\n546#1:681,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0017\u0018\u00002\u00020\u0001:\u0005IJKLMB\u0007\u00a2\u0006\u0004\u0008H\u00102J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J \u0010\u0007\u001a\u00060\u0000j\u0002`\u00052\n\u0010\u0006\u001a\u00060\u0000j\u0002`\u0005H\u0082\u0010\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001b\u0010\u000b\u001a\u00020\n2\n\u0010\t\u001a\u00060\u0000j\u0002`\u0005H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\"\u0010\u000f\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0082\u0010\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J,\u0010\u0016\u001a\u00020\u00152\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u000e\u0008\u0004\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0081\u0008\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0005\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0019\u0010\u001a\u001a\u00020\n2\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u0005\u00a2\u0006\u0004\u0008\u001a\u0010\u000cJ)\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001c\"\u000c\u0008\u0000\u0010\u001b*\u00060\u0000j\u0002`\u00052\u0006\u0010\u0011\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ,\u0010\u001f\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u000e\u0008\u0004\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0086\u0008\u00a2\u0006\u0004\u0008\u001f\u0010 J4\u0010#\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u0016\u0010\"\u001a\u0012\u0012\u0008\u0012\u00060\u0000j\u0002`\u0005\u0012\u0004\u0012\u00020\u00130!H\u0086\u0008\u00a2\u0006\u0004\u0008#\u0010$JD\u0010%\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\u0016\u0010\"\u001a\u0012\u0012\u0008\u0012\u00060\u0000j\u0002`\u0005\u0012\u0004\u0012\u00020\u00130!2\u000e\u0008\u0004\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0086\u0008\u00a2\u0006\u0004\u0008%\u0010&J\'\u0010\'\u001a\u00020\u00132\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\n\u0010\t\u001a\u00060\u0000j\u0002`\u0005H\u0001\u00a2\u0006\u0004\u0008\'\u0010(J/\u0010+\u001a\u00020*2\n\u0010\u0011\u001a\u00060\u0000j\u0002`\u00052\n\u0010\t\u001a\u00060\u0000j\u0002`\u00052\u0006\u0010)\u001a\u00020\u0015H\u0001\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u0017\u0010/\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0005H\u0001\u00a2\u0006\u0004\u0008/\u00100J\r\u00101\u001a\u00020\n\u00a2\u0006\u0004\u00081\u00102J\u000f\u00103\u001a\u00020\nH\u0001\u00a2\u0006\u0004\u00083\u00102J\u0015\u00104\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0005\u00a2\u0006\u0004\u00084\u00100J\u0017\u00106\u001a\u000c\u0012\u0008\u0012\u00060\u0000j\u0002`\u000505\u00a2\u0006\u0004\u00086\u00107J.\u00108\u001a\u0004\u0018\u00018\u0000\"\u0006\u0008\u0000\u0010\u001b\u0018\u00012\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00130!H\u0086\u0008\u00a2\u0006\u0004\u00088\u00109J\'\u0010=\u001a\u00020\n2\n\u0010:\u001a\u00060\u0000j\u0002`\u00052\n\u0010\t\u001a\u00060\u0000j\u0002`\u0005H\u0000\u00a2\u0006\u0004\u0008;\u0010<J\u000f\u0010?\u001a\u00020>H\u0016\u00a2\u0006\u0004\u0008?\u0010@R\u0014\u0010A\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008A\u0010.R\u0011\u0010\t\u001a\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010CR\u0015\u0010E\u001a\u00060\u0000j\u0002`\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008D\u00100R\u0015\u0010G\u001a\u00060\u0000j\u0002`\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008F\u00100\u00a8\u0006N"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "",
        "Lkotlinx/coroutines/internal/Removed;",
        "removed",
        "()Lkotlinx/coroutines/internal/Removed;",
        "Lkotlinx/coroutines/internal/Node;",
        "current",
        "findPrevNonRemoved",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "next",
        "",
        "finishAdd",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V",
        "Lkotlinx/coroutines/internal/OpDescriptor;",
        "op",
        "correctPrev",
        "(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "node",
        "Lkotlin/Function0;",
        "",
        "condition",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;",
        "makeCondAddOp",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;",
        "addOneIfEmpty",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z",
        "addLast",
        "T",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;",
        "describeAddLast",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;",
        "addLastIf",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Z",
        "Lkotlin/Function1;",
        "predicate",
        "addLastIfPrev",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;)Z",
        "addLastIfPrevAndIf",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Z",
        "addNext",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z",
        "condAdd",
        "",
        "tryCondAddNext",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I",
        "remove",
        "()Z",
        "removeOrNext",
        "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "helpRemove",
        "()V",
        "helpRemovePrev",
        "removeFirstOrNull",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;",
        "describeRemoveFirst",
        "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;",
        "removeFirstIfIsInstanceOfOrPeekIf",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "prev",
        "validateNode$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V",
        "validateNode",
        "",
        "toString",
        "()Ljava/lang/String;",
        "isRemoved",
        "getNext",
        "()Ljava/lang/Object;",
        "getNextNode",
        "nextNode",
        "getPrevNode",
        "prevNode",
        "<init>",
        "AbstractAtomicDesc",
        "AddLastDesc",
        "CondAddOp",
        "PrepareOp",
        "RemoveFirstDesc",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
.end annotation


# static fields
.field public static final synthetic _next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic _prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _removedRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _next:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public volatile synthetic _prev:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _removedRef:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const-string v2, "_next"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_prev"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_removedRef"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_removedRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    .line 3
    iput-object p0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_removedRef:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$correctPrev(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 2

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .registers 2

    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    return-void
.end method

.method public static final synthetic access$removed(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/Removed;
    .registers 1

    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removed()Lkotlinx/coroutines/internal/Removed;

    move-result-object p0

    return-object p0
.end method

.method private final correctPrev(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 12

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 v1, 0x0

    move-object v2, v0

    :goto_6
    move-object v3, v1

    .line 2
    :goto_7
    iget-object v4, v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, p0, :cond_24

    if-ne v0, v2, :cond_10

    return-object v2

    .line 3
    :cond_10
    sget-object v7, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_12
    invoke-virtual {v7, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v5, 0x1

    goto :goto_20

    :cond_1a
    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_12

    :goto_20
    if-nez v5, :cond_23

    goto :goto_0

    :cond_23
    return-object v2

    .line 4
    :cond_24
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v7

    if-eqz v7, :cond_2b

    return-object v1

    :cond_2b
    if-ne v4, p1, :cond_2e

    return-object v2

    .line 5
    :cond_2e
    instance-of v7, v4, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v7, :cond_44

    if-eqz p1, :cond_3e

    .line 6
    move-object v0, v4

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/OpDescriptor;->isEarlierThan(Lkotlinx/coroutines/internal/OpDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_3e

    return-object v1

    .line 7
    :cond_3e
    check-cast v4, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v4, v2}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_44
    instance-of v7, v4, Lkotlinx/coroutines/internal/Removed;

    if-eqz v7, :cond_68

    if-eqz v3, :cond_63

    .line 9
    sget-object v7, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    check-cast v4, Lkotlinx/coroutines/internal/Removed;

    iget-object v4, v4, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :cond_50
    invoke-virtual {v7, v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    const/4 v5, 0x1

    goto :goto_5e

    :cond_58
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v2, :cond_50

    :goto_5e
    if-nez v5, :cond_61

    goto :goto_0

    :cond_61
    move-object v2, v3

    goto :goto_6

    .line 10
    :cond_63
    iget-object v2, v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    goto :goto_7

    .line 11
    :cond_68
    move-object v3, v4

    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_7
.end method

.method private final findPrevNonRemoved(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 3

    .line 1
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 2
    :cond_7
    iget-object p1, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    goto :goto_0
.end method

.method private final finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .registers 5

    .line 1
    :cond_0
    iget-object v0, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_b

    return-void

    .line 3
    :cond_b
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_d
    invoke-virtual {v1, p1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    goto :goto_1c

    :cond_15
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_d

    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :cond_28
    return-void
.end method

.method private final removed()Lkotlinx/coroutines/internal/Removed;
    .registers 3

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_removedRef:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    if-nez v0, :cond_10

    new-instance v0, Lkotlinx/coroutines/internal/Removed;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/Removed;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_removedRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    return-object v0
.end method


# virtual methods
.method public final addLast(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .registers 3
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final addLastIf(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Z
    .registers 5
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)V

    .line 2
    :goto_5
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1, p0, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_16

    const/4 v1, 0x2

    if-eq p2, v1, :cond_14

    goto :goto_5

    :cond_14
    const/4 p1, 0x0

    return p1

    :cond_16
    return v1
.end method

.method public final addLastIfPrev(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;)Z
    .registers 5
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    .line 2
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_12
    invoke-virtual {v0, p1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public final addLastIfPrevAndIf(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Z
    .registers 7
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1;

    invoke-direct {v0, p1, p3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)V

    .line 2
    :goto_5
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p3

    .line 3
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    return v2

    .line 4
    :cond_17
    invoke-virtual {p3, p1, p0, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_23

    const/4 v1, 0x2

    if-eq p3, v1, :cond_22

    goto :goto_5

    :cond_22
    return v2

    :cond_23
    return v1
.end method

.method public final addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z
    .registers 7
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    :cond_a
    invoke-virtual {v0, p0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    goto :goto_1b

    :cond_14
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_a

    const/4 v0, 0x0

    :goto_1b
    if-nez v0, :cond_1e

    return v2

    .line 4
    :cond_1e
    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    return v3
.end method

.method public final addOneIfEmpty(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z
    .registers 6
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    :cond_a
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_12

    return v1

    .line 4
    :cond_12
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_14
    invoke-virtual {v0, p0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_23

    :cond_1d
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_14

    :goto_23
    if-eqz v1, :cond_a

    .line 5
    invoke-direct {p1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    return v3
.end method

.method public final describeAddLast(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;
    .registers 3
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            ">(TT;)",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    return-object v0
.end method

.method public final describeRemoveFirst()Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc<",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    return-object v0
.end method

.method public final getNext()Ljava/lang/Object;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-nez v1, :cond_7

    return-object v0

    .line 3
    :cond_7
    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->unwrap(Ljava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    return-object v0
.end method

.method public final getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->findPrevNonRemoved(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    :cond_f
    return-object v0
.end method

.method public final helpRemove()V
    .registers 2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    iget-object v0, v0, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemovePrev()V

    return-void
.end method

.method public final helpRemovePrev()V
    .registers 4
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    move-object v0, p0

    .line 1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v1

    .line 2
    instance-of v2, v1, Lkotlinx/coroutines/internal/Removed;

    if-nez v2, :cond_e

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-void

    .line 4
    :cond_e
    check-cast v1, Lkotlinx/coroutines/internal/Removed;

    iget-object v0, v1, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    goto :goto_1
.end method

.method public isRemoved()Z
    .registers 2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/internal/Removed;

    return v0
.end method

.method public final makeCondAddOp(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
    .registers 4
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$makeCondAddOp$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public remove()Z
    .registers 2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removeOrNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final synthetic removeFirstIfIsInstanceOfOrPeekIf(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_a

    return-object v1

    :cond_a
    const/4 v2, 0x3

    const-string v3, "T"

    .line 2
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    instance-of v2, v0, Ljava/lang/Object;

    if-nez v2, :cond_15

    return-object v1

    .line 3
    :cond_15
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_28

    return-object v0

    .line 5
    :cond_28
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removeOrNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v1

    if-nez v1, :cond_2f

    return-object v0

    .line 6
    :cond_2f
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemovePrev()V

    goto :goto_0
.end method

.method public final removeFirstOrNull()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_a
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove()Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v0

    .line 3
    :cond_11
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemove()V

    goto :goto_0
.end method

.method public final removeOrNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 6
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/internal/Removed;

    if-eqz v1, :cond_d

    check-cast v0, Lkotlinx/coroutines/internal/Removed;

    iget-object v0, v0, Lkotlinx/coroutines/internal/Removed;->ref:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-object v0

    :cond_d
    if-ne v0, p0, :cond_12

    .line 3
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-object v0

    .line 4
    :cond_12
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removed()Lkotlinx/coroutines/internal/Removed;

    move-result-object v2

    .line 5
    sget-object v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1b
    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v0, 0x1

    goto :goto_2a

    :cond_23
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_1b

    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-direct {v1, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;

    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$toString$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I
    .registers 7
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput-object p2, p3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;->oldNext:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 4
    :cond_c
    invoke-virtual {v0, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_1d

    :cond_16
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_c

    const/4 p1, 0x0

    :goto_1d
    if-nez p1, :cond_20

    return v1

    .line 5
    :cond_20
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/AtomicOp;->perform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v2, 0x2

    :goto_28
    return v2
.end method

.method public final validateNode$kotlinx_coroutines_core(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .registers 3
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method
