.class public final Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;
.super Lcom/magoware/magoware/webtv/data/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field private volatile _accountInfoDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;

.field private volatile _accountPurchasesDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao;

.field private volatile _accountSubscriptionDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;

.field private volatile _homeFeedBigBannersDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;

.field private volatile _homeFeedCarouselDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;

.field private volatile _homeFeedChannelsTrendingDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingDao;

.field private volatile _homeFeedComingChannelsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao;

.field private volatile _homeFeedMoviesDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;

.field private volatile _homeFeedMoviesNewDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;

.field private volatile _homeFeedMoviesPausedDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;

.field private volatile _homeFeedSmallBannersDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;

.field private volatile _homeFeedTvChannelsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao;

.field private volatile _homeFeedTvShowsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;

.field private volatile _newsFeedDao:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;

.field private volatile _tvMediaBackgroundDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaBackgroundDAO;

.field private volatile _tvMediaCollectionDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

.field private volatile _tvMediaMetadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/data/AppDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accountInfoDao()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountInfoDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountInfoDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;

    return-object v0

    .line 630
    :cond_0
    monitor-enter p0

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountInfoDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;

    if-nez v0, :cond_1

    .line 632
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountInfoDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountInfoDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 635
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public accountPurchasesDao()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountPurchasesDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountPurchasesDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao;

    return-object v0

    .line 644
    :cond_0
    monitor-enter p0

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountPurchasesDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao;

    if-nez v0, :cond_1

    .line 646
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountPurchasesDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao;

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountPurchasesDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/data/AccountPurchasesDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 649
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public accountSubscriptionDao()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountSubscriptionDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountSubscriptionDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;

    return-object v0

    .line 658
    :cond_0
    monitor-enter p0

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountSubscriptionDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;

    if-nez v0, :cond_1

    .line 660
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountSubscriptionDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_accountSubscriptionDao:Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 663
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bigBannersDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedBigBannersDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedBigBannersDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;

    return-object v0

    .line 714
    :cond_0
    monitor-enter p0

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedBigBannersDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;

    if-nez v0, :cond_1

    .line 716
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedBigBannersDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedBigBannersDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 719
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 467
    invoke-super {p0}, Lcom/magoware/magoware/webtv/data/AppDatabase;->assertNotMainThread()V

    .line 468
    invoke-super {p0}, Lcom/magoware/magoware/webtv/data/AppDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 470
    :try_start_0
    invoke-super {p0}, Lcom/magoware/magoware/webtv/data/AppDatabase;->beginTransaction()V

    const-string v3, "DELETE FROM `HomeFeedCarousel`"

    .line 471
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `HomeFeedTvChannels`"

    .line 472
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `HomeFeedChannelsWithEpg`"

    .line 473
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `HomeFeedChannelsTrendingEpgData`"

    .line 474
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `HomeFeedComingChannels`"

    .line 475
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `HomeFeedMovies`"

    .line 476
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `HomeFeedMoviesNew`"

    .line 477
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `HomeFeedMoviesPaused`"

    .line 478
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `HomeFeedTvShows`"

    .line 479
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `NewsFeed`"

    .line 480
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `AccountInfo`"

    .line 481
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `AccountPurchases`"

    .line 482
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `AccountSubscription`"

    .line 483
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `TvMediaMetadata`"

    .line 484
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `TvMediaCollection`"

    .line 485
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `TvMediaBackground`"

    .line 486
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `HomeFeedSmallBanners`"

    .line 487
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `HomeFeedBigBanners`"

    .line 488
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 489
    invoke-super {p0}, Lcom/magoware/magoware/webtv/data/AppDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    invoke-super {p0}, Lcom/magoware/magoware/webtv/data/AppDatabase;->endTransaction()V

    .line 492
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 493
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 491
    invoke-super {p0}, Lcom/magoware/magoware/webtv/data/AppDatabase;->endTransaction()V

    .line 492
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 493
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 494
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 496
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 21

    .line 460
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 461
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 462
    new-instance v1, Landroidx/room/InvalidationTracker;

    const-string v3, "HomeFeedCarousel"

    const-string v4, "HomeFeedTvChannels"

    const-string v5, "HomeFeedChannelsWithEpg"

    const-string v6, "HomeFeedChannelsTrendingEpgData"

    const-string v7, "HomeFeedComingChannels"

    const-string v8, "HomeFeedMovies"

    const-string v9, "HomeFeedMoviesNew"

    const-string v10, "HomeFeedMoviesPaused"

    const-string v11, "HomeFeedTvShows"

    const-string v12, "NewsFeed"

    const-string v13, "AccountInfo"

    const-string v14, "AccountPurchases"

    const-string v15, "AccountSubscription"

    const-string v16, "TvMediaMetadata"

    const-string v17, "TvMediaCollection"

    const-string v18, "TvMediaBackground"

    const-string v19, "HomeFeedSmallBanners"

    const-string v20, "HomeFeedBigBanners"

    filled-new-array/range {v3 .. v20}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct {v1, v4, v0, v2, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 96
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl$1;

    const/16 v2, 0x2a

    invoke-direct {v1, p0, v2}, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl$1;-><init>(Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;I)V

    const-string v2, "e2b2eca3711fe4eff1e9c154adab16df"

    const-string v3, "6ef38ba1b9adb575ddb132ffcbaef051"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 451
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 452
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 454
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public homeFeedCarouselDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedCarouselDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedCarouselDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;

    return-object v0

    .line 504
    :cond_0
    monitor-enter p0

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedCarouselDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;

    if-nez v0, :cond_1

    .line 506
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedCarouselDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedCarouselDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 509
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public homeFeedChannelsTrendingDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingDao;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedChannelsTrendingDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingDao;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedChannelsTrendingDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingDao;

    return-object v0

    .line 532
    :cond_0
    monitor-enter p0

    .line 533
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedChannelsTrendingDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingDao;

    if-nez v0, :cond_1

    .line 534
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedChannelsTrendingDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingDao;

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedChannelsTrendingDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 537
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public homeFeedComingChannelsDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedComingChannelsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedComingChannelsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao;

    return-object v0

    .line 546
    :cond_0
    monitor-enter p0

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedComingChannelsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao;

    if-nez v0, :cond_1

    .line 548
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedComingChannelsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao;

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedComingChannelsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 551
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public homeFeedMoviesDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;

    return-object v0

    .line 560
    :cond_0
    monitor-enter p0

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;

    if-nez v0, :cond_1

    .line 562
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 565
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public homeFeedMoviesNewDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesNewDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesNewDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;

    return-object v0

    .line 574
    :cond_0
    monitor-enter p0

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesNewDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;

    if-nez v0, :cond_1

    .line 576
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesNewDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesNewDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 579
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public homeFeedMoviesPausedDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesPausedDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesPausedDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;

    return-object v0

    .line 588
    :cond_0
    monitor-enter p0

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesPausedDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;

    if-nez v0, :cond_1

    .line 590
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesPausedDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedMoviesPausedDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 593
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public homeFeedTvChannelsDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedTvChannelsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedTvChannelsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao;

    return-object v0

    .line 518
    :cond_0
    monitor-enter p0

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedTvChannelsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao;

    if-nez v0, :cond_1

    .line 520
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedTvChannelsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao;

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedTvChannelsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvchannels/data/HomeFeedTvChannelsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 523
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public homeFeedTvShowsDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedTvShowsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedTvShowsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;

    return-object v0

    .line 602
    :cond_0
    monitor-enter p0

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedTvShowsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;

    if-nez v0, :cond_1

    .line 604
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedTvShowsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedTvShowsDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 607
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newsFeedDao()Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_newsFeedDao:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_newsFeedDao:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;

    return-object v0

    .line 616
    :cond_0
    monitor-enter p0

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_newsFeedDao:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;

    if-nez v0, :cond_1

    .line 618
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_newsFeedDao:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_newsFeedDao:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 621
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public smallBannersDao()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedSmallBannersDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedSmallBannersDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;

    return-object v0

    .line 728
    :cond_0
    monitor-enter p0

    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedSmallBannersDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;

    if-nez v0, :cond_1

    .line 730
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedSmallBannersDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_homeFeedSmallBannersDao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 733
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tvMediaBackgrounds()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaBackgroundDAO;
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaBackgroundDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaBackgroundDAO;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaBackgroundDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaBackgroundDAO;

    return-object v0

    .line 700
    :cond_0
    monitor-enter p0

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaBackgroundDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaBackgroundDAO;

    if-nez v0, :cond_1

    .line 702
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaBackgroundDAO_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaBackgroundDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaBackgroundDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaBackgroundDAO;

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaBackgroundDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaBackgroundDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 705
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tvMediaCollections()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaCollectionDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaCollectionDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    return-object v0

    .line 686
    :cond_0
    monitor-enter p0

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaCollectionDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    if-nez v0, :cond_1

    .line 688
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaCollectionDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaCollectionDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaCollectionDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 691
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tvMediaMetadata()Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaMetadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaMetadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    return-object v0

    .line 672
    :cond_0
    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaMetadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    if-nez v0, :cond_1

    .line 674
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaMetadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/data/AppDatabase_Impl;->_tvMediaMetadataDAO:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaMetadataDAO;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 677
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
