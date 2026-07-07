.class public Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;
.super Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;
.source "VOOSMPAdobeHBTrackingController.java"


# static fields
.field private static final ADMETASTR:Ljava/lang/String; = "adMetaData"

.field private static final CHANNELSTR:Ljava/lang/String; = "channel"

.field private static final CHAPTERMETASTR:Ljava/lang/String; = "chapterMetaData"

.field private static final CONFIGSTR:Ljava/lang/String; = "configuration"

.field private static final CONTEXT:Ljava/lang/String; = "context"

.field private static final OVPSTR:Ljava/lang/String; = "ovp"

.field private static final PLAYERNAMESTR:Ljava/lang/String; = "playerName"

.field private static final PUBLISHERSTR:Ljava/lang/String; = "publisher"

.field private static final SDKSTR:Ljava/lang/String; = "sdk"

.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPAdobeHBTrackingController"

.field private static final TAG1:Ljava/lang/String; = "HBTEST"

.field private static final TRACKINGSERVERSTR:Ljava/lang/String; = "trackingServer"

.field private static final VIDEOIDSTR:Ljava/lang/String; = "videoID"

.field private static final VIDEOMETASTR:Ljava/lang/String; = "videoMetaData"

.field private static final VIDEONAMESTR:Ljava/lang/String; = "videoName"

.field private static final mAdobeMobileConfigClassName:Ljava/lang/String; = "com.adobe.mobile.Config"


# instance fields
.field private _aaPlugin:Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;

.field private _adBreakInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;

.field private _adCallUrl:Ljava/lang/String;

.field private _adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

.field _adMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _ahPlugin:Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPlugin;

.field private _channel:Ljava/lang/String;

.field private _chapterInfo:Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;

.field _chapterMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _heartbeat:Lcom/adobe/primetime/va/Heartbeat;

.field private _ovp:Ljava/lang/String;

.field private _playerContext:Ljava/lang/Object;

.field private _playerName:Ljava/lang/String;

.field private _playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

.field private _publisher:Ljava/lang/String;

.field private _qosInfo:Lcom/adobe/primetime/va/plugins/videoplayer/QoSInfo;

.field private _sdk:Ljava/lang/String;

.field private _streamUrl:Ljava/lang/String;

.field private _trackingServer:Ljava/lang/String;

.field private _videoId:Ljava/lang/String;

.field private _videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

.field _videoMetadata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _videoName:Ljava/lang/String;

.field private mAdobeMobileConfigClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->mAdobeMobileConfigClass:Ljava/lang/Class;

    .line 76
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_heartbeat:Lcom/adobe/primetime/va/Heartbeat;

    .line 77
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    .line 78
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_aaPlugin:Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;

    .line 79
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_ahPlugin:Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPlugin;

    .line 82
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    .line 83
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adBreakInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;

    .line 84
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    .line 85
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_chapterInfo:Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;

    .line 86
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_qosInfo:Lcom/adobe/primetime/va/plugins/videoplayer/QoSInfo;

    .line 91
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerContext:Ljava/lang/Object;

    .line 93
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_streamUrl:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adCallUrl:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerName:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoId:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoName:Ljava/lang/String;

    const-string v0, "heartbeats.omtrdc.net"

    .line 100
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_trackingServer:Ljava/lang/String;

    const-string v0, "cbsinteractive"

    .line 101
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_publisher:Ljava/lang/String;

    const-string v0, "CBS News"

    .line 102
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_channel:Ljava/lang/String;

    const-string v0, "Native Android Player"

    .line 103
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_ovp:Ljava/lang/String;

    const-string v0, "1.5.1.0"

    .line 104
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_sdk:Ljava/lang/String;

    return-void
.end method

.method private GetHBTrackTag()Ljava/lang/String;
    .locals 1

    const-string v0, "HBTEST"

    return-object v0
.end method

.method private getCurrStreamType()Ljava/lang/String;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->isLive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "live"

    return-object v0

    :cond_0
    const-string v0, "vod"

    return-object v0
.end method

