.class public final Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;
.super Ljava/lang/Object;
.source "ImaAdsLoader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;
.implements Lcom/google/android/exoplayer2/source/ads/AdsLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$DefaultImaFactory;,
        Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;,
        Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;,
        Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$Builder;
    }
.end annotation


# static fields
.field private static final AD_PROGRESS_UPDATE_INTERVAL_MS:I = 0x64

.field private static final BITRATE_UNSET:I = -0x1

.field private static final EMPTY_AD_TAG_DATA_SPEC:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private static final IMA_AD_STATE_NONE:I = 0x0

.field private static final IMA_AD_STATE_PAUSED:I = 0x2

.field private static final IMA_AD_STATE_PLAYING:I = 0x1

.field private static final IMA_DURATION_UNSET:J = -0x1L

.field private static final IMA_SDK_SETTINGS_PLAYER_TYPE:Ljava/lang/String; = "google/exo.ext.ima"

.field private static final IMA_SDK_SETTINGS_PLAYER_VERSION:Ljava/lang/String; = "2.12.1"

.field private static final TAG:Ljava/lang/String; = "ImaAdsLoader"

.field private static final THRESHOLD_AD_MATCH_US:J = 0x3e8L

.field private static final THRESHOLD_AD_PRELOAD_MS:J = 0xfa0L

.field private static final THRESHOLD_END_OF_CONTENT_MS:J = 0x1388L

.field private static final TIMEOUT_UNSET:I = -0x1


# instance fields
.field private final adCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field private final adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;",
            "Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field private adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final adTagUri:Landroid/net/Uri;

.field private adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

.field private adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

.field private final adsResponse:Ljava/lang/String;

.field private bufferingAd:Z

.field private final componentListener:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;

.field private final configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

.field private contentDurationMs:J

.field private final context:Landroid/content/Context;

.field private eventListener:Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;

.field private fakeContentProgressElapsedRealtimeMs:J

.field private fakeContentProgressOffsetMs:J

.field private final handler:Landroid/os/Handler;

.field private hasAdPlaybackState:Z

.field private imaAdInfo:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

.field private imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

.field private imaAdState:I

.field private final imaFactory:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;

.field private imaPausedContent:Z

.field private final imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private isAdsManagerInitialized:Z

.field private lastAdProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

.field private lastContentProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

.field private lastVolumePercent:I

.field private nextPlayer:Lcom/google/android/exoplayer2/Player;

.field private pendingAdLoadError:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

.field private pendingAdPrepareErrorAdInfo:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

.field private pendingAdRequestContext:Ljava/lang/Object;

.field private pendingContentPositionMs:J

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private player:Lcom/google/android/exoplayer2/Player;

.field private playingAd:Z

.field private playingAdIndexInAdGroup:I

.field private sentContentComplete:Z

.field private sentPendingContentPositionMs:Z

.field private supportedMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeline:Lcom/google/android/exoplayer2/Timeline;

.field private final updateAdProgressRunnable:Ljava/lang/Runnable;

.field private waitingForPreloadElapsedRealtimeMs:J

