.class final Lcom/google/ads/interactivemedia/v3/internal/gf;
.super Ljava/lang/Thread;
.source "IMASDK"


# instance fields
.field final synthetic a:Landroid/media/AudioTrack;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/internal/gm;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/gm;Landroid/media/AudioTrack;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gf;->b:Lcom/google/ads/interactivemedia/v3/internal/gm;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gf;->a:Landroid/media/AudioTrack;

    const-string p1, "ExoPlayer:AudioTrackReleaseThread"

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gf;->a:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gf;->a:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gf;->b:Lcom/google/ads/interactivemedia/v3/internal/gm;

    .line 4
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(Lcom/google/ads/interactivemedia/v3/internal/gm;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/gf;->b:Lcom/google/ads/interactivemedia/v3/internal/gm;

    .line 4
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/gm;->a(Lcom/google/ads/interactivemedia/v3/internal/gm;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 5
    throw v0
.end method
