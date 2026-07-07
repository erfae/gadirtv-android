.class public final Lcom/magoware/magoware/webtv/di/AppModule;
.super Ljava/lang/Object;
.source "AppModule.kt"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/magoware/magoware/webtv/di/ViewModelModule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00e8\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000f\u001a\u00020\nH\u0007J!\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u0012H\u0002\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0008\u0010\u001a\u001a\u00020\u001bH\u0007J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0018\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010%\u001a\u00020&2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\'\u001a\u00020(2\u0006\u0010#\u001a\u00020$H\u0007J\u0010\u0010)\u001a\u00020*2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0018\u0010+\u001a\u00020,2\u0006\u0010#\u001a\u00020$2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010-\u001a\u00020.2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010/\u001a\u0002002\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0018\u00101\u001a\u0002022\u0006\u0010#\u001a\u00020$2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u00103\u001a\u0002042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u00105\u001a\u0002062\u0006\u0010#\u001a\u00020$H\u0007J\u0010\u00107\u001a\u0002082\u0006\u0010#\u001a\u00020$H\u0007J\u0010\u00109\u001a\u00020:2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010;\u001a\u00020<2\u0006\u0010#\u001a\u00020$H\u0007J\u0010\u0010=\u001a\u00020>2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010?\u001a\u00020@2\u0006\u0010#\u001a\u00020$H\u0007J\u0008\u0010A\u001a\u00020$H\u0007J\u0010\u0010B\u001a\u00020C2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010D\u001a\u00020E2\u0006\u0010\t\u001a\u00020\nH\u0007J!\u0010F\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u0012H\u0002\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010G\u001a\u00020H2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010I\u001a\u00020J2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010K\u001a\u00020L2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010M\u001a\u00020N2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006O"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/di/AppModule;",
        "",
        "()V",
        "provideAccountInfoFragmentDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;",
        "db",
        "Lcom/magoware/magoware/webtv/data/AppDatabase;",
        "provideAccountInfoRemote",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;",
        "accountService",
        "Lcom/magoware/magoware/webtv/api/AccountService;",
        "provideAccountPurchasesFragmentDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao;",
        "provideAccountPurchasesRemote",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRemote;",
        "provideAccountService",
        "T",
        "clazz",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Ljava/lang/Object;",
        "provideAccountSubscriptionRemote",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRemote;",
        "provideAccountSubscriptionsFragmentDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;",
        "provideBigBannersDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;",
        "provideCoroutineScopeIO",
        "Lkotlinx/coroutines/CoroutineScope;",
        "provideDb",
        "app",
        "Landroid/app/Application;",
        "provideHomeFeedCarouselDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;",
        "provideHomeFeedCarouselRemote",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;",
        "homePageService",
        "Lcom/magoware/magoware/webtv/api/HomePageService;",
        "provideHomeFeedChannelsTrendingDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingDao;",
        "provideHomeFeedChannelsTrendingRemote",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRemote;",
        "provideHomeFeedComingChannelsDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao;",
        "provideHomeFeedComingChannelsRemote",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRemote;",
        "provideHomeFeedMoviesDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;",
        "provideHomeFeedMoviesNewDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;",
        "provideHomeFeedMoviesNewRemote",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;",
        "provideHomeFeedMoviesPausedDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;",
        "provideHomeFeedMoviesPausedRemote",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRemote;",
        "provideHomeFeedMoviesRemote",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;",
        "provideHomeFeedTvChannelsDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao;",
        "provideHomeFeedTvChannelsRemote",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsRemote;",
        "provideHomeFeedTvShowsDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;",
        "provideHomeFeedTvShowsRemote",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;",
        "provideHomePageService",
        "provideNewsFeedDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;",
        "provideNewsRemote",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;",
        "provideService",
        "provideTvMediaBackgroundDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaBackgroundDAO;",
        "provideTvMediaCollection",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;",
        "provideTvMediaMetadata",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;",
        "providesSmallBannersDao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;",
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final provideAccountService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->get()Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    move-result-object v0

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->retrofit(Z)Lretrofit2/Retrofit;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final provideService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 56
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 57
    sget-object v1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->getOkHttpClient(Z)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 59
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/utils/LiveDataCallAdapterFactory;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/LiveDataCallAdapterFactory;-><init>()V

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCallAdapterFactory;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/utils/ApiResponseCallAdapterFactory;-><init>()V

    check-cast v1, Lretrofit2/CallAdapter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final provideAccountInfoFragmentDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->accountInfoDao()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;

    move-result-object p1

    return-object p1
.end method