.field private wasSetPlayerCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "goog.exo.ima"

    .line 115
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 485
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    sput-object v0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->EMPTY_AD_TAG_DATA_SPEC:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 590
    new-instance v0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 592
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$Builder;->getConfiguration()Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    move-result-object v3

    new-instance v4, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$DefaultImaFactory;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$DefaultImaFactory;-><init>(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$1;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 590
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->context:Landroid/content/Context;

    .line 606
    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    .line 607
    iput-object p3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaFactory:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;

    .line 608
    iput-object p4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adTagUri:Landroid/net/Uri;

    .line 609
    iput-object p5, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsResponse:Ljava/lang/String;

    .line 610
    iget-object p1, p2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    const/4 p4, 0x1

    if-nez p1, :cond_0

    .line 612
    invoke-interface {p3}, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object p1

    .line 613
    iget-boolean p3, p2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz p3, :cond_0

    .line 614
    invoke-interface {p1, p4}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setDebugMode(Z)V

    :cond_0
    const-string p3, "google/exo.ext.ima"

    .line 617
    invoke-interface {p1, p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setPlayerType(Ljava/lang/String;)V

    const-string p3, "2.12.1"

    .line 618
    invoke-interface {p1, p3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setPlayerVersion(Ljava/lang/String;)V

    .line 619
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 620
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 621
    invoke-static {}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getImaLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->handler:Landroid/os/Handler;

    .line 622
    new-instance p1, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;

    invoke-direct {p1, p0, p3}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$1;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->componentListener:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;

    .line 623
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    .line 624
    iget-object p3, p2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationVideoAdPlayerCallback:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    if-eqz p3, :cond_1

    .line 625
    iget-object p2, p2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationVideoAdPlayerCallback:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/ext/ima/-$$Lambda$ImaAdsLoader$O48tuoMSqES8wujLfJGB9NKwuzg;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ext/ima/-$$Lambda$ImaAdsLoader$O48tuoMSqES8wujLfJGB9NKwuzg;-><init>(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdProgressRunnable:Ljava/lang/Runnable;

    .line 628
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;

    .line 629
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->supportedMimeTypes:Ljava/util/List;

    .line 630
    sget-object p1, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->EMPTY_AD_TAG_DATA_SPEC:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 631
    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->lastContentProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 632
    sget-object p1, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->lastAdProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 633
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressElapsedRealtimeMs:J

    .line 634
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressOffsetMs:J

    .line 635
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingContentPositionMs:J

    .line 636
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->waitingForPreloadElapsedRealtimeMs:J

    .line 637
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->contentDurationMs:J

    .line 638
    sget-object p1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 639
    sget-object p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$1;)V
    .locals 0

    .line 111
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->maybeNotifyInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getContentVideoProgressUpdate()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->waitingForPreloadElapsedRealtimeMs:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;J)J
    .locals 0

    .line 111
    iput-wide p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->waitingForPreloadElapsedRealtimeMs:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/Exception;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->handleAdGroupLoadError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->maybeNotifyPendingAdLoadError()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->handleAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdLoadError:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdLoadError:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Ljava/util/List;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)I
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getPlayerVolumePercent()I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->loadAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pauseAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->stopAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Ljava/lang/Object;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdRequestContext:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdRequestContext:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/android/exoplayer2/Player;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    return-object p0
.end method

.method static synthetic access$702(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Z)Z
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->hasAdPlaybackState:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    return-void
.end method

.method private destroyAdsManager()V
    .locals 2

    .line 1660
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_2

    .line 1661
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->componentListener:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 1662
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->componentListener:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 1666
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    if-eqz v0, :cond_1

    .line 1667
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 1669
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    const/4 v0, 0x0

    .line 1670
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    :cond_2
    return-void
.end method

.method private ensureSentContentCompleteIfAtEndOfStream()V
    .locals 5

    .line 1528
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->sentContentComplete:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->contentDurationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingContentPositionMs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    .line 1531
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Player;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getContentPeriodPositionMs(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->contentDurationMs:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 1534
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->sendContentComplete()V

    :cond_0
    return-void
.end method

.method private getAdGroupIndexForAdPod(Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)I
    .locals 2

    .line 1583
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getPodIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1585
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget p1, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 1589
    :cond_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTimeOffset()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getAdGroupIndexForCuePointTimeSeconds(D)I

    move-result p1

    return p1
.end method

.method private getAdGroupIndexForCuePointTimeSeconds(D)I
    .locals 6

    double-to-float p1, p1

    float-to-double p1, p1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double p1, p1, v0

    .line 1616
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    const/4 v0, 0x0

    .line 1617
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v0, v1, :cond_1

    .line 1618
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    aget-wide v2, v1, v0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    sub-long/2addr v2, p1

    .line 1620
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1624
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to find cue point"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;
    .locals 3

    .line 1628
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    .line 1629
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaInfo["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAdVideoProgressUpdate()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 5

    .line 1107
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->lastAdProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0

    .line 1109
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playingAd:Z

    if-eqz v1, :cond_2

    .line 1110
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1112
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    goto :goto_0

    .line 1113
    :cond_1
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    move-object v0, v2

    :goto_0
    return-object v0

    .line 1115
    :cond_2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0
.end method

.method private static getContentPeriodPositionMs(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Period;)J
    .locals 2

    .line 1634
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getContentPosition()J

    move-result-wide v0

    .line 1636
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1638
    invoke-virtual {p1, p0, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide p0

    :goto_0
    sub-long/2addr v0, p0

    return-wide v0
.end method

.method private getContentVideoProgressUpdate()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 8

    .line 1086
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->lastContentProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0

    .line 1089
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->contentDurationMs:J

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1091
    :goto_0
    iget-wide v6, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingContentPositionMs:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_2

    .line 1092
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->sentPendingContentPositionMs:Z

    goto :goto_1

    .line 1094
    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressElapsedRealtimeMs:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 1095
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressElapsedRealtimeMs:J

    sub-long/2addr v2, v4

    .line 1096
    iget-wide v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressOffsetMs:J

    add-long v6, v4, v2

    goto :goto_1

    .line 1097
    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playingAd:Z

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    .line 1098
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getContentPeriodPositionMs(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v6

    :goto_1
    if-eqz v1, :cond_4

    .line 1102
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->contentDurationMs:J

    goto :goto_2

    :cond_4
    const-wide/16 v0, -0x1

    .line 1103
    :goto_2
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    invoke-direct {v2, v6, v7, v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    return-object v2

    .line 1100
    :cond_5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0
.end method

.method private static getImaLooper()Landroid/os/Looper;
    .locals 1

    .line 1644
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private getLoadingAdGroupIndex()I
    .locals 6

    .line 1597
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1600
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getContentPeriodPositionMs(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v2

    .line 1601
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->contentDurationMs:J

    .line 1602
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1604
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->contentDurationMs:J

    .line 1606
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v4

    .line 1605
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroupIndexAfterPositionUs(JJ)I

    move-result v0

    :cond_1
    return v0
.end method

.method private getPlayerVolumePercent()I
    .locals 6

    .line 1134
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    .line 1136
    iget v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->lastVolumePercent:I

    return v0

    .line 1139
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getAudioComponent()Lcom/google/android/exoplayer2/Player$AudioComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1141
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player$AudioComponent;->getVolume()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    .line 1145
    :cond_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1146
    :goto_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getRendererCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v4, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->length:I

    if-ge v3, v4, :cond_3

    .line 1147
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/Player;->getRendererType(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v4

    if-eqz v4, :cond_2

    const/16 v0, 0x64

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private handleAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 5

    .line 1155
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_0

    return-void

    .line 1159
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$1;->$SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType:[I

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "ImaAdsLoader"

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1193
    :pswitch_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object p1

    .line 1194
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AdEvent: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1195
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    const/4 p1, 0x0

    .line 1189
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaPausedContent:Z

    .line 1190
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->resumeContentInternal()V

    goto :goto_1

    .line 1184
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;

    if-eqz p1, :cond_3

    .line 1185
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;->onAdClicked()V

    goto :goto_1

    .line 1179
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;

    if-eqz p1, :cond_3

    .line 1180
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;->onAdTapped()V

    goto :goto_1

    .line 1175
    :pswitch_4
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaPausedContent:Z

    .line 1176
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pauseContentInternal()V

    goto :goto_1

    .line 1161
    :pswitch_5
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "adBreakTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v0, :cond_1

    .line 1163
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Fetch error for ad at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " seconds"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :cond_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double p1, v0, v3

    if-nez p1, :cond_2

    .line 1168
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget p1, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    sub-int/2addr p1, v2

    goto :goto_0

    .line 1169
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getAdGroupIndexForCuePointTimeSeconds(D)I

    move-result p1

    .line 1170
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->markAdGroupInErrorStateAndClearPendingContentPosition(I)V

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleAdGroupLoadError(Ljava/lang/Exception;)V
    .locals 2

    .line 1458
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getLoadingAdGroupIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ImaAdsLoader"

    const-string v1, "Unable to determine ad group index for ad group load error"

    .line 1460
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 1463
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->markAdGroupInErrorStateAndClearPendingContentPosition(I)V

    .line 1464
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdLoadError:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    if-nez v1, :cond_1

    .line 1465
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;->createForAdGroup(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdLoadError:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    :cond_1
    return-void
.end method

.method private handleAdPrepareError(IILjava/lang/Exception;)V
    .locals 4

    .line 1491
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    const-string v1, "ImaAdsLoader"

    if-eqz v0, :cond_0

    const/16 v0, 0x35

    .line 1492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Prepare error for ad "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in group "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1495
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez p3, :cond_1

    const-string p1, "Ignoring ad prepare error after release"

    .line 1496
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1499
    :cond_1
    iget p3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    if-nez p3, :cond_3

    .line 1502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressElapsedRealtimeMs:J

    .line 1503
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object p3, p3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    aget-wide v0, p3, p1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressOffsetMs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p3, v0, v2

    if-nez p3, :cond_2

    .line 1505
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->contentDurationMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressOffsetMs:J

    .line 1507
    :cond_2
    new-instance p3, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    invoke-direct {p3, p1, p2}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;-><init>(II)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdPrepareErrorAdInfo:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    goto :goto_2

    .line 1509
    :cond_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 1511
    iget v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playingAdIndexInAdGroup:I

    const/4 v1, 0x0

    if-le p2, v0, :cond_4

    const/4 v0, 0x0

    .line 1514
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1515
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v2, p3}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onEnded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1518
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->getFirstAdIndexToPlay()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playingAdIndexInAdGroup:I

    .line 1519
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1520
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onError(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1523
    :cond_5
    :goto_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdLoadError(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1524
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    return-void
.end method

.method private handlePlayerStateChanged(ZI)V
    .locals 5

    .line 1223
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playingAd:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 1224
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->bufferingAd:Z

    if-nez v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    const/4 v3, 0x0

    .line 1226
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1227
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v4, v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onBuffering(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1229
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->stopUpdatingAdProgress()V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 1231
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->bufferingAd:Z

    .line 1232
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdProgress()V

    .line 1236
    :cond_2
    :goto_1
    iget v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    if-nez v0, :cond_3

    if-ne p2, v1, :cond_3

    if-eqz p1, :cond_3

    .line 1239
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->ensureSentContentCompleteIfAtEndOfStream()V

    goto :goto_4

    :cond_3
    if-eqz v0, :cond_6

    const/4 p1, 0x4

    if-ne p2, p1, :cond_6

    .line 1241
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    const-string p2, "ImaAdsLoader"

    if-nez p1, :cond_4

    const-string p1, "onEnded without ad media info"

    .line 1243
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1245
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 1246
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onEnded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1249
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz p1, :cond_6

    const-string p1, "VideoAdPlayerCallback.onEnded in onPlaybackStateChanged"

    .line 1250
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private handleTimelineOrPositionChanged()V
    .locals 8

    .line 1256
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    .line 1257
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v1, :cond_8

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1260
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playingAd:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1261
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->ensureSentContentCompleteIfAtEndOfStream()V

    .line 1262
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->sentContentComplete:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1263
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v0, v1, v4}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getContentPeriodPositionMs(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v4

    .line 1264
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v1, v3, v6}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1265
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexForPositionUs(J)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 1267
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->sentPendingContentPositionMs:Z

    .line 1268
    iput-wide v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingContentPositionMs:J

    .line 1273
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playingAd:Z

    .line 1274
    iget v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playingAdIndexInAdGroup:I

    .line 1275
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playingAd:Z

    if-eqz v5, :cond_2

    .line 1276
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentAdIndexInAdGroup()I

    move-result v2

    :cond_2
    iput v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playingAdIndexInAdGroup:I

    if-eqz v1, :cond_3

    if-eq v2, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    .line 1281
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    const-string v4, "ImaAdsLoader"

    if-nez v2, :cond_4

    const-string v2, "onEnded without ad media info"

    .line 1283
    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1285
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 1286
    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v5, v2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onEnded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1289
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v2, :cond_6

    const-string v2, "VideoAdPlayerCallback.onEnded in onTimelineChanged/onPositionDiscontinuity"

    .line 1290
    invoke-static {v4, v2}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->sentContentComplete:Z

    if-nez v2, :cond_8

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playingAd:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    if-nez v1, :cond_8

    .line 1294
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentAdGroupIndex()I

    move-result v0

    .line 1295
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    aget-wide v2, v1, v0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_7

    .line 1296
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->sendContentComplete()V

    goto :goto_3

    .line 1299
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressElapsedRealtimeMs:J

    .line 1300
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    aget-wide v0, v1, v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressOffsetMs:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_8

    .line 1302
    iget-wide v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->contentDurationMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressOffsetMs:J

    :cond_8
    :goto_3
    return-void
.end method

.method private static hasMidrollAdGroups([J)Z
    .locals 9

    .line 1648
    array-length v0, p0

    const-wide/high16 v1, -0x8000000000000000L

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    .line 1650
    aget-wide v7, p0, v5

    cmp-long v0, v7, v3

    if-eqz v0, :cond_0

    aget-wide v3, p0, v5

    cmp-long p0, v3, v1

    if-eqz p0, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5

    :cond_1
    const/4 v7, 0x2

    if-ne v0, v7, :cond_4

    .line 1652
    aget-wide v7, p0, v5

    cmp-long v0, v7, v3

    if-nez v0, :cond_2

    aget-wide v3, p0, v6

    cmp-long p0, v3, v1

    if-eqz p0, :cond_3

    :cond_2
    const/4 v5, 0x1

    :cond_3
    return v5

    :cond_4
    return v6
.end method

.method public static synthetic lambda$O48tuoMSqES8wujLfJGB9NKwuzg(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdProgress()V

    return-void
.end method

.method private loadAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V
    .locals 7

    .line 1309
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    const-string v1, "ImaAdsLoader"

    if-nez v0, :cond_1

    .line 1311
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v0, :cond_0

    .line 1314
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "loadAd after release "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ad pod "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1312
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1319
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getAdGroupIndexForAdPod(Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)I

    move-result v0

    .line 1320
    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1321
    new-instance v3, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    invoke-direct {v3, v0, v2}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;-><init>(II)V

    .line 1322
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;

    invoke-interface {v4, p1, v3}, Lcom/google/common/collect/BiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v4, :cond_3

    const-string v4, "loadAd "

    .line 1324
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_0
    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->isAdInErrorState(II)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 1335
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget v4, v3, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;->adGroupIndex:I

    aget-object v1, v1, v4

    .line 1336
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v5, v3, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;->adGroupIndex:I

    .line 1338
    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result p2

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1337
    invoke-virtual {v4, v5, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdCount(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1339
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    iget v1, v3, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;->adGroupIndex:I

    aget-object p2, p2, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_6

    .line 1342
    iget-object v4, p2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    aget v4, v4, v1

    if-nez v4, :cond_5

    .line 1343
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdLoadError(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1347
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1348
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v0, v3, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;->adGroupIndex:I

    iget v1, v3, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;->adIndexInAdGroup:I

    .line 1349
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdUri(IILandroid/net/Uri;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1350
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    return-void
.end method

.method private markAdGroupInErrorStateAndClearPendingContentPosition(I)V
    .locals 4

    .line 1471
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v0, v0, p1

    .line 1472
    iget v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1473
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    array-length v0, v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdCount(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1474
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v0, v0, p1

    :cond_0
    const/4 v1, 0x0

    .line 1476
    :goto_0
    iget v2, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ge v1, v2, :cond_3

    .line 1477
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    aget v2, v2, v1

    if-nez v2, :cond_2

    .line 1478
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x2f

    .line 1479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Removing ad "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in ad group "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImaAdsLoader"

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdLoadError(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1484
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1486
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingContentPositionMs:J

    .line 1487
    iput-wide v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressElapsedRealtimeMs:J

    return-void
.end method

.method private maybeNotifyInternalError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1569
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Internal error in "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "ImaAdsLoader"

    .line 1570
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 1572
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v0, v1, :cond_1

    .line 1573
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withSkippedAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1575
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    .line 1576
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;

    if-eqz v0, :cond_2

    .line 1577
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1578
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 1577
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;->onAdLoadError(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    :cond_2
    return-void
.end method

.method private maybeNotifyPendingAdLoadError()V
    .locals 3

    .line 1562
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdLoadError:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;

    if-eqz v1, :cond_0

    .line 1563
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;->onAdLoadError(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    const/4 v0, 0x0

    .line 1564
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdLoadError:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    :cond_0
    return-void
.end method

.method private pauseAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 3

    .line 1398
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "pauseAd "

    .line 1399
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const-string v1, "ImaAdsLoader"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_2

    return-void

    .line 1405
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    if-nez v0, :cond_3

    return-void

    .line 1410
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v0, 0x2

    .line 1411
    iput v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    const/4 v0, 0x0

    .line 1412
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1413
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPause(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private pauseContentInternal()V
    .locals 3

    const/4 v0, 0x0

    .line 1203
    iput v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    .line 1204
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->sentPendingContentPositionMs:Z

    if-eqz v1, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1205
    iput-wide v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingContentPositionMs:J

    .line 1206
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->sentPendingContentPositionMs:Z

    :cond_0
    return-void
.end method

.method private playAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 5

    .line 1354
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    const-string v1, "ImaAdsLoader"

    if-eqz v0, :cond_1

    const-string v0, "playAd "

    .line 1355
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_2

    return-void

    .line 1362
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const-string v0, "Unexpected playAd without stopAd"

    .line 1365
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 1370
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressElapsedRealtimeMs:J

    .line 1371
    iput-wide v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->fakeContentProgressOffsetMs:J

    .line 1372
    iput v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    .line 1373
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 1374
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdInfo:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    const/4 v0, 0x0

    .line 1375
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1376
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v2, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPlay(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1378
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdPrepareErrorAdInfo:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdInfo:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 1379
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdPrepareErrorAdInfo:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    .line 1380
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1381
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onError(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1384
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdProgress()V

    goto :goto_4

    .line 1386
    :cond_6
    iput v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    .line 1387
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1388
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 1389
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onResume(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1392
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Player;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1393
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->pause()V

    :cond_8
    return-void
.end method

.method private resumeContentInternal()V
    .locals 6

    .line 1211
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdInfo:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v0, v0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;->adGroupIndex:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withSkippedAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1213
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    goto :goto_0

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 1217
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withSkippedAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1218
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendContentComplete()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1539
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1540
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onContentComplete()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1542
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->sentContentComplete:Z

    .line 1543
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, "ImaAdsLoader"

    const-string v2, "adsLoader.contentComplete"

    .line 1544
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v0, v1, :cond_3

    .line 1547
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    aget-wide v2, v1, v0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 1548
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withSkippedAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1551
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    return-void
.end method

.method private setupAdsRendering()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;
    .locals 12

    .line 1023
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaFactory:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;->createAdsRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 1024
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setEnablePreloading(Z)V

    .line 1026
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->adMediaMimeTypes:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1027
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->adMediaMimeTypes:Ljava/util/List;

    goto :goto_0

    .line 1028
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->supportedMimeTypes:Ljava/util/List;

    .line 1025
    :goto_0
    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setMimeTypes(Ljava/util/List;)V

    .line 1029
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget v2, v2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->mediaLoadTimeoutMs:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1030
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget v2, v2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->mediaLoadTimeoutMs:I

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setLoadVideoTimeout(I)V

    .line 1032
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget v2, v2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->mediaBitrate:I

    if-eq v2, v3, :cond_2

    .line 1033
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget v2, v2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->mediaBitrate:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setBitrateKbps(I)V

    .line 1035
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->focusSkipButtonWhenAvailable:Z

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setFocusSkipButtonWhenAvailable(Z)V

    .line 1037
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->adUiElements:Ljava/util/Set;

    if-eqz v2, :cond_3

    .line 1038
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->adUiElements:Ljava/util/Set;

    invoke-interface {v0, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setUiElements(Ljava/util/Set;)V

    .line 1042
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    .line 1043
    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/Player;

    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getContentPeriodPositionMs(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v4

    .line 1044
    iget-object v6, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1046
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->contentDurationMs:J

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v9

    .line 1045
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroupIndexForPositionUs(JJ)I

    move-result v6

    if-eq v6, v3, :cond_b

    .line 1048
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->playAdBeforeStartPosition:Z

    const/4 v7, 0x0

    if-nez v3, :cond_5

    aget-wide v8, v2, v6

    .line 1050
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1053
    :cond_6
    invoke-static {v2}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->hasMidrollAdGroups([J)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1057
    iput-wide v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingContentPositionMs:J

    :cond_7
    :goto_3
    if-lez v6, :cond_b

    :goto_4
    if-ge v7, v6, :cond_8

    .line 1061
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withSkippedAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1063
    :cond_8
    array-length v3, v2

    if-ne v6, v3, :cond_9

    const/4 v0, 0x0

    return-object v0

    .line 1068
    :cond_9
    aget-wide v3, v2, v6

    sub-int/2addr v6, v1

    .line 1069
    aget-wide v1, v2, v6

    const-wide/high16 v5, -0x8000000000000000L

    const-wide v7, 0x412e848000000000L    # 1000000.0

    cmp-long v9, v3, v5

    if-nez v9, :cond_a

    long-to-double v1, v1

    div-double/2addr v1, v7

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    .line 1072
    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setPlayAdsAfterTime(D)V

    goto :goto_5

    :cond_a
    add-long/2addr v3, v1

    long-to-double v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    div-double/2addr v1, v7

    .line 1078
    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setPlayAdsAfterTime(D)V

    :cond_b
    :goto_5
    return-object v0
.end method

.method private stopAdInternal(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 3

    .line 1418
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "stopAd "

    .line 1419
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getAdMediaInfoString(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const-string v1, "ImaAdsLoader"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_2

    return-void

    .line 1425
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    if-nez v0, :cond_4

    .line 1429
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    if-eqz p1, :cond_3

    .line 1431
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;->adGroupIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;->adIndexInAdGroup:I

    .line 1432
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withSkippedAd(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1433
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    :cond_3
    return-void

    .line 1437
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1438
    iput p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    .line 1439
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->stopUpdatingAdProgress()V

    .line 1441
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdInfo:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdInfo:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    iget p1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;->adGroupIndex:I

    .line 1443
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdInfo:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    iget v0, v0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;->adIndexInAdGroup:I

    .line 1444
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->isAdInErrorState(II)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 1448
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1449
    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withPlayedAd(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdResumePositionUs(J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1450
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    .line 1451
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playingAd:Z

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 1452
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 1453
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdInfo:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    :cond_6
    return-void
.end method

.method private stopUpdatingAdProgress()V
    .locals 2

    .line 1130
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateAdPlaybackState()V
    .locals 2

    .line 1556
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;->onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    :cond_0
    return-void
.end method

.method private updateAdProgress()V
    .locals 4

    .line 1120
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getAdVideoProgressUpdate()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    .line 1121
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    const/4 v2, 0x0

    .line 1122
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1123
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v3, v1, v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onAdProgress(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1126
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdProgressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    return-object v0
.end method

.method public getAdsLoader()Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    return-object v0
.end method

.method public handlePrepareComplete(II)V
    .locals 3

    .line 888
    new-instance v0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;-><init>(II)V

    .line 889
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    const-string p2, "ImaAdsLoader"

    if-eqz p1, :cond_0

    .line 890
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Prepared ad "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adInfoByAdMediaInfo:Lcom/google/common/collect/BiMap;

    invoke-interface {p1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 894
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 895
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onLoaded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 898
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected prepared ad "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public handlePrepareError(IILjava/io/IOException;)V
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    return-void

    .line 908
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->handleAdPrepareError(IILjava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "handlePrepareError"

    .line 910
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->maybeNotifyInternalError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
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

.method public onPlayWhenReadyChanged(ZI)V
    .locals 3

    .line 989
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    goto :goto_0

    .line 993
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez p1, :cond_1

    .line 994
    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->pause()V

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_2

    .line 999
    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->resume()V

    return-void

    .line 1002
    :cond_2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlaybackState()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->handlePlayerStateChanged(ZI)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 6

    .line 955
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    .line 956
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 960
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-nez v1, :cond_3

    .line 962
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getLoadingAdGroupIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    .line 966
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v3, v3, v1

    .line 967
    iget v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-eq v4, v2, :cond_2

    iget v2, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-eqz v2, :cond_2

    iget-object v2, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->states:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-eqz v2, :cond_2

    return-void

    .line 973
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    aget-wide v1, v2, v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v1

    .line 974
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getContentPeriodPositionMs(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 976
    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->adPreloadTimeoutMs:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    .line 977
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->waitingForPreloadElapsedRealtimeMs:J

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 980
    iput-wide v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->waitingForPreloadElapsedRealtimeMs:J

    .line 983
    :cond_4
    :goto_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->handlePlayerStateChanged(ZI)V

    :cond_5
    :goto_1
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2

    .line 1007
    iget p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    if-eqz p1, :cond_0

    .line 1008
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    const/4 v0, 0x0

    .line 1009
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onError(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    .line 950
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->handleTimelineOrPositionChanged()V

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

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 4

    .line 918
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 922
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 923
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 924
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p1

    iget-wide p1, p1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    .line 925
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->contentDurationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v2

    if-eqz v0, :cond_2

    .line 927
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withContentDurationUs(J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 929
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 930
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->isAdsManagerInitialized:Z

    if-nez p2, :cond_5

    if-eqz p1, :cond_5

    .line 931
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->isAdsManagerInitialized:Z

    .line 932
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->setupAdsRendering()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object p2

    if-nez p2, :cond_3

    .line 935
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->destroyAdsManager()V

    goto :goto_1

    .line 937
    :cond_3
    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    .line 938
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->start()V

    .line 939
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz p1, :cond_4

    .line 940
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Initialized with ads rendering settings: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImaAdsLoader"

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    .line 945
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->handleTimelineOrPositionChanged()V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    .line 866
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdRequestContext:Ljava/lang/Object;

    .line 867
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->destroyAdsManager()V

    .line 868
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    if-eqz v1, :cond_0

    .line 869
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->componentListener:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    .line 870
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->componentListener:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 871
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object v1, v1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    if-eqz v1, :cond_0

    .line 872
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    :cond_0
    const/4 v1, 0x0

    .line 875
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaPausedContent:Z

    .line 876
    iput v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdState:I

    .line 877
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdMediaInfo:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 878
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->stopUpdatingAdProgress()V

    .line 879
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaAdInfo:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$AdInfo;

    .line 880
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdLoadError:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    .line 881
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v0, 0x1

    .line 882
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->hasAdPlaybackState:Z

    .line 883
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    return-void
.end method

.method public requestAds(Landroid/view/ViewGroup;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->requestAds(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public requestAds(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/view/ViewGroup;)V
    .locals 3

    .line 698
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->hasAdPlaybackState:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdRequestContext:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 703
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->EMPTY_AD_TAG_DATA_SPEC:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 705
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adTagUri:Landroid/net/Uri;

    if-eqz p1, :cond_1

    .line 706
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 707
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsResponse:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 708
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-string v1, "text/xml"

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->getDataUriForString(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    goto :goto_0

    .line 710
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 716
    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaFactory:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaUtil;->getAdsRequestForAdTagDataSpec(Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;Lcom/google/android/exoplayer2/upstream/DataSpec;)Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 725
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdRequestContext:Ljava/lang/Object;

    .line 726
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setUserRequestContext(Ljava/lang/Object;)V

    .line 727
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget p1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->vastLoadTimeoutMs:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    .line 728
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget p1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->vastLoadTimeoutMs:I

    int-to-float p1, p1

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setVastLoadTimeout(F)V

    .line 730
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->componentListener:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setContentProgressProvider(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V

    if-eqz p2, :cond_5

    .line 733
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaFactory:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->componentListener:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;

    .line 734
    invoke-interface {p1, p2, v1}, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;->createAdDisplayContainer(Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    goto :goto_2

    .line 736
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaFactory:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->componentListener:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;

    .line 737
    invoke-interface {p1, p2, v1}, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;->createAudioAdDisplayContainer(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 739
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->companionAdSlots:Ljava/util/Collection;

    if-eqz p1, :cond_6

    .line 740
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object p2, p2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->companionAdSlots:Ljava/util/Collection;

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setCompanionSlots(Ljava/util/Collection;)V

    .line 743
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaFactory:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    invoke-interface {p1, p2, v1, v2}, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;->createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    .line 744
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->componentListener:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 745
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    if-eqz p1, :cond_7

    .line 746
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->configuration:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    iget-object p2, p2, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 748
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->componentListener:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    .line 749
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 718
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->hasAdPlaybackState:Z

    .line 719
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    .line 720
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;->createForAllAds(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->pendingAdLoadError:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    .line 721
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->maybeNotifyPendingAdLoadError()V

    :cond_8
    :goto_3
    return-void
.end method

.method public setAdTagDataSpec(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/Player;)V
    .locals 4

    .line 769
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getImaLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    if-eqz p1, :cond_1

    .line 770
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getImaLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 771
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->nextPlayer:Lcom/google/android/exoplayer2/Player;

    .line 772
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->wasSetPlayerCalled:Z

    return-void
.end method

.method public varargs setSupportedContentTypes([I)V
    .locals 8

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget v3, p1, v2

    if-nez v3, :cond_0

    const-string v3, "application/dash+xml"

    .line 781
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string v3, "application/x-mpegURL"

    .line 783
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const-string v3, "video/mp4"

    const-string v4, "video/webm"

    const-string v5, "video/3gpp"

    const-string v6, "audio/mp4"

    const-string v7, "audio/mpeg"

    .line 785
    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    .line 786
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 785
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->supportedMimeTypes:Ljava/util/List;

    return-void
.end method

.method public skipAd()V
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_0

    .line 761
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->skip()V

    :cond_0
    return-void
.end method

.method public start(Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;)V
    .locals 4

    .line 804
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->wasSetPlayerCalled:Z

    const-string v1, "Set player using adsLoader.setPlayer before preparing the player."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 806
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->nextPlayer:Lcom/google/android/exoplayer2/Player;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    return-void

    .line 810
    :cond_0
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/Player;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 811
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    .line 812
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;

    const/4 v1, 0x0

    .line 813
    iput v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->lastVolumePercent:I

    .line 814
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->lastAdProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 815
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->lastContentProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 816
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->maybeNotifyPendingAdLoadError()V

    .line 817
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->hasAdPlaybackState:Z

    if-eqz v1, :cond_1

    .line 819
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;->onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    .line 820
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaPausedContent:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 821
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->resume()V

    goto :goto_0

    .line 823
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz p1, :cond_2

    .line 824
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getAdCuePoints()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/ima/ImaUtil;->getInitialAdPlaybackStateForCuePoints(Ljava/util/List;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 825
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->updateAdPlaybackState()V

    goto :goto_0

    .line 828
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;->getAdViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->requestAds(Lcom/google/android/exoplayer2/upstream/DataSpec;Landroid/view/ViewGroup;)V

    .line 830
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    if-eqz p1, :cond_4

    .line 831
    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;->getAdOverlayInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;

    .line 832
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaFactory:Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;

    iget-object v2, p2, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;->view:Landroid/view/View;

    iget v3, p2, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;->purpose:I

    .line 835
    invoke-static {v3}, Lcom/google/android/exoplayer2/ext/ima/ImaUtil;->getFriendlyObstructionPurpose(I)Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;

    move-result-object v3

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/ads/AdsLoader$OverlayInfo;->reasonDetail:Ljava/lang/String;

    .line 833
    invoke-interface {v1, v2, v3, p2}, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$ImaFactory;->createFriendlyObstruction(Landroid/view/View;Lcom/google/ads/interactivemedia/v3/api/FriendlyObstructionPurpose;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;

    move-result-object p2

    .line 832
    invoke-interface {v0, p2}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->registerFriendlyObstruction(Lcom/google/ads/interactivemedia/v3/api/FriendlyObstruction;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public stop()V
    .locals 4

    .line 843
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    if-nez v0, :cond_0

    return-void

    .line 847
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->imaPausedContent:Z

    if-eqz v2, :cond_2

    .line 848
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->pause()V

    .line 849
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 851
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->playingAd:Z

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 850
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdResumePositionUs(J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 853
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getPlayerVolumePercent()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->lastVolumePercent:I

    .line 854
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getAdVideoProgressUpdate()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->lastAdProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 855
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->getContentVideoProgressUpdate()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->lastContentProgress:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 856
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->adDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    if-eqz v1, :cond_3

    .line 857
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->unregisterAllFriendlyObstructions()V

    .line 859
    :cond_3
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/Player;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    const/4 v0, 0x0

    .line 860
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->player:Lcom/google/android/exoplayer2/Player;

    .line 861
    iput-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->eventListener:Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;

    return-void
.end method
