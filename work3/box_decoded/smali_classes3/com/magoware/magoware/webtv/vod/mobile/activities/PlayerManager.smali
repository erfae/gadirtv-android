.class final Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;
.implements Lcom/google/android/exoplayer2/ext/cast/SessionAvailabilityListener;


# static fields
.field private static final BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field private static final DATA_SOURCE_FACTORY:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

.field private static final USER_AGENT:Ljava/lang/String; = "ExoCastDemoPlayer"


# instance fields
.field private TAG:Ljava/lang/String;

.field public card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field private final castControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

.field private castMediaQueueCreationPending:Z

.field private final castPlayer:Lcom/google/android/exoplayer2/ext/cast/CastPlayer;

.field private final concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

.field private contentType:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentItemIndex:I

.field private currentPlayer:Lcom/google/android/exoplayer2/Player;

.field private eventCategory:Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;

.field private final exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private final localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

.field private mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private trackSelectorParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    const-string v1, "ExoCastDemoPlayer"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->DATA_SOURCE_FACTORY:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    .line 104
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerControlView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastContext;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "localPlayerView",
            "castControlView",
            "context",
            "castContext",
            "myCard"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PlayerManager "

    .line 98
    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->TAG:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;->VOD:Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->eventCategory:Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;

    .line 131
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 132
    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    .line 133
    iput-object p5, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    const/4 p5, -0x1

    .line 134
    iput p5, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentItemIndex:I

    .line 135
    new-instance p5, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-direct {p5, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    iput-object p5, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    .line 137
    new-instance p5, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {p5}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    .line 139
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 140
    new-instance p5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    invoke-direct {p5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p5

    iput-object p5, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->trackSelectorParameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 142
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, p5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 144
    iget-object p5, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-static {p3, p5}, Lcom/google/android/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p5

    iput-object p5, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 145
    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 146
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->getVodAspectRatio()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setResizeMode(I)V

    .line 148
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 150
    new-instance p1, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;

    invoke-direct {p1, p4}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;-><init>(Lcom/google/android/gms/cast/framework/CastContext;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castPlayer:Lcom/google/android/exoplayer2/ext/cast/CastPlayer;

    .line 151
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 152
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->setSessionAvailabilityListener(Lcom/google/android/exoplayer2/ext/cast/SessionAvailabilityListener;)V

    .line 153
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    const-string p1, "PlayerManagerVodCast"

    .line 154
    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->userAgent:Ljava/lang/String;

    .line 155
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->FILM:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;->VOD:Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;->TV_EPISODE:Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;

    :goto_0
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->eventCategory:Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;

    return-void
.end method

.method private buildDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "useBandwidthMeter"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 437
    sget-object p2, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 438
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->buildDataSourceFactory(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method private buildMediaQueueItem()Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 4

    .line 384
    new-instance v0, Lcom/google/android/gms/cast/MediaMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    .line 385
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/cast/MediaMetadata;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v2, Lcom/google/android/gms/cast/MediaInfo$Builder;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/cast/MediaInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setStreamType(I)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v1

    .line 388
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/google/android/gms/cast/MediaInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo$Builder;->build()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v0

    .line 389
    new-instance v1, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    invoke-direct {v1, v0}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    return-object v0
.end method

.method private buildMediaSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "uri",
            "overrideExtension",
            "handler",
            "listener"
        }
    .end annotation

    .line 352
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result p2

    .line 353
    :goto_0
    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object p3

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object p3

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getMovieUrl()Ljava/lang/String;

    move-result-object p3

    .line 355
    :goto_1
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    const-string p1, "application/mp4"

    .line 374
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->contentType:Ljava/lang/String;

    .line 375
    new-instance p1, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 376
    invoke-virtual {p1, p3, p4, p5}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    return-object p1

    .line 378
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "application/x-mpegURL"

    .line 370
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->contentType:Ljava/lang/String;

    .line 371
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 372
    invoke-virtual {p1, p3, p4, p5}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p2, "application/vnd.ms-sstr+xml"

    .line 364
    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->contentType:Ljava/lang/String;

    .line 365
    new-instance p2, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 367
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->buildDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 368
    invoke-virtual {p2, p3, p4, p5}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p2, "application/dash+xml"

    .line 358
    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->contentType:Ljava/lang/String;

    .line 359
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 361
    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->buildDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 362
    invoke-virtual {p2, p3, p4, p5}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method private clickMultiProfileButton(Ljava/lang/CharSequence;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "rendererIndex"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 459
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 463
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTypeSupport(I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 465
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->context:Landroid/content/Context;

    check-cast v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v0, v1, p1, v3, p2}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;I)V

    .line 466
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->setAllowAdaptiveSelections(Z)Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;

    .line 467
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionDialogBuilder;->build()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method public static createPlayerManager(Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerControlView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastContext;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "localPlayerView",
            "castControlView",
            "myContext",
            "castContext",
            "myCard"
        }
    .end annotation

    .line 119
    new-instance v6, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;-><init>(Lcom/google/android/exoplayer2/ui/PlayerView;Lcom/google/android/exoplayer2/ui/PlayerControlView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastContext;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    .line 122
    invoke-direct {v6, p2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->init(Landroid/content/Context;)V

    return-object v6
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "myContext"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castPlayer:Lcom/google/android/exoplayer2/ext/cast/CastPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->isCastSessionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castPlayer:Lcom/google/android/exoplayer2/ext/cast/CastPlayer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :goto_0
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->setCurrentPlayer(Lcom/google/android/exoplayer2/Player;)V

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castMediaQueueCreationPending:Z

    .line 239
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 241
    invoke-direct {p0, p1, v4}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->prepareMediaForPlaying(Landroid/content/Context;Landroid/net/Uri;)V

    .line 242
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->context:Landroid/content/Context;

    .line 244
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->buildMediaSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 245
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentPlayer:Lcom/google/android/exoplayer2/Player;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castPlayer:Lcom/google/android/exoplayer2/ext/cast/CastPlayer;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    new-array p1, v0, [Lcom/google/android/gms/cast/MediaQueueItem;

    .line 246
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->buildMediaQueueItem()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->addItems([Lcom/google/android/gms/cast/MediaQueueItem;)Lcom/google/android/gms/common/api/PendingResult;

    .line 248
    :cond_1
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->selectQueueItem(I)V

    return-void
.end method

.method private maybeSetCurrentItemAndNotify(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentItemIndex"
        }
    .end annotation

    .line 329
    iget v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentItemIndex:I

    if-eq v0, p1, :cond_0

    .line 331
    iput p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentItemIndex:I

    :cond_0
    return-void
.end method

.method private prepareMediaForPlaying(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mediaSourceUri"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/MediaSource;

    .line 394
    new-instance v2, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    new-instance v4, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->userAgent:Ljava/lang/String;

    invoke-direct {v4, p1, v3}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .line 402
    invoke-direct {p0, p1, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->buildDataSourceFactory(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object v2

    iput-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 404
    invoke-direct/range {v3 .. v8}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->buildMediaSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const/4 p1, 0x0

    const-string v2, "application/x-subrip"

    const/4 v3, -0x1

    const-string v4, "und"

    .line 405
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    const-string v5, "application/ttml+xml"

    .line 410
    invoke-static {p1, v5, v3, v4}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    .line 416
    :goto_0
    iget-object v4, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_0

    .line 417
    iget-object v4, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 421
    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 417
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    add-int/lit8 v4, p2, 0x1

    .line 422
    new-instance v11, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;

    iget-object v5, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 423
    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodSubtitle()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodSubtitle;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->mediaDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/SingleSampleMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/Format;J)V

    aput-object v11, v0, v4

    move p2, v4

    goto :goto_0

    .line 428
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaSource;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/MergingMediaSource;-><init>([Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 431
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 432
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method private setCurrentItem(IJZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemIndex",
            "positionMs",
            "playWhenReady"
        }
    .end annotation

    .line 314
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->maybeSetCurrentItemAndNotify(I)V

    .line 315
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castMediaQueueCreationPending:Z

    if-eqz v0, :cond_1

    const/4 p4, 0x1

    new-array v1, p4, [Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p4, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->buildMediaQueueItem()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_0
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castMediaQueueCreationPending:Z

    .line 321
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castPlayer:Lcom/google/android/exoplayer2/ext/cast/CastPlayer;

    const/4 v5, 0x0

    move v2, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->loadItems([Lcom/google/android/gms/cast/MediaQueueItem;IJI)Lcom/google/android/gms/common/api/PendingResult;

    goto :goto_1

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentPlayer:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    .line 324
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentPlayer:Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1, p4}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :goto_1
    return-void
.end method

.method private setCurrentPlayer(Lcom/google/android/exoplayer2/Player;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPlayer"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentPlayer:Lcom/google/android/exoplayer2/Player;

    if-ne v0, p1, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->hide()V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->show()V

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentPlayer:Lcom/google/android/exoplayer2/Player;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_4

    .line 277
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v6, 0x4

    if-eq v0, v6, :cond_3

    .line 279
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentPlayer:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v6

    .line 280
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentPlayer:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    .line 281
    iget-object v8, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentPlayer:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v8}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v8

    .line 282
    iget v9, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentItemIndex:I

    if-eq v8, v9, :cond_2

    move v8, v9

    goto :goto_1

    :cond_2
    move-wide v4, v6

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v8, -0x1

    .line 287
    :goto_1
    iget-object v6, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentPlayer:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v6, v2}, Lcom/google/android/exoplayer2/Player;->stop(Z)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    const/4 v8, -0x1

    .line 292
    :goto_2
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentPlayer:Lcom/google/android/exoplayer2/Player;

    .line 295
    iget-object v6, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castPlayer:Lcom/google/android/exoplayer2/ext/cast/CastPlayer;

    if-ne p1, v6, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castMediaQueueCreationPending:Z

    .line 296
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-ne p1, v1, :cond_6

    .line 297
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    :cond_6
    if-eq v8, v3, :cond_7

    .line 302
    invoke-direct {p0, v8, v4, v5, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->setCurrentItem(IJZ)V

    :cond_7
    return-void
.end method

.method private updateCurrentItemIndex()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentPlayer:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentPlayer:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 253
    :goto_0
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->maybeSetCurrentItemAndNotify(I)V

    return-void
.end method


# virtual methods
.method public buildDataSourceFactory(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "bandwidthMeter"
        }
    .end annotation

    .line 442
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->buildHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    return-object v0
.end method

.method public buildHttpDataSourceFactory(Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bandwidthMeter"
        }
    .end annotation

    .line 446
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->userAgent:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentPlayer:Lcom/google/android/exoplayer2/Player;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castControlView:Lcom/google/android/exoplayer2/ui/PlayerControlView;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerControlView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public logMovie(Ljava/lang/String;JLjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event_action",
            "event_value",
            "event_type"
        }
    .end annotation

    move-object v0, p0

    .line 474
    iget-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    .line 476
    iget-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const-string v2, "-1"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->BANDWIDTH_METER:Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getBitrateEstimate()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->width:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "movie stop"

    move-object v6, p1

    .line 479
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    iget-object v3, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v3

    long-to-double v3, v3

    iget-object v5, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v3, v7

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v7

    double-to-long v3, v3

    move-object v12, v1

    move-object v13, v2

    move-wide v8, v3

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p2

    move-object v12, v1

    move-object v13, v2

    goto :goto_0

    :cond_1
    move-object v6, p1

    move-wide/from16 v8, p2

    move-object v12, v2

    move-object v13, v12

    .line 484
    :goto_0
    iget-object v4, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->eventCategory:Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;

    iget-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v5

    iget-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v7

    const-string v11, "exoplayer"

    move-object v6, p1

    move-object/from16 v10, p4

    invoke-static/range {v4 .. v13}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logMovieVod(Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs$EventCategory;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCastSessionAvailable()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castPlayer:Lcom/google/android/exoplayer2/ext/cast/CastPlayer;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->setCurrentPlayer(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method public onCastSessionUnavailable()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->setCurrentPlayer(Lcom/google/android/exoplayer2/Player;)V

    return-void
.end method

.method public onClosedCaptionsClicked()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->trackSelector:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->context:Landroid/content/Context;

    const v1, 0x7f1403ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->clickMultiProfileButton(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method

.method public synthetic onExperimentalOffloadSchedulingEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onExperimentalOffloadSchedulingEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playWhenReady",
            "playbackState"
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->updateCurrentItemIndex()V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->updateCurrentItemIndex()V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeline",
            "manifest",
            "reason"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->updateCurrentItemIndex()V

    .line 217
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 218
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castMediaQueueCreationPending:Z

    :cond_0
    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, -0x1

    .line 192
    iput v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->currentItemIndex:I

    .line 193
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->concatenatingMediaSource:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;->clear()V

    .line 194
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castPlayer:Lcom/google/android/exoplayer2/ext/cast/CastPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->setSessionAvailabilityListener(Lcom/google/android/exoplayer2/ext/cast/SessionAvailabilityListener;)V

    .line 195
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->castPlayer:Lcom/google/android/exoplayer2/ext/cast/CastPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/cast/CastPlayer;->release()V

    .line 196
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->localPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 197
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    .line 198
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->savePosition()V

    return-void
.end method

.method public savePosition()V
    .locals 5

    const/4 v0, -0x1

    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    long-to-int v2, v1

    .line 491
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@on back p "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v3

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 494
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-ltz v0, :cond_1

    .line 500
    :try_start_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VOD_POSITION:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 501
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VOD_STOPPED:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Z)V

    .line 502
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VOD_URL:Ljava/lang/String;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VOD_RESUME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 506
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 510
    :cond_1
    :try_start_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "@@on back p<0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 515
    :goto_1
    sget-object v0, Lcom/magoware/magoware/webtv/global/Global;->shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/magoware/magoware/webtv/global/Global;->shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VOD_RESUME_URL_FROM_ANOTHER_DEVICE:Ljava/lang/String;

    const-string v2, ""

    .line 516
    invoke-virtual {v0, v1, v2}, Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->card:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-static {v0, v1}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->VOD_RESUME_FROM_ANOTHER_DEVICE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Z)V

    :cond_2
    const-wide/16 v0, 0x0

    const-string v2, "movie stop"

    const-string v3, "event"

    .line 520
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->logMovie(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public selectQueueItem(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemIndex"
        }
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    .line 169
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->setCurrentItem(IJZ)V

    return-void
.end method
