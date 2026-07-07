.class public Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;
.super Ljava/lang/Object;
.source "VOOSMPStreamingDownloaderImpl.java"

# interfaces
.implements Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;
    }
.end annotation


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "voSTRMDownloaderJni"

.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPStreamingDownloaderImpl"

.field private static mJNILoaded:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;

.field private mInitParam:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;

.field private mLibPath:Ljava/lang/String;

.field private mListener:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;

.field private mNativeContext:J

.field private mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mContext:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    .line 63
    iput-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mLibPath:Ljava/lang/String;

    .line 91
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "@@@VOOSMPStreamingDownloaderImpl"

    if-eqz v1, :cond_0

    .line 92
    new-instance v4, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;

    invoke-direct {v4, p0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;-><init>(Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mEventHandler:Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "myLooper()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 95
    new-instance v4, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;

    invoke-direct {v4, p0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;-><init>(Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mEventHandler:Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMainLooper()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_1
    iput-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mEventHandler:Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;

    :goto_0
    const-wide/16 v1, 0x0

    .line 101
    iput-wide v1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    .line 102
    iput-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mInitParam:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;

    .line 103
    iput-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mListener:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;)Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mListener:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;

    return-object p0
.end method

.method private static loadJNI(Ljava/lang/String;)Z
    .locals 2

    .line 873
    sget-boolean v0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mJNILoaded:Z

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const-string v0, "voSTRMDownloaderJni"

    .line 874
    invoke-static {p0, v0}, Lcom/visualon/OSMPUtils/voLoadJNI;->loadProductLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mJNILoaded:Z

    if-nez p0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "Fail to load JNI library"

    .line 875
    invoke-static {v0, v1, p0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    :cond_1
    sget-boolean p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mJNILoaded:Z

    return p0
.end method

.method private native nativeClearSelection(J)I
.end method

.method private native nativeClose(J)I
.end method

.method private native nativeCommitSelection(J)I
.end method

.method private native nativeDeleteContent(JLjava/lang/String;)I
.end method

.method private native nativeGetAudioCount(J)I
.end method

.method private native nativeGetAudioProperty(JI)[Ljava/lang/String;
.end method

.method private native nativeGetCurrentSelection(J)[I
.end method

.method private native nativeGetCurrentState(J)I
.end method

.method private native nativeGetDRMKeyExpiredStatus(J)I
.end method

.method private native nativeGetDRMLicenseInfo(J)Ljava/lang/String;
.end method

.method private native nativeGetDuration(J)[J
.end method

.method private native nativeGetPlayingAsset(J)[I
.end method

.method private native nativeGetSubtitleCount(J)I
.end method

.method private native nativeGetSubtitleProperty(JI)[Ljava/lang/String;
.end method

.method private native nativeGetVideoCount(J)I
.end method

.method private native nativeGetVideoProperty(JI)[Ljava/lang/String;
.end method

.method private native nativeInit(Ljava/lang/Long;Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;)I
.end method

.method private native nativeIsAudioAvailable(JI)Z
.end method

.method private native nativeIsSubtitleAvailable(JI)Z
.end method

.method private native nativeIsVideoAvailable(JI)Z
.end method

.method private native nativeOpen(JLjava/lang/String;ILjava/lang/String;)I
.end method

.method private native nativePause(J)I
.end method

.method private native nativeRenewDRMLicense(J)V
.end method

.method private native nativeResume(J)I
.end method

.method private native nativeSelectAudio(JI)I
.end method

.method private native nativeSelectMultiTracks(J[II)I
.end method

.method private native nativeSelectSubtitle(JI)I
.end method

.method private native nativeSelectVideo(JI)I
.end method

.method private native nativeSetDRMFilePath(JLjava/lang/String;)I
.end method

.method private native nativeSetDRMLibrary(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSetDRMUniqueIdentifier(JLjava/lang/String;)I
.end method

.method private native nativeSetDRMVerificationInfo(JLcom/visualon/OSMPUtils/voOSVerificationInfo;)I
.end method

.method private native nativeSetHttpHeader(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSetParameter(JILjava/lang/Object;)I
.end method

.method private native nativeStart(J)I
.end method

.method private native nativeStop(J)I
.end method

.method private native nativeUnInit(J)I
.end method

.method private setDRMHashMapAndCallback(Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;)I
    .locals 7

    .line 108
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    if-eqz p1, :cond_3

    .line 111
    instance-of v1, p1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    const v2, 0x3010004

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mLibPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->newLicenseManager(Landroid/content/Context;Ljava/lang/String;)Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    if-eqz v1, :cond_0

    .line 115
    check-cast v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->open()V

    .line 116
    iget-wide v3, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;->getContext()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v3, v4, v2, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSetParameter(JILjava/lang/Object;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "DRM license manager initialize failed"

    .line 118
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 124
    :cond_1
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;->getVenderID()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;->getPreference()Ljava/util/LinkedList;

    move-result-object v1

    const-string v3, "DRM_TYPE"

    .line 124
    invoke-static {v0, v3, v1}, Lcom/visualon/OSMPUtils/voDRMHelper;->getDRMData(Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedList;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    iget-wide v3, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const v1, 0x3010006

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v4, v1, v0}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSetParameter(JILjava/lang/Object;)I

    move-result v0

    .line 130
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    return v0

    .line 134
    :cond_2
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;->getContext()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSetParameter(JILjava/lang/Object;)I

    move-result v0

    .line 135
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    if-eq v0, p1, :cond_3

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method protected VOOSMPStreamingDownloaderCallBack(IIILjava/lang/Object;)I
    .locals 8

    .line 825
    iget-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mEventHandler:Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;

    if-nez v0, :cond_0

    .line 827
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 831
    :cond_0
    invoke-static {p1}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->valueOf(I)Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;

    move-result-object v0

    .line 833
    sget-object v1, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$1;->$SwitchMap$com$visualon$VOOSMPStreamingDownloader$VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID:[I

    invoke-virtual {v0}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "@@@VOOSMPStreamingDownloaderImpl"

    const/4 v4, 0x0

    if-eq v1, v2, :cond_5

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    const/4 v6, 0x3

    if-eq v1, v6, :cond_3

    const/4 v7, 0x4

    if-eq v1, v7, :cond_2

    const/4 v7, 0x5

    if-eq v1, v7, :cond_1

    new-array v1, v6, [Ljava/lang/Object;

    .line 861
    invoke-virtual {v0}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "Downloader event is %s, param1 is %d, param2 is %d"

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 859
    :cond_1
    iget-object p1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mListener:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;->onVOStreamingDownloaderEvent(Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 854
    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Downloader event is DOWNLOADER_MANIFEST_UPDATE, current is "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , total is "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p4, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    new-instance p4, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderProgressInfoImpl;

    int-to-long v0, p2

    int-to-long v2, p3

    invoke-direct {p4, v0, v1, v2, v3}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderProgressInfoImpl;-><init>(JJ)V

    goto/16 :goto_0

    .line 850
    :cond_3
    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader event is EXTERNAL_SUBTITLE_OK, URL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 846
    :cond_4
    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader event is DOWNLOADER_MANIFEST_OK, localURI is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 836
    :cond_5
    invoke-virtual {p0}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->getCurrentState()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->ordinal()I

    move-result v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->VO_OSMP_DOWNLOADER_STATE_OPENING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 837
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Downloader in error status:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->getCurrentState()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1

    .line 841
    :cond_6
    new-instance v0, Ljava/lang/String;

    move-object v1, p4

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloader event is DOWNLOADER_OPEN_COMPLETE, manifest content is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x32

    .line 843
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "... (truncated)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 842
    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 865
    :goto_0
    iget-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mEventHandler:Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 866
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result p1

    return p1
.end method

.method public addConfiguration(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .line 785
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 786
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "@@@VOOSMPStreamingDownloaderImpl"

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v4, "string: %s"

    .line 787
    invoke-static {v3, v4, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "UUIDPrefix"

    .line 792
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 793
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 794
    invoke-static {v4}, Lcom/visualon/OSMPUtils/voOSUniqID;->setDrmUUIDPrefix(Ljava/lang/String;)V

    .line 795
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    :cond_1
    const-string v4, "http302redirect"

    .line 798
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 799
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 800
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    .line 801
    iget-wide v4, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const v1, 0x3010018

    invoke-direct {p0, v4, v5, v1, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSetParameter(JILjava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 805
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 808
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public clearSelection()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 442
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    .line 444
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    .line 448
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeClearSelection(J)I

    move-result v0

    .line 449
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public close()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .line 253
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const/4 v2, 0x0

    const-string v3, "@@@VOOSMPStreamingDownloaderImpl"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 255
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "VOOSMPStreamingDownloader close."

    .line 259
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeClose(J)I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    if-eqz v2, :cond_1

    .line 264
    check-cast v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->close()V

    .line 267
    :cond_1
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public commitSelection()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 455
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    .line 457
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    .line 461
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeCommitSelection(J)I

    move-result v0

    .line 462
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public deleteContent(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 354
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 356
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 360
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeDeleteContent(JLjava/lang/String;)I

    move-result p1

    .line 361
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public destroy()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .line 189
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "@@@VOOSMPStreamingDownloaderImpl"

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 191
    invoke-static {v5, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "VOOSMPStreamingDownloader destroy -."

    .line 195
    invoke-static {v5, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeUnInit(J)I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mEventHandler:Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {v1, v6}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 200
    :cond_1
    iput-object v6, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mInitParam:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;

    .line 201
    iput-object v6, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mListener:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;

    .line 202
    iput-wide v2, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    .line 204
    iget-object v1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    if-eqz v2, :cond_2

    .line 205
    check-cast v1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->uninit()V

    .line 206
    iput-object v6, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    :cond_2
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "VOOSMPStreamingDownloader destroy +."

    .line 209
    invoke-static {v5, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public getAudioCount()I
    .locals 5

    .line 468
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    .line 470
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, -0x7ffffeff

    return v0

    .line 474
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeGetAudioCount(J)I

    move-result v0

    return v0
.end method

.method public getAudioProperty(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;
    .locals 5

    .line 481
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 483
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 487
    :cond_0
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeGetAudioProperty(JI)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;-><init>([Ljava/lang/String;)V

    return-object v2
.end method

.method public getCurrentSelection()Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;
    .locals 5

    .line 494
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    .line 496
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 500
    :cond_0
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;

    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeGetCurrentSelection(J)[I

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;-><init>([I)V

    return-object v2
.end method

.method public getCurrentState()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;
    .locals 5

    .line 772
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v2, "VO_OSMP_DOWNLOADER_STATE_UNINITIALIZED"

    .line 774
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->VO_OSMP_DOWNLOADER_STATE_UNINITIALIZED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    return-object v0

    .line 778
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeGetCurrentState(J)I

    move-result v0

    .line 779
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;

    move-result-object v0

    return-object v0
.end method

.method public getDRMKeyExpiredStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;
    .locals 5

    .line 531
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    .line 533
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 536
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeGetDRMKeyExpiredStatus(J)I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;

    move-result-object v0

    return-object v0
.end method

.method public getDRMLicenseInfo()Ljava/lang/String;
    .locals 2

    .line 747
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeGetDRMLicenseInfo(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDRMUniqueIdentifier()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Lcom/visualon/OSMPUtils/voOSUniqID;

    iget-object v1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/visualon/OSMPUtils/voOSUniqID;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSUniqID;->getDrmUUIDString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VOOSMPStreamingDownloaderProgressInfo;
    .locals 7

    .line 337
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v3, "VOOSMP_ERR_Uninitialize"

    .line 339
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 343
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeGetDuration(J)[J

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 347
    :cond_1
    new-instance v1, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderProgressInfoImpl;

    aget-wide v2, v0, v3

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderProgressInfoImpl;-><init>(JJ)V

    return-object v1
.end method

.method public getPlayingAsset()Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetIndex;
    .locals 5

    .line 507
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    .line 509
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    .line 513
    :cond_0
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;

    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeGetPlayingAsset(J)[I

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetIndexImpl;-><init>([I)V

    return-object v2
.end method

.method public getSubtitleCount()I
    .locals 5

    .line 520
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    .line 522
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, -0x7ffffeff

    return v0

    .line 526
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeGetSubtitleCount(J)I

    move-result v0

    return v0
.end method

.method public getSubtitleProperty(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;
    .locals 5

    .line 542
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 544
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 548
    :cond_0
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeGetSubtitleProperty(JI)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;-><init>([Ljava/lang/String;)V

    return-object v2
.end method

.method public getThumbnailType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;
    .locals 1

    .line 721
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;->VO_OSMP_THUMBNAILS_TYPE_MAX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_TYPE;

    return-object v0
.end method

.method public getVideoCount()I
    .locals 5

    .line 555
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    .line 557
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, -0x7ffffeff

    return v0

    .line 561
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeGetVideoCount(J)I

    move-result v0

    return v0
.end method

.method public getVideoProperty(I)Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection$VOOSMPAssetProperty;
    .locals 5

    .line 567
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 569
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 573
    :cond_0
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeGetVideoProperty(JI)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPAssetPropertyImpl;-><init>([Ljava/lang/String;)V

    return-object v2
.end method

.method public init(Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    const-wide/16 v0, 0x0

    .line 147
    iput-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    .line 149
    iput-object p2, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mInitParam:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;

    .line 150
    iput-object p1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mListener:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;

    const-string p1, "init parameter is invalid, init failed!"

    const/4 v2, 0x0

    const-string v3, "@@@VOOSMPStreamingDownloaderImpl"

    if-nez p2, :cond_0

    new-array p2, v2, [Ljava/lang/Object;

    .line 153
    invoke-static {v3, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_PARAMID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 157
    :cond_0
    invoke-virtual {p2}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mContext:Landroid/content/Context;

    .line 158
    iget-object p2, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mInitParam:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;

    invoke-virtual {p2}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->getDrmLicenseManager()Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    move-result-object p2

    iput-object p2, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    .line 159
    iget-object p2, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mInitParam:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;

    invoke-virtual {p2}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->getLibraryPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mLibPath:Ljava/lang/String;

    .line 161
    iget-object p2, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mInitParam:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;

    invoke-virtual {p2}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->getLibraryPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mListener:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 167
    iget-object p2, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mInitParam:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;

    invoke-virtual {p2}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->getLibraryPath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "VOOSMPStreamingDownloader init, libraryPath is %s"

    invoke-static {v3, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object p1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mInitParam:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;

    invoke-virtual {p1}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->getLibraryPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->loadJNI(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 170
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_JNI:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 173
    :cond_2
    iget-wide p1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mInitParam:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;

    invoke-direct {p0, p1, p2}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeInit(Ljava/lang/Long;Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;)I

    move-result p1

    if-ltz p1, :cond_4

    .line 174
    iget-wide v4, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    cmp-long p2, v4, v0

    if-nez p2, :cond_3

    goto :goto_0

    .line 180
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VOOSMPStreamDownloader module init success! mNaiveContext is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    :cond_4
    :goto_0
    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Init failed."

    .line 176
    invoke-static {v3, v0, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    new-array p2, v2, [Ljava/lang/Object;

    .line 163
    invoke-static {v3, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_PARAMID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public isAudioAvailable(I)Z
    .locals 5

    .line 580
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    .line 582
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 586
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeIsAudioAvailable(JI)Z

    move-result p1

    return p1
.end method

.method public isSubtitleAvailable(I)Z
    .locals 5

    .line 592
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    .line 594
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 598
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeIsSubtitleAvailable(JI)Z

    move-result p1

    return p1
.end method

.method public isThumbnailAvailable()Z
    .locals 6

    .line 712
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v3, "VOOSMP_ERR_Uninitialize"

    .line 714
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v2
.end method

.method public isVideoAvailable(I)Z
    .locals 5

    .line 604
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v2, "VOOSMP_ERR_Uninitialize"

    .line 606
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 610
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeIsVideoAvailable(JI)Z

    move-result p1

    return p1
.end method

.method public open(Ljava/lang/String;ILjava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 10

    .line 216
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const/4 v2, 0x0

    const-string v3, "@@@VOOSMPStreamingDownloaderImpl"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "VOOSMP_ERR_Uninitialize"

    .line 218
    invoke-static {v3, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/4 v1, 0x1

    .line 222
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "VOOSMPStreamingDownloader open, source is %s, type is %s, localDir is %s"

    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-wide v5, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeOpen(JLjava/lang/String;ILjava/lang/String;)I

    move-result p1

    .line 226
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/lang/String;ILjava/lang/String;Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    if-eqz p4, :cond_0

    .line 232
    invoke-virtual {p4}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;->getDrmLicenseManager()Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->setDRMHashMapAndCallback(Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;)I

    .line 233
    invoke-virtual {p4}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;->getDownloadDir()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user specified download directory is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-wide v3, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const v5, 0x3010009

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSetParameter(JILjava/lang/Object;)I

    .line 239
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->open(Ljava/lang/String;ILjava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    if-eqz p4, :cond_1

    .line 241
    invoke-virtual {p4}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;->getSubtitleURL()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 242
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    .line 243
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "user specified external subtitle url is: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {v1, p3, p4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-wide p3, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const v0, 0x301000b

    invoke-direct {p0, p3, p4, v0, p2}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSetParameter(JILjava/lang/Object;)I

    :cond_1
    return-object p1
.end method

.method public pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .line 305
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const/4 v2, 0x0

    const-string v3, "@@@VOOSMPStreamingDownloaderImpl"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 307
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "VOOSMPStreamingDownloader pause."

    .line 311
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativePause(J)I

    move-result v0

    .line 315
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public renewDRMLicense()V
    .locals 2

    .line 752
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeRenewDRMLicense(J)V

    return-void
.end method

.method public requestThumbnails(JJLcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_THUMBNAILS_PREFERENCE;J)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 726
    iget-wide p1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 p3, 0x0

    cmp-long p5, p1, p3

    if-nez p5, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOOSMPStreamingDownloaderImpl"

    const-string p3, "VOOSMP_ERR_Uninitialize"

    .line 728
    invoke-static {p2, p3, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 731
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public resume()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .line 321
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const/4 v2, 0x0

    const-string v3, "@@@VOOSMPStreamingDownloaderImpl"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 323
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "VOOSMPStreamingDownloader resume."

    .line 327
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeResume(J)I

    move-result v0

    .line 331
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public selectAudio(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 627
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 629
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 633
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSelectAudio(JI)I

    move-result p1

    .line 634
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public selectMultiTracks([II)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 615
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v0, "VOOSMP_ERR_Uninitialize"

    .line 616
    invoke-static {p2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 620
    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSelectMultiTracks(J[II)I

    move-result p1

    .line 621
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public selectSubtitle(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 640
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 642
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 646
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSelectSubtitle(JI)I

    move-result p1

    .line 647
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public selectVideo(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 653
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 655
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 659
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSelectVideo(JI)I

    move-result p1

    .line 660
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setDRMFilePath(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    .line 428
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 430
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 435
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSetDRMFilePath(JLjava/lang/String;)I

    move-result p1

    .line 436
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setDRMLibrary(Ljava/lang/String;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 8

    .line 395
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-string v2, "VOOSMP_ERR_Uninitialize"

    const/4 v3, 0x0

    const-string v4, "@@@VOOSMPStreamingDownloaderImpl"

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    .line 397
    invoke-static {v4, v2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 402
    :cond_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSetDRMLibrary(JLjava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object p1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mContext:Landroid/content/Context;

    if-nez p1, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    .line 407
    invoke-static {v4, v2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 412
    :cond_1
    new-instance p1, Lcom/visualon/OSMPUtils/voOSUniqID;

    iget-object p2, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/visualon/OSMPUtils/voOSUniqID;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voOSUniqID;->getDrmUUIDString()Ljava/lang/String;

    move-result-object p1

    .line 415
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSetDRMUniqueIdentifier(JLjava/lang/String;)I

    move-result p1

    .line 416
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v4, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    :goto_0
    iget-object p1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mUnifiedDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    invoke-direct {p0, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->setDRMHashMapAndCallback(Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;)I

    move-result p1

    .line 421
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setDRMUniqueIdentifier(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 389
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setDRMVerificationInfo(Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 6

    .line 368
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 370
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 374
    :cond_0
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->getVerificationString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 376
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_POINTER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 379
    :cond_1
    new-instance v0, Lcom/visualon/OSMPUtils/voOSVerificationInfo;

    .line 380
    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->getVerificationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->getDataFlag()I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, p1, v3}, Lcom/visualon/OSMPUtils/voOSVerificationInfo;-><init>(ILjava/lang/String;I[B)V

    .line 382
    iget-wide v1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-direct {p0, v1, v2, v0}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSetDRMVerificationInfo(JLcom/visualon/OSMPUtils/voOSVerificationInfo;)I

    move-result p1

    .line 383
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultAudioLanguage(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .line 667
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 669
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 672
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setDefaultSubtitleLanguage(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .line 678
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 680
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 683
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setHttpHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "@@@VOOSMPStreamingDownloaderImpl"

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", header value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    :cond_1
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSetHttpHeader(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 767
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1

    .line 758
    :cond_2
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "headerName or headerValue is null"

    .line 759
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 761
    :cond_3
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setMaxDownloadSpeed(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 813
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v2, 0x2000000f

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSetParameter(JILjava/lang/Object;)I

    move-result p1

    .line 814
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredAudioLanguage([Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .line 689
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 691
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 694
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setPreferredSubtitleLanguage([Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .line 701
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 703
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 706
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setThreadNumber(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 3

    .line 819
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v2, 0x20000010

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeSetParameter(JILjava/lang/Object;)I

    move-result p1

    .line 820
    invoke-static {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public setThumbnailURI(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 4

    .line 737
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPStreamingDownloaderImpl"

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 739
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 742
    :cond_0
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_IMPLEMENT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public start()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .line 273
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const/4 v2, 0x0

    const-string v3, "@@@VOOSMPStreamingDownloaderImpl"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 275
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "VOOSMPStreamingDownloader start."

    .line 279
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeStart(J)I

    move-result v0

    .line 283
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method

.method public stop()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 7

    .line 289
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    const/4 v2, 0x0

    const-string v3, "@@@VOOSMPStreamingDownloaderImpl"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "VOOSMP_ERR_Uninitialize"

    .line 291
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNINITIALIZE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "VOOSMPStreamingDownloader stop."

    .line 295
    invoke-static {v3, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-wide v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->nativeStop(J)I

    move-result v0

    .line 299
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    return-object v0
.end method
