.class Lcom/nettv/livestore/activities/SeriesPlayerActivity$4;
.super Ljava/lang/Object;
.source "SeriesPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/activities/SeriesPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$4;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$4;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_4b

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$4;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v2, v2, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v2

    .line 4
    iget-object v4, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$4;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v4, v4, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->txt_start_time:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/nettv/livestore/utils/Utils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v4, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$4;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v4, v4, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->txt_end_time:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/nettv/livestore/utils/Utils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {v2, v3, v0, v1}, Lcom/nettv/livestore/utils/Utils;->getProgressPercentage(JJ)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$4;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v1, v1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v1, 0x62

    if-le v0, v1, :cond_4b

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$4;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v1, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->handler:Landroid/os/Handler;

    # getter for: Lcom/nettv/livestore/activities/SeriesPlayerActivity;->mUpdateTimeTask:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->access$700(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    return-void

    .line 9
    :catch_43
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$4;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 10
    :cond_4b
    iget-object v0, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$4;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, v0, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
