.class public final Landroidx/paging/multicast/Multicaster;
.super Ljava/lang/Object;
.source "Multicaster.kt"


# annotations
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
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B`\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\"\u0010\u000b\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\n\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010J\u0011\u0010\u001b\u001a\u00020\u000eH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001cR!\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R/\u0010\u000b\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000cX\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/paging/multicast/Multicaster;",
        "T",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "bufferSize",
        "",
        "source",
        "Lkotlinx/coroutines/flow/Flow;",
        "piggybackingDownstream",
        "",
        "onEach",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "keepUpstreamAlive",
        "(Lkotlinx/coroutines/CoroutineScope;ILkotlinx/coroutines/flow/Flow;ZLkotlin/jvm/functions/Function2;Z)V",
        "channelManager",
        "Landroidx/paging/multicast/ChannelManager;",
        "getChannelManager",
        "()Landroidx/paging/multicast/ChannelManager;",
        "channelManager$delegate",
        "Lkotlin/Lazy;",
        "flow",
        "getFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "Lkotlin/jvm/functions/Function2;",
        "close",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final channelManager$delegate:Lkotlin/Lazy;

.field private final flow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation
.end field

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

.field private final source:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;ILkotlinx/coroutines/flow/Flow;ZLkotlin/jvm/functions/Function2;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "I",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;Z",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEach"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/multicast/Multicaster;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/paging/multicast/Multicaster;->source:Lkotlinx/coroutines/flow/Flow;

    iput-boolean p4, p0, Landroidx/paging/multicast/Multicaster;->piggybackingDownstream:Z

    iput-object p5, p0, Landroidx/paging/multicast/Multicaster;->onEach:Lkotlin/jvm/functions/Function2;

    iput-boolean p6, p0, Landroidx/paging/multicast/Multicaster;->keepUpstreamAlive:Z

    .line 63
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Landroidx/paging/multicast/Multicaster$channelManager$2;

    invoke-direct {p3, p0, p2}, Landroidx/paging/multicast/Multicaster$channelManager$2;-><init>(Landroidx/paging/multicast/Multicaster;I)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/multicast/Multicaster;->channelManager$delegate:Lkotlin/Lazy;

    .line 74
    new-instance p1, Landroidx/paging/multicast/Multicaster$flow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/paging/multicast/Multicaster$flow$1;-><init>(Landroidx/paging/multicast/Multicaster;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/multicast/Multicaster;->flow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;ILkotlinx/coroutines/flow/Flow;ZLkotlin/jvm/functions/Function2;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p2

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    move v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v7, p5

    .line 60
    invoke-direct/range {v2 .. v8}, Landroidx/paging/multicast/Multicaster;-><init>(Lkotlinx/coroutines/CoroutineScope;ILkotlinx/coroutines/flow/Flow;ZLkotlin/jvm/functions/Function2;Z)V

    return-void
.end method

.method public static final synthetic access$getChannelManager$p(Landroidx/paging/multicast/Multicaster;)Landroidx/paging/multicast/ChannelManager;
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/paging/multicast/Multicaster;->getChannelManager()Landroidx/paging/multicast/ChannelManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getKeepUpstreamAlive$p(Landroidx/paging/multicast/Multicaster;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Landroidx/paging/multicast/Multicaster;->keepUpstreamAlive:Z

    return p0
.end method

.method public static final synthetic access$getOnEach$p(Landroidx/paging/multicast/Multicaster;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/paging/multicast/Multicaster;->onEach:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getPiggybackingDownstream$p(Landroidx/paging/multicast/Multicaster;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Landroidx/paging/multicast/Multicaster;->piggybackingDownstream:Z

    return p0
.end method

.method public static final synthetic access$getScope$p(Landroidx/paging/multicast/Multicaster;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/paging/multicast/Multicaster;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getSource$p(Landroidx/paging/multicast/Multicaster;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/paging/multicast/Multicaster;->source:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method private final getChannelManager()Landroidx/paging/multicast/ChannelManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/multicast/ChannelManager<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/paging/multicast/Multicaster;->channelManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/multicast/ChannelManager;

    return-object v0
.end method


# virtual methods
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

    .line 90
    invoke-direct {p0}, Landroidx/paging/multicast/Multicaster;->getChannelManager()Landroidx/paging/multicast/ChannelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/paging/multicast/ChannelManager;->close(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    .line 91
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Landroidx/paging/multicast/Multicaster;->flow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method
