.class Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$2;
.super Ljava/lang/Object;
.source "VOOSMPVideoViewPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->stop()V
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

    .line 124
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$702(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 129
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$800(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)V

    .line 130
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method
