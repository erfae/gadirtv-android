.class Lcom/visualon/OSMPAdMgr/VOOSMPVideoPlayerPluginDelegate;
.super Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPluginDelegate;
.source "VOOSMPVideoPlayerPluginDelegate.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final _player:Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VideoHeartbeatSample]::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/visualon/OSMPAdMgr/VOOSMPVideoPlayerPluginDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoPlayerPluginDelegate;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/adobe/primetime/va/plugins/videoplayer/VideoPlayerPluginDelegate;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;

    return-void
.end method


# virtual methods
.method public getAdBreakInfo()Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getAdBreakInfo()Lcom/adobe/primetime/va/plugins/videoplayer/AdBreakInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAdInfo()Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getAdInfo()Lcom/adobe/primetime/va/plugins/videoplayer/AdInfo;

    move-result-object v0

    return-object v0
.end method

.method public getChapterInfo()Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getChapterInfo()Lcom/adobe/primetime/va/plugins/videoplayer/ChapterInfo;

    move-result-object v0

    return-object v0
.end method

.method public getQoSInfo()Lcom/adobe/primetime/va/plugins/videoplayer/QoSInfo;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getQosInfo()Lcom/adobe/primetime/va/plugins/videoplayer/QoSInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVideoInfo()Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoPlayerPluginDelegate;->_player:Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdobeHBTrackingController;->getVideoInfo()Lcom/adobe/primetime/va/plugins/videoplayer/VideoInfo;

    move-result-object v0

    return-object v0
.end method
