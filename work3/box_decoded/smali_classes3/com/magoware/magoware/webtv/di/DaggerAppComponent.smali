.class public final Lcom/magoware/magoware/webtv/di/DaggerAppComponent;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/AppComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/di/DaggerAppComponent$GuidedStepPersonalActivitySubcomponentImpl;,
        Lcom/magoware/magoware/webtv/di/DaggerAppComponent$GuidedStepPersonalActivitySubcomponentFactory;,
        Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentImpl;,
        Lcom/magoware/magoware/webtv/di/DaggerAppComponent$TvHomePageActivitySubcomponentFactory;,
        Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;,
        Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentFactory;,
        Lcom/magoware/magoware/webtv/di/DaggerAppComponent$Builder;
    }
.end annotation


# instance fields
.field private acccountSubscriptionViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private accountInfoRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;",
            ">;"
        }
    .end annotation
.end field

.field private accountInfoViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private accountPurchasesRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository;",
            ">;"
        }
    .end annotation
.end field

.field private accountPurchasesViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private accountRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;",
            ">;"
        }
    .end annotation
.end field

.field private accountSubscriptionRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;",
            ">;"
        }
    .end annotation
.end field

.field private accountViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private appExecutorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
            ">;"
        }
    .end annotation
.end field

.field private applicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private guidedStepPersonalActivitySubcomponentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeGuidedStepPersonalActivity$GuidedStepPersonalActivitySubcomponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedBigBannerViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/HomeFeedBigBannerViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedBigBannersRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersRemote;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedBigBannersRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersRepository;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedCarouselRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedChannelsTrendingRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRepository;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedChannelsTrendingViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedComingChannelsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedComingChannelsViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedMovieNewViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedMoviePausedViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedMovieRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedMovieViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedMoviesPausedRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedNewArrivalsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedSmallBannerViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedSmallBannersRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedSmallBannersRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedTvChannelsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedTvChannelsViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedTvShowsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedTvShowsViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private homeFeedViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private homePageActivitySubcomponentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeMainActivity$HomePageActivitySubcomponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private mapOfClassOfAndProviderOfViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/lifecycle/ViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/lifecycle/ViewModel;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private newsFeedRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;",
            ">;"
        }
    .end annotation
.end field

.field private newsFeedViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private newsViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccountInfoFragmentDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccountInfoRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccountPurchasesFragmentDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccountPurchasesRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRemote;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccountServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/AccountService;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccountSubscriptionRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRemote;",
            ">;"
        }
    .end annotation
.end field

.field private provideAccountSubscriptionsFragmentDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;",
            ">;"
        }
    .end annotation
.end field

.field private provideBigBannersDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;",
            ">;"
        }
    .end annotation
.end field

.field private provideDbProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/data/AppDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedCarouselDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedCarouselRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedChannelsTrendingDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingDao;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedChannelsTrendingRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRemote;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedComingChannelsDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedComingChannelsRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRemote;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedMoviesDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedMoviesNewDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedMoviesNewRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedMoviesPausedDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedMoviesPausedRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRemote;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedMoviesRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedTvChannelsDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedTvChannelsRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsRemote;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedTvShowsDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomeFeedTvShowsRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;",
            ">;"
        }
    .end annotation
.end field

.field private provideHomePageServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/HomePageService;",
            ">;"
        }
    .end annotation
.end field

.field private provideNewsFeedDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;",
            ">;"
        }
    .end annotation
.end field

.field private provideNewsRemoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;",
            ">;"
        }
    .end annotation
.end field

.field private provideTvMediaCollectionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;",
            ">;"
        }
    .end annotation
.end field

.field private provideTvMediaMetadataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;",
            ">;"
        }
    .end annotation
.end field

.field private providesSmallBannersDaoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;",
            ">;"
        }
    .end annotation
.end field

.field private tvHomePageActivitySubcomponentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeTvHomePageActivity$TvHomePageActivitySubcomponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private tvMediaRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;",
            ">;"
        }
    .end annotation
.end field

