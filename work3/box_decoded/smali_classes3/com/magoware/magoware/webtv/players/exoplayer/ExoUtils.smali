.class public Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;
.super Ljava/lang/Object;
.source "ExoUtils.java"


# static fields
.field private static final DOWNLOAD_ACTION_FILE:Ljava/lang/String; = "actions"

.field private static final DOWNLOAD_CONTENT_DIRECTORY:Ljava/lang/String; = "downloads"

.field public static final DOWNLOAD_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "download_channel"

.field private static final DOWNLOAD_TRACKER_ACTION_FILE:Ljava/lang/String; = "tracked_actions"

.field private static final TAG:Ljava/lang/String; = "DemoUtil"

.field private static dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private static databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

.field private static downloadCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private static downloadDirectory:Ljava/io/File;

.field private static downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

.field private static downloadNotificationHelper:Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;

.field private static downloadTracker:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

.field private static httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildReadOnlyCacheDataSource(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "upstreamFactory",
            "cache"
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;-><init>()V

    .line 180
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCache(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p1

    .line 181
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setUpstreamDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p0

    const/4 p1, 0x0

    .line 182
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setCacheWriteDataSinkFactory(Lcom/google/android/exoplayer2/upstream/DataSink$Factory;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p0

    const/4 p1, 0x2

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;->setFlags(I)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static buildRenderersFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "preferExtensionRenderer"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->useExtensionRenderers()Z

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

    .line 66
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;->setExtensionRendererMode(I)Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized ensureDownloadManagerInitialized(Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;

    monitor-enter v0

    .line 122
    :try_start_0
    sget-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;

    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getDatabaseProvider(Landroid/content/Context;)Lcom/google/android/exoplayer2/database/DatabaseProvider;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;-><init>(Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    const-string v2, "actions"

    const/4 v3, 0x0

    .line 124
    invoke-static {p0, v2, v1, v3}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->upgradeActionFile(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;Z)V

    const-string v2, "tracked_actions"

    const/4 v3, 0x1

    .line 126
    invoke-static {p0, v2, v1, v3}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->upgradeActionFile(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;Z)V

    .line 131
    new-instance v1, Lcom/google/android/exoplayer2/offline/DownloadManager;

    .line 134
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getDatabaseProvider(Landroid/content/Context;)Lcom/google/android/exoplayer2/database/DatabaseProvider;

    move-result-object v6

    .line 135
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getDownloadCache(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v7

    .line 136
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getHttpDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v8

    const/4 v2, 0x6

    .line 137
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/offline/DownloadManager;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/database/DatabaseProvider;Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/util/concurrent/Executor;)V

    sput-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    .line 138
    new-instance v1, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    .line 139
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getHttpDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;

    invoke-direct {v1, p0, v2, v3}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    sput-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadTracker:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 84
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    .line 85
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getHttpDataSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 86
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getDownloadCache(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->buildReadOnlyCacheDataSource(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSource$Factory;

    move-result-object p0

    sput-object p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    .line 88
    :cond_0
    sget-object p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;

    monitor-enter v0

    .line 161
    :try_start_0
    sget-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Lcom/google/android/exoplayer2/database/ExoDatabaseProvider;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/database/ExoDatabaseProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;

    .line 164
    :cond_0
    sget-object p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->databaseProvider:Lcom/google/android/exoplayer2/database/DatabaseProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDownloadCache(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Ljava/io/File;

    .line 113
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getDownloadDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "downloads"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/cache/NoOpCacheEvictor;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/cache/NoOpCacheEvictor;-><init>()V

    .line 116
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getDatabaseProvider(Landroid/content/Context;)Lcom/google/android/exoplayer2/database/DatabaseProvider;

    move-result-object p0

    invoke-direct {v2, v1, v3, p0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;Lcom/google/android/exoplayer2/database/DatabaseProvider;)V

    sput-object v2, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 118
    :cond_0
    sget-object p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadCache:Lcom/google/android/exoplayer2/upstream/cache/Cache;
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;

    monitor-enter v0

    .line 168
    :try_start_0
    sget-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadDirectory:Ljava/io/File;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadDirectory:Ljava/io/File;

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadDirectory:Ljava/io/File;

    .line 174
    :cond_0
    sget-object p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadDirectory:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDownloadManager(Landroid/content/Context;)Lcom/google/android/exoplayer2/offline/DownloadManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;

    monitor-enter v0

    .line 101
    :try_start_0
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->ensureDownloadManagerInitialized(Landroid/content/Context;)V

    .line 102
    sget-object p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadManager:Lcom/google/android/exoplayer2/offline/DownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDownloadNotificationHelper(Landroid/content/Context;)Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadNotificationHelper:Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;

    const-string v2, "download_channel"

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadNotificationHelper:Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;

    .line 97
    :cond_0
    sget-object p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadNotificationHelper:Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDownloadTracker(Landroid/content/Context;)Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;

    monitor-enter v0

    .line 106
    :try_start_0
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->ensureDownloadManagerInitialized(Landroid/content/Context;)V

    .line 107
    sget-object p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->downloadTracker:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 73
    new-instance v1, Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance p0, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;

    .line 75
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/ext/cronet/CronetDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/ext/cronet/CronetEngineWrapper;Ljava/util/concurrent/Executor;)V

    sput-object p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 77
    :cond_0
    sget-object p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized upgradeActionFile(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "fileName",
            "downloadIndex",
            "addNewDownloadsAsCompleted"
        }
    .end annotation

    const-class v0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;

    monitor-enter v0

    .line 149
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 150
    invoke-static {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoUtils;->getDownloadDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v2, 0x1

    .line 149
    invoke-static {v1, p0, p2, v2, p3}, Lcom/google/android/exoplayer2/offline/ActionFileUpgradeUtil;->upgradeAndDelete(Ljava/io/File;Lcom/google/android/exoplayer2/offline/ActionFileUpgradeUtil$DownloadIdProvider;Lcom/google/android/exoplayer2/offline/DefaultDownloadIndex;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "DemoUtil"

    .line 156
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to upgrade action file: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static useExtensionRenderers()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
