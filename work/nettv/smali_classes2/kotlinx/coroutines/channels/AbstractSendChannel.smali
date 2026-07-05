.class public abstract Lkotlinx/coroutines/channels/AbstractSendChannel;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/SendChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/AbstractSendChannel$SendBufferedDesc;,
        Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;,
        Lkotlinx/coroutines/channels/AbstractSendChannel$SendSelect;,
        Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/SendChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractSendChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 6 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1132:1\n1#2:1133\n297#3,12:1134\n165#3,4:1146\n165#3,4:1155\n177#3:1159\n91#3,3:1160\n178#3,6:1163\n165#3,4:1169\n297#3,12:1184\n332#4,5:1150\n37#5,11:1173\n645#6,6:1196\n*S KotlinDebug\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/AbstractSendChannel\n*L\n96#1:1134,12\n104#1:1146,4\n247#1:1155,4\n252#1:1159\n252#1:1160,3\n252#1:1163,6\n269#1:1169,4\n358#1:1184,12\n190#1:1150,5\n342#1:1173,11\n455#1:1196,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002:\u0004CDEFB)\u0012 \u0010A\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\n\u0018\u00010*j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`@\u00a2\u0006\u0004\u0008B\u0010.J\u001b\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00028\u00002\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\tJ\u001b\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00028\u0000H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ+\u0010\u000e\u001a\u00020\n*\u0006\u0012\u0002\u0008\u00030\r2\u0006\u0010\u0008\u001a\u00028\u00002\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0011\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001b\u0010\u0013\u001a\u00020\n2\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014JX\u0010\u001b\u001a\u00020\n\"\u0004\u0008\u0001\u0010\u00152\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00162\u0006\u0010\u0008\u001a\u00028\u00002(\u0010\u001a\u001a$\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\r\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001b\u0010 \u001a\u00020\n2\u0006\u0010\u0008\u001a\u00028\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010\u000cJ\u0017\u0010\"\u001a\u00020!2\u0006\u0010\u0008\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J$\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\n0$2\u0006\u0010\u0008\u001a\u00028\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0019\u0010(\u001a\u00020!2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008(\u0010)J)\u0010-\u001a\u00020\n2\u0018\u0010,\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\n0*j\u0002`+H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u00100\u001a\u00020/H\u0016\u00a2\u0006\u0004\u00080\u00101R\u001a\u00103\u001a\u0002028\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106R\u0014\u00107\u001a\u00020!8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u0014\u0010:\u001a\u00020/8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u00101R\u0011\u0010;\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008;\u00108R#\u0010?\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020<8F\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006G"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/AbstractSendChannel;",
        "E",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "Lkotlinx/coroutines/channels/Closed;",
        "closed",
        "",
        "helpCloseAndGetSendException",
        "(Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Throwable;",
        "element",
        "(Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Throwable;",
        "",
        "sendSuspend",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation;",
        "helpCloseAndResumeWithSendException",
        "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V",
        "cause",
        "invokeOnCloseHandler",
        "(Ljava/lang/Throwable;)V",
        "helpClose",
        "(Lkotlinx/coroutines/channels/Closed;)V",
        "R",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "select",
        "Lkotlin/Function2;",
        "",
        "block",
        "registerSelectSend",
        "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V",
        "",
        "countQueueSize",
        "()I",
        "send",
        "",
        "offer",
        "(Ljava/lang/Object;)Z",
        "Lkotlinx/coroutines/channels/ChannelResult;",
        "trySend-JP2dKIU",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "trySend",
        "close",
        "(Ljava/lang/Throwable;)Z",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/channels/Handler;",
        "handler",
        "invokeOnClose",
        "(Lkotlin/jvm/functions/Function1;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
        "queue",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
        "getQueue",
        "()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
        "isFullImpl",
        "()Z",
        "getQueueDebugStateString",
        "queueDebugStateString",
        "isClosedForSend",
        "Lkotlinx/coroutines/selects/SelectClause2;",
        "getOnSend",
        "()Lkotlinx/coroutines/selects/SelectClause2;",
        "onSend",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "onUndeliveredElement",
        "<init>",
        "SendBuffered",
        "SendBufferedDesc",
        "SendSelect",
        "TryOfferDesc",
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
.field private static final synthetic onCloseHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic onCloseHandler:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final onUndeliveredElement:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TE;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/channels/AbstractSendChannel;

    const-class v1, Ljava/lang/Object;

    const-string v2, "onCloseHandler"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onCloseHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 3
    new-instance p1, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-direct {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onCloseHandler:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$helpCloseAndResumeWithSendException(Lkotlinx/coroutines/channels/AbstractSendChannel;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpCloseAndResumeWithSendException(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V

    return-void
.end method

.method public static final synthetic access$isFullImpl(Lkotlinx/coroutines/channels/AbstractSendChannel;)Z
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->isFullImpl()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$registerSelectSend(Lkotlinx/coroutines/channels/AbstractSendChannel;Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/AbstractSendChannel;->registerSelectSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$sendSuspend(Lkotlinx/coroutines/channels/AbstractSendChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/AbstractSendChannel;->sendSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final countQueueSize()I
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 2
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    instance-of v3, v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 5
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private final getQueueDebugStateString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    if-ne v0, v1, :cond_0

    const-string v0, "EmptyQueue"

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/channels/Receive;

    if-eqz v1, :cond_2

    const-string v1, "ReceiveQueued"

    goto :goto_0

    .line 5
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/channels/Send;

    if-eqz v1, :cond_3

    const-string v1, "SendQueued"

    goto :goto_0

    :cond_3
    const-string v1, "UNEXPECTED:"

    .line 6
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    if-eq v2, v0, :cond_4

    const-string v0, ",queueSize="

    .line 8
    invoke-static {v1, v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    invoke-direct {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->countQueueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    instance-of v0, v2, Lkotlinx/coroutines/channels/Closed;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",closedForSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private final helpClose(Lkotlinx/coroutines/channels/Closed;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Closed<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/internal/InlineList;->constructor-impl$default(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v3

    instance-of v4, v3, Lkotlinx/coroutines/channels/Receive;

    if-eqz v4, :cond_0

    check-cast v3, Lkotlinx/coroutines/channels/Receive;

    goto :goto_1

    :cond_0
    move-object v3, v0

    :goto_1
    if-nez v3, :cond_5

    if-nez v2, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    instance-of v0, v2, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    check-cast v2, Lkotlinx/coroutines/channels/Receive;

    .line 4
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/channels/Receive;->resumeReceiveClosed(Lkotlinx/coroutines/channels/Closed;)V

    goto :goto_3

    .line 5
    :cond_2
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_4

    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 7
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/Receive;

    .line 8
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/Receive;->resumeReceiveClosed(Lkotlinx/coroutines/channels/Closed;)V

    if-gez v1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    .line 9
    :cond_5
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->remove()Z

    move-result v4

    if-nez v4, :cond_6

    .line 10
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemove()V

    goto :goto_0

    .line 11
    :cond_6
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/InlineList;->plus-FjFbRPM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private final helpCloseAndGetSendException(Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/channels/Closed<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p2}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpClose(Lkotlinx/coroutines/channels/Closed;)V

    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/channels/Closed;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p2}, Lkotlinx/coroutines/channels/Closed;->getSendException()Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 6
    throw p1
.end method

.method private final helpCloseAndGetSendException(Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Closed<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpClose(Lkotlinx/coroutines/channels/Closed;)V

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/Closed;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method private final helpCloseAndResumeWithSendException(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;TE;",
            "Lkotlinx/coroutines/channels/Closed<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpClose(Lkotlinx/coroutines/channels/Closed;)V

    .line 2
    invoke-virtual {p3}, Lkotlinx/coroutines/channels/Closed;->getSendException()Ljava/lang/Throwable;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v1, v2}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p2

    if-nez p2, :cond_1

    .line 4
    :goto_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    invoke-static {p2, p3}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 6
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method private final invokeOnCloseHandler(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onCloseHandler:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v1, :cond_2

    .line 3
    sget-object v2, Lkotlinx/coroutines/channels/AbstractSendChannel;->onCloseHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 4
    invoke-static {v0, v4}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private final isFullImpl()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->isBufferFull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final registerSelectSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;TE;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TE;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->isFullImpl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    new-instance v0, Lkotlinx/coroutines/channels/AbstractSendChannel$SendSelect;

    invoke-direct {v0, p2, p0, p1, p3}, Lkotlinx/coroutines/channels/AbstractSendChannel$SendSelect;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/AbstractSendChannel;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    .line 4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->enqueueSend(Lkotlinx/coroutines/channels/Send;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    return-void

    .line 6
    :cond_1
    instance-of v0, v1, Lkotlinx/coroutines/channels/Closed;

    if-nez v0, :cond_4

    .line 7
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->ENQUEUE_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    instance-of v0, v1, Lkotlinx/coroutines/channels/Receive;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enqueueSend returned "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    check-cast v1, Lkotlinx/coroutines/channels/Closed;

    invoke-direct {p0, p2, v1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpCloseAndGetSendException(Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 11
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_6

    return-void

    .line 13
    :cond_6
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_7

    goto :goto_0

    .line 14
    :cond_7
    sget-object v1, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne v0, v1, :cond_8

    goto :goto_0

    .line 15
    :cond_8
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_9

    .line 16
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->startCoroutineUnintercepted(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-void

    .line 17
    :cond_9
    instance-of p1, v0, Lkotlinx/coroutines/channels/Closed;

    if-eqz p1, :cond_a

    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    invoke-direct {p0, p2, v0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpCloseAndGetSendException(Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "offerSelectInternal returned "

    .line 18
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final sendSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CancellableContinuationKt;->getOrCreateCancellableContinuation(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v0

    .line 2
    :goto_0
    invoke-static {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->access$isFullImpl(Lkotlinx/coroutines/channels/AbstractSendChannel;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lkotlinx/coroutines/channels/SendElement;

    invoke-direct {v1, p1, v0}, Lkotlinx/coroutines/channels/SendElement;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/SendElementWithUndeliveredHandler;

    iget-object v2, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, p1, v0, v2}, Lkotlinx/coroutines/channels/SendElementWithUndeliveredHandler;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function1;)V

    .line 6
    :goto_1
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->enqueueSend(Lkotlinx/coroutines/channels/Send;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 7
    invoke-static {v0, v1}, Lkotlinx/coroutines/CancellableContinuationKt;->removeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    goto :goto_3

    .line 8
    :cond_1
    instance-of v1, v2, Lkotlinx/coroutines/channels/Closed;

    if-eqz v1, :cond_2

    .line 9
    check-cast v2, Lkotlinx/coroutines/channels/Closed;

    invoke-static {p0, v0, p1, v2}, Lkotlinx/coroutines/channels/AbstractSendChannel;->access$helpCloseAndResumeWithSendException(Lkotlinx/coroutines/channels/AbstractSendChannel;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V

    goto :goto_3

    .line 10
    :cond_2
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->ENQUEUE_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v2, v1, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    instance-of v1, v2, Lkotlinx/coroutines/channels/Receive;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "enqueueSend returned "

    .line 12
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_6

    .line 15
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_6
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, v2, :cond_7

    goto :goto_0

    .line 17
    :cond_7
    instance-of v2, v1, Lkotlinx/coroutines/channels/Closed;

    if-eqz v2, :cond_a

    .line 18
    check-cast v1, Lkotlinx/coroutines/channels/Closed;

    invoke-static {p0, v0, p1, v1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->access$helpCloseAndResumeWithSendException(Lkotlinx/coroutines/channels/AbstractSendChannel;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlinx/coroutines/channels/Closed;)V

    .line 19
    :goto_3
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 20
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_8

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 21
    :cond_8
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_9

    return-object p1

    :cond_9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 22
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "offerInternal returned "

    .line 23
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close(Ljava/lang/Throwable;)Z
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/Closed;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/Closed;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 3
    :cond_0
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lkotlinx/coroutines/channels/Closed;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2, v0, v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    .line 7
    :goto_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpClose(Lkotlinx/coroutines/channels/Closed;)V

    if-eqz v4, :cond_3

    .line 8
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->invokeOnCloseHandler(Ljava/lang/Throwable;)V

    :cond_3
    return v4
.end method

.method public final describeSendBuffered(Ljava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBufferedDesc;

    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBufferedDesc;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final describeTryOffer(Ljava/lang/Object;)Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;

    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V

    return-object v0
.end method

.method public enqueueSend(Lkotlinx/coroutines/channels/Send;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lkotlinx/coroutines/channels/Send;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->isBufferAlwaysFull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    if-eqz v2, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {v1, p1, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 7
    new-instance v1, Lkotlinx/coroutines/channels/AbstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1;

    invoke-direct {v1, p1, p0}, Lkotlinx/coroutines/channels/AbstractSendChannel$enqueueSend$$inlined$addLastIfPrevAndIf$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/channels/AbstractSendChannel;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    if-eqz v3, :cond_3

    return-object v2

    .line 10
    :cond_3
    invoke-virtual {v2, p1, v0, v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->tryCondAddNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    if-nez v3, :cond_6

    .line 11
    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->ENQUEUE_FAILED:Lkotlinx/coroutines/internal/Symbol;

    return-object p1

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBufferDebugString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public final getClosedForReceive()Lkotlinx/coroutines/channels/Closed;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/Closed<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpClose(Lkotlinx/coroutines/channels/Closed;)V

    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method public final getClosedForSend()Lkotlinx/coroutines/channels/Closed;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/Closed<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/channels/Closed;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpClose(Lkotlinx/coroutines/channels/Closed;)V

    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method public final getOnSend()Lkotlinx/coroutines/selects/SelectClause2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "TE;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/AbstractSendChannel$onSend$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/AbstractSendChannel$onSend$1;-><init>(Lkotlinx/coroutines/channels/AbstractSendChannel;)V

    return-object v0
.end method

.method public final getQueue()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    return-object v0
.end method

.method public invokeOnClose(Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onCloseHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onCloseHandler:Ljava/lang/Object;

    .line 3
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v0, :cond_2

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered and successfully invoked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another handler was already registered: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 7
    sget-object v1, Lkotlinx/coroutines/channels/AbstractSendChannel;->onCloseHandler$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v4, Lkotlinx/coroutines/channels/AbstractChannelKt;->HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

    :cond_4
    invoke-virtual {v1, p0, p1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p1, :cond_4

    :goto_1
    if-eqz v2, :cond_6

    .line 8
    iget-object v0, v0, Lkotlinx/coroutines/channels/Closed;->closeCause:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public abstract isBufferAlwaysFull()Z
.end method

.method public abstract isBufferFull()Z
.end method

.method public final isClosedForSend()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->offer(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2, v3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 4
    throw p1

    .line 5
    :cond_1
    :goto_0
    throw v0
.end method

.method public offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlinx/coroutines/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->describeTryOffer(Ljava/lang/Object;)Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;

    move-result-object v0

    .line 2
    invoke-interface {p2, v0}, Lkotlinx/coroutines/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 4
    invoke-interface {p2, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p2}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/AbstractSendChannel;->sendSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final sendBuffered(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveOrClosed;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lkotlinx/coroutines/channels/ReceiveOrClosed<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    new-instance v1, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel$SendBuffered;-><init>(Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getPrevNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p1

    .line 3
    instance-of v2, p1, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    if-eqz v2, :cond_1

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1, v1, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->addNext(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveOrClosed<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 3
    :cond_0
    instance-of v3, v1, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 5
    instance-of v2, v2, Lkotlinx/coroutines/channels/Closed;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removeOrNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    :goto_2
    check-cast v1, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemovePrev()V

    goto :goto_0
.end method

.method public final takeFirstSendOrPeekClosed()Lkotlinx/coroutines/channels/Send;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->queue:Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .line 2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    :goto_1
    move-object v1, v2

    goto :goto_2

    .line 3
    :cond_0
    instance-of v3, v1, Lkotlinx/coroutines/channels/Send;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/channels/Send;

    .line 5
    instance-of v2, v2, Lkotlinx/coroutines/channels/Closed;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->removeOrNext()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    if-nez v2, :cond_3

    .line 8
    :goto_2
    check-cast v1, Lkotlinx/coroutines/channels/Send;

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->helpRemovePrev()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getQueueDebugStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getBufferDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v0, :cond_0

    sget-object p1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->failure-PtdJZtk()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpCloseAndGetSendException(Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/channels/Closed;

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    check-cast p1, Lkotlinx/coroutines/channels/Closed;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->helpCloseAndGetSendException(Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->closed-JP2dKIU(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trySend returned "

    .line 8
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
