.class public Lkotlinx/coroutines/channels/ArrayChannel;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "ArrayChannel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/ArrayChannel$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayChannel.kt\nkotlinx/coroutines/channels/ArrayChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n*L\n1#1,308:1\n1#2:309\n17#3:310\n17#3:311\n17#3:312\n17#3:313\n17#3:314\n17#3:315\n17#3:316\n17#3:317\n17#3:318\n*S KotlinDebug\n*F\n+ 1 ArrayChannel.kt\nkotlinx/coroutines/channels/ArrayChannel\n*L\n52#1:310\n53#1:311\n58#1:312\n90#1:313\n129#1:314\n181#1:315\n221#1:316\n277#1:317\n286#1:318\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B9\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012 \u0010\"\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t\u0018\u00010 j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`!\u00a2\u0006\u0004\u0008#\u0010$J\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0015\u001a\u00060\u0013j\u0002`\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u000fR\u0014\u0010\u001d\u001a\u00020\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001e\u00a8\u0006%"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ArrayChannel;",
        "E",
        "Lkotlinx/coroutines/channels/AbstractChannel;",
        "",
        "currentSize",
        "Lkotlinx/coroutines/internal/Symbol;",
        "updateBufferSize",
        "(I)Lkotlinx/coroutines/internal/Symbol;",
        "element",
        "",
        "enqueueElement",
        "(ILjava/lang/Object;)V",
        "ensureCapacity",
        "(I)V",
        "capacity",
        "I",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "onBufferOverflow",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lkotlinx/coroutines/internal/ReentrantLock;",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "",
        "",
        "buffer",
        "[Ljava/lang/Object;",
        "head",
        "",
        "isEmpty",
        "()Z",
        "isClosedForReceive",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "onUndeliveredElement",
        "<init>",
        "(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private buffer:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final capacity:I

