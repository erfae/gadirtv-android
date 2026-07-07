.class public Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;
.super Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;
.source "VOOSMPIMADAITrackingAdaptor.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPIMADAITrackingAdaptor"


# instance fields
.field private mAdUiContainer:Landroid/view/ViewGroup;

.field private final mAdaptor:Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;

.field private mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

.field private mApiKey:Ljava/lang/String;

.field private mAssetKey:Ljava/lang/String;

.field private mContentSourceId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCuePointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/CuePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

.field private mExtraObjCnt:J

.field private mIsInitialized:Z

.field private mIsLive:Z

.field private mPlayerCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

.field private mSendAdBreakStartEvent:Z

.field private mStreamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

.field private mVideoId:Ljava/lang/String;

.field private final msgInit:I

.field private final msgSendID3:I

.field private final msgSetAdUiContainer:I

.field private final msgUnInit:I

.field nextMsg:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 102
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mIsInitialized:Z

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mContext:Landroid/content/Context;

    .line 77
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mIsLive:Z

    .line 78
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mApiKey:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAssetKey:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mContentSourceId:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mVideoId:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAdUiContainer:Landroid/view/ViewGroup;

    .line 88
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mStreamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    .line 89
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mCuePointList:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 90
    iput-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mExtraObjCnt:J

    .line 91
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mSendAdBreakStartEvent:Z

    .line 94
    iput v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->nextMsg:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 95
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->nextMsg:I

    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->msgInit:I

    add-int/lit8 v1, v1, 0x1

    .line 96
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->nextMsg:I

    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->msgUnInit:I

    add-int/lit8 v1, v1, 0x1

    .line 97
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->nextMsg:I

    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->msgSetAdUiContainer:I

    add-int/lit8 v1, v1, 0x1

    .line 98
    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->nextMsg:I

    iput v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->msgSendID3:I

    .line 99
    iput-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAdaptor:Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v3, "Constructing VOOSMPIMADAITrackingAdaptor"

    .line 103
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p0, p0, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "mAdaptor != this"

    .line 105
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->isIMADAISDKAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->initEventHandlerOnMainThread()V

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;)Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mPlayerCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;Ljava/lang/String;Ljava/util/List;)Z
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->sendMetadataToAdsMgr(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mIsInitialized:Z

    return p0
.end method

.method private buildStreamRequest()Lcom/google/ads/interactivemedia/v3/api/StreamRequest;
    .locals 6

    .line 480
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->createVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    move-result-object v0

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMADAI: calling mDisplayContainer.setVideoStreamPlayer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "@@@VOOSMPIMADAITrackingAdaptor"

    invoke-static {v5, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->setVideoStreamPlayer(Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;)V

    .line 483
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->setAdUiContainerInt()V

    const-string v0, "apiKey"

    .line 486
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mApiKey:Ljava/lang/String;

    .line 487
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mIsLive:Z

    const-string v1, ", "

    if-eqz v0, :cond_0

    const-string v0, "assetKey"

    .line 488
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAssetKey:Ljava/lang/String;

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IMADAI: calling createLiveStreamRequest("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAssetKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAssetKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createLiveStreamRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "contentSourceId"

    .line 492
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mContentSourceId:Ljava/lang/String;

    const-string v0, "videoId"

    .line 493
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mVideoId:Ljava/lang/String;

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IMADAI: calling createVodStreamRequest("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mContentSourceId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mVideoId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mContentSourceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mVideoId:Ljava/lang/String;

    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createVodStreamRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private createAdsLoader()V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v3, "[IMADAI: calling new ImaSdkSettings()]"

    .line 457
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v1

    const-string v3, "playerType"

    .line 461
    invoke-virtual {p0, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ")]"

    if-eqz v3, :cond_0

    .line 463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IMADAI: calling settings.setPlayerType("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    invoke-interface {v1, v3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setPlayerType(Ljava/lang/String;)V

    :cond_0
    const-string v3, "debugMode"

    .line 467
    invoke-virtual {p0, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getBooleanParamObj(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 469
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IMADAI: calling settings.setDebugMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    invoke-interface {v1, v3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->setDebugMode(Z)V

    .line 474
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IMADAI: calling mSdkFactory.createAdsLoader("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    return-void
.end method

.method private createVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;
    .locals 1

    .line 503
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor$1;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;)V

    return-object v0
.end method

.method private dumpCuePoint(Lcom/google/ads/interactivemedia/v3/api/CuePoint;)V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "CuePoint: <null>"

    .line 757
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 760
    :cond_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v2

    .line 761
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v4

    .line 762
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->isPlayed()Z

    move-result p1

    .line 763
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CuePoint: start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", end: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", played: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private dumpCuePointList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/CuePoint;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Got null cuePointList"

    .line 769
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "CuePointList:"

    .line 772
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/CuePoint;

    .line 774
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->dumpCuePoint(Lcom/google/ads/interactivemedia/v3/api/CuePoint;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private hashStrStrToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 647
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 648
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 649
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 651
    :try_start_0
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to set key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "@@@VOOSMPIMADAITrackingAdaptor"

    .line 653
    invoke-static {v4, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private isDebug()Z
    .locals 4

    .line 188
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    .line 190
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPIMADAITrackingAdaptor"

    invoke-static {v3, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private static isIMADAISDKAvailable()Z
    .locals 13

    const-string v0, "com.google.ads.interactivemedia.v3.api.AdError"

    const-string v1, "com.google.ads.interactivemedia.v3.api.AdErrorEvent"

    const-string v2, "com.google.ads.interactivemedia.v3.api.AdEvent"

    const-string v3, "com.google.ads.interactivemedia.v3.api.AdsLoader"

    const-string v4, "com.google.ads.interactivemedia.v3.api.AdsManagerLoadedEvent"

    const-string v5, "com.google.ads.interactivemedia.v3.api.CuePoint"

    const-string v6, "com.google.ads.interactivemedia.v3.api.ImaSdkFactory"

    const-string v7, "com.google.ads.interactivemedia.v3.api.ImaSdkSettings"

    const-string v8, "com.google.ads.interactivemedia.v3.api.StreamDisplayContainer"

    const-string v9, "com.google.ads.interactivemedia.v3.api.StreamManager"

    const-string v10, "com.google.ads.interactivemedia.v3.api.StreamRequest"

    const-string v11, "com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate"

    const-string v12, "com.google.ads.interactivemedia.v3.api.player.VideoStreamPlayer"

    .line 195
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "IMADAI"

    .line 210
    invoke-static {v1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->areClassesAvailable(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPIMADAITrackingAdaptor"

    invoke-static {v3, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private jsonObjectPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 662
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 665
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string p3, "JSONException while putting value to JSONObject"

    .line 666
    invoke-static {p2, p3, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private logAndSendSDKEvent(Lorg/json/JSONObject;)V
    .locals 3

    .line 238
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMADAITrackingAdaptor"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getNativeContext()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->nativeSendSDKEventToAdsMgr(JLjava/lang/String;)V

    return-void
.end method

.method private native nativeSendAdEventToAdsMgr(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSendSDKEventToAdsMgr(JLjava/lang/String;)V
.end method

.method private native nativeSetAdDetails(JIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private newSDKEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 231
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "eventSource"

    .line 232
    invoke-virtual {p0, v0, v1, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "eventType"

    .line 233
    invoke-virtual {p0, v0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private sendAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 395
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getNativeContext()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->nativeSendAdEventToAdsMgr(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendAdStartEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 5

    .line 364
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 365
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 367
    :goto_0
    iget-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mSendAdBreakStartEvent:Z

    const-string v2, "podsCount"

    if-eqz v1, :cond_2

    .line 368
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_1

    .line 370
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTimeOffset()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "startTime"

    invoke-direct {p0, v1, v4, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->jsonObjectPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->jsonObjectPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v3, "IMADAI_AD_BREAK_START"

    .line 373
    invoke-direct {p0, v3, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->sendAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    .line 374
    iput-boolean v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mSendAdBreakStartEvent:Z

    .line 377
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_3

    .line 379
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getTotalAds()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->jsonObjectPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "adPosition"

    invoke-direct {p0, v1, v2, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->jsonObjectPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 383
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getDuration()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v2, "duration"

    invoke-direct {p0, v1, v2, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->jsonObjectPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "adID"

    invoke-direct {p0, v1, v2, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->jsonObjectPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 385
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v2, "adTitle"

    invoke-direct {p0, v1, v2, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->jsonObjectPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdSystem()Ljava/lang/String;

    move-result-object v0

    const-string v2, "adSystem"

    invoke-direct {p0, v1, v2, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->jsonObjectPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getCreativeAdId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "creativeAdId"

    invoke-direct {p0, v1, v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->jsonObjectPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    const-string p1, "IMADAI_AD_START"

    .line 391
    invoke-direct {p0, p1, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->sendAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private sendID3Int(Ljava/lang/Object;)V
    .locals 6

    .line 735
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPIMADAITrackingAdaptor"

    if-eqz v0, :cond_2

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mPlayerCallbacks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 738
    check-cast p1, Ljava/lang/String;

    .line 739
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no player callback to receive ID3: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mPlayerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IMADAI: calling onUserTextReceived("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") on player callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    invoke-interface {v3, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;->onUserTextReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "obj is not a String"

    .line 752
    invoke-static {v2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private sendMetadataToAdsMgr(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mStreamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mStreamManager is null"

    .line 676
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 679
    :cond_0
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mCuePointList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 680
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/StreamManager;->getCuePoints()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mCuePointList:Ljava/util/List;

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mCuePointList:Ljava/util/List;

    if-nez v0, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "mStreamManager.getCuePoints() == null"

    .line 683
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    const-string v0, "IMADAI"

    const-string v3, "streamLoaded"

    .line 687
    invoke-direct {p0, v0, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->newSDKEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentURL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "contentURL"

    .line 690
    invoke-virtual {p0, v0, v3, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_3
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 694
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 695
    invoke-direct {p0, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->hashStrStrToJson(Ljava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v3

    .line 696
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_4
    const-string p2, "subtitles"

    .line 698
    invoke-virtual {p0, v0, p2, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->JSONObjectPutJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 700
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mCuePointList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->dumpCuePointList(Ljava/util/List;)V

    .line 701
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 702
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mCuePointList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/api/CuePoint;

    .line 703
    invoke-virtual {p0, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getCuePointJSONObject(Lcom/google/ads/interactivemedia/v3/api/CuePoint;)Lorg/json/JSONObject;

    move-result-object v3

    .line 704
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_5
    const-string p2, "cuePoints"

    .line 706
    invoke-virtual {p0, v0, p2, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->JSONObjectPutJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 707
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    const/4 p2, 0x2

    if-gt p1, p2, :cond_6

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "No metadata was received."

    .line 708
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    :cond_6
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->logAndSendSDKEvent(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1
.end method

.method private setAdDetails(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 11

    .line 399
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;

    move-result-object p1

    .line 400
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;

    move-result-object v0

    .line 402
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getAdId()Ljava/lang/String;

    move-result-object v8

    .line 403
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getCreativeId()Ljava/lang/String;

    move-result-object v9

    .line 407
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v1, 0x1388

    const/16 v7, 0x1388

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    const/4 v7, -0x1

    .line 411
    :goto_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/Ad;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 412
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getAdPosition()I

    move-result v5

    .line 413
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;->getPodIndex()I

    move-result v4

    .line 414
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getNativeContext()J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->nativeSetAdDetails(JIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAdUiContainerInt()V
    .locals 5

    const-string v0, "adUiContainer"

    const/4 v1, 0x0

    .line 716
    invoke-virtual {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getParam(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPIMADAITrackingAdaptor"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "adUiContainer is null"

    .line 718
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 721
    :cond_0
    :try_start_0
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 722
    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAdUiContainer:Landroid/view/ViewGroup;

    .line 723
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    if-eqz v3, :cond_1

    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IMADAI: calling mDisplayContainer.setAdContainer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAdUiContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAdUiContainer:Landroid/view/ViewGroup;

    invoke-interface {v3, v4}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->setAdContainer(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 729
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adUiContainer is not a ViewGroup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public callSendID3(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v3, "msgSendID3"

    .line 160
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->msgSendID3:I

    invoke-virtual {p0, v1, v0, v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->sendMessageToMainThread(IIILjava/lang/Object;)V

    return-void
.end method

.method public execSDKAction(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 2

    const-string v0, "setAdUiContainer"

    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->setAdUiContainer()V

    .line 136
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNKNOWN:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method getCuePointJSONObject(Lcom/google/ads/interactivemedia/v3/api/CuePoint;)Lorg/json/JSONObject;
    .locals 6

    .line 220
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    .line 221
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v4

    mul-double v4, v4, v2

    .line 222
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->isPlayed()Z

    move-result p1

    .line 223
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "startTime"

    .line 224
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->JSONObjectPutDouble(Lorg/json/JSONObject;Ljava/lang/String;D)V

    const-string v0, "endTime"

    .line 225
    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->JSONObjectPutDouble(Lorg/json/JSONObject;Ljava/lang/String;D)V

    const-string v0, "isPlayed"

    .line 226
    invoke-virtual {p0, v2, v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->JSONObjectPutBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-object v2
.end method

.method getCuePointJSONStr(Lcom/google/ads/interactivemedia/v3/api/CuePoint;)Ljava/lang/String;
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getCuePointJSONObject(Lcom/google/ads/interactivemedia/v3/api/CuePoint;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUiElementsFromParam()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;"
        }
    .end annotation

    const-string v0, "uiElements"

    .line 422
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->isParamSet(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 427
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v3, "Type of uiElements is not Set<UiElement>"

    .line 429
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v2
.end method

.method public handleMessageOnMainThread(Landroid/os/Message;)V
    .locals 2

    .line 171
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->msgInit:I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->initInt()V

    goto :goto_0

    .line 173
    :cond_0
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->msgUnInit:I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->unInitInt()V

    goto :goto_0

    .line 175
    :cond_1
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->msgSendID3:I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    .line 176
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->sendID3Int(Ljava/lang/Object;)V

    goto :goto_0

    .line 177
    :cond_2
    iget v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->msgSetAdUiContainer:I

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_3

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v1, "msgSetAdUiContainer"

    .line 178
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->setAdUiContainerInt()V

    :cond_3
    :goto_0
    return-void
.end method

.method public init()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v3, "msgInit"

    .line 144
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->msgInit:I

    invoke-virtual {p0, v1, v0, v0, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->sendMessageToMainThread(IIILjava/lang/Object;)V

    return-void
.end method

.method initInt()V
    .locals 4

    const-string v0, "context"

    .line 599
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getContextParam(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mContext:Landroid/content/Context;

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "context is null"

    .line 601
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "isLive"

    .line 604
    invoke-virtual {p0, v0, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getBooleanParam(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mIsLive:Z

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "[IMADAI: calling ImaSdkFactory.getInstance()]"

    .line 606
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mPlayerCallbacks:Ljava/util/List;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "[IMADAI: calling mSdkFactory.createStreamDisplayContainer()]"

    .line 609
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createStreamDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    .line 611
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->createAdsLoader()V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "[IMADAI: calling mAdsLoader.addAdErrorListener()]"

    .line 614
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "[IMADAI: calling mAdsLoader.addAdsLoadedListener()]"

    .line 616
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    .line 618
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->buildStreamRequest()Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[IMADAI: calling mAdsLoader.requestStream()]"

    .line 619
    invoke-static {v1, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->requestStream(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;)Ljava/lang/String;

    const/4 v0, 0x1

    .line 622
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mIsInitialized:Z

    return-void
.end method

.method public initializeJavaSDK()Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->init()V

    const/4 v0, 0x1

    return v0
.end method

.method public isSDKAvailable()Z
    .locals 1

    .line 116
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->isIMADAISDKAvailable()Z

    move-result v0

    return v0
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 3

    .line 249
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object p1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IMADAI: got AdErrorEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMADAITrackingAdaptor"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "IMADAI"

    const-string v1, "onAdError"

    .line 251
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->newSDKEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 252
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorType()Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    move-result-object v1

    .line 253
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "adErrorType"

    .line 255
    invoke-virtual {p0, v0, v2, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorCode()Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adErrorCodeName"

    .line 259
    invoke-virtual {p0, v0, v2, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorCodeNumber()I

    move-result v1

    const-string v2, "adErrorCodeNumber"

    invoke-virtual {p0, v0, v2, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->JSONObjectPutInteger(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 261
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "adErrorMessage"

    invoke-virtual {p0, v0, v1, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->logAndSendSDKEvent(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 7

    .line 268
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v0

    const-string v1, "IMADAI"

    const-string v2, "onAdEvent"

    .line 269
    invoke-direct {p0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->newSDKEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extraObj#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mExtraObjCnt:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mExtraObjCnt:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    sget-object v3, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->VO_OSMP_SDK_IMADAI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;

    .line 272
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getAdMgr()Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    move-result-object v4

    invoke-virtual {v4, v3, v2, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->setSDKParam(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;Ljava/lang/String;Ljava/lang/Object;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    const-string v4, "extraObjParName"

    .line 273
    invoke-virtual {p0, v1, v4, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->JSONObjectPutString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->logAndSendSDKEvent(Lorg/json/JSONObject;)V

    .line 275
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getAdMgr()Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->setSDKParam(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;Ljava/lang/String;Ljava/lang/Object;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    .line 277
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PROGRESS:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-ne v0, v1, :cond_0

    return-void

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received IMA-DAI Ad event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPIMADAITrackingAdaptor"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor$2;->$SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType:[I

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 p1, 0x8

    if-eq v0, p1, :cond_2

    const/16 p1, 0x9

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getAdMgr()Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    move-result-object p1

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;->VO_OSMP_APP_NOTIFICATION_CLICK_THROUGH:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;

    invoke-virtual {p1, v0, v4, v4}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->onAppNotify(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;Ljava/lang/Object;Ljava/lang/Object;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->isLive()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 349
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "IMADAI_AD_END"

    invoke-direct {p0, v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->sendAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->isLive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->sendAdStartEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V

    goto :goto_0

    .line 334
    :cond_4
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->setAdDetails(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V

    goto :goto_0

    .line 325
    :cond_5
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->isLive()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 326
    iput-boolean v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mSendAdBreakStartEvent:Z

    .line 327
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "IMADAI_AD_BREAK_END"

    invoke-direct {p0, v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->sendAdEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 306
    :cond_6
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mStreamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    if-eqz p1, :cond_8

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "[IMADAI: calling mStreamManager.getCuePoints()]"

    .line 307
    invoke-static {v3, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mStreamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    .line 310
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/StreamManager;->getCuePoints()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 312
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->dumpCuePointList(Ljava/util/List;)V

    .line 313
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mCuePointList:Ljava/util/List;

    if-nez v0, :cond_8

    .line 314
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mCuePointList:Ljava/util/List;

    goto :goto_0

    :cond_7
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "[IMADAI: mStreamManager.getCuePoints() == null]"

    .line 317
    invoke-static {v3, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 4

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IMADAI: AdsManagerLoadedEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPIMADAITrackingAdaptor"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;->getStreamManager()Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mStreamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    .line 440
    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/api/StreamManager;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 441
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mStreamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    invoke-interface {p1, p0}, Lcom/google/ads/interactivemedia/v3/api/StreamManager;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 442
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getUiElementsFromParam()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    .line 445
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRenderingSettings()Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object v0

    .line 446
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->setUiElements(Ljava/util/Set;)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "[IMADAI: calling mStreamManager.init(settings)]"

    .line 447
    invoke-static {v3, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mStreamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/StreamManager;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "[IMADAI: calling mStreamManager.init()]"

    .line 450
    invoke-static {v3, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mStreamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/StreamManager;->init()V

    :goto_0
    const/4 p1, 0x1

    .line 453
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mSendAdBreakStartEvent:Z

    return-void
.end method

.method public setAdUiContainer()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v3, "setAdUiContainer"

    .line 166
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->msgSetAdUiContainer:I

    invoke-virtual {p0, v1, v0, v0, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->sendMessageToMainThread(IIILjava/lang/Object;)V

    return-void
.end method

.method public unInit()V
    .locals 4

    .line 149
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->unInitInt()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v3, "msgUnInit"

    .line 154
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->msgUnInit:I

    invoke-virtual {p0, v1, v0, v0, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->sendMessageToMainThread(IIILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method unInitInt()V
    .locals 5

    .line 626
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "[IMADAI: calling mAdsLoader.contentComplete()]"

    .line 627
    invoke-static {v1, v4, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->contentComplete()V

    .line 629
    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mStreamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "[IMADAI: calling mStreamManager.destroy()]"

    .line 632
    invoke-static {v1, v4, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mStreamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/StreamManager;->destroy()V

    .line 634
    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mStreamManager:Lcom/google/ads/interactivemedia/v3/api/StreamManager;

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "[IMADAI: calling mDisplayContainer.setVideoStreamPlayer(null)]"

    .line 637
    invoke-static {v1, v4, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    invoke-interface {v0, v3}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->setVideoStreamPlayer(Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;)V

    .line 639
    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mDisplayContainer:Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    .line 641
    :cond_2
    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mPlayerCallbacks:Ljava/util/List;

    .line 642
    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    .line 643
    iput-boolean v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->mIsInitialized:Z

    return-void
.end method

.method public unInitializeJavaSDK()Z
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->unInit()V

    const/4 v0, 0x1

    return v0
.end method