.field private viewModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/di/ViewModelFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/di/AppModule;Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appModuleParam",
            "applicationParam"
        }
    .end annotation

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->initialize(Lcom/magoware/magoware/webtv/di/AppModule;Landroid/app/Application;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/di/AppModule;Landroid/app/Application;Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;-><init>(Lcom/magoware/magoware/webtv/di/AppModule;Landroid/app/Application;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->viewModelFactoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->getTvMediaRepository()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->guidedStepPersonalActivitySubcomponentFactoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$700(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->tvHomePageActivitySubcomponentFactoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method static synthetic access$800(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;)Ljavax/inject/Provider;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homePageActivitySubcomponentFactoryProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static builder()Lcom/magoware/magoware/webtv/di/AppComponent$Builder;
    .locals 2

    .line 313
    new-instance v0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$Builder;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V

    return-object v0
.end method

.method private getDispatchingAndroidInjectorOfActivity()Ldagger/android/DispatchingAndroidInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 321
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->getMapOfClassOfAndProviderOfAndroidInjectorFactoryOf()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-static {v0, v1}, Ldagger/android/DispatchingAndroidInjector_Factory;->newInstance(Ljava/util/Map;Ljava/util/Map;)Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method private getMapOfClassOfAndProviderOfAndroidInjectorFactoryOf()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Ldagger/android/AndroidInjector$Factory<",
            "*>;>;>;"
        }
    .end annotation

    .line 318
    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homePageActivitySubcomponentFactoryProvider:Ljavax/inject/Provider;

    const-class v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->tvHomePageActivitySubcomponentFactoryProvider:Ljavax/inject/Provider;

    const-class v4, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    iget-object v5, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->guidedStepPersonalActivitySubcomponentFactoryProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private getTvMediaRepository()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;
    .locals 3

    .line 324
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideTvMediaCollectionProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideTvMediaMetadataProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;)V

    return-object v0
.end method

.method private initialize(Lcom/magoware/magoware/webtv/di/AppModule;Landroid/app/Application;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "appModuleParam",
            "applicationParam"
        }
    .end annotation

    .line 328
    new-instance v0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homePageActivitySubcomponentFactoryProvider:Ljavax/inject/Provider;

    .line 333
    new-instance v0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$2;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$2;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->tvHomePageActivitySubcomponentFactoryProvider:Ljavax/inject/Provider;

    .line 339
    new-instance v0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$3;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$3;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->guidedStepPersonalActivitySubcomponentFactoryProvider:Ljavax/inject/Provider;

    .line 345
    invoke-static {p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->applicationProvider:Ljavax/inject/Provider;

    .line 346
    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideDbFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideDbFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    .line 347
    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedCarouselDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedCarouselDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedCarouselDaoProvider:Ljavax/inject/Provider;

    .line 348
    invoke-static {p1}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomePageServiceFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomePageServiceFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomePageServiceProvider:Ljavax/inject/Provider;

    .line 349
    invoke-static {p1}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountServiceFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountServiceFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountServiceProvider:Ljavax/inject/Provider;

    .line 350
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomePageServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1, v0, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedCarouselRemoteFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedCarouselRemoteFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedCarouselRemoteProvider:Ljavax/inject/Provider;

    .line 351
    invoke-static {}, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors_Factory;->create()Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors_Factory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->appExecutorsProvider:Ljavax/inject/Provider;

    .line 352
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedCarouselDaoProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedCarouselRemoteProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository_Factory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedCarouselRepositoryProvider:Ljavax/inject/Provider;

    .line 353
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedViewModelProvider:Ljavax/inject/Provider;

    .line 354
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedTvChannelsDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedTvChannelsDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedTvChannelsDaoProvider:Ljavax/inject/Provider;

    .line 355
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideTvMediaCollectionFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideTvMediaCollectionFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideTvMediaCollectionProvider:Ljavax/inject/Provider;

    .line 356
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideTvMediaMetadataFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideTvMediaMetadataFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideTvMediaMetadataProvider:Ljavax/inject/Provider;

    .line 357
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideTvMediaCollectionProvider:Ljavax/inject/Provider;

    invoke-static {v0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->tvMediaRepositoryProvider:Ljavax/inject/Provider;

    .line 358
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomePageServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedTvChannelsRemoteFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedTvChannelsRemoteFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedTvChannelsRemoteProvider:Ljavax/inject/Provider;

    .line 359
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedTvChannelsDaoProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->tvMediaRepositoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->appExecutorsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p2, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsRepository_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedTvChannelsRepositoryProvider:Ljavax/inject/Provider;

    .line 360
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedTvChannelsViewModelProvider:Ljavax/inject/Provider;

    .line 361
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedChannelsTrendingDaoProvider:Ljavax/inject/Provider;

    .line 362
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomePageServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedChannelsTrendingRemoteProvider:Ljavax/inject/Provider;

    .line 363
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedChannelsTrendingDaoProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->tvMediaRepositoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->appExecutorsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p2, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRepository_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedChannelsTrendingRepositoryProvider:Ljavax/inject/Provider;

    .line 364
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedChannelsTrendingViewModelProvider:Ljavax/inject/Provider;

    .line 365
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedComingChannelsDaoProvider:Ljavax/inject/Provider;

    .line 366
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomePageServiceProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2, v0}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedComingChannelsRemoteProvider:Ljavax/inject/Provider;

    .line 367
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedComingChannelsDaoProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->tvMediaRepositoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->appExecutorsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p2, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRepository_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedComingChannelsRepositoryProvider:Ljavax/inject/Provider;

    .line 368
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedComingChannelsViewModelProvider:Ljavax/inject/Provider;

    .line 369
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedMoviesDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedMoviesDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedMoviesDaoProvider:Ljavax/inject/Provider;

    .line 370
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomePageServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedMoviesRemoteFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedMoviesRemoteFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedMoviesRemoteProvider:Ljavax/inject/Provider;

    .line 371
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedMoviesDaoProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->tvMediaRepositoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->appExecutorsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p2, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedMovieRepositoryProvider:Ljavax/inject/Provider;

    .line 372
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedMovieViewModelProvider:Ljavax/inject/Provider;

    .line 373
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedMoviesNewDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedMoviesNewDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedMoviesNewDaoProvider:Ljavax/inject/Provider;

    .line 374
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomePageServiceProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2, v0}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedMoviesNewRemoteFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedMoviesNewRemoteFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedMoviesNewRemoteProvider:Ljavax/inject/Provider;

    .line 375
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedMoviesNewDaoProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->appExecutorsProvider:Ljavax/inject/Provider;

    invoke-static {v0, p2, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedNewArrivalsRepositoryProvider:Ljavax/inject/Provider;

    .line 376
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedMovieNewViewModelProvider:Ljavax/inject/Provider;

    .line 377
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedMoviesPausedDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedMoviesPausedDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedMoviesPausedDaoProvider:Ljavax/inject/Provider;

    .line 378
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomePageServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedMoviesPausedRemoteFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedMoviesPausedRemoteFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedMoviesPausedRemoteProvider:Ljavax/inject/Provider;

    .line 379
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedMoviesPausedDaoProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->tvMediaRepositoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->appExecutorsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, p2, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedMoviesPausedRepositoryProvider:Ljavax/inject/Provider;

    .line 380
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedMoviePausedViewModelProvider:Ljavax/inject/Provider;

    .line 381
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedTvShowsDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedTvShowsDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedTvShowsDaoProvider:Ljavax/inject/Provider;

    .line 382
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomePageServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedTvShowsRemoteFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedTvShowsRemoteFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedTvShowsRemoteProvider:Ljavax/inject/Provider;

    .line 383
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomeFeedTvShowsDaoProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->appExecutorsProvider:Ljavax/inject/Provider;

    invoke-static {v0, p2, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedTvShowsRepositoryProvider:Ljavax/inject/Provider;

    .line 384
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedTvShowsViewModelProvider:Ljavax/inject/Provider;

    .line 385
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideBigBannersDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideBigBannersDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideBigBannersDaoProvider:Ljavax/inject/Provider;

    .line 386
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomePageServiceProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersRemote_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersRemote_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedBigBannersRemoteProvider:Ljavax/inject/Provider;

    .line 387
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideBigBannersDaoProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->appExecutorsProvider:Ljavax/inject/Provider;

    invoke-static {v0, p2, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersRepository_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedBigBannersRepositoryProvider:Ljavax/inject/Provider;

    .line 388
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/HomeFeedBigBannerViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/HomeFeedBigBannerViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedBigBannerViewModelProvider:Ljavax/inject/Provider;

    .line 389
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvidesSmallBannersDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvidesSmallBannersDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->providesSmallBannersDaoProvider:Ljavax/inject/Provider;

    .line 390
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideHomePageServiceProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedSmallBannersRemoteProvider:Ljavax/inject/Provider;

    .line 391
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->providesSmallBannersDaoProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->appExecutorsProvider:Ljavax/inject/Provider;

    invoke-static {v0, p2, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedSmallBannersRepositoryProvider:Ljavax/inject/Provider;

    .line 392
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedSmallBannerViewModelProvider:Ljavax/inject/Provider;

    .line 393
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideNewsFeedDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideNewsFeedDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideNewsFeedDaoProvider:Ljavax/inject/Provider;

    .line 394
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideNewsRemoteFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideNewsRemoteFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideNewsRemoteProvider:Ljavax/inject/Provider;

    .line 395
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideNewsFeedDaoProvider:Ljavax/inject/Provider;

    invoke-static {v0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->newsFeedRepositoryProvider:Ljavax/inject/Provider;

    .line 396
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->newsFeedViewModelProvider:Ljavax/inject/Provider;

    .line 397
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->newsFeedRepositoryProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->newsViewModelProvider:Ljavax/inject/Provider;

    .line 398
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountServiceProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->accountRemoteProvider:Ljavax/inject/Provider;

    .line 399
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->accountViewModelProvider:Ljavax/inject/Provider;

    .line 400
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountInfoRemoteFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountInfoRemoteFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountInfoRemoteProvider:Ljavax/inject/Provider;

    .line 401
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountInfoFragmentDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountInfoFragmentDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountInfoFragmentDaoProvider:Ljavax/inject/Provider;

    .line 402
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountInfoRemoteProvider:Ljavax/inject/Provider;

    invoke-static {v0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository_Factory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->accountInfoRepositoryProvider:Ljavax/inject/Provider;

    .line 403
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->accountInfoViewModelProvider:Ljavax/inject/Provider;

    .line 404
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountPurchasesRemoteFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountPurchasesRemoteFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountPurchasesRemoteProvider:Ljavax/inject/Provider;

    .line 405
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountPurchasesFragmentDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountPurchasesFragmentDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountPurchasesFragmentDaoProvider:Ljavax/inject/Provider;

    .line 406
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountPurchasesRemoteProvider:Ljavax/inject/Provider;

    invoke-static {v0, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRepository_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->accountPurchasesRepositoryProvider:Ljavax/inject/Provider;

    .line 407
    invoke-static {p2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesViewModel_Factory;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->accountPurchasesViewModelProvider:Ljavax/inject/Provider;

    .line 408
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideDbProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountSubscriptionsFragmentDaoFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountSubscriptionsFragmentDaoFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountSubscriptionsFragmentDaoProvider:Ljavax/inject/Provider;

    .line 409
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountServiceProvider:Ljavax/inject/Provider;

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountSubscriptionRemoteFactory;->create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideAccountSubscriptionRemoteFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountSubscriptionRemoteProvider:Ljavax/inject/Provider;

    .line 410
    iget-object p2, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->provideAccountSubscriptionsFragmentDaoProvider:Ljavax/inject/Provider;

    invoke-static {p2, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->accountSubscriptionRepositoryProvider:Ljavax/inject/Provider;

    .line 411
    invoke-static {p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->acccountSubscriptionViewModelProvider:Ljavax/inject/Provider;

    const/16 p1, 0x10

    .line 412
    invoke-static {p1}, Ldagger/internal/MapProviderFactory;->builder(I)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/ui/HomeFeedTvChannelsViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedTvChannelsViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedChannelsTrendingViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/ui/HomeFeedComingChannelsViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedComingChannelsViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/ui/HomeFeedMovieViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedMovieViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/ui/HomeFeedMovieNewViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedMovieNewViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/ui/HomeFeedMoviePausedViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedMoviePausedViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/ui/HomeFeedTvShowsViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedTvShowsViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/HomeFeedBigBannerViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedBigBannerViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->homeFeedSmallBannerViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->newsFeedViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->newsViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->accountViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->accountInfoViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->accountPurchasesViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->acccountSubscriptionViewModelProvider:Ljavax/inject/Provider;

    invoke-virtual {p1, p2, v0}, Ldagger/internal/MapProviderFactory$Builder;->put(Ljava/lang/Object;Ljavax/inject/Provider;)Ldagger/internal/MapProviderFactory$Builder;

    move-result-object p1

    invoke-virtual {p1}, Ldagger/internal/MapProviderFactory$Builder;->build()Ldagger/internal/MapProviderFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->mapOfClassOfAndProviderOfViewModelProvider:Ljavax/inject/Provider;

    .line 413
    invoke-static {p1}, Lcom/magoware/magoware/webtv/di/ViewModelFactory_Factory;->create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/ViewModelFactory_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->viewModelFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectMagowareApplication(Lcom/magoware/magoware/webtv/MagowareApplication;)Lcom/magoware/magoware/webtv/MagowareApplication;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 422
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->getDispatchingAndroidInjectorOfActivity()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/MagowareApplication_MembersInjector;->injectDispatchingAndroidInjector(Lcom/magoware/magoware/webtv/MagowareApplication;Ldagger/android/DispatchingAndroidInjector;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/magoware/magoware/webtv/MagowareApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 418
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->injectMagowareApplication(Lcom/magoware/magoware/webtv/MagowareApplication;)Lcom/magoware/magoware/webtv/MagowareApplication;

    return-void
.end method
