.class Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;
.super Ljava/lang/Object;
.source "VOOSMPIMAPlayerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;,
        Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;
    }
.end annotation


# static fields
.field private static final AdsErrTAG:Ljava/lang/String; = "[Ads Error]"

.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPIMAPlayerController"

.field private static final msgDestroy:I = 0x3

.field private static final msgInit:I = 0x1

.field private static final msgReqAds:I = 0x2

.field private static final msgSkipAds:I = 0x5

.field private static final msgStartPlay:I = 0x4


# instance fields
.field private mAdBreakStarted:Z

.field private mAdHasError:Z

.field private mAdManagerStarted:Z

.field private mAdSkipped:Z

.field private mAdStarted:Z

.field private mAdTagUrl:Ljava/lang/String;

.field private mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

.field private mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

.field private mContext:Landroid/content/Context;

.field private mDestroy:Z

.field private mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;

.field private mLastAdDuration:J

.field private mLastAdPos:J

.field private mLastContentDuration:J

.field private mLastContentPos:J

.field private final mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNativeContext:J

.field private mRenderSettings:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

.field private mResume:Z

.field private mResumeContentAfterStart:Z

.field private mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

.field private mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    .line 61
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 63
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    .line 65
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    .line 67
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mView:Landroid/view/View;

    .line 69
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mContext:Landroid/content/Context;

    const-wide/16 v1, 0x0

    .line 71
    iput-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    .line 73
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mRenderSettings:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    .line 74
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdTagUrl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 76
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    .line 77
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mResume:Z

    .line 85
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdBreakStarted:Z

    .line 86
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdStarted:Z

    .line 87
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdHasError:Z

    const-wide/16 v2, -0x1

    .line 88
    iput-wide v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mLastAdDuration:J

    .line 89
    iput-wide v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mLastAdPos:J

    .line 90
    iput-wide v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mLastContentDuration:J

    .line 91
    iput-wide v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mLastContentPos:J

    .line 95
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdSkipped:Z

    .line 101
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdManagerStarted:Z

    .line 102
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mResumeContentAfterStart:Z

    .line 104
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 112
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->initInt()V

    return-void
.end method

