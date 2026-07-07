.class public final Landroidx/paging/multicast/ChannelManagerKt;
.super Ljava/lang/Object;
.source "ChannelManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\u0018\u0010\u0005\u001a\u00020\u0006\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0007H\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Buffer",
        "Landroidx/paging/multicast/Buffer;",
        "T",
        "limit",
        "",
        "markDelivered",
        "",
        "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;",
        "paging-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private static final Buffer(I)Landroidx/paging/multicast/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/paging/multicast/Buffer<",
            "TT;>;"
        }
    .end annotation

    if-lez p0, :cond_0

    .line 369
    new-instance v0, Landroidx/paging/multicast/BufferImpl;

    invoke-direct {v0, p0}, Landroidx/paging/multicast/BufferImpl;-><init>(I)V

    check-cast v0, Landroidx/paging/multicast/Buffer;

    goto :goto_0

    .line 371
    :cond_0
    new-instance p0, Landroidx/paging/multicast/NoBuffer;

    invoke-direct {p0}, Landroidx/paging/multicast/NoBuffer;-><init>()V

    move-object v0, p0

    check-cast v0, Landroidx/paging/multicast/Buffer;

    :goto_0
    return-object v0
.end method

.method public static final synthetic access$Buffer(I)Landroidx/paging/multicast/Buffer;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/paging/multicast/ChannelManagerKt;->Buffer(I)Landroidx/paging/multicast/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static final markDelivered(Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "$this$markDelivered"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;->getDelivered()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