.field private head:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic size:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .param p2    # Lkotlinx/coroutines/channels/BufferOverflow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlinx/coroutines/channels/BufferOverflow;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-lt p1, p3, :cond_c

    goto :goto_d

    :cond_c
    const/4 p3, 0x0

    :goto_d
    if-eqz p3, :cond_28

    .line 4
    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const/16 p3, 0x8

    .line 5
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    sget-object p3, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {p1, p3}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 6
    iput p2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    return-void

    :cond_28
    const-string p2, "ArrayChannel capacity must be at least 1, but "

    const-string p3, " was specified"

    .line 7
    invoke-static {p2, p1, p3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final enqueueElement(ILjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    if-ge p1, v0, :cond_11

    .line 2
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/ArrayChannel;->ensureCapacity(I)V

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v1, p1

    array-length p1, v0

    rem-int/2addr v1, p1

    aput-object p2, v0, v1

    goto :goto_26

    .line 4
    :cond_11
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    array-length v2, v0

    rem-int v2, v1, v2

    const/4 v3, 0x0

    aput-object v3, v0, v2

    add-int/2addr p1, v1

    .line 5
    array-length v2, v0

    rem-int/2addr p1, v2

    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    .line 6
    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    :goto_26
    return-void
.end method

.method private final ensureCapacity(I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_2c

    .line 2
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, p1, :cond_23

    add-int/lit8 v4, v3, 0x1

    .line 4
    iget-object v5, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v6, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v6, v3

    array-length v7, v5

    rem-int/2addr v6, v7

    aget-object v5, v5, v6

    aput-object v5, v1, v3

    move v3, v4

    goto :goto_12

    .line 5
    :cond_23
    sget-object v3, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v1, v3, p1, v0}, Lkotlin/collections/ArraysKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 6
    iput-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 7
    iput v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    :cond_2c
    return-void
.end method

.method private final updateBufferSize(I)Lkotlinx/coroutines/internal/Symbol;
    .registers 5

    .line 1
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_a

    add-int/2addr p1, v2

    .line 2
    iput p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    return-object v1

    .line 3
    :cond_a
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v0, Lkotlinx/coroutines/channels/ArrayChannel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1d

    goto :goto_28

    .line 4
    :cond_1d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 5
    :cond_23
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_28

    .line 6
    :cond_26
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    :goto_28
    return-object v1
.end method


# virtual methods
.method public final enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z
    .registers 3
    .param p1    # Lkotlinx/coroutines/channels/Receive;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/Receive<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->enqueueReceiveInternal(Lkotlinx/coroutines/channels/Receive;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_d
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final enqueueSend(Lkotlinx/coroutines/channels/Send;)Ljava/lang/Object;
    .registers 3
    .param p1    # Lkotlinx/coroutines/channels/Send;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->enqueueSend(Lkotlinx/coroutines/channels/Send;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_d
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final getBufferDebugString()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "(buffer:capacity="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    const/16 v2, 0x29

    .line 3
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isBufferAlwaysEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isBufferAlwaysFull()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isBufferEmpty()Z
    .registers 2

    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final isBufferFull()Z
    .registers 3

    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isClosedForReceive()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    invoke-super {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isClosedForReceive()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_d
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public isEmpty()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->isEmptyImpl()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_d
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v2

    if-nez v2, :cond_49

    .line 5
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/ArrayChannel;->updateBufferSize(I)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-nez v2, :cond_45

    if-nez v1, :cond_3c

    .line 6
    :cond_15
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;

    move-result-object v2

    if-nez v2, :cond_1c

    goto :goto_3c

    .line 7
    :cond_1c
    instance-of v3, v2, Lkotlinx/coroutines/channels/Closed;

    if-eqz v3, :cond_26

    .line 8
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_4d

    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_26
    const/4 v3, 0x0

    .line 10
    :try_start_27
    invoke-interface {v2, p1, v3}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 11
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 12
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_4d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 13
    invoke-interface {v2, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 14
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-direct {p0, v1, p1}, Lkotlinx/coroutines/channels/ArrayChannel;->enqueueElement(ILjava/lang/Object;)V

    .line 16
    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_4d

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 17
    :cond_45
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 18
    :cond_49
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catchall_4d
    move-exception p1

    .line 19
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;
    .registers 7
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
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v2

    if-nez v2, :cond_7f

    .line 5
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/ArrayChannel;->updateBufferSize(I)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-nez v2, :cond_7b

    if-nez v1, :cond_62

    .line 6
    :goto_15
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->describeTryOffer(Ljava/lang/Object;)Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;

    move-result-object v2

    .line 7
    invoke-interface {p2, v2}, Lkotlinx/coroutines/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_37

    .line 8
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 9
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;->getResult()Ljava/lang/Object;

    move-result-object p2

    .line 10
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_83

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    invoke-interface {p2, p1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 12
    invoke-interface {p2}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :cond_37
    :try_start_37
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v3, v2, :cond_3c

    goto :goto_62

    .line 14
    :cond_3c
    sget-object v2, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne v3, v2, :cond_41

    goto :goto_15

    .line 15
    :cond_41
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object p1

    if-eq v3, p1, :cond_5c

    instance-of p1, v3, Lkotlinx/coroutines/channels/Closed;

    if-eqz p1, :cond_4c

    goto :goto_5c

    .line 16
    :cond_4c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "performAtomicTrySelect(describeTryOffer) returned "

    .line 17
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_5c
    :goto_5c
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I
    :try_end_5e
    .catchall {:try_start_37 .. :try_end_5e} :catchall_83

    .line 19
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v3

    .line 20
    :cond_62
    :goto_62
    :try_start_62
    invoke-interface {p2}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect()Z

    move-result p2

    if-nez p2, :cond_72

    .line 21
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 22
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object p1
    :try_end_6e
    .catchall {:try_start_62 .. :try_end_6e} :catchall_83

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 23
    :cond_72
    :try_start_72
    invoke-direct {p0, v1, p1}, Lkotlinx/coroutines/channels/ArrayChannel;->enqueueElement(ILjava/lang/Object;)V

    .line 24
    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_83

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 25
    :cond_7b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 26
    :cond_7f
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catchall_83
    move-exception p1

    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final onCancelIdempotent(Z)V
    .registers 11

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/AbstractSendChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    :try_start_7
    iget v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v2, :cond_2f

    add-int/lit8 v5, v5, 0x1

    .line 5
    iget-object v6, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aget-object v6, v6, v7

    if-eqz v0, :cond_20

    .line 6
    sget-object v7, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    if-eq v6, v7, :cond_20

    .line 7
    invoke-static {v0, v6, v4}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object v4

    .line 8
    :cond_20
    iget-object v6, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    sget-object v8, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    .line 9
    array-length v6, v6

    rem-int/2addr v7, v6

    iput v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    goto :goto_c

    .line 10
    :cond_2f
    iput v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_3d

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 12
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->onCancelIdempotent(Z)V

    if-nez v4, :cond_3c

    return-void

    .line 13
    :cond_3c
    throw v4

    :catchall_3d
    move-exception p1

    .line 14
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final pollInternal()Ljava/lang/Object;
    .registers 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    if-nez v1, :cond_15

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v1

    if-nez v1, :cond_11

    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_6f

    :cond_11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 5
    :cond_15
    :try_start_15
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aget-object v4, v2, v3

    const/4 v5, 0x0

    .line 6
    aput-object v5, v2, v3

    add-int/lit8 v2, v1, -0x1

    .line 7
    iput v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 8
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    iget v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v3, :cond_45

    move-object v3, v5

    .line 10
    :goto_2b
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/channels/Send;

    move-result-object v8

    if-nez v8, :cond_33

    move-object v5, v3

    goto :goto_45

    .line 11
    :cond_33
    invoke-virtual {v8, v5}, Lkotlinx/coroutines/channels/Send;->tryResumeSend(Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 12
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v8

    const/4 v7, 0x1

    goto :goto_45

    .line 13
    :cond_40
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/Send;->undeliveredElement()V

    move-object v3, v8

    goto :goto_2b

    .line 14
    :cond_45
    :goto_45
    sget-object v3, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v3, :cond_58

    instance-of v3, v2, Lkotlinx/coroutines/channels/Closed;

    if-nez v3, :cond_58

    .line 15
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 16
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v8, v1

    array-length v1, v3

    rem-int/2addr v8, v1

    aput-object v2, v3, v8

    .line 17
    :cond_58
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v1, v6

    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 18
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_63
    .catchall {:try_start_15 .. :try_end_63} :catchall_6f

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v7, :cond_6e

    .line 19
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    :cond_6e
    return-object v4

    :catchall_6f
    move-exception v1

    .line 20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final pollSelectInternal(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;
    .registers 10
    .param p1    # Lkotlinx/coroutines/selects/SelectInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_5
    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    if-nez v1, :cond_15

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object p1

    if-nez p1, :cond_11

    sget-object p1, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_bf

    :cond_11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 5
    :cond_15
    :try_start_15
    iget-object v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aget-object v4, v2, v3

    const/4 v5, 0x0

    .line 6
    aput-object v5, v2, v3

    add-int/lit8 v2, v1, -0x1

    .line 7
    iput v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 8
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    iget v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    const/4 v6, 0x1

    if-ne v1, v3, :cond_7b

    .line 10
    :goto_29
    new-instance v3, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractSendChannel;->getQueue()Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    move-result-object v7

    invoke-direct {v3, v7}, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V

    .line 11
    invoke-interface {p1, v3}, Lkotlinx/coroutines/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_48

    .line 12
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;->getResult()Ljava/lang/Object;

    move-result-object v5

    .line 13
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v5

    check-cast v2, Lkotlinx/coroutines/channels/Send;

    invoke-virtual {v2}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v2

    :goto_46
    const/4 v3, 0x1

    goto :goto_7c

    .line 14
    :cond_48
    sget-object v3, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v7, v3, :cond_4d

    goto :goto_7b

    .line 15
    :cond_4d
    sget-object v3, Lkotlinx/coroutines/internal/AtomicKt;->RETRY_ATOMIC:Ljava/lang/Object;

    if-ne v7, v3, :cond_52

    goto :goto_29

    .line 16
    :cond_52
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v2

    if-ne v7, v2, :cond_64

    .line 17
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 18
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aput-object v4, p1, v1
    :try_end_60
    .catchall {:try_start_15 .. :try_end_60} :catchall_bf

    .line 19
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v7

    .line 20
    :cond_64
    :try_start_64
    instance-of v2, v7, Lkotlinx/coroutines/channels/Closed;

    if-eqz v2, :cond_6b

    move-object v2, v7

    move-object v5, v2

    goto :goto_46

    .line 21
    :cond_6b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "performAtomicTrySelect(describeTryOffer) returned "

    .line 22
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7b
    :goto_7b
    const/4 v3, 0x0

    .line 23
    :goto_7c
    sget-object v7, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v7, :cond_90

    instance-of v7, v2, Lkotlinx/coroutines/channels/Closed;

    if-nez v7, :cond_90

    .line 24
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 25
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v7, v1

    array-length v1, p1

    rem-int/2addr v7, v1

    aput-object v2, p1, v7

    goto :goto_a6

    .line 26
    :cond_90
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect()Z

    move-result p1

    if-nez p1, :cond_a6

    .line 27
    iput v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 28
    iget-object p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aput-object v4, p1, v1

    .line 29
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object p1
    :try_end_a2
    .catchall {:try_start_64 .. :try_end_a2} :catchall_bf

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 30
    :cond_a6
    :goto_a6
    :try_start_a6
    iget p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr p1, v6

    iget-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr p1, v1

    iput p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b1
    .catchall {:try_start_a6 .. :try_end_b1} :catchall_bf

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v3, :cond_be

    .line 32
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lkotlinx/coroutines/channels/Send;

    invoke-virtual {v5}, Lkotlinx/coroutines/channels/Send;->completeResumeSend()V

    :cond_be
    return-object v4

    :catchall_bf
    move-exception p1

    .line 33
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