.method static synthetic access$100(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->requestAdsInt()V

    return-void
.end method

.method static synthetic access$1000(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->adComplete()V

    return-void
.end method

.method static synthetic access$1100(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdHasError:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdHasError:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeAdMetaIsRetrieved(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mResumeContentAfterStart:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->pauseContent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdManagerStarted:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeForceAdPodEnd(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdBreakStarted:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdBreakStarted:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeSendAdPodEnd(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->destroyIMAInt()V

    return-void
.end method

.method static synthetic access$2002(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdSkipped:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->resumeContent()V

    return-void
.end method

.method static synthetic access$2200(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeSendAdStart(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->allComplete()V

    return-void
.end method

.method static synthetic access$2400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->skipAdFromIMA()V

    return-void
.end method

.method static synthetic access$2500(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->learnBtnOnClicked()V

    return-void
.end method

.method static synthetic access$2600(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mRenderSettings:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeSendServiceOpenFinished(J)V

    return-void
.end method

.method static synthetic access$2800(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeSendServiceOpenFailed(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->startPlayInt()V

    return-void
.end method

.method static synthetic access$3000(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    return-object p0
.end method

.method static synthetic access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->skipAdsInt()V

    return-void
.end method

.method static synthetic access$500(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object p0
.end method

.method static synthetic access$502(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object p1
.end method

.method static synthetic access$600(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    return p0
.end method

.method static synthetic access$700(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeSendAdError(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdStarted:Z

    return p0
.end method

.method static synthetic access$902(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdStarted:Z

    return p1
.end method

.method private adComplete()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMAPlayerController"

    const-string v3, "adComplete"

    .line 380
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iget-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-nez v1, :cond_1

    .line 382
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdStarted:Z

    .line 383
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdHasError:Z

    .line 384
    iget-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdSkipped:Z

    if-nez v1, :cond_0

    .line 385
    iget-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeSendAdEnd(J)V

    .line 386
    :cond_0
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdSkipped:Z

    :cond_1
    return-void
.end method

.method private allComplete()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMAPlayerController"

    const-string v2, "allComplete"

    .line 391
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-nez v0, :cond_0

    .line 393
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeSendAllComplete(J)V

    :cond_0
    return-void
.end method

.method private createAdsRenderSettings()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mRenderSettings:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    if-eqz v0, :cond_0

    .line 455
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setUiElements(Ljava/util/Set;)V

    .line 456
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mRenderSettings:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    const-string v1, "video/mp4"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setMimeTypes(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private destroyIMA()V
    .locals 4

    .line 330
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "@@@VOOSMPIMAPlayerController"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "destroyIMA: Immediately"

    .line 331
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->destroyIMAInt()V

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "destroyIMA: send to handler"

    .line 334
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;

    const/4 v1, 0x3

    .line 336
    invoke-virtual {v0, v1, v3, v3, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    return-void
.end method

.method private destroyIMAInt()V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMAPlayerController"

    const-string v3, "destroyIMAInt"

    .line 316
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->notifyEOS(I)V

    .line 318
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    :cond_0
    return-void
.end method

.method private getAdCuePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getAdCuePoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAdPositionInCurPod()I
    .locals 1

    .line 800
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->getCurrentPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 802
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getCuePoint(I)F
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getAdCuePoints()Ljava/util/List;

    move-result-object v0

    if-ltz p1, :cond_1

    .line 829
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 832
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    .line 830
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method private getCurAdDuration()D
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 759
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getDuration()D

    move-result-wide v0

    return-wide v0
.end method

.method private getCurAdId()Ljava/lang/String;
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 745
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurAdSkipTimeOffset()J
    .locals 4

    .line 768
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 771
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getSkipTimeOffset()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method private getCurAdTitle()Ljava/lang/String;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 752
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentCuePoint()D
    .locals 6

    .line 816
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->getCurrentPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPIMAPlayerController"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "No current pod info"

    .line 818
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    .line 822
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTimeOffset()D

    move-result-wide v3

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentCuePoint: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v3
.end method

.method private getCurrentPodIndex()I
    .locals 1

    .line 806
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->getCurrentPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 808
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getPodIndex()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getCurrentPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;
    .locals 4

    .line 776
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 778
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMAPlayerController"

    const-string v3, "No current Ad"

    .line 780
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 783
    :cond_1
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    return-object v0
.end method

.method private getTotalAdsInCurPod()I
    .locals 1

    .line 794
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->getCurrentPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 796
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v0

    :goto_0
    return v0
.end method

.method private hasMidRoll()Z
    .locals 1

    const/4 v0, 0x1

    .line 870
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->hasPreMidPostRoll(I)Z

    move-result v0

    return v0
.end method

.method private hasPostRoll()Z
    .locals 1

    const/4 v0, 0x2

    .line 866
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->hasPreMidPostRoll(I)Z

    move-result v0

    return v0
.end method

.method private hasPreMidPostRoll(I)Z
    .locals 6

    .line 836
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 839
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getAdCuePoints()Ljava/util/List;

    move-result-object v0

    .line 840
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 841
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cue points count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "@@@VOOSMPIMAPlayerController"

    invoke-static {v5, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_3

    .line 846
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, v3, p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    const/4 v5, 0x2

    if-ne v5, p1, :cond_5

    const/high16 p1, -0x40800000    # -1.0f

    sub-int/2addr v2, v4

    .line 848
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    if-ne v4, p1, :cond_7

    const/4 p1, 0x0

    .line 850
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_7

    .line 851
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    return v4

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    return v1
.end method

.method private hasPreRoll()Z
    .locals 1

    const/4 v0, 0x0

    .line 862
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->hasPreMidPostRoll(I)Z

    move-result v0

    return v0
.end method

.method private initEventHandler()V
    .locals 4

    .line 136
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPIMAPlayerController"

    if-eqz v0, :cond_0

    .line 137
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;

    invoke-direct {v3, p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Looper.myLooper()"

    .line 138
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    new-instance v3, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;

    invoke-direct {v3, p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getMainLooper()"

    .line 141
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;

    :goto_0
    return-void
.end method

.method private initInt()V
    .locals 4

    .line 508
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->setupVideoPlayerWithAdPlayback()V

    .line 510
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-virtual {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->getVideoAdPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setPlayer(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V

    .line 512
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setAdContainer(Landroid/view/ViewGroup;)V

    .line 524
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v1

    .line 527
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    .line 530
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->loaderAddErrorListener()V

    .line 531
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->loaderAddAdsLoadedListener()V

    .line 534
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->createAdsRenderSettings()V

    return-void
.end method

.method private isCurAdSkippable()Z
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 764
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private learnBtnOnClicked()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMAPlayerController"

    const-string v2, "learnBtnOnClicked"

    .line 406
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-nez v0, :cond_0

    .line 408
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeLearnBtnOnClicked(J)V

    :cond_0
    return-void
.end method

.method private loaderAddAdsLoadedListener()V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$1;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    return-void
.end method

.method private loaderAddErrorListener()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$1;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$1;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    return-void
.end method

.method private native nativeAdMetaIsRetrieved(J)V
.end method

.method private native nativeForceAdPodEnd(J)V
.end method

.method private native nativeGetAdDuration(J)J
.end method

.method private native nativeGetAdPosition(J)J
.end method

.method private native nativeGetContentDuration(J)J
.end method

.method private native nativeGetContentPosition(J)J
.end method

.method private native nativeGetVolume(J)I
.end method

.method private native nativeLearnBtnOnClicked(J)V
.end method

.method private native nativeLoadAd(JLjava/lang/String;)V
.end method

.method private native nativePauseAd(J)V
.end method

.method private native nativePauseContent(J)V
.end method

.method private native nativePlayAd(J)V
.end method

.method private native nativePlayContent(J)V
.end method

.method private native nativeResumeAd(J)V
.end method

.method private native nativeSendAdEnd(J)V
.end method

.method private native nativeSendAdError(J)V
.end method

.method private native nativeSendAdPodEnd(J)V
.end method

.method private native nativeSendAdStart(J)V
.end method

.method private native nativeSendAllComplete(J)V
.end method

.method private native nativeSendServiceOpenFailed(J)V
.end method

.method private native nativeSendServiceOpenFinished(J)V
.end method

.method private native nativeSetContentPosition(JJ)V
.end method

.method private native nativeSkipAd(J)V
.end method

.method private native nativeStopAd(J)V
.end method

.method private native nativeStopContent(J)V
.end method

.method private notifyError()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMAPlayerController"

    const-string v2, "[Ads Error] JNI notifyError "

    .line 557
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 558
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdHasError:Z

    .line 559
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->notifyError()V

    :cond_0
    return-void
.end method

.method private pause()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->pause()V

    return-void
.end method

.method private pauseContent()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->pauseContentForAdPlayback()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMAPlayerController"

    const-string v2, "VOOSMPIMAPlayerController::pauseContent"

    .line 344
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private requestAdsInt()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->contentComplete()V

    .line 421
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdTagUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-virtual {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setContentProgressProvider(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V

    .line 426
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V

    return-void
.end method

.method private resume()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 293
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mResume:Z

    .line 294
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->resume()V

    return-void
.end method

.method private resumeContent()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->resumeContentAfterAdPlayback()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMAPlayerController"

    const-string v2, "VOOSMPIMAPlayerController::resumeContent"

    .line 351
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setupVideoPlayerWithAdPlayback()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-virtual {v0, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->init(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    .line 489
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    new-instance v1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$2;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$2;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->setOnContentCompleteListener(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$OnContentCompleteListener;)V

    return-void
.end method

.method private skipAdFromIMA()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMAPlayerController"

    const-string v2, "skipAdFromIMA"

    .line 398
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdSkipped:Z

    .line 401
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeSkipAd(J)V

    :cond_0
    return-void
.end method

.method private skipAds()V
    .locals 4

    .line 298
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "@@@VOOSMPIMAPlayerController"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "skipAds: Immediately"

    .line 299
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->skipAdsInt()V

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "skipAds: send to handler"

    .line 302
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;

    const/4 v1, 0x5

    .line 304
    invoke-virtual {v0, v1, v3, v3, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private skipAdsInt()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->skip()V

    return-void
.end method

.method private startPlay()V
    .locals 4

    .line 369
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "@@@VOOSMPIMAPlayerController"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "startPlay: Immediately"

    .line 370
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->startPlayInt()V

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "startPlay: send to handler"

    .line 373
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;

    const/4 v1, 0x4

    .line 375
    invoke-virtual {v0, v1, v3, v3, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 374
    invoke-virtual {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private startPlayInt()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 357
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdManagerStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 358
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdManagerStarted:Z

    .line 359
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->start()V

    .line 360
    iget-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mResumeContentAfterStart:Z

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 361
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mResumeContentAfterStart:Z

    .line 362
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->resumeContent()V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    .line 543
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->initEventHandler()V

    .line 545
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mView:Landroid/view/View;

    .line 546
    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mContext:Landroid/content/Context;

    .line 547
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    .line 549
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 550
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->initInt()V

    goto :goto_0

    .line 552
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public isResume()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mResume:Z

    return v0
.end method

.method public notifyAdPodEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 571
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdStarted:Z

    .line 572
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdBreakStarted:Z

    return-void
.end method

.method public notifyAdPosition(J)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->notifyAdPosition(J)V

    :cond_0
    return-void
.end method

.method public notifyEOS(I)V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->notifyEOS(I)V

    :cond_0
    return-void
.end method

.method public playerGetAdDuration()J
    .locals 2

    .line 665
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    .line 666
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mLastAdDuration:J

    return-wide v0

    .line 667
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeGetAdDuration(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mLastAdDuration:J

    return-wide v0
.end method

.method public playerGetAdPosition()J
    .locals 2

    .line 688
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    .line 689
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mLastAdPos:J

    return-wide v0

    .line 691
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeGetAdPosition(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mLastAdPos:J

    return-wide v0
.end method

.method public playerGetContentDuration()J
    .locals 2

    .line 673
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    .line 674
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mLastContentDuration:J

    return-wide v0

    .line 676
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeGetContentDuration(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mLastContentDuration:J

    return-wide v0
.end method

.method public playerGetContentPosition()J
    .locals 3

    .line 697
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastContentPos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mLastContentPos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMAPlayerController"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 699
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mLastContentPos:J

    return-wide v0

    .line 702
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeGetContentPosition(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mLastContentPos:J

    return-wide v0
.end method

.method public playerGetVolume()I
    .locals 2

    .line 707
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 709
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeGetVolume(J)I

    move-result v0

    return v0
.end method

.method public playerLoadAd(Ljava/lang/String;)V
    .locals 2

    .line 583
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    return-void

    .line 585
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeLoadAd(JLjava/lang/String;)V

    return-void
.end method

.method public playerPauseAd()V
    .locals 3

    .line 645
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    return-void

    .line 648
    :cond_0
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMAPlayerController"

    const-string v2, "playerPauseAd ignored (ad is not started)"

    .line 649
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 653
    :cond_1
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativePauseAd(J)V

    return-void
.end method

.method public playerPauseContent()V
    .locals 2

    .line 658
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    return-void

    .line 661
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativePauseContent(J)V

    return-void
.end method

.method public playerPlayAd()V
    .locals 4

    .line 594
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    return-void

    .line 602
    :cond_0
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mResume:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMAPlayerController"

    const-string v3, "playerPlayAd calls playerResumeAd"

    .line 603
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerResumeAd()V

    .line 605
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mResume:Z

    goto :goto_0

    .line 607
    :cond_1
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativePlayAd(J)V

    :goto_0
    return-void
.end method

.method public playerPlayContent()V
    .locals 2

    .line 621
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    return-void

    .line 624
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativePlayContent(J)V

    return-void
.end method

.method public playerResumeAd()V
    .locals 2

    .line 613
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    return-void

    .line 616
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeResumeAd(J)V

    return-void
.end method

.method public playerSetContentPosition(J)V
    .locals 2

    .line 681
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    return-void

    .line 684
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeSetContentPosition(JJ)V

    return-void
.end method

.method public playerStopAd()V
    .locals 2

    .line 629
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    return-void

    .line 632
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeStopAd(J)V

    return-void
.end method

.method public playerStopContent()V
    .locals 2

    .line 637
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-eqz v0, :cond_0

    return-void

    .line 640
    :cond_0
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeStopContent(J)V

    return-void
.end method

.method public requestAds(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, ""

    .line 430
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 438
    :cond_0
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdTagUrl:Ljava/lang/String;

    .line 441
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    if-eqz p1, :cond_1

    .line 442
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    .line 445
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 446
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->requestAdsInt()V

    goto :goto_0

    .line 448
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mEventHandler:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0, v0, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_3
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPIMAPlayerController"

    const-string v1, "[Ads Error] Empty adTagUrl "

    .line 431
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    iget-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mDestroy:Z

    if-nez p1, :cond_4

    .line 433
    iget-wide v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->nativeSendAdError(J)V

    :cond_4
    return-void
.end method
