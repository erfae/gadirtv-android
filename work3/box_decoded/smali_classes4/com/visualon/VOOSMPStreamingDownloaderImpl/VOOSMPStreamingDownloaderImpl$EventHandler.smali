.class Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;
.super Landroid/os/Handler;
.source "VOOSMPStreamingDownloaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;


# direct methods
.method public constructor <init>(Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;Landroid/os/Looper;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;->this$0:Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;

    .line 69
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;->this$0:Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;

    invoke-static {v0}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->access$000(Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;)Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl$EventHandler;->this$0:Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;

    invoke-static {v0}, Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;->access$000(Lcom/visualon/VOOSMPStreamingDownloaderImpl/VOOSMPStreamingDownloaderImpl;)Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    .line 77
    invoke-static {v1}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;->valueOf(I)Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener;->onVOStreamingDownloaderEvent(Lcom/visualon/VOOSMPStreamingDownloader/VOOSMPStreamingDownloaderListener$VO_OSMP_CB_STREAMING_DOWNLOADER_EVENT_ID;IILjava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    :cond_0
    return-void
.end method
