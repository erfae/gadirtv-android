.class public Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;
.super Ljava/lang/Object;
.source "DownloadTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$WidevineOfflineLicenseFetchTask;,
        Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;,
        Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$DownloadManagerListener;,
        Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadTracker"


# instance fields
.field private final context:Landroid/content/Context;

.field private final downloadIndex:Lcom/google/android/exoplayer2/offline/DownloadIndex;

.field private final downloads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;"
        }
    .end annotation
.end field

.field private final httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private startDownloadDialogHelper:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;

.field private final trackSelectorParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "httpDataSourceFactory",
            "downloadManager"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->context:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 85
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 86
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->downloads:Ljava/util/HashMap;

    .line 87
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/offline/DownloadManager;->getDownloadIndex()Lcom/google/android/exoplayer2/offline/DownloadIndex;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->downloadIndex:Lcom/google/android/exoplayer2/offline/DownloadIndex;

    .line 88
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->trackSelectorParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 89
    new-instance p1, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$DownloadManagerListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$DownloadManagerListener;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$1;)V

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager;->addListener(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;)V

    .line 90
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->loadDownloads()V

    return-void
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Ljava/util/HashMap;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->downloads:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    return-object p0
.end method

.method static synthetic access$500(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->trackSelectorParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-object p0
.end method

.method private loadDownloads()V
    .locals 4

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->downloadIndex:Lcom/google/android/exoplayer2/offline/DownloadIndex;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadIndex;->getDownloads([I)Lcom/google/android/exoplayer2/offline/DownloadCursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->getDownload()Lcom/google/android/exoplayer2/offline/Download;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->downloads:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object v3, v3, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 138
    :try_start_2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 133
    :try_start_3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/offline/DownloadCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "DownloadTracker"

    const-string v2, "Failed to query downloads"

    .line 139
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public addListener(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 94
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDownloadRequest(Landroid/net/Uri;)Lcom/google/android/exoplayer2/offline/DownloadRequest;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->downloads:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/offline/Download;

    if-eqz p1, :cond_0

    .line 110
    iget v0, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isDownloaded(Lcom/google/android/exoplayer2/MediaItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaItem"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->downloads:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/offline/Download;

    if-eqz p1, :cond_0

    .line 104
    iget p1, p1, Lcom/google/android/exoplayer2/offline/Download;->state:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeListener(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public toggleDownload(Landroidx/fragment/app/FragmentManager;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/RenderersFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragmentManager",
            "mediaItem",
            "renderersFactory"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->downloads:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/google/android/exoplayer2/MediaItem;->playbackProperties:Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;

    iget-object v1, v1, Lcom/google/android/exoplayer2/MediaItem$PlaybackProperties;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/Download;

    if-eqz v0, :cond_0

    .line 117
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->context:Landroid/content/Context;

    const-class p2, Lcom/magoware/magoware/webtv/players/exoplayer/DemoDownloadService;

    iget-object p3, v0, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p3, p3, Lcom/google/android/exoplayer2/offline/DownloadRequest;->id:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplayer2/offline/DownloadService;->sendRemoveDownload(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->startDownloadDialogHelper:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;->release()V

    .line 123
    :cond_1
    new-instance v0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    .line 126
    invoke-static {v1, p2, p3, v2}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->forMediaItem(Landroid/content/Context;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)Lcom/google/android/exoplayer2/offline/DownloadHelper;

    move-result-object p3

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;Landroidx/fragment/app/FragmentManager;Lcom/google/android/exoplayer2/offline/DownloadHelper;Lcom/google/android/exoplayer2/MediaItem;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->startDownloadDialogHelper:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$StartDownloadDialogHelper;

    :goto_0
    return-void
.end method
