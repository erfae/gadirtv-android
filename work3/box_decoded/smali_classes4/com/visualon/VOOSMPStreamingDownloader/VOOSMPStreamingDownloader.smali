.class public interface abstract Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloader;
.super Ljava/lang/Object;
.source "VOOSMPStreamingDownloader.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOCommonPlayerAssetSelection;


# virtual methods
.method public abstract addConfiguration(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract close()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract deleteContent(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract destroy()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract getCurrentState()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DOWNLOADER_STATE;
.end method

.method public abstract getDRMKeyExpiredStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DRM_KEY_EXPIRED_STATUS;
.end method

.method public abstract getDRMLicenseInfo()Ljava/lang/String;
.end method

.method public abstract getDRMUniqueIdentifier()Ljava/lang/String;
.end method

.method public abstract getDuration()Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VOOSMPStreamingDownloaderProgressInfo;
.end method

.method public abstract init(Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderInitParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract open(Ljava/lang/String;ILjava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract open(Ljava/lang/String;ILjava/lang/String;Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract renewDRMLicense()V
.end method

.method public abstract resume()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setDRMFilePath(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setDRMLibrary(Ljava/lang/String;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setDRMUniqueIdentifier(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setDRMVerificationInfo(Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setHttpHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setMaxDownloadSpeed(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract setThreadNumber(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract start()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method

.method public abstract stop()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end method
