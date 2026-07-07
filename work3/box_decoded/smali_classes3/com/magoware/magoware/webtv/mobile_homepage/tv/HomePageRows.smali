.class public Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;
.super Landroidx/leanback/app/RowsSupportFragment;
.source "HomePageRows.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/Injectable;


# instance fields
.field private final carouselHandler:Landroid/os/Handler;

.field homeFeedBigBannerViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/HomeFeedBigBannerViewModel;

.field homeFeedCarouselList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;",
            ">;"
        }
    .end annotation
.end field

.field homeFeedChannelsTrendingViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;

.field homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

.field homeFeedMovieNewViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

.field homeFeedMoviePausedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;

.field homeFeedMovieViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;

.field homeFeedSmallBannerViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;

.field homeFeedTvChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;

.field homeFeedTvShowsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;

.field homeFeedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;

.field private mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

.field private middleMan:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomeMiddleMan;

.field private positionsOfUpdatingCarousels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private shouldRecreateSettingsCarousel:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Landroidx/leanback/app/RowsSupportFragment;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->shouldRecreateSettingsCarousel:Z

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->carouselHandler:Landroid/os/Handler;

    return-void
.end method

.method private addCarousel(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carousel"
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "feed_movies_paused"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "feed_movies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "feed_movies_shows"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "feed_small_banners"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "feed_tv_schedulable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "feed_tv_channels"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "feed_movies_new_arrivals"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "feed_tv_trending"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "feed_big_banners"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 226
    :pswitch_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->initPausedMoviesObserver()V

    goto :goto_1

    .line 229
    :pswitch_1
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->initMoviesObserver()V

    goto :goto_1

    .line 232
    :pswitch_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->initTvShowsObserver()V

    goto :goto_1

    .line 220
    :pswitch_3
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->initComingNextObserver()V

    goto :goto_1

    .line 214
    :pswitch_4
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->initChannelsObserver()V

    goto :goto_1

    .line 223
    :pswitch_5
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->initNewArrivalsObserver()V

    goto :goto_1

    .line 217
    :pswitch_6
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->initTrendingObserver()V

    goto :goto_1

    .line 235
    :pswitch_7
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->initBigBannersObserver()V

    .line 237
    :pswitch_8
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->initSmallBannersObserver()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3806ae99 -> :sswitch_8
        -0x1faf8edf -> :sswitch_7
        -0x1e07a94c -> :sswitch_6
        -0x1d70c034 -> :sswitch_5
        -0x9d5ef94 -> :sswitch_4
        -0x6cfc952 -> :sswitch_3
        -0x55419e5 -> :sswitch_2
        0x28d1d104 -> :sswitch_1
        0x555258c9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addNextCarousel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listIterator"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedCarouselList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedCarouselList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->addCarousel(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->addSettingsCarousel()V

    .line 206
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->middleMan:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomeMiddleMan;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomeMiddleMan;->initWorkerForAndroidChannels()V

    .line 207
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->middleMan:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomeMiddleMan;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomeMiddleMan;->unBlockScreen()V

    :goto_0
    return-void
.end method

.method private addSettingsCarousel()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createSettingsCardRow()Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsPresenter;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsPresenter;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method private createBigBannersCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeFeedBigBannersList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;",
            ">;)",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;"
        }
    .end annotation

    .line 648
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 649
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    .line 652
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;

    .line 653
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 654
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 655
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setImageUrl(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBanners;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setWebLink(Ljava/lang/String;)V

    .line 658
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->BIG_BANNER:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    goto :goto_0

    :cond_1
    const-string p1, "BIG BANNER"

    .line 660
    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setCards(Ljava/util/List;)V

    return-object v1
.end method

.method private createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cardRow",
            "presenter"
        }
    .end annotation

    .line 708
    new-instance v0, Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {v0, p2}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/Presenter;)V

    .line 709
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->getCards()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 710
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 712
    :cond_0
    new-instance p2, Landroidx/leanback/widget/HeaderItem;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    .line 713
    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    invoke-direct {v1, p2, v0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;-><init>(Landroidx/leanback/widget/HeaderItem;Landroidx/leanback/widget/ObjectAdapter;Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;)V

    return-object v1
.end method

.method private createComingNextCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeFeedComingChannelsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;",
            ">;)",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;"
        }
    .end annotation

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;-><init>()V

    .line 460
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    .line 464
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->syncScheduledList()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 466
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;

    .line 469
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 470
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelEpgData()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->getId()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 471
    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelEpgData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingEpgData;->setScheduled(Z)V

    .line 475
    :cond_2
    new-instance v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 476
    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 477
    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setChannelNumber(I)V

    .line 479
    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannels;->getChannelEpgData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setChannelDataList(Ljava/util/List;)V

    .line 480
    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->COMING_NEXT:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v4, v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 481
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string p1, "COMING NEXT"

    .line 483
    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setCards(Ljava/util/List;)V

    return-object v1
