.class Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$2;
.super Ljava/lang/Object;
.source "MovieMobilePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$2;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$2;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v1, v1, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$2;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v3, v3, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v3

    .line 4
    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$2;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v5, v5, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->txt_start_time:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/nettv/livestore/utils/Utils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v5, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$2;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v5, v5, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->txt_end_time:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/nettv/livestore/utils/Utils;->milliSecondsToTimer(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {v3, v4, v1, v2}, Lcom/nettv/livestore/utils/Utils;->getProgressPercentage(JJ)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$2;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v1, v1, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v1, 0x62

    if-le v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$2;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v1, v0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->handler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$100(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 9
    :catch_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$2;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->seekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$2;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v0, v0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
