.class public final Lcom/nettv/livestore/utils/DemoUtil;
.super Ljava/lang/Object;
.source "DemoUtil.java"


# static fields
.field private static final DOWNLOAD_CONTENT_DIRECTORY:Ljava/lang/String; = "downloads"

.field private static final USE_CRONET_FOR_NETWORKING:Z = true

.field private static dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private static databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

.field private static downloadCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private static downloadDirectory:Ljava/io/File;

.field private static httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildReadOnlyCacheDataSource(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setUpstreamDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCacheWriteDataSinkFactory(Lcom/google/android/exoplayer2/upstream/DataSink$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p0

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setFlags(I)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static buildRenderersFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 1

    .line 1
    invoke-static {}, Lcom/nettv/livestore/utils/DemoUtil;->useExtensionRenderers()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setExtensionRendererMode(I)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3

    const-class v0, Lcom/nettv/livestore/utils/DemoUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/nettv/livestore/utils/DemoUtil;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    .line 4
    invoke-static {p0}, Lcom/nettv/livestore/utils/DemoUtil;->getHttpDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/utils/DemoUtil;->getDownloadCache(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/nettv/livestore/utils/DemoUtil;->buildReadOnlyCacheDataSource(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p0

    sput-object p0, Lcom/nettv/livestore/utils/DemoUtil;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 6
    :cond_0
    sget-object p0, Lcom/nettv/livestore/utils/DemoUtil;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getDatabaseProvider(Landroid/content/Context;)Lcom/google/android/exoplayer2/database/DatabaseProvider;
    .locals 2

    const-class v0, Lcom/nettv/livestore/utils/DemoUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/nettv/livestore/utils/DemoUtil;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/database/StandaloneDatabaseProvider;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/database/StandaloneDatabaseProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/nettv/livestore/utils/DemoUtil;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 3
    :cond_0
    sget-object p0, Lcom/nettv/livestore/utils/DemoUtil;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getDownloadCache(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 4

    const-class v0, Lcom/nettv/livestore/utils/DemoUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/nettv/livestore/utils/DemoUtil;->downloadCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/io/File;

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/DemoUtil;->getDownloadDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "downloads"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/cache/NoOpCacheEvictor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/cache/NoOpCacheEvictor;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/nettv/livestore/utils/DemoUtil;->getDatabaseProvider(Landroid/content/Context;)Lcom/google/android/exoplayer2/database/DatabaseProvider;

    move-result-object p0

    invoke-direct {v2, v1, v3, p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    sput-object v2, Lcom/nettv/livestore/utils/DemoUtil;->downloadCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 6
    :cond_0
    sget-object p0, Lcom/nettv/livestore/utils/DemoUtil;->downloadCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getDownloadDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-class v0, Lcom/nettv/livestore/utils/DemoUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/nettv/livestore/utils/DemoUtil;->downloadDirectory:Ljava/io/File;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcom/nettv/livestore/utils/DemoUtil;->downloadDirectory:Ljava/io/File;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/nettv/livestore/utils/DemoUtil;->downloadDirectory:Ljava/io/File;

    .line 4
    :cond_0
    sget-object p0, Lcom/nettv/livestore/utils/DemoUtil;->downloadDirectory:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getHttpDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 3

    const-class v0, Lcom/nettv/livestore/utils/DemoUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/nettv/livestore/utils/DemoUtil;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/ext/cronet/CronetUtil;->buildCronetEngine(Landroid/content/Context;)Lorg/chromium/net/CronetEngine;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSource$Factory;-><init>(Lorg/chromium/net/CronetEngine;Ljava/util/concurrent/Executor;)V

    sput-object v1, Lcom/nettv/livestore/utils/DemoUtil;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 6
    :cond_0
    sget-object p0, Lcom/nettv/livestore/utils/DemoUtil;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    if-nez p0, :cond_1

    .line 7
    new-instance p0, Ljava/net/CookieManager;

    invoke-direct {p0}, Ljava/net/CookieManager;-><init>()V

    .line 8
    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-virtual {p0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    .line 9
    invoke-static {p0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 10
    new-instance p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    sput-object p0, Lcom/nettv/livestore/utils/DemoUtil;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 11
    :cond_1
    sget-object p0, Lcom/nettv/livestore/utils/DemoUtil;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static useExtensionRenderers()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
