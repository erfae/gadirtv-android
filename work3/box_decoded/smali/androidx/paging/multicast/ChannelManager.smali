.class public final Landroidx/paging/multicast/ChannelManager;
.super Ljava/lang/Object;
.source "ChannelManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/multicast/ChannelManager$Actor;,
        Landroidx/paging/multicast/ChannelManager$ChannelEntry;,
        Landroidx/paging/multicast/ChannelManager$Message;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0003\u001c\u001d\u001eB^\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\"\u0010\t\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000f\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J%\u0010\u0014\u001a\u00020\u000c2\u0012\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00170\u0016H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018J\u0011\u0010\u0019\u001a\u00020\u000cH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ%\u0010\u001b\u001a\u00020\u000c2\u0012\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00170\u0016H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018R\u0018\u0010\u0011\u001a\u000c0\u0012R\u0008\u0012\u0004\u0012\u00028\u00000\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\t\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00020\nX\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/paging/multicast/ChannelManager;",
        "T",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "bufferSize",
        "",
        "piggybackingDownstream",
        "",
        "onEach",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "keepUpstreamAlive",
        "upstream",
        "Lkotlinx/coroutines/flow/Flow;",
        "(Lkotlinx/coroutines/CoroutineScope;IZLkotlin/jvm/functions/Function2;ZLkotlinx/coroutines/flow/Flow;)V",
        "actor",
        "Landroidx/paging/multicast/ChannelManager$Actor;",
        "Lkotlin/jvm/functions/Function2;",
        "addDownstream",
        "channel",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;",
        "(Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "close",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeDownstream",
        "Actor",
        "ChannelEntry",
        "Message",
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
.field private final actor:Landroidx/paging/multicast/ChannelManager$Actor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/multicast/ChannelManager<",
            "TT;>.Actor;"
        }
    .end annotation
.end field

.field private final bufferSize:I

.field private final keepUpstreamAlive:Z

.field private final onEach:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final piggybackingDownstream:Z

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final upstream:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;IZLkotlin/jvm/functions/Function2;ZLkotlinx/coroutines/flow/Flow;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "IZ",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEach"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upstream"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/multicast/ChannelManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput p2, p0, Landroidx/paging/multicast/ChannelManager;->bufferSize:I

    iput-boolean p3, p0, Landroidx/paging/multicast/ChannelManager;->piggybackingDownstream:Z

    iput-object p4, p0, Landroidx/paging/multicast/ChannelManager;->onEach:Lkotlin/jvm/functions/Function2;

    iput-boolean p5, p0, Landroidx/paging/multicast/ChannelManager;->keepUpstreamAlive:Z

    iput-object p6, p0, Landroidx/paging/multicast/ChannelManager;->upstream:Lkotlinx/coroutines/flow/Flow;

    .line 69
    new-instance p1, Landroidx/paging/multicast/ChannelManager$Actor;

    invoke-direct {p1, p0}, Landroidx/paging/multicast/ChannelManager$Actor;-><init>(Landroidx/paging/multicast/ChannelManager;)V

    iput-object p1, p0, Landroidx/paging/multicast/ChannelManager;->actor:Landroidx/paging/multicast/ChannelManager$Actor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;IZLkotlin/jvm/functions/Function2;ZLkotlinx/coroutines/flow/Flow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p4

    move-object v8, p6

    .line 56
    invoke-direct/range {v2 .. v8}, Landroidx/paging/multicast/ChannelManager;-><init>(Lkotlinx/coroutines/CoroutineScope;IZLkotlin/jvm/functions/Function2;ZLkotlinx/coroutines/flow/Flow;)V

    return-void
.end method

.method public static final synthetic access$getBufferSize$p(Landroidx/paging/multicast/ChannelManager;)I
    .locals 0

    .line 36
    iget p0, p0, Landroidx/paging/multicast/ChannelManager;->bufferSize:I

    return p0
.end method

.method public static final synthetic access$getKeepUpstreamAlive$p(Landroidx/paging/multicast/ChannelManager;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Landroidx/paging/multicast/ChannelManager;->keepUpstreamAlive:Z

    return p0
.end method

.method public static final synthetic access$getOnEach$p(Landroidx/paging/multicast/ChannelManager;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 36
    iget-object p0, p0, Landroidx/paging/multicast/ChannelManager;->onEach:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getPiggybackingDownstream$p(Landroidx/paging/multicast/ChannelManager;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Landroidx/paging/multicast/ChannelManager;->piggybackingDownstream:Z

    return p0
.end method

.method public static final synthetic access$getScope$p(Landroidx/paging/multicast/ChannelManager;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 36
    iget-object p0, p0, Landroidx/paging/multicast/ChannelManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getUpstream$p(Landroidx/paging/multicast/ChannelManager;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 36
    iget-object p0, p0, Landroidx/paging/multicast/ChannelManager;->upstream:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method


# virtual methods
.method public final addDownstream(Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    .line 62
    iget-object v0, p0, Landroidx/paging/multicast/ChannelManager;->actor:Landroidx/paging/multicast/ChannelManager$Actor;

    new-instance v1, Landroidx/paging/multicast/ChannelManager$Message$AddChannel;

    invoke-direct {v1, p1}, Landroidx/paging/multicast/ChannelManager$Message$AddChannel;-><init>(Lkotlinx/coroutines/channels/SendChannel;)V

    invoke-virtual {v0, v1, p2}, Landroidx/paging/multicast/ChannelManager$Actor;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final close(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroidx/paging/multicast/ChannelManager;->actor:Landroidx/paging/multicast/ChannelManager$Actor;

    invoke-virtual {v0, p1}, Landroidx/paging/multicast/ChannelManager$Actor;->close(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final removeDownstream(Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    .line 65
    iget-object v0, p0, Landroidx/paging/multicast/ChannelManager;->actor:Landroidx/paging/multicast/ChannelManager$Actor;

    new-instance v1, Landroidx/paging/multicast/ChannelManager$Message$RemoveChannel;

    invoke-direct {v1, p1}, Landroidx/paging/multicast/ChannelManager$Message$RemoveChannel;-><init>(Lkotlinx/coroutines/channels/SendChannel;)V

    invoke-virtual {v0, v1, p2}, Landroidx/paging/multicast/ChannelManager$Actor;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
