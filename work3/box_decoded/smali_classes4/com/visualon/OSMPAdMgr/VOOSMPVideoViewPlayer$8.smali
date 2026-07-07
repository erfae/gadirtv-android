.class Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$8;
.super Ljava/util/TimerTask;
.source "VOOSMPVideoViewPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->initPosTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$8;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 360
    monitor-enter p0

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$8;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$1100(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmpl-double v5, v0, v2

    if-lez v5, :cond_0

    const-string v0, "@@@VOOSMPVideoViewPlayer"

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnCompletePos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$8;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$1100(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$8;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$8;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$1100(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onTimeUpdate(D)V

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$8;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    const-string v1, "@@@VOOSMPVideoViewPlayer"

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMediaPlayer position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$8;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    move-result-object v1

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onTimeUpdate(D)V

    .line 370
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
