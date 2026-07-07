.class final Landroidx/paging/multicast/ChannelManager$Actor;
.super Landroidx/paging/multicast/StoreRealActor;
.source "ChannelManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/multicast/ChannelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Actor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/multicast/StoreRealActor<",
        "Landroidx/paging/multicast/ChannelManager$Message<",
        "TT;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelManager.kt\nandroidx/paging/multicast/ChannelManager$Actor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,392:1\n1819#2,2:393\n1819#2,2:395\n1819#2,2:397\n1819#2,2:399\n318#2,7:401\n2438#2,3:408\n1819#2,2:411\n*E\n*S KotlinDebug\n*F\n+ 1 ChannelManager.kt\nandroidx/paging/multicast/ChannelManager$Actor\n*L\n128#1,2:393\n161#1,2:395\n180#1,2:397\n191#1,2:399\n200#1,7:401\n235#1,3:408\n247#1,2:411\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0082\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\rH\u0002J\u001f\u0010\u0011\u001a\u00020\r2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\r2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0016H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u0016\u0010\u0018\u001a\u00020\r2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0019H\u0002J\u001f\u0010\u001a\u001a\u00020\r2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001bH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cJ\u0018\u0010\u001d\u001a\u00020\r2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000fH\u0002J%\u0010\u001e\u001a\u00020\r2\u0012\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u001b0 H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!J\u001f\u0010\"\u001a\u00020\r2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#J\u000e\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fH\u0002J\u0008\u0010%\u001a\u00020\rH\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006&"
    }
    d2 = {
        "Landroidx/paging/multicast/ChannelManager$Actor;",
        "Landroidx/paging/multicast/StoreRealActor;",
        "Landroidx/paging/multicast/ChannelManager$Message;",
        "(Landroidx/paging/multicast/ChannelManager;)V",
        "buffer",
        "Landroidx/paging/multicast/Buffer;",
        "channels",
        "",
        "Landroidx/paging/multicast/ChannelManager$ChannelEntry;",
        "dispatchedValue",
        "",
        "lastDeliveryAck",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "",
        "producer",
        "Landroidx/paging/multicast/SharedFlowProducer;",
        "activateIfNecessary",
        "addEntry",
        "entry",
        "(Landroidx/paging/multicast/ChannelManager$ChannelEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "doAdd",
        "msg",
        "Landroidx/paging/multicast/ChannelManager$Message$AddChannel;",
        "(Landroidx/paging/multicast/ChannelManager$Message$AddChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "doDispatchError",
        "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Error;",
        "doDispatchValue",
        "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;",
        "(Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "doHandleUpstreamClose",
        "doRemove",
        "channel",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "(Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handle",
        "(Landroidx/paging/multicast/ChannelManager$Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "newProducer",
        "onClosed",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final buffer:Landroidx/paging/multicast/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/multicast/Buffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/paging/multicast/ChannelManager$ChannelEntry<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private dispatchedValue:Z

.field private lastDeliveryAck:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private producer:Landroidx/paging/multicast/SharedFlowProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/multicast/SharedFlowProducer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/paging/multicast/ChannelManager;


# direct methods
.method public constructor <init>(Landroidx/paging/multicast/ChannelManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->this$0:Landroidx/paging/multicast/ChannelManager;

    invoke-static {p1}, Landroidx/paging/multicast/ChannelManager;->access$getScope$p(Landroidx/paging/multicast/ChannelManager;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/paging/multicast/StoreRealActor;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 76
    invoke-static {p1}, Landroidx/paging/multicast/ChannelManager;->access$getBufferSize$p(Landroidx/paging/multicast/ChannelManager;)I

    move-result p1

    invoke-static {p1}, Landroidx/paging/multicast/ChannelManagerKt;->access$Buffer(I)Landroidx/paging/multicast/Buffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->buffer:Landroidx/paging/multicast/Buffer;

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    return-void
.end method

.method private final activateIfNecessary()V
    .locals 2

    .line 224
    iget-object v0, p0, Landroidx/paging/multicast/ChannelManager$Actor;->producer:Landroidx/paging/multicast/SharedFlowProducer;

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0}, Landroidx/paging/multicast/ChannelManager$Actor;->newProducer()Landroidx/paging/multicast/SharedFlowProducer;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/multicast/ChannelManager$Actor;->producer:Landroidx/paging/multicast/SharedFlowProducer;

    const/4 v1, 0x0

    .line 226
    iput-boolean v1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->dispatchedValue:Z

    .line 227
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/paging/multicast/SharedFlowProducer;->start()V

    :cond_0
    return-void
.end method

.method private final doDispatchError(Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Error;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Error<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Landroidx/paging/multicast/ChannelManager$Actor;->dispatchedValue:Z

    .line 191
    iget-object v0, p0, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 399
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/multicast/ChannelManager$ChannelEntry;

    .line 192
    invoke-virtual {p1}, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Error;->getError()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/paging/multicast/ChannelManager$ChannelEntry;->dispatchError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final doHandleUpstreamClose(Landroidx/paging/multicast/SharedFlowProducer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/multicast/SharedFlowProducer<",
            "TT;>;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Landroidx/paging/multicast/ChannelManager$Actor;->producer:Landroidx/paging/multicast/SharedFlowProducer;

    if-eq v0, p1, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 128
    iget-object v1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 393
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/multicast/ChannelManager$ChannelEntry;

    .line 130
    invoke-virtual {v2}, Landroidx/paging/multicast/ChannelManager$ChannelEntry;->getReceivedValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    iget-object v3, p0, Landroidx/paging/multicast/ChannelManager$Actor;->this$0:Landroidx/paging/multicast/ChannelManager;

    invoke-static {v3}, Landroidx/paging/multicast/ChannelManager;->access$getPiggybackingDownstream$p(Landroidx/paging/multicast/ChannelManager;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 132
    invoke-virtual {v2}, Landroidx/paging/multicast/ChannelManager$ChannelEntry;->close()V

    goto :goto_0

    .line 134
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_2
    iget-boolean v3, p0, Landroidx/paging/multicast/ChannelManager$Actor;->dispatchedValue:Z

    if-eqz v3, :cond_3

    .line 140
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_3
    iget-object v3, p0, Landroidx/paging/multicast/ChannelManager$Actor;->this$0:Landroidx/paging/multicast/ChannelManager;

    invoke-static {v3}, Landroidx/paging/multicast/ChannelManager;->access$getPiggybackingDownstream$p(Landroidx/paging/multicast/ChannelManager;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 143
    invoke-virtual {v2}, Landroidx/paging/multicast/ChannelManager$ChannelEntry;->close()V

    goto :goto_0

    .line 145
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_5
    iget-object v1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 151
    iget-object v1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 153
    check-cast p1, Landroidx/paging/multicast/SharedFlowProducer;

    iput-object p1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->producer:Landroidx/paging/multicast/SharedFlowProducer;

    .line 155
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_6

    .line 156
    invoke-direct {p0}, Landroidx/paging/multicast/ChannelManager$Actor;->activateIfNecessary()V

    :cond_6
    return-void
.end method

.method private final newProducer()Landroidx/paging/multicast/SharedFlowProducer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/multicast/SharedFlowProducer<",
            "TT;>;"
        }
    .end annotation

    .line 116
    new-instance v0, Landroidx/paging/multicast/SharedFlowProducer;

    iget-object v1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->this$0:Landroidx/paging/multicast/ChannelManager;

    invoke-static {v1}, Landroidx/paging/multicast/ChannelManager;->access$getScope$p(Landroidx/paging/multicast/ChannelManager;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v2, p0, Landroidx/paging/multicast/ChannelManager$Actor;->this$0:Landroidx/paging/multicast/ChannelManager;

    invoke-static {v2}, Landroidx/paging/multicast/ChannelManager;->access$getUpstream$p(Landroidx/paging/multicast/ChannelManager;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v3, Landroidx/paging/multicast/ChannelManager$Actor$newProducer$1;

    move-object v4, p0

    check-cast v4, Landroidx/paging/multicast/ChannelManager$Actor;

    invoke-direct {v3, v4}, Landroidx/paging/multicast/ChannelManager$Actor$newProducer$1;-><init>(Landroidx/paging/multicast/ChannelManager$Actor;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, v3}, Landroidx/paging/multicast/SharedFlowProducer;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method


# virtual methods
.method final synthetic addEntry(Landroidx/paging/multicast/ChannelManager$ChannelEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/multicast/ChannelManager$ChannelEntry<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;

    iget v1, v0, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;-><init>(Landroidx/paging/multicast/ChannelManager$Actor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 234
    iget v2, v0, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/multicast/ChannelManager$ChannelEntry;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, v2

    goto :goto_2

    .line 254
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 235
    iget-object p2, p0, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 408
    instance-of v2, p2, Ljava/util/Collection;

    if-eqz v2, :cond_4

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 p2, 0x1

    goto :goto_1

    .line 409
    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/multicast/ChannelManager$ChannelEntry;

    .line 236
    invoke-virtual {v2, p1}, Landroidx/paging/multicast/ChannelManager$ChannelEntry;->hasChannel(Landroidx/paging/multicast/ChannelManager$ChannelEntry;)Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_a

    .line 241
    invoke-virtual {p1}, Landroidx/paging/multicast/ChannelManager$ChannelEntry;->getReceivedValue()Z

    move-result p2

    xor-int/2addr p2, v3

    if-eqz p2, :cond_9

    .line 244
    iget-object p2, p0, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object p2, p0, Landroidx/paging/multicast/ChannelManager$Actor;->buffer:Landroidx/paging/multicast/Buffer;

    invoke-interface {p2}, Landroidx/paging/multicast/Buffer;->getItems()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v3

    if-eqz p2, :cond_7

    .line 247
    iget-object p2, p0, Landroidx/paging/multicast/ChannelManager$Actor;->buffer:Landroidx/paging/multicast/Buffer;

    invoke-interface {p2}, Landroidx/paging/multicast/Buffer;->getItems()Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 411
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;

    .line 248
    iput-object p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/multicast/ChannelManager$Actor$addEntry$1;->label:I

    invoke-virtual {p2, v2, v0}, Landroidx/paging/multicast/ChannelManager$ChannelEntry;->dispatchValue(Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    .line 252
    :cond_7
    iget-object p1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->lastDeliveryAck:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p1, :cond_8

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 254
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 242
    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already received a value"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 241
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 239
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already in the list."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method final synthetic doAdd(Landroidx/paging/multicast/ChannelManager$Message$AddChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/multicast/ChannelManager$Message$AddChannel<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/multicast/ChannelManager$Actor$doAdd$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/multicast/ChannelManager$Actor$doAdd$1;

    iget v1, v0, Landroidx/paging/multicast/ChannelManager$Actor$doAdd$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doAdd$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doAdd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/multicast/ChannelManager$Actor$doAdd$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/multicast/ChannelManager$Actor$doAdd$1;-><init>(Landroidx/paging/multicast/ChannelManager$Actor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doAdd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 214
    iget v2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doAdd$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/paging/multicast/ChannelManager$Actor$doAdd$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/multicast/ChannelManager$Actor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 221
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 216
    new-instance p2, Landroidx/paging/multicast/ChannelManager$ChannelEntry;

    .line 217
    invoke-virtual {p1}, Landroidx/paging/multicast/ChannelManager$Message$AddChannel;->getChannel()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 216
    invoke-direct {p2, p1, v2, v4, v5}, Landroidx/paging/multicast/ChannelManager$ChannelEntry;-><init>(Lkotlinx/coroutines/channels/SendChannel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p0, v0, Landroidx/paging/multicast/ChannelManager$Actor$doAdd$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/multicast/ChannelManager$Actor$doAdd$1;->label:I

    .line 215
    invoke-virtual {p0, p2, v0}, Landroidx/paging/multicast/ChannelManager$Actor;->addEntry(Landroidx/paging/multicast/ChannelManager$ChannelEntry;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 220
    :goto_1
    invoke-direct {p1}, Landroidx/paging/multicast/ChannelManager$Actor;->activateIfNecessary()V

    .line 221
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic doDispatchValue(Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;

    iget v1, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;-><init>(Landroidx/paging/multicast/ChannelManager$Actor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 171
    iget v2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_2
    iget-object p1, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;

    iget-object v2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/multicast/ChannelManager$Actor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 172
    iget-object p2, p0, Landroidx/paging/multicast/ChannelManager$Actor;->this$0:Landroidx/paging/multicast/ChannelManager;

    invoke-static {p2}, Landroidx/paging/multicast/ChannelManager;->access$getOnEach$p(Landroidx/paging/multicast/ChannelManager;)Lkotlin/jvm/functions/Function2;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;->getValue()Ljava/lang/Object;

    move-result-object v2

    iput-object p0, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->label:I

    invoke-interface {p2, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 173
    :goto_1
    iget-object p2, v2, Landroidx/paging/multicast/ChannelManager$Actor;->buffer:Landroidx/paging/multicast/Buffer;

    invoke-interface {p2, p1}, Landroidx/paging/multicast/Buffer;->add(Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;)V

    .line 174
    iput-boolean v4, v2, Landroidx/paging/multicast/ChannelManager$Actor;->dispatchedValue:Z

    .line 175
    iget-object p2, v2, Landroidx/paging/multicast/ChannelManager$Actor;->buffer:Landroidx/paging/multicast/Buffer;

    invoke-interface {p2}, Landroidx/paging/multicast/Buffer;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 178
    invoke-virtual {p1}, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;->getDelivered()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p2

    iput-object p2, v2, Landroidx/paging/multicast/ChannelManager$Actor;->lastDeliveryAck:Lkotlinx/coroutines/CompletableDeferred;

    .line 180
    :cond_5
    iget-object p2, v2, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 397
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, p1

    move-object p1, p2

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/paging/multicast/ChannelManager$ChannelEntry;

    .line 181
    iput-object v2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/multicast/ChannelManager$Actor$doDispatchValue$1;->label:I

    invoke-virtual {p2, v2, v0}, Landroidx/paging/multicast/ChannelManager$ChannelEntry;->dispatchValue(Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    .line 183
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic doRemove(Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value<",
            "TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/multicast/ChannelManager$Actor$doRemove$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/multicast/ChannelManager$Actor$doRemove$1;

    iget v1, v0, Landroidx/paging/multicast/ChannelManager$Actor$doRemove$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doRemove$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doRemove$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/multicast/ChannelManager$Actor$doRemove$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/multicast/ChannelManager$Actor$doRemove$1;-><init>(Landroidx/paging/multicast/ChannelManager$Actor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doRemove$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 199
    iget v2, v0, Landroidx/paging/multicast/ChannelManager$Actor$doRemove$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    .line 209
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 200
    iget-object p2, p0, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    const/4 v2, 0x0

    .line 402
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 403
    check-cast v4, Landroidx/paging/multicast/ChannelManager$ChannelEntry;

    .line 201
    invoke-virtual {v4, p1}, Landroidx/paging/multicast/ChannelManager$ChannelEntry;->hasChannel(Lkotlinx/coroutines/channels/SendChannel;)Z

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 204
    iget-object p1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 205
    iget-object p1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->this$0:Landroidx/paging/multicast/ChannelManager;

    invoke-static {p1}, Landroidx/paging/multicast/ChannelManager;->access$getKeepUpstreamAlive$p(Landroidx/paging/multicast/ChannelManager;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 206
    iget-object p1, p0, Landroidx/paging/multicast/ChannelManager$Actor;->producer:Landroidx/paging/multicast/SharedFlowProducer;

    if-eqz p1, :cond_5

    iput v3, v0, Landroidx/paging/multicast/ChannelManager$Actor$doRemove$1;->label:I

    invoke-virtual {p1, v0}, Landroidx/paging/multicast/SharedFlowProducer;->cancelAndJoin(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 209
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public handle(Landroidx/paging/multicast/ChannelManager$Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/multicast/ChannelManager$Message<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/multicast/ChannelManager$Actor$handle$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/multicast/ChannelManager$Actor$handle$1;

    iget v1, v0, Landroidx/paging/multicast/ChannelManager$Actor$handle$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$handle$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$handle$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/multicast/ChannelManager$Actor$handle$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/multicast/ChannelManager$Actor$handle$1;-><init>(Landroidx/paging/multicast/ChannelManager$Actor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/multicast/ChannelManager$Actor$handle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 101
    iget v2, v0, Landroidx/paging/multicast/ChannelManager$Actor$handle$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_2
    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    instance-of p2, p1, Landroidx/paging/multicast/ChannelManager$Message$AddChannel;

    if-eqz p2, :cond_4

    check-cast p1, Landroidx/paging/multicast/ChannelManager$Message$AddChannel;

    iput v5, v0, Landroidx/paging/multicast/ChannelManager$Actor$handle$1;->label:I

    invoke-virtual {p0, p1, v0}, Landroidx/paging/multicast/ChannelManager$Actor;->doAdd(Landroidx/paging/multicast/ChannelManager$Message$AddChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 104
    :cond_4
    instance-of p2, p1, Landroidx/paging/multicast/ChannelManager$Message$RemoveChannel;

    if-eqz p2, :cond_5

    check-cast p1, Landroidx/paging/multicast/ChannelManager$Message$RemoveChannel;

    invoke-virtual {p1}, Landroidx/paging/multicast/ChannelManager$Message$RemoveChannel;->getChannel()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object p1

    iput v4, v0, Landroidx/paging/multicast/ChannelManager$Actor$handle$1;->label:I

    invoke-virtual {p0, p1, v0}, Landroidx/paging/multicast/ChannelManager$Actor;->doRemove(Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 105
    :cond_5
    instance-of p2, p1, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;

    if-eqz p2, :cond_6

    check-cast p1, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;

    iput v3, v0, Landroidx/paging/multicast/ChannelManager$Actor$handle$1;->label:I

    invoke-virtual {p0, p1, v0}, Landroidx/paging/multicast/ChannelManager$Actor;->doDispatchValue(Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 106
    :cond_6
    instance-of p2, p1, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Error;

    if-eqz p2, :cond_7

    check-cast p1, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Error;

    invoke-direct {p0, p1}, Landroidx/paging/multicast/ChannelManager$Actor;->doDispatchError(Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Error;)V

    goto :goto_2

    .line 107
    :cond_7
    instance-of p2, p1, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$UpstreamFinished;

    if-eqz p2, :cond_8

    check-cast p1, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$UpstreamFinished;

    invoke-virtual {p1}, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$UpstreamFinished;->getProducer()Landroidx/paging/multicast/SharedFlowProducer;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/paging/multicast/ChannelManager$Actor;->doHandleUpstreamClose(Landroidx/paging/multicast/SharedFlowProducer;)V

    .line 109
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic handle(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 74
    check-cast p1, Landroidx/paging/multicast/ChannelManager$Message;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/multicast/ChannelManager$Actor;->handle(Landroidx/paging/multicast/ChannelManager$Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onClosed()V
    .locals 2

    .line 161
    iget-object v0, p0, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 395
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/multicast/ChannelManager$ChannelEntry;

    .line 162
    invoke-virtual {v1}, Landroidx/paging/multicast/ChannelManager$ChannelEntry;->close()V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Landroidx/paging/multicast/ChannelManager$Actor;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    iget-object v0, p0, Landroidx/paging/multicast/ChannelManager$Actor;->producer:Landroidx/paging/multicast/SharedFlowProducer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/paging/multicast/SharedFlowProducer;->cancel()V

    :cond_1
    return-void
.end method
