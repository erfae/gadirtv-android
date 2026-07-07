.class public Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
.super Ljava/lang/Object;
.source "VOCommonPlayerJNI.java"


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "voOSPlayer"

.field private static final TAG:Ljava/lang/String; = "@@@VOCommonPlayerJNI"

.field public static mJNILoaded:Z


# instance fields
.field private mPlayerImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

.field private nativeContext_:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mPlayerImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeContext_:J

    .line 42
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mPlayerImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    return-void
.end method

.method public static loadJNI(Ljava/lang/String;)Z
    .locals 1

    .line 391
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-eqz v0, :cond_0

    return v0

    .line 392
    :cond_0
    invoke-static {p0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadOneLibInPath(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-eqz v0, :cond_1

    return v0

    :cond_1
    const-string v0, "voOSPlayer"

    .line 394
    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez p0, :cond_2

    const-string p0, "@@@VOCommonPlayerJNI"

    const-string v0, "Fail to load JNI library"

    .line 397
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_2
    sget-boolean p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    return p0
.end method

.method private osmpCallBack(IJJLjava/lang/Object;)V
    .locals 7

    .line 55
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mPlayerImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;->onVOEventInternal(IJJLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mPlayerImpl:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    return-void
.end method

.method public isAvailable()Z
    .locals 5

    .line 51
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeContext_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected native nativeAddAnalyticsInfo(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected native nativeAddConfiguration(Ljava/lang/String;)I
.end method

.method protected native nativeCanPlayIframeOnly()Z
.end method

.method protected native nativeClearSelection()I
.end method

.method protected native nativeClose()I
.end method

.method protected native nativeCommitSelection()I
.end method

.method protected native nativeDestroy()I
.end method

.method protected native nativeDisableClientDVR()I
.end method

.method protected native nativeEnableAnalytics(I)I
.end method

.method protected native nativeEnableAnalyticsAgent(Z)I
.end method

.method protected native nativeEnableAnalyticsDisplay(I)I
.end method

.method protected native nativeEnableAnalyticsExportEvent()I
.end method

.method protected native nativeEnableAnalyticsFoundation(Z)I
.end method

.method protected native nativeEnableAnalyticsVoExportEvent()I
.end method

.method protected native nativeEnableAntiMirror(Z)I
.end method

.method protected native nativeEnableAudioDecoderLibrary(IZ)I
.end method

.method protected native nativeEnableAudioEffect(Z)I
.end method

.method protected native nativeEnableAudioOnlyAdaptation(Z)I
.end method

.method protected native nativeEnableAudioStream(Z)I
.end method

.method protected native nativeEnableCPUAdaptation(Z)I
.end method

.method protected native nativeEnableCardBoardVideo(Z)I
.end method

.method protected native nativeEnableClientDVR(JJ)I
.end method

.method protected native nativeEnableCubemapVideo(Z)I
.end method

.method protected native nativeEnableDRMOfflineMode(Z)I
.end method

.method protected native nativeEnableDeblock(Z)I
.end method

.method protected native nativeEnableDolbyLibrary(Z)I
.end method

.method protected native nativeEnableHTTPGzipRequest(Z)I
.end method

.method protected native nativeEnableLiveStreamingDVRPosition(Z)I
.end method

.method protected native nativeEnableLowLatencyMode(Z)I
.end method

.method protected native nativeEnableLowLatencyVideo(Z)I
.end method

.method protected native nativeEnablePCMOutput(Z)I
.end method

.method protected native nativeEnableRTSPOverHTTP(Z)I
.end method

.method protected native nativeEnableSEI(I)I
.end method

.method protected native nativeEnableSphericalVideo(Z)I
.end method

.method protected native nativeEnableSubtitle(Z)I
.end method

.method protected native nativeEnableSubtitleAutoAdjustment(Z)I
.end method

.method protected native nativeEnableTunnelingModeByCheckingLicense()I
.end method

.method protected native nativeEnableVideoStream(Z)I
.end method

.method protected native nativeGetAnalytics(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected native nativeGetAnalyticsExportPacket()Ljava/lang/String;
.end method

.method protected native nativeGetAnalyticsFPS()F
.end method

.method protected native nativeGetAnalyticsVoExportPacket()Ljava/lang/String;
.end method

.method protected native nativeGetAudioCount()I
.end method

.method protected native nativeGetAudioProperty(I)Ljava/lang/Object;
.end method

.method protected native nativeGetCurrentSelection()Ljava/lang/Object;
.end method

.method protected native nativeGetDRMUniqueIdentifier()Ljava/lang/String;
.end method

.method protected native nativeGetDownloadStatus(I)I
.end method

.method protected native nativeGetDuration()J
.end method

.method protected native nativeGetMaxCPUFrequency()J
.end method

.method protected native nativeGetMaxPosition()J
.end method

.method protected native nativeGetMinPosition()J
.end method

.method protected native nativeGetNumberOfCores()I
.end method

.method protected native nativeGetPTSPosition()J
.end method

.method protected native nativeGetParam(JLjava/lang/Object;)Ljava/lang/Object;
.end method

.method protected native nativeGetPlayerState()I
.end method

.method protected native nativeGetPlayerStatus()I
.end method

.method protected native nativeGetPlayingAsset()Ljava/lang/Object;
.end method

.method protected native nativeGetPosition()J
.end method

.method protected native nativeGetRTSPStatistics()Ljava/lang/Object;
.end method

.method protected native nativeGetSEIInfo(JI)Ljava/lang/Object;
.end method

.method protected native nativeGetSubtitleCount()I
.end method

.method protected native nativeGetSubtitleProperty(I)Ljava/lang/Object;
.end method

.method protected native nativeGetUTCPosition()J
.end method

.method protected native nativeGetValidBufferDuration()I
.end method

.method protected native nativeGetVersion(I)Ljava/lang/String;
.end method

.method protected native nativeGetVideoCount()I
.end method

.method protected native nativeGetVideoProperty(I)Ljava/lang/Object;
.end method

.method protected native nativeHasNeon()Z
.end method

.method protected native nativeInit(ILjava/lang/Object;)I
.end method

.method protected native nativeIsAudioAvailable(I)Z
.end method

.method protected native nativeIsLiveStreaming()Z
.end method

.method protected native nativeIsOutputControlActive(I)Z
.end method

.method protected native nativeIsOutputControlEnforce(I)Z
.end method

.method protected native nativeIsSubtitleAvailable(I)Z
.end method

.method protected native nativeIsThumbnailAvailable()Z
.end method

.method protected native nativeIsVideoAvailable(I)Z
.end method

.method protected native nativeMute()I
.end method

.method protected native nativeOnLog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method protected native nativeOpen(Ljava/lang/String;IILjava/lang/Object;Ljava/lang/Object;)I
.end method

.method protected native nativeOpenSource(JI)I
.end method

.method protected native nativePause()I
.end method

.method protected native nativePreloadSource()I
.end method

.method protected native nativePrepare(Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method protected native nativePreviewSubtitle(Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method protected native nativeRequestThumbnails(JJIJ)I
.end method

.method protected native nativeResetSubtitleParameter()I
.end method

.method protected native nativeResume()I
.end method

.method protected native nativeSelectAudio(I)I
.end method

.method protected native nativeSelectSubtitle(I)I
.end method

.method protected native nativeSelectVideo(I)I
.end method

.method protected native nativeSetAdaptationByVideoCodecType(Ljava/lang/String;)I
.end method

.method protected native nativeSetAnalyticsAgentAppID(Ljava/lang/String;)I
.end method

.method protected native nativeSetAnalyticsAgentCUID(Ljava/lang/String;)I
.end method

.method protected native nativeSetAnalyticsDisplayType(I)I
.end method

.method protected native nativeSetAnalyticsFoundationCUID(Ljava/lang/String;)I
.end method

.method protected native nativeSetAudioEffectEndpointType(I)I
.end method

.method protected native nativeSetAudioPlaybackSpeed(F)I
.end method

.method protected native nativeSetBAResolutionThreshold(IIII)I
.end method

.method protected native nativeSetBitrateThreshold(II)I
.end method

.method protected native nativeSetDRMFilePath(Ljava/lang/String;)I
.end method

.method protected native nativeSetDRMLibrary(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected native nativeSetDRMUniqueIdentifier(Ljava/lang/String;)I
.end method

.method protected native nativeSetDRMVerificationInfo(Ljava/lang/Object;)I
.end method

.method protected native nativeSetDeviceCapabilityByFile(Ljava/lang/String;)I
.end method

.method protected native nativeSetHDCPPolicy(I)I
.end method

.method protected native nativeSetHTTPHeader(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected native nativeSetHTTPProxy(Ljava/lang/Object;)I
.end method

.method protected native nativeSetHTTPRetryTimeout(I)I
.end method

.method protected native nativeSetHTTPVerificationInfo(Ljava/lang/Object;)I
.end method

.method protected native nativeSetHWDecoderMaxResolution(II)I
.end method

.method protected native nativeSetInitialBitrate(I)I
.end method

.method protected native nativeSetInitialBufferingTime(I)I
.end method

.method protected native nativeSetLicenseContent([B)I
.end method

.method protected native nativeSetLicenseFilePath(Ljava/lang/String;)I
.end method

.method protected native nativeSetLowBacklightEnhanceLevel([F)I
.end method

.method protected native nativeSetLowLatencyBufferingThreshold(II)I
.end method

.method protected native nativeSetMaxBufferingTime(I)I
.end method

.method protected native nativeSetMaxPosition(J)J
.end method

.method protected native nativeSetMinPosition(J)J
.end method

.method protected native nativeSetPDConnectionRetryCount(I)I
.end method

.method protected native nativeSetParam(JLjava/lang/Object;)I
.end method

.method protected native nativeSetPlayIFrameFPS(I)I
.end method

.method protected native nativeSetPlayIFrameOnly(ZF)I
.end method

.method protected native nativeSetPlaybackBufferingTime(I)I
.end method

.method protected native nativeSetPosition(J)J
.end method

.method protected native nativeSetPreAgreedLicense(Ljava/lang/String;)I
.end method

.method protected native nativeSetPreference(I)I
.end method

.method protected native nativeSetPresentationDelay(I)I
.end method

.method protected native nativeSetRTSPConnectionPort(Ljava/lang/Object;)I
.end method

.method protected native nativeSetRTSPConnectionTimeout(I)I
.end method

.method protected native nativeSetRTSPConnectionType(I)I
.end method

.method protected native nativeSetRTSPMaxSocketErrorCount(I)I
.end method

.method protected native nativeSetRTSPOverHTTPConnectionPort(I)I
.end method

.method protected native nativeSetSegmentDownloadRetryCount(I)I
.end method

.method protected native nativeSetSphericalVideoView(FFF)I
.end method

.method protected native nativeSetSubtitleBoundingBox(IIII)I
.end method

.method protected native nativeSetSubtitleFontBackgroundColor(I)I
.end method

.method protected native nativeSetSubtitleFontBackgroundOpacity(I)I
.end method

.method protected native nativeSetSubtitleFontColor(I)I
.end method

.method protected native nativeSetSubtitleFontEdgeColor(I)I
.end method

.method protected native nativeSetSubtitleFontEdgeOpacity(I)I
.end method

.method protected native nativeSetSubtitleFontEdgeType(I)I
.end method

.method protected native nativeSetSubtitleFontItalic(Z)I
.end method

.method protected native nativeSetSubtitleFontName(Ljava/lang/String;)I
.end method

.method protected native nativeSetSubtitleFontOpacity(I)I
.end method

.method protected native nativeSetSubtitleFontSizeScale(I)I
.end method

.method protected native nativeSetSubtitleFontUnderline(Z)I
.end method

.method protected native nativeSetSubtitleGravity(II)I
.end method

.method protected native nativeSetSubtitleImageSizeScale(I)I
.end method

.method protected native nativeSetSubtitleTrim(Ljava/lang/String;)I
.end method

.method protected native nativeSetSubtitleWindowBackgroundColor(I)I
.end method

.method protected native nativeSetSubtitleWindowBackgroundOpacity(I)I
.end method

.method protected native nativeSetThumbnailMaxHeight(I)I
.end method

.method protected native nativeSetThumbnailURI(Ljava/lang/String;)I
.end method

.method protected native nativeSetURLQueryString(Ljava/lang/String;)I
.end method

.method protected native nativeSetUTCPosition(J)J
.end method

.method protected native nativeSetView(Ljava/lang/Object;)I
.end method

.method protected native nativeSetViewSize(II)I
.end method

.method protected native nativeSetZoomMode(I[I)I
.end method

.method protected native nativeStSubtitleFontBold(Z)I
.end method

.method protected native nativeStart()I
.end method

.method protected native nativeStartAnalyticsNotification(ILjava/lang/Object;)I
.end method

.method protected native nativeStartSEINotification(I)I
.end method

.method protected native nativeStop()I
.end method

.method protected native nativeStopAnalyticsNotification()I
.end method

.method protected native nativeStopSEINotification()I
.end method

.method protected native nativeSuspend(Z)I
.end method

.method protected native nativeUnmute()I
.end method

.method protected native nativeUpdateSourceURL(Ljava/lang/String;)I
.end method

.method protected native native_Analytics_Report(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method protected native nativegetThumbnaiType()I
.end method

.method public reportAnalyticsData(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 384
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->getValue()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->native_Analytics_Report(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public setSubtitlePath(Ljava/lang/String;)I
    .locals 3

    .line 59
    sget-boolean v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->mJNILoaded:Z

    if-nez v0, :cond_0

    const p1, -0x7ffffff1

    return p1

    .line 62
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "file:///"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :try_start_0
    const-string v0, "subtitle_downloaded"

    const-string v1, ".sdld"

    .line 71
    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 77
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-wide/16 v1, 0x6e

    .line 79
    invoke-virtual {p0, v1, v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const-wide/16 v0, 0x6f

    .line 86
    invoke-virtual {p0, v0, v1, p1}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->nativeSetParam(JLjava/lang/Object;)I

    move-result p1

    return p1
.end method
