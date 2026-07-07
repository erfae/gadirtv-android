.class synthetic Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$1;
.super Ljava/lang/Object;
.source "VOOSMPStreamingDownloaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$visualon$VOOSMPStreamingDownloader$VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 833
    invoke-static {}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->values()[Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$1;->$SwitchMap$com$visualon$VOOSMPStreamingDownloader$VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID:[I

    :try_start_0
    sget-object v1, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->VO_OSMP_CB_STREAMING_DOWNLOADER_OPEN_COMPLETE:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$1;->$SwitchMap$com$visualon$VOOSMPStreamingDownloader$VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID:[I

    sget-object v1, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->VO_OSMP_CB_STREAMING_DOWNLOADER_MANIFEST_OK:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$1;->$SwitchMap$com$visualon$VOOSMPStreamingDownloader$VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID:[I

    sget-object v1, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->VO_OSMP_CB_STREAMING_DOWNLOADER_EXTERNAL_SUBTITLE_OK:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$1;->$SwitchMap$com$visualon$VOOSMPStreamingDownloader$VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID:[I

    sget-object v1, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->VO_OSMP_CB_STREAMING_DOWNLOADER_MANIFEST_UPDATE:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$1;->$SwitchMap$com$visualon$VOOSMPStreamingDownloader$VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID:[I

    sget-object v1, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->VO_OSMP_CB_STREAMING_DOWNLOADER_SYNC_AUTHENTICATION_DRM_SERVER_INFO:Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;

    invoke-virtual {v1}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
