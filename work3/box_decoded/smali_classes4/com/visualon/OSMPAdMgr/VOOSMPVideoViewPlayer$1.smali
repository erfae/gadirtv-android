.class Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;
.super Ljava/lang/Object;
.source "VOOSMPVideoViewPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->start()V
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

    .line 94
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$100(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPVideoViewPlayer"

    const-string v4, "Starting voVideoView but surface has never been created"

    .line 99
    invoke-static {v3, v4, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$300(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/view/SurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "Remove mSurfaceView and add it back again"

    .line 101
    invoke-static {v3, v4, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v3}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$300(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 103
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 104
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 105
    iget-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v3}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/widget/RelativeLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v4}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$300(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/view/SurfaceView;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$502(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;Z)Z

    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$502(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;Z)Z

    .line 113
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 114
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$600(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)V

    .line 115
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;

    iget-object v1, v0, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-static {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;->access$702(Lcom/visualon/OSMPAdMgr/VOOSMPVideoViewPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    :cond_2
    return-void
.end method
