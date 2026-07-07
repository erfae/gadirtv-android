.class Lcom/magoware/magoware/webtv/vr/VRTest$1;
.super Ljava/util/TimerTask;
.source "VRTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vr/VRTest;->setupVrVideoViewUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vr/VRTest;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vr/VRTest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vr/VRTest$1;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$VRTest$1()V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest$1;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 84
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest$1;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/vr/VRTest;->vrVideoView:Lcom/magoware/magoware/webtv/vr/MyVrVideoView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vr/MyVrVideoView;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8

    .line 85
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest$1;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/vr/VRTest;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 86
    div-int/lit16 v0, v1, 0xe10

    .line 87
    rem-int/lit16 v2, v1, 0xe10

    div-int/lit8 v2, v2, 0x3c

    sub-int/2addr v1, v2

    .line 88
    rem-int/lit8 v1, v1, 0x3c

    .line 89
    iget-object v3, p0, Lcom/magoware/magoware/webtv/vr/VRTest$1;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/vr/VRTest;->statusText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vr/VRTest$1;->this$0:Lcom/magoware/magoware/webtv/vr/VRTest;

    new-instance v1, Lcom/magoware/magoware/webtv/vr/-$$Lambda$VRTest$1$7xb32mFv1lZ0qX2w1oZIY1m5XtU;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vr/-$$Lambda$VRTest$1$7xb32mFv1lZ0qX2w1oZIY1m5XtU;-><init>(Lcom/magoware/magoware/webtv/vr/VRTest$1;)V

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/vr/VRTest;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
