.class public Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddLastDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        ">",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,671:1\n1#2:672\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0008\u0008\u0016\u0018\u0000*\u000c\u0008\u0000\u0010\u0003*\u00060\u0001j\u0002`\u00022\u00020\u0004B\u001b\u0012\n\u0010\u000f\u001a\u00060\u0001j\u0002`\u0002\u0012\u0006\u0010\u0011\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\r\u001a\u00020\u000c2\n\u0010\n\u001a\u00060\u0001j\u0002`\u00022\n\u0010\u000b\u001a\u00060\u0001j\u0002`\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0018\u0010\u000f\u001a\u00060\u0001j\u0002`\u00028\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00028\u00008\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/internal/Node;",
        "T",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "prepareOp",
        "",
        "finishPrepare",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)V",
        "affected",
        "next",
        "",
        "updatedNext",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;",
        "queue",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "node",
        "<init>",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic _affectedNode$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _affectedNode:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final node:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final queue:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_affectedNode"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->_affectedNode$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .registers 3
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->_affectedNode:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final finishOnSuccess(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    .registers 3
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    # invokes: Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
    invoke-static {p1, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->access$finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    return-void
.end method

.method public finishPrepare(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)V
    .registers 4
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->_affectedNode$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object p1, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;->affected:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_12

    :cond_c
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_12
    return-void
.end method

.method public final getAffectedNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->_affectedNode:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-object v0
.end method

.method public final getOriginalNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-object v0
.end method

.method public final retry(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    if-eq p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public final takeAffectedNode(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .registers 3
    .param p1    # Lkotlinx/coroutines/internal/OpDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    # invokes: Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->correctPrev(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->access$correctPrev(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p1

    return-object p1
.end method

.method public updatedNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .registers 7
    .param p1    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_4
    invoke-virtual {v0, p2, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_11

    :cond_b
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_4

    .line 2
    :goto_11
    iget-object v1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    sget-object v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v3, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :cond_17
    invoke-virtual {v2, v1, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_24

    :cond_1e
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_17

    .line 3
    :goto_24
    iget-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->node:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-object p1
.end method
