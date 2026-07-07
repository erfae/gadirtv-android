.class final Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;
.super Ljava/lang/Object;
.source "TvHomePageActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->openSchedulePopUp(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
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
.field final synthetic $card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 0

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 283
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getPopUpLayout()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b039a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "popUpLayout.findViewById<Button>(R.id.left_button)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    const v4, 0x7f140396

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "card.title"

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getPopUpLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f14039a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 285
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getHomeFeedComingChannelsViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;

    iget-object v4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v4

    iget-object v6, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelNumber()I

    move-result v6

    iget-object v7, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    .line 287
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getChannelCreatorId()I

    move-result v9

    .line 288
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getId()I

    move-result v10

    .line 289
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 290
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getDescription()Ljava/lang/String;

    move-result-object v12

    .line 291
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getProgramStart()Ljava/lang/String;

    move-result-object v13

    .line 292
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getProgramEnd()Ljava/lang/String;

    move-result-object v14

    .line 293
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getIconUrl()Ljava/lang/String;

    move-result-object v15

    .line 294
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getScheduled()Z

    move-result v16

    move-object v8, v3

    .line 286
    invoke-direct/range {v8 .. v16}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 285
    invoke-direct {v2, v4, v6, v7, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;-><init>(IILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->scheduleChannel(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;)V

    goto/16 :goto_0

    .line 296
    :cond_0
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getPopUpLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 297
    iget-object v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->getHomeFeedComingChannelsViewModel()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;

    iget-object v4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v4

    iget-object v6, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelNumber()I

    move-result v6

    iget-object v7, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    .line 299
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getChannelCreatorId()I

    move-result v9

    .line 300
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getId()I

    move-result v10

    .line 301
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 302
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getDescription()Ljava/lang/String;

    move-result-object v12

    .line 303
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getProgramStart()Ljava/lang/String;

    move-result-object v13

    .line 304
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getProgramEnd()Ljava/lang/String;

    move-result-object v14

    .line 305
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getIconUrl()Ljava/lang/String;

    move-result-object v15

    .line 306
    iget-object v8, v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity$openSchedulePopUp$1;->$card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getChannelDataList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getScheduled()Z

    move-result v5

    xor-int/lit8 v16, v5, 0x1

    move-object v8, v3

    .line 298
    invoke-direct/range {v8 .. v16}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 297
    invoke-direct {v2, v4, v6, v7, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;-><init>(IILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->scheduleChannel(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;)V

    :goto_0
    return-void
.end method