.end method

.method private createMoviewCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moviesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;",
            ">;)",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;"
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    .line 368
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;

    .line 369
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 370
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 371
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->getPosterPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setPosterPath(Ljava/lang/String;)V

    .line 373
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->MOVIE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 374
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    :cond_1
    new-instance p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    const/16 v2, 0x849

    .line 377
    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 378
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f1403a7

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 379
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->MOVIE:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 380
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "MOVIES"

    .line 382
    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setCards(Ljava/util/List;)V

    return-object v1
.end method

.method private createNewArrivalsRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeFeedMoviesNewList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;",
            ">;)",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;"
        }
    .end annotation

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    .line 516
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;

    .line 517
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 518
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 519
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;->getBackdropPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setPosterPath(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;->getWatched()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setWatched(Z)V

    .line 522
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;->getReleaseDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setReleaseDate(Ljava/lang/String;)V

    .line 523
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->NEW_ARRIVAL:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 524
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "NEW ARRIVALS"

    .line 526
    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setCards(Ljava/util/List;)V

    return-object v1
.end method

.method private createPausedMoviesCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeFeedMoviesPausedList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;",
            ">;)",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;"
        }
    .end annotation

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 558
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    .line 561
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;

    .line 562
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 563
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 564
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getBackdropPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setPosterPath(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getResumePosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setResumePosition(I)V

    .line 567
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getPercentagePosition()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setPercentagePosition(I)V

    .line 568
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->PAUSED:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 569
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "CONTINUE WATCHING"

    .line 571
    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setCards(Ljava/util/List;)V

    return-object v1
.end method

.method private createSettingsCardRow()Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;
    .locals 6

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;-><init>()V

    .line 258
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    new-instance v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 262
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f140320

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 263
    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->SETTINGS:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 264
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 267
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f1403b7

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 268
    sget-object v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->SETTINGS:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 269
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 272
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f140076

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 273
    sget-object v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->SETTINGS:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 274
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 277
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f140255

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 278
    sget-object v4, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->SETTINGS:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 279
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 282
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 283
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 287
    :cond_0
    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setCards(Ljava/util/List;)V

    const-string v0, "SETTINGS"

    .line 288
    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setTitle(Ljava/lang/String;)V

    return-object v1
.end method

.method private createSmallBannersCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeFeedSmallBannersList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBanners;",
            ">;)",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;"
        }
    .end annotation

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 691
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    .line 694
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBanners;

    .line 695
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 696
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBanners;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 697
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBanners;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBanners;->getImgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setImageUrl(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBanners;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setWebLink(Ljava/lang/String;)V

    .line 700
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->BIG_BANNER:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    goto :goto_0

    :cond_1
    const-string p1, "SMALL BANNER"

    .line 702
    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setCards(Ljava/util/List;)V

    return-object v1
.end method

.method private createTrendingCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeFeedChannelsTrendingList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;",
            ">;)",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;"
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    .line 418
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;

    .line 419
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 420
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;->getChannelId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 421
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;->getChannelNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setChannelNumber(I)V

    .line 423
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;->getChannelEpgData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setChannelDataList(Ljava/util/List;)V

    .line 424
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->TRENDING:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 425
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "LIVE NOW"

    .line 427
    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setCards(Ljava/util/List;)V

    return-object v1
.end method

.method private createTvChannelsCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homeFeedTvChannelsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;",
            ">;)",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    .line 321
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;

    .line 322
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 323
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 324
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getChannelNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setChannelNumber(I)V

    .line 326
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannels;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setPosterPath(Ljava/lang/String;)V

    .line 327
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->TV_CHANNEL:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 328
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_1
    new-instance p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    const/16 v2, 0x77f

    .line 331
    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 332
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->TV_CHANNEL:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 333
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "TV CHANNELS"

    .line 335
    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setCards(Ljava/util/List;)V

    return-object v1
.end method

.method private createtvShowsCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvShowsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShows;",
            ">;)",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;"
        }
    .end annotation

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 601
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;-><init>()V

    if-nez p1, :cond_0

    return-object v1

    .line 604
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShows;

    .line 605
    new-instance v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    .line 606
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShows;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 607
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShows;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShows;->getPosterPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setPosterPath(Ljava/lang/String;)V

    .line 609
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->TV_SERIES:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setVodType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;)V

    .line 610
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->TV_SHOW:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 611
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 613
    :cond_1
    new-instance p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;-><init>()V

    const/16 v2, 0x849

    .line 614
    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setId(I)V

    .line 615
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f1403a7

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setTitle(Ljava/lang/String;)V

    .line 616
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;->TV_SHOW:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->setType(Lcom/magoware/magoware/webtv/network/mvvm/models/Card$Type;)V

    .line 617
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "TV SHOWS"

    .line 619
    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setTitle(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;->setCards(Ljava/util/List;)V

    return-object v1
.end method

.method private getCarousels()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;->getHomeFeedCarousels()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$YYgooKURzktIF6Rd1je0T7kU4Us;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$YYgooKURzktIF6Rd1je0T7kU4Us;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initBigBannersObserver()V
    .locals 3

    .line 627
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedBigBannerViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/HomeFeedBigBannerViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/HomeFeedBigBannerViewModel;->getHomeFeedBigBanners()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$DU_tGYiuGniRvAMrRTirdwklFJU;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$DU_tGYiuGniRvAMrRTirdwklFJU;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private initChannelsObserver()V
    .locals 3

    .line 295
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedTvChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;->getHomeFeedTvChannels()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$jQQmf-VeNhJeAuhtE8o-Xk46l6o;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$jQQmf-VeNhJeAuhtE8o-Xk46l6o;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private initComingNextObserver()V
    .locals 4

    .line 436
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->getComingChannels()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$BGwx4xZnZfBladGT7CV1zoZ8Mkw;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$BGwx4xZnZfBladGT7CV1zoZ8Mkw;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 454
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$hc-vIKg8o09GcoXyQiK7kqFyJSw;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$hc-vIKg8o09GcoXyQiK7kqFyJSw;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initMoviesObserver()V
    .locals 3

    .line 343
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedMovieViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;->getHomeFeedMovies()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$i0CwcCGtqRJHPVVeEXm8i_XXGQs;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$i0CwcCGtqRJHPVVeEXm8i_XXGQs;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private initNewArrivalsObserver()V
    .locals 3

    .line 491
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedMovieNewViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;->getHomeFeedMoviesNew()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$aDO04JjohtTu3T-3wUtHZkdrOJ0;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$aDO04JjohtTu3T-3wUtHZkdrOJ0;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private initPausedMoviesObserver()V
    .locals 3

    .line 535
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedMoviePausedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;->homeFeedMoviesPaused()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$eZnGvtyv2_b0Nh_ToL4gLhn52c0;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$eZnGvtyv2_b0Nh_ToL4gLhn52c0;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private initSmallBannersObserver()V
    .locals 3

    .line 668
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedSmallBannerViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;->getHomeFeedSmallBanners()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$cWSs7kKcxEyo3zpOEMEE_MnHOgA;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$cWSs7kKcxEyo3zpOEMEE_MnHOgA;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private initTrendingObserver()V
    .locals 4

    .line 390
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedChannelsTrendingViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;->homeFeedChannelsTrending()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$snb96_fsDL2HbshNRsvlis6XPas;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$snb96_fsDL2HbshNRsvlis6XPas;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 408
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 410
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$iUtJ-XzFjXzcXVm7K30HuIcVgiE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$iUtJ-XzFjXzcXVm7K30HuIcVgiE;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initTvShowsObserver()V
    .locals 3

    .line 579
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedTvShowsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;->getHomeFeedTvShows()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$2-PU3lYY4y6Z2YSe0oqFKNw6S1I;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$2-PU3lYY4y6Z2YSe0oqFKNw6S1I;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method private instantiateViewModels()V
    .locals 2

    .line 141
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;

    .line 142
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "apiv3/feeds/carousels"

    goto :goto_0

    :cond_0
    const-string v1, "apiv3/guest/feeds/carousels"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;->setUrl(Ljava/lang/String;)V

    .line 144
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedTvChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;

    .line 145
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "apiv3/feeds/tv/channels"

    goto :goto_1

    :cond_1
    const-string v1, "apiv3/guest/feeds/tv/channels"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;->setUrl(Ljava/lang/String;)V

    .line 147
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedMovieViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;

    .line 148
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "apiv3/feeds/movies"

    goto :goto_2

    :cond_2
    const-string v1, "apiv3/guest/feeds/movies"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;->setUrl(Ljava/lang/String;)V

    .line 150
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedChannelsTrendingViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;

    .line 151
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "apiv3/feeds/tv/trending"

    goto :goto_3

    :cond_3
    const-string v1, "apiv3/guest/feeds/tv/trending"

    :goto_3
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;->setUrl(Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedComingChannelsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    .line 154
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "apiv3/feeds/tv/coming"

    goto :goto_4

    :cond_4
    const-string v1, "apiv3/guest/feeds/tv/coming"

    :goto_4
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;->setUrl(Ljava/lang/String;)V

    .line 156
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedMovieNewViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    .line 157
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "apiv3/feeds/movies/new"

    goto :goto_5

    :cond_5
    const-string v1, "apiv3/guest/feeds/movies/new"

    :goto_5
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;->setUrl(Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedMoviePausedViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;

    .line 160
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "apiv3/feeds/movies/paused"

    goto :goto_6

    :cond_6
    const-string v1, "apiv3/guest/feeds/movies/paused"

    :goto_6
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;->setUrl(Ljava/lang/String;)V

    .line 162
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedTvShowsViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;

    .line 163
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "apiv3/feeds/shows"

    goto :goto_7

    :cond_7
    const-string v1, "apiv3/guest/feeds/shows"

    :goto_7
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;->setUrl(Ljava/lang/String;)V

    .line 165
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/HomeFeedBigBannerViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/HomeFeedBigBannerViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedBigBannerViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/HomeFeedBigBannerViewModel;

    .line 166
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "/apiv3/feeds/banners/big"

    goto :goto_8

    :cond_8
    const-string v1, "/apiv3/guest/feeds/banners/big"

    :goto_8
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/HomeFeedBigBannerViewModel;->setUrl(Ljava/lang/String;)V

    .line 168
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedSmallBannerViewModel:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;

    .line 169
    invoke-static {}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "/apiv3/feeds/banners/small"

    goto :goto_9

    :cond_9
    const-string v1, "/apiv3/guest/feeds/banners/small"

    :goto_9
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$hc-vIKg8o09GcoXyQiK7kqFyJSw(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V
    .locals 0

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->initComingNextObserver()V

    return-void
.end method

.method public static synthetic lambda$iUtJ-XzFjXzcXVm7K30HuIcVgiE(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V
    .locals 0

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->initTrendingObserver()V

    return-void
.end method

.method private recreateSettingsCarousel()V
    .locals 4

    .line 250
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->shouldRecreateSettingsCarousel:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createSettingsCardRow()Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsPresenter;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/settings_presenter/SettingsPresenter;-><init>()V

    invoke-direct {p0, v2, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$getCarousels$0$HomePageRows(Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedCarouselList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->carouselHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 183
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows$1;->$SwitchMap$com$magoware$magoware$webtv$data$Status:[I

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getStatus()Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "Error"

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 185
    :cond_3
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->homeFeedCarouselList:Ljava/util/List;

    .line 187
    :try_start_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->middleMan:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomeMiddleMan;

    invoke-interface {p1, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomeMiddleMan;->blockScreen(Z)V

    const/4 p1, 0x0

    .line 188
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->addNextCarousel(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$initBigBannersObserver$8$HomePageRows(Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 4

    .line 629
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows$1;->$SwitchMap$com$magoware$magoware$webtv$data$Status:[I

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getStatus()Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 641
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Error"

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    const-string v2, "feed_big_banners"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 632
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 633
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createBigBannersCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/big_banner_presenters/BigBannerPresenter;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/big_banner_presenters/BigBannerPresenter;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    .line 632
    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    goto :goto_1

    .line 635
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createBigBannersCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/big_banner_presenters/BigBannerPresenter;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/big_banner_presenters/BigBannerPresenter;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 636
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->addNextCarousel(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$initChannelsObserver$1$HomePageRows(Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 4

    .line 297
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows$1;->$SwitchMap$com$magoware$magoware$webtv$data$Status:[I

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getStatus()Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Error"

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    const-string v2, "feed_tv_channels"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 301
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createTvChannelsCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/tv_channels_presenters/TvChannelsPresenter;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/tv_channels_presenters/TvChannelsPresenter;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    .line 300
    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    goto :goto_1

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createTvChannelsCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/tv_channels_presenters/TvChannelsPresenter;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/tv_channels_presenters/TvChannelsPresenter;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 304
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->addNextCarousel(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$initComingNextObserver$4$HomePageRows(Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 4

    .line 438
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows$1;->$SwitchMap$com$magoware$magoware$webtv$data$Status:[I

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getStatus()Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Error"

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    const-string v2, "feed_tv_schedulable"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 442
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createComingNextCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextPresenter;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextPresenter;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    .line 441
    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    goto :goto_1

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createComingNextCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextPresenter;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/coming_next_presenters/ComingNextPresenter;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 445
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->addNextCarousel(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$initMoviesObserver$2$HomePageRows(Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 4

    .line 345
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows$1;->$SwitchMap$com$magoware$magoware$webtv$data$Status:[I

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getStatus()Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Error"

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    const-string v2, "feed_movies"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 349
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createMoviewCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MoviePresenter;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MoviePresenter;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    .line 348
    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    goto :goto_1

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createMoviewCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MoviePresenter;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MoviePresenter;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 352
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->addNextCarousel(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$initNewArrivalsObserver$5$HomePageRows(Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 4

    .line 493
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows$1;->$SwitchMap$com$magoware$magoware$webtv$data$Status:[I

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getStatus()Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Error"

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    const-string v2, "feed_movies_new_arrivals"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 497
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createNewArrivalsRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalPresenter;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalPresenter;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    .line 496
    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    goto :goto_1

    .line 499
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createNewArrivalsRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalPresenter;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/new_arrival_presenters/NewArrivalPresenter;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 500
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->addNextCarousel(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$initPausedMoviesObserver$6$HomePageRows(Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 4

    .line 537
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows$1;->$SwitchMap$com$magoware$magoware$webtv$data$Status:[I

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getStatus()Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Error"

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    const-string v2, "feed_movies_paused"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 541
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createPausedMoviesCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesPresenter;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesPresenter;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    .line 540
    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    goto :goto_1

    .line 543
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createPausedMoviesCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesPresenter;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/paused_movies_presenters/PausedMoviesPresenter;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 544
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->addNextCarousel(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$initSmallBannersObserver$9$HomePageRows(Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 4

    .line 670
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows$1;->$SwitchMap$com$magoware$magoware$webtv$data$Status:[I

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getStatus()Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 682
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Error"

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    const-string v2, "feed_small_banners"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 673
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 674
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createSmallBannersCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/big_banner_presenters/BigBannerPresenter;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/big_banner_presenters/BigBannerPresenter;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    .line 673
    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    goto :goto_1

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createSmallBannersCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/big_banner_presenters/BigBannerPresenter;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/big_banner_presenters/BigBannerPresenter;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 677
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->addNextCarousel(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$initTrendingObserver$3$HomePageRows(Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 4

    .line 392
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows$1;->$SwitchMap$com$magoware$magoware$webtv$data$Status:[I

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getStatus()Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Error"

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    const-string v2, "feed_tv_trending"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 396
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createTrendingCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/trending_presenters/TrendingPresenter;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/trending_presenters/TrendingPresenter;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    .line 395
    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    goto :goto_1

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createTrendingCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/trending_presenters/TrendingPresenter;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/trending_presenters/TrendingPresenter;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 399
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->addNextCarousel(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$initTvShowsObserver$7$HomePageRows(Lcom/magoware/magoware/webtv/data/Resource;)V
    .locals 4

    .line 581
    sget-object v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows$1;->$SwitchMap$com$magoware$magoware$webtv$data$Status:[I

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getStatus()Lcom/magoware/magoware/webtv/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/data/Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Error"

    :goto_0
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    const-string v2, "feed_movies_shows"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 584
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 585
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createtvShowsCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MoviePresenter;

    invoke-direct {v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MoviePresenter;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    .line 584
    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    goto :goto_1

    .line 587
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/Resource;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createtvShowsCardRow(Ljava/util/List;)Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;

    move-result-object p1

    new-instance v3, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MoviePresenter;

    invoke-direct {v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/movie_presenters/MoviePresenter;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->createCardListRow(Lcom/magoware/magoware/webtv/network/mvvm/models/CardRow;Landroidx/leanback/widget/Presenter;)Lcom/magoware/magoware/webtv/vod/bigscreen/utils/CardListRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 588
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->positionsOfUpdatingCarousels:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ArrayObjectAdapter;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->addNextCarousel(I)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$updatePausedMoviesList$10$HomePageRows()V
    .locals 1

    .line 718
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->initPausedMoviesObserver()V

    .line 719
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->middleMan:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomeMiddleMan;

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomeMiddleMan;->initWorkerForAndroidChannels()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 110
    invoke-super {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->onAttach(Landroid/content/Context;)V

    .line 111
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomeMiddleMan;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->middleMan:Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomeMiddleMan;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 117
    invoke-super {p0, p1}, Landroidx/leanback/app/RowsSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    new-instance p1, Landroidx/leanback/widget/ArrayObjectAdapter;

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/NoShadowPresenterSelector;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/NoShadowPresenterSelector;-><init>()V

    invoke-direct {p1, v0}, Landroidx/leanback/widget/ArrayObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->mRowsAdapter:Landroidx/leanback/widget/ArrayObjectAdapter;

    .line 119
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 120
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 121
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->instantiateViewModels()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 731
    invoke-super {p0}, Landroidx/leanback/app/RowsSupportFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 725
    invoke-super {p0}, Landroidx/leanback/app/RowsSupportFragment;->onPause()V

    const/4 v0, 0x1

    .line 726
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->shouldRecreateSettingsCarousel:Z

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 136
    invoke-super {p0}, Landroidx/leanback/app/RowsSupportFragment;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->recreateSettingsCarousel()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;->getCarousels()V

    .line 127
    invoke-super {p0, p1, p2}, Landroidx/leanback/app/RowsSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected updatePausedMoviesList()V
    .locals 4

    .line 717
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$ZNDMMrh2nhhuS1wJo6kOfj5sg6I;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/-$$Lambda$HomePageRows$ZNDMMrh2nhhuS1wJo6kOfj5sg6I;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
