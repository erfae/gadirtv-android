.class Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$7;
.super Ljava/lang/Object;
.source "VOOSMPVideoViewPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

.field final synthetic val$duration:D


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;D)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$7;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    iput-wide p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$7;->val$duration:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$7;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    iget-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$7;->val$duration:D

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$1102(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;D)D

    .line 247
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$7;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    move-result-object v0

    iget-wide v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$7;->val$duration:D

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onTimeUpdate(D)V

    .line 248
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$7;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$AppAdViewInterface;->onEnded()V

    .line 249
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
