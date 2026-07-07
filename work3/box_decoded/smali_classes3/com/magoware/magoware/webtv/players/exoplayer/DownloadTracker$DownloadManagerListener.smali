.class Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$DownloadManagerListener;
.super Ljava/lang/Object;
.source "DownloadTracker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$DownloadManagerListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$1;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$DownloadManagerListener;-><init>(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)V

    return-void
.end method


# virtual methods
.method public onDownloadChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downloadManager",
            "download",
            "finalException"
        }
    .end annotation

    .line 150
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$DownloadManagerListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->access$100(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p3, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p3, p3, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$DownloadManagerListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->access$200(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$Listener;

    .line 152
    invoke-interface {p2}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$Listener;->onDownloadsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDownloadRemoved(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/offline/Download;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadManager",
            "download"
        }
    .end annotation

    .line 159
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$DownloadManagerListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->access$100(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/exoplayer2/offline/Download;->request:Lcom/google/android/exoplayer2/offline/DownloadRequest;

    iget-object p2, p2, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$DownloadManagerListener;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;->access$200(Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$Listener;

    .line 161
    invoke-interface {p2}, Lcom/magoware/magoware/webtv/players/exoplayer/DownloadTracker$Listener;->onDownloadsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic onDownloadsPausedChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onDownloadsPausedChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V

    return-void
.end method

.method public synthetic onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onIdle(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    return-void
.end method

.method public synthetic onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onInitialized(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;)V

    return-void
.end method

.method public synthetic onRequirementsStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onRequirementsStateChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V

    return-void
.end method

.method public synthetic onWaitingForRequirementsChanged(Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadManager$Listener$-CC;->$default$onWaitingForRequirementsChanged(Lcom/google/android/exoplayer2/offline/DownloadManager$Listener;Lcom/google/android/exoplayer2/offline/DownloadManager;Z)V

    return-void
.end method
