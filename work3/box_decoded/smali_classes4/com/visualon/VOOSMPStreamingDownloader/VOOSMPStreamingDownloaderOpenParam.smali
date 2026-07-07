.class public Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;
.super Ljava/lang/Object;
.source "VOOSMPStreamingDownloaderOpenParam.java"


# instance fields
.field private mDownloadDir:Ljava/lang/String;

.field private mDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

.field private mSubtitleURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;->mDownloadDir:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;->mSubtitleURL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownloadDir()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;->mDownloadDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmLicenseManager()Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;->mDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    return-object v0
.end method

.method public getSubtitleURL()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;->mSubtitleURL:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadDir(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;->mDownloadDir:Ljava/lang/String;

    .line 70
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setDrmLicenseManager(Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;->mDrmLicMgr:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    .line 53
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setExternalSubtitleURL(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;->mSubtitleURL:Ljava/lang/String;

    .line 82
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method
