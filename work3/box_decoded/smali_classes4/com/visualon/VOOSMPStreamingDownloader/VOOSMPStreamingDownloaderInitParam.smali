.class public Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;
.super Ljava/lang/Object;
.source "VOOSMPStreamingDownloaderInitParam.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

.field private mLibPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->mLibPath:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->mDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDrmLicenseManager()Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->mDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    return-object v0
.end method

.method public getLibraryPath()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->mLibPath:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->mContext:Landroid/content/Context;

    .line 75
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setDrmLicenseManager(Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->mDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    .line 102
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setLibraryPath(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;->mLibPath:Ljava/lang/String;

    .line 88
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method
