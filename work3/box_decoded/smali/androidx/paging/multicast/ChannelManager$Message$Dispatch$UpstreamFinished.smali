.class public final Landroidx/paging/multicast/ChannelManager$Message$Dispatch$UpstreamFinished;
.super Landroidx/paging/multicast/ChannelManager$Message$Dispatch;
.source "ChannelManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/multicast/ChannelManager$Message$Dispatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpstreamFinished"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/paging/multicast/ChannelManager$Message$Dispatch<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0003\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00030\u0004\u00a2\u0006\u0002\u0010\u0005R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00030\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$UpstreamFinished;",
        "T",
        "Landroidx/paging/multicast/ChannelManager$Message$Dispatch;",
        "producer",
        "Landroidx/paging/multicast/SharedFlowProducer;",
        "(Landroidx/paging/multicast/SharedFlowProducer;)V",
        "getProducer",
        "()Landroidx/paging/multicast/SharedFlowProducer;",
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
.field private final producer:Landroidx/paging/multicast/SharedFlowProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/multicast/SharedFlowProducer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/multicast/SharedFlowProducer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/multicast/SharedFlowProducer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "producer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 339
    invoke-direct {p0, v0}, Landroidx/paging/multicast/ChannelManager$Message$Dispatch;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$UpstreamFinished;->producer:Landroidx/paging/multicast/SharedFlowProducer;

    return-void
.end method


# virtual methods
.method public final getProducer()Landroidx/paging/multicast/SharedFlowProducer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/multicast/SharedFlowProducer<",
            "TT;>;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Landroidx/paging/multicast/ChannelManager$Message$Dispatch$UpstreamFinished;->producer:Landroidx/paging/multicast/SharedFlowProducer;

    return-object v0
.end method
