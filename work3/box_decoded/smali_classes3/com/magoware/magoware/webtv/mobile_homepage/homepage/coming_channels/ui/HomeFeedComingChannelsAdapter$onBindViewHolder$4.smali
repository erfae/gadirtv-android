.class final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$onBindViewHolder$4;
.super Ljava/lang/Object;
.source "HomeFeedComingChannelsAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $holder:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$ViewHolder;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;ILcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$onBindViewHolder$4;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;

    iput p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$onBindViewHolder$4;->$position:I

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$onBindViewHolder$4;->$holder:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 46
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$onBindViewHolder$4;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;->getListener()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/LoginDialogListener;->showLoginDialog()V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$onBindViewHolder$4;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;

    iget v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$onBindViewHolder$4;->$position:I

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;->access$getItem(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;I)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelEpgData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelEpgData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getScheduled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->setScheduled(Z)V

    .line 49
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$onBindViewHolder$4;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;->getViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    move-result-object v0

    const-string v1, "channel"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->scheduleChannel(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;)V

    .line 50
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$onBindViewHolder$4;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$onBindViewHolder$4;->$holder:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$ViewHolder;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;->access$updateScheduleBtn(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsAdapter;Landroid/view/View;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;)V

    :goto_0
    return-void
.end method
