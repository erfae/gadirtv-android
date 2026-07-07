.class Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$4;
.super Ljava/lang/Object;
.source "VOOSMPVideoViewPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->toggleAudio()V
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

    .line 167
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$4;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$4;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$4;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$1002(I)I

    .line 174
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$4;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 177
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$1000()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$4;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$1000()I

    move-result v0

    .line 179
    :goto_0
    invoke-static {v3}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$1002(I)I

    .line 180
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$4;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v3}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_2
    :goto_1
    return-void
.end method
