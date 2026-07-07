.class Lcom/verimatrix/vdc/StreamPlayback$SettleTimerRunnable;
.super Ljava/lang/Object;
.source "StreamPlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/StreamPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleTimerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/StreamPlayback;


# direct methods
.method private constructor <init>(Lcom/verimatrix/vdc/StreamPlayback;)V
    .locals 0

    .line 1054
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamPlayback$SettleTimerRunnable;->this$0:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/verimatrix/vdc/StreamPlayback;Lcom/verimatrix/vdc/StreamPlayback$1;)V
    .locals 0

    .line 1054
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/StreamPlayback$SettleTimerRunnable;-><init>(Lcom/verimatrix/vdc/StreamPlayback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1057
    invoke-static {}, Lcom/verimatrix/vdc/StreamPlayback;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackSettleTimer: settle time finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback$SettleTimerRunnable;->this$0:Lcom/verimatrix/vdc/StreamPlayback;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    return-void
.end method