.method private initVideoInfo()V
    .locals 6

    .line 473
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start initVideoInfo"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    invoke-direct {v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    .line 476
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->setVideoId()V

    .line 477
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->setVideoName()V

    .line 478
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerName:Ljava/lang/String;

    iput-object v2, v0, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->playerName:Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getContentDuration()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->length:Ljava/lang/Double;

    .line 480
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    const-string v2, "live"

    iput-object v2, v0, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->streamType:Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->playhead:Ljava/lang/Double;

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end initVideoInfo"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private isDebug()Z
    .locals 5

    .line 446
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    .line 448
    :goto_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetTagString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Heartbeats debug is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private pauseAction()V
    .locals 7

    const-string v0, " fails"

    .line 354
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerContext:Ljava/lang/Object;

    const-string v2, "@@@VOOSMPAdobeHBTrackingController"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Player context is not set"

    .line 355
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->mAdobeMobileConfigClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    const-string v4, "pauseCollectingLifecycleData"

    const/4 v5, 0x0

    .line 364
    :try_start_0
    move-object v6, v5

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Object;

    .line 365
    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Access "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 369
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invoke "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 367
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resumeAction()V
    .locals 8

    const-string v0, " fails"

    .line 332
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerContext:Ljava/lang/Object;

    const-string v2, "@@@VOOSMPAdobeHBTrackingController"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Player context is not set"

    .line 333
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->mAdobeMobileConfigClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    const-string v4, "collectLifecycleData"

    const/4 v5, 0x1

    :try_start_0
    new-array v6, v5, [Ljava/lang/Class;

    .line 341
    const-class v7, Landroid/app/Activity;

    aput-object v7, v6, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v6, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 342
    iget-object v7, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerContext:Ljava/lang/Object;

    aput-object v7, v5, v3

    invoke-virtual {v1, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Access "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 346
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invoke "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setAdobeHBTrackingData(Landroid/os/Parcel;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getParams()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->setAdobeHBTrackingDataWithHashMap(Landroid/os/Parcel;Ljava/util/HashMap;)V

    return-void
.end method

.method private setAdobeHBTrackingDataWithHashMap(Landroid/os/Parcel;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start setAdobeHBTrackingData"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_streamUrl:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adCallUrl:Ljava/lang/String;

    .line 121
    invoke-direct {p0, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->setConfigurationMetaData(Ljava/util/HashMap;)V

    .line 124
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance p2, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoPlayerPluginDelegate;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoPlayerPluginDelegate;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;)V

    invoke-direct {p2, v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;-><init>(Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPluginDelegate;)V

    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    .line 128
    new-instance p2, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPluginConfig;

    invoke-direct {p2}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPluginConfig;-><init>()V

    .line 129
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->isDebug()Z

    move-result v0

    iput-boolean v0, p2, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPluginConfig;->debugLogging:Z

    .line 130
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v0, p2}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->configure(Lcom/adobe/primetime/core/plugin/IPluginConfig;)V

    .line 131
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance p2, Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;

    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeAnalyticsPluginDelegate;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeAnalyticsPluginDelegate;-><init>()V

    invoke-direct {p2, v0}, Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;-><init>(Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPluginDelegate;)V

    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_aaPlugin:Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;

    .line 135
    new-instance p2, Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPluginConfig;

    invoke-direct {p2}, Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPluginConfig;-><init>()V

    .line 136
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_channel:Ljava/lang/String;

    iput-object v0, p2, Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPluginConfig;->channel:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->isDebug()Z

    move-result v0

    iput-boolean v0, p2, Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPluginConfig;->debugLogging:Z

    .line 138
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_aaPlugin:Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;

    invoke-virtual {v0, p2}, Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;->configure(Lcom/adobe/primetime/core/plugin/IPluginConfig;)V

    .line 139
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_aaPlugin:Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance p2, Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPlugin;

    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHeartbeatPluginDelegate;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHeartbeatPluginDelegate;-><init>()V

    invoke-direct {p2, v0}, Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPlugin;-><init>(Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPluginDelegate;)V

    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_ahPlugin:Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPlugin;

    .line 143
    new-instance p2, Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPluginConfig;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_trackingServer:Ljava/lang/String;

    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_publisher:Ljava/lang/String;

    invoke-direct {p2, v0, v2}, Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPluginConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_ovp:Ljava/lang/String;

    iput-object v0, p2, Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPluginConfig;->ovp:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_sdk:Ljava/lang/String;

    iput-object v0, p2, Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPluginConfig;->sdk:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->isDebug()Z

    move-result v0

    iput-boolean v0, p2, Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPluginConfig;->debugLogging:Z

    .line 148
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_ahPlugin:Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPlugin;

    invoke-virtual {v0, p2}, Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPlugin;->configure(Lcom/adobe/primetime/core/plugin/IPluginConfig;)V

    .line 149
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_ahPlugin:Lcom/adobe/primetime/va/plugins/ah/AdobeHeartbeatPlugin;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance p2, Lcom/adobe/primetime/va/Heartbeat;

    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPHeartbeatDelegate;

    invoke-direct {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPHeartbeatDelegate;-><init>()V

    invoke-direct {p2, v0, p1}, Lcom/adobe/primetime/va/Heartbeat;-><init>(Lcom/adobe/primetime/va/HeartbeatDelegate;Ljava/util/List;)V

    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_heartbeat:Lcom/adobe/primetime/va/Heartbeat;

    .line 153
    new-instance p1, Lcom/adobe/primetime/va/HeartbeatConfig;

    invoke-direct {p1}, Lcom/adobe/primetime/va/HeartbeatConfig;-><init>()V

    .line 154
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->isDebug()Z

    move-result p2

    iput-boolean p2, p1, Lcom/adobe/primetime/va/HeartbeatConfig;->debugLogging:Z

    .line 155
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_heartbeat:Lcom/adobe/primetime/va/Heartbeat;

    invoke-virtual {p2, p1}, Lcom/adobe/primetime/va/Heartbeat;->configure(Lcom/adobe/primetime/va/HeartbeatConfig;)V

    .line 156
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "end setAdobeHBTrackingData"

    invoke-static {p1, v0, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setConfiguration(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_a

    .line 280
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 281
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    goto :goto_0

    .line 288
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerName"

    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 291
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v2, "videoID"

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 293
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoId:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v2, "videoName"

    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 295
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoName:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v2, "trackingServer"

    .line 296
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 297
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_trackingServer:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v2, "publisher"

    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 299
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_publisher:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v2, "channel"

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    .line 301
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_channel:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v2, "ovp"

    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    .line 303
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_ovp:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v2, "sdk"

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 305
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_sdk:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetTagString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Type of key or value is not correct"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private setConfigurationMetaData(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_7

    .line 407
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 408
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 409
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 410
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "context"

    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 416
    invoke-direct {p0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->setContext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 421
    :try_start_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetTagString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setConfigurationMetaData key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    check-cast v1, Ljava/util/HashMap;

    const-string v3, "configuration"

    .line 424
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 425
    invoke-direct {p0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->setConfiguration(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_4
    const-string v3, "videoMetaData"

    .line 426
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    .line 427
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoMetadata:Ljava/util/HashMap;

    goto :goto_0

    :cond_5
    const-string v3, "adMetaData"

    .line 428
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 429
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adMetadata:Ljava/util/HashMap;

    goto :goto_0

    :cond_6
    const-string v3, "chapterMetaData"

    .line 430
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iput-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_chapterMetadata:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Type of key or value is not correct"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method private setContext(Ljava/lang/Object;)V
    .locals 7

    const-string v0, " fails"

    const-string v1, "@@@VOOSMPAdobeHBTrackingController"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Player context is null"

    .line 378
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v3, "setContext"

    .line 383
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerContext:Ljava/lang/Object;

    :try_start_0
    const-string p1, "com.adobe.mobile.Config"

    .line 386
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->mAdobeMobileConfigClass:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 388
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {p1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 389
    iget-object v6, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerContext:Ljava/lang/Object;

    aput-object v6, v4, v2

    invoke-virtual {p1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Access "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 397
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoke "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot get Method "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Could not find class com.adobe.mobile.Config"

    .line 392
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setVideoId()V
    .locals 4

    .line 453
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 454
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    iput-object v0, v2, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->id:Ljava/lang/String;

    .line 455
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration video id is taken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_streamUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 457
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    iput-object v0, v2, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->id:Ljava/lang/String;

    .line 458
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content url is taken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_streamUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adCallUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 460
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    iput-object v0, v2, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->id:Ljava/lang/String;

    .line 461
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad url is taken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adCallUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 463
    :cond_2
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetTagString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Video Id is not available"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setVideoName()V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    iget-object v0, v0, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoName:Ljava/lang/String;

    return-void
.end method

.method private trackAdComplete()V
    .locals 4

    .line 525
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start trackAdComplete"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->trackAdComplete()V

    .line 527
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end trackAdComplete"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackAdStart()V
    .locals 4

    .line 500
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start trackAdStart"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_aaPlugin:Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;

    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;->setAdMetadata(Ljava/util/Map;)V

    .line 502
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->trackAdStart()V

    .line 503
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end trackAdStart"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackBufferComplete()V
    .locals 4

    .line 555
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start trackBufferComplete"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->trackBufferComplete()V

    .line 557
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end trackBufferComplete"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackBufferStart()V
    .locals 4

    .line 549
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start trackBufferStart"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->trackBufferStart()V

    .line 551
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end trackBufferStart"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackChapterComplete()V
    .locals 4

    .line 531
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start trackChapterComplete"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->trackChapterComplete()V

    .line 533
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end trackChapterComplete"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackChapterStart()V
    .locals 4

    .line 493
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start trackChapterStart"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_aaPlugin:Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;

    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_chapterMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;->setChapterMetadata(Ljava/util/Map;)V

    .line 495
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->trackChapterStart()V

    .line 496
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end trackChapterStart"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackComplete()V
    .locals 4

    .line 513
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start trackComplete"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController$1;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;)V

    .line 520
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v2, v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->trackComplete(Lcom/adobe/primetime/core/ICallback;)V

    .line 521
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end trackComplete"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackPause()V
    .locals 4

    .line 507
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start trackPause"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->trackPause()V

    .line 509
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end trackPause"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackPlay()V
    .locals 4

    .line 487
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start trackPlay"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->trackPlay()V

    .line 489
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end trackPlay"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackSeekComplete()V
    .locals 4

    .line 543
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start trackSeekComplete"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->trackSeekComplete()V

    .line 545
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end trackSeekComplete"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackSeekStart()V
    .locals 4

    .line 537
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start trackSeekStart"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->trackSeekStart()V

    .line 539
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end trackSeekStart"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackVideoLoad()V
    .locals 4

    .line 561
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start trackVideoLoad()"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_aaPlugin:Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;

    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoMetadata:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lcom/adobe/primetime/va/plugins/aa/AdobeAnalyticsPlugin;->setVideoMetadata(Ljava/util/Map;)V

    .line 563
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->trackVideoLoad()V

    .line 564
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end trackVideoLoad()"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private trackVideoUnload()V
    .locals 4

    .line 568
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start trackVideoUnload()"

    invoke-static {v0, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerPlugin:Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;

    invoke-virtual {v0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPlugin;->trackVideoUnload()V

    .line 570
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "end trackVideoUnload()"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected GetTagString()Ljava/lang/String;
    .locals 1

    const-string v0, "@@@VOOSMPAdobeHBTrackingController"

    return-object v0
.end method

.method public execSDKAction(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "@@@VOOSMPAdobeHBTrackingController"

    if-eqz p1, :cond_3

    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "onPause"

    .line 320
    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->pauseAction()V

    goto :goto_0

    :cond_1
    const-string v2, "onResume"

    .line 322
    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 323
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->resumeAction()V

    .line 328
    :goto_0
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 325
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNKNOWN:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    :cond_3
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Action is null or empty"

    .line 318
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNKNOWN:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method public getAdBreakInfo()Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;
    .locals 8

    const-string v0, "end getAdBreakInfo"

    const/4 v1, 0x0

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "start getAdBreakInfo"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->lockAdsMgr()V

    .line 193
    new-instance v2, Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;

    invoke-direct {v2}, Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adBreakInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;

    .line 194
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_playerName:Ljava/lang/String;

    iput-object v3, v2, Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;->playerName:Ljava/lang/String;

    .line 195
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adBreakInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getCurrAdBreakIdx()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;->position:Ljava/lang/Long;

    .line 198
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->currPeriodIsAd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adBreakInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getCurrAdTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adBreakInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;

    iget-object v4, v3, Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;->position:Ljava/lang/Long;

    iget-object v4, v3, Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;->position:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;->position:Ljava/lang/Long;

    .line 205
    :goto_0
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdBreakInfo: position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adBreakInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;

    iget-object v5, v5, Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;->position:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " _adBreakInfo.name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adBreakInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;

    iget-object v2, v2, Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v2, "N/A (Content)"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adBreakInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->unlockAdsMgr()V

    .line 213
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception v2

    .line 212
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->unlockAdsMgr()V

    .line 213
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public getAdInfo()Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;
    .locals 8

    const-string v0, "end getAdInfo"

    const/4 v1, 0x0

    .line 219
    :try_start_0
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "start getAdInfo"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->lockAdsMgr()V

    .line 221
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->currPeriodIsAd()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->unlockAdsMgr()V

    .line 241
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 224
    :cond_0
    :try_start_1
    new-instance v2, Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    invoke-direct {v2}, Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    .line 225
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getCurrAdID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;->id:Ljava/lang/String;

    .line 226
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    iget-object v2, v2, Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "N/A"

    if-eqz v2, :cond_1

    .line 227
    :try_start_2
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    iput-object v3, v2, Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;->id:Ljava/lang/String;

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getCurrAdDuration()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v2, Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;->length:Ljava/lang/Double;

    .line 230
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getCurrAdPosInPod()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;->position:Ljava/lang/Long;

    .line 231
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getCurrAdTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;->name:Ljava/lang/String;

    .line 232
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    iget-object v2, v2, Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    iput-object v3, v2, Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;->name:Ljava/lang/String;

    .line 235
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdInfo: length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    iget-object v4, v4, Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;->length:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    iget-object v4, v4, Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;->position:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " period title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    iget-object v4, v4, Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_adInfo:Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->unlockAdsMgr()V

    .line 241
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception v2

    .line 240
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->unlockAdsMgr()V

    .line 241
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public getChapterInfo()Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;
    .locals 7

    const-string v0, "end getChapterInfo"

    const/4 v1, 0x0

    .line 247
    :try_start_0
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "start getChapterInfo"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->lockAdsMgr()V

    .line 249
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->currPeriodIsAd()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->unlockAdsMgr()V

    .line 263
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 252
    :cond_0
    :try_start_1
    new-instance v2, Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;

    invoke-direct {v2}, Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_chapterInfo:Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;

    .line 253
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getCurrContentPeriodDuration()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;->length:Ljava/lang/Double;

    .line 254
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_chapterInfo:Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getCurrPartNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;->position:Ljava/lang/Long;

    .line 255
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_chapterInfo:Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getCurrContentPeriodStartPos()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;->startTime:Ljava/lang/Double;

    .line 256
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChapterInfo: length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_chapterInfo:Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;

    iget-object v4, v4, Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;->length:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_chapterInfo:Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;

    iget-object v4, v4, Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;->position:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " startTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_chapterInfo:Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;

    iget-object v4, v4, Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;->startTime:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_chapterInfo:Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->unlockAdsMgr()V

    .line 263
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception v2

    .line 262
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->unlockAdsMgr()V

    .line 263
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public getQosInfo()Lcom/adobe/primetime/va/plugins/videoplayer/QoSInfo;
    .locals 3

    .line 268
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getQosInfo"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoInfo()Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;
    .locals 7

    const-string v0, "end getVideoInfo"

    const/4 v1, 0x0

    .line 169
    :try_start_0
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "start getVideoInfo"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->lockAdsMgr()V

    .line 171
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->initVideoInfo()V

    .line 172
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getCurrStreamType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->streamType:Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getCurrContentPos()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->playhead:Ljava/lang/Double;

    .line 174
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoInfo: streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    iget-object v4, v4, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->streamType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " playerName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    iget-object v4, v4, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->playerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " getPlayingTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getCurrAdOrContentPos()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " playhead = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    iget-object v4, v4, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->playhead:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    iget-object v4, v4, Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 174
    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->_videoInfo:Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->unlockAdsMgr()V

    .line 185
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception v2

    .line 184
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->unlockAdsMgr()V

    .line 185
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->GetHBTrackTag()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method
