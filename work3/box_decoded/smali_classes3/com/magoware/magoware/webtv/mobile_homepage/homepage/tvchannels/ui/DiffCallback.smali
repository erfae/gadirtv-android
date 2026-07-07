.class final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "HomeFeedTvChannelsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0018\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/DiffCallback;",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;",
        "()V",
        "areContentsTheSame",
        "",
        "oldItem",
        "newItem",
        "areItemsTheSame",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 72
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;

    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/DiffCallback;->areContentsTheSame(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getId()I

    move-result p1

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getId()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 72
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;

    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/DiffCallback;->areItemsTheSame(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;)Z

    move-result p1

    return p1
.end method