.method public final provideAccountInfoRemote(Lcom/magoware/magoware/webtv/api/AccountService;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "accountService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;-><init>(Lcom/magoware/magoware/webtv/api/AccountService;)V

    return-object v0
.end method

.method public final provideAccountPurchasesFragmentDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->accountPurchasesDao()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao;

    move-result-object p1

    return-object p1
.end method

.method public final provideAccountPurchasesRemote(Lcom/magoware/magoware/webtv/api/AccountService;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRemote;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "accountService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRemote;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesRemote;-><init>(Lcom/magoware/magoware/webtv/api/AccountService;)V

    return-object v0
.end method

.method public final provideAccountService()Lcom/magoware/magoware/webtv/api/AccountService;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 40
    const-class v0, Lcom/magoware/magoware/webtv/api/AccountService;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/di/AppModule;->provideAccountService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/api/AccountService;

    return-object v0
.end method

.method public final provideAccountSubscriptionRemote(Lcom/magoware/magoware/webtv/api/AccountService;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRemote;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "accountService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRemote;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRemote;-><init>(Lcom/magoware/magoware/webtv/api/AccountService;)V

    return-object v0
.end method

.method public final provideAccountSubscriptionsFragmentDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->accountSubscriptionDao()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;

    move-result-object p1

    return-object p1
.end method

.method public final provideBigBannersDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->bigBannersDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;

    move-result-object p1

    return-object p1
.end method

.method public final provideCoroutineScopeIO()Lkotlinx/coroutines/CoroutineScope;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 53
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public final provideDb(Landroid/app/Application;)Lcom/magoware/magoware/webtv/data/AppDatabase;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/magoware/magoware/webtv/data/AppDatabase;->Companion:Lcom/magoware/magoware/webtv/data/AppDatabase$Companion;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/data/AppDatabase$Companion;->getDbInstance(Landroid/content/Context;)Lcom/magoware/magoware/webtv/data/AppDatabase;

    move-result-object p1

    return-object p1
.end method

.method public final provideHomeFeedCarouselDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->homeFeedCarouselDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;

    move-result-object p1

    return-object p1
.end method

.method public final provideHomeFeedCarouselRemote(Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "homePageService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;

    invoke-direct {v0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;-><init>(Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)V

    return-object v0
.end method

.method public final provideHomeFeedChannelsTrendingDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->homeFeedChannelsTrendingDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingDao;

    move-result-object p1

    return-object p1
.end method

.method public final provideHomeFeedChannelsTrendingRemote(Lcom/magoware/magoware/webtv/api/HomePageService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRemote;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "homePageService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRemote;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRemote;-><init>(Lcom/magoware/magoware/webtv/api/HomePageService;)V

    return-object v0
.end method

.method public final provideHomeFeedComingChannelsDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->homeFeedComingChannelsDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao;

    move-result-object p1

    return-object p1
.end method

.method public final provideHomeFeedComingChannelsRemote(Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRemote;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "homePageService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRemote;

    invoke-direct {v0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRemote;-><init>(Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)V

    return-object v0
.end method

.method public final provideHomeFeedMoviesDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->homeFeedMoviesDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;

    move-result-object p1

    return-object p1
.end method

.method public final provideHomeFeedMoviesNewDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->homeFeedMoviesNewDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;

    move-result-object p1

    return-object p1
.end method

.method public final provideHomeFeedMoviesNewRemote(Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "homePageService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;

    invoke-direct {v0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;-><init>(Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)V

    return-object v0
.end method

.method public final provideHomeFeedMoviesPausedDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->homeFeedMoviesPausedDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;

    move-result-object p1

    return-object p1
.end method

.method public final provideHomeFeedMoviesPausedRemote(Lcom/magoware/magoware/webtv/api/HomePageService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRemote;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "homePageService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRemote;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRemote;-><init>(Lcom/magoware/magoware/webtv/api/HomePageService;)V

    return-object v0
.end method

.method public final provideHomeFeedMoviesRemote(Lcom/magoware/magoware/webtv/api/HomePageService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "homePageService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;-><init>(Lcom/magoware/magoware/webtv/api/HomePageService;)V

    return-object v0
.end method

.method public final provideHomeFeedTvChannelsDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->homeFeedTvChannelsDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao;

    move-result-object p1

    return-object p1
.end method

.method public final provideHomeFeedTvChannelsRemote(Lcom/magoware/magoware/webtv/api/HomePageService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsRemote;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "homePageService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsRemote;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsRemote;-><init>(Lcom/magoware/magoware/webtv/api/HomePageService;)V

    return-object v0
.end method

.method public final provideHomeFeedTvShowsDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->homeFeedTvShowsDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;

    move-result-object p1

    return-object p1
.end method

.method public final provideHomeFeedTvShowsRemote(Lcom/magoware/magoware/webtv/api/HomePageService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "homePageService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;-><init>(Lcom/magoware/magoware/webtv/api/HomePageService;)V

    return-object v0
.end method

.method public final provideHomePageService()Lcom/magoware/magoware/webtv/api/HomePageService;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 36
    const-class v0, Lcom/magoware/magoware/webtv/api/HomePageService;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/di/AppModule;->provideService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/api/HomePageService;

    return-object v0
.end method

.method public final provideNewsFeedDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->newsFeedDao()Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;

    move-result-object p1

    return-object p1
.end method

.method public final provideNewsRemote(Lcom/magoware/magoware/webtv/api/AccountService;)Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "accountService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;-><init>(Lcom/magoware/magoware/webtv/api/AccountService;)V

    return-object v0
.end method

.method public final provideTvMediaBackgroundDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaBackgroundDAO;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->tvMediaBackgrounds()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaBackgroundDAO;

    move-result-object p1

    return-object p1
.end method

.method public final provideTvMediaCollection(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->tvMediaCollections()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    move-result-object p1

    return-object p1
.end method

.method public final provideTvMediaMetadata(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->tvMediaMetadata()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    move-result-object p1

    return-object p1
.end method

.method public final providesSmallBannersDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/data/AppDatabase;->smallBannersDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;

    move-result-object p1

    return-object p1
.end method
