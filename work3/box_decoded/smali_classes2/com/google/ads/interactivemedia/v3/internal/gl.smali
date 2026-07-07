.class final Lcom/google/ads/interactivemedia/v3/internal/gl;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "IMASDK"


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/gm;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/gm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gl;->a:Lcom/google/ads/interactivemedia/v3/internal/gm;

    .line 1
    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    new-instance p1, Landroid/os/Handler;

    .line 2
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gl;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gl;->b:Landroid/os/Handler;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/gk;->a(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    return-void
.end method

.method public final b(Landroid/media/AudioTrack;)V
    .locals 1

    .line 7
    invoke-virtual {p1, p0}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gl;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/gl;->a:Lcom/google/ads/interactivemedia/v3/internal/gm;

    .line 3
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/gm;->b(Lcom/google/ads/interactivemedia/v3/internal/gm;)Landroid/media/AudioTrack;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gl;->a:Lcom/google/ads/interactivemedia/v3/internal/gm;

    .line 4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/gm;->c(Lcom/google/ads/interactivemedia/v3/internal/gm;)Lcom/google/ads/interactivemedia/v3/internal/fv;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gl;->a:Lcom/google/ads/interactivemedia/v3/internal/gm;

    .line 5
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/gm;->c(Lcom/google/ads/interactivemedia/v3/internal/gm;)Lcom/google/ads/interactivemedia/v3/internal/fv;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/fv;->a()V

    :cond_1
    return-void
.end method
