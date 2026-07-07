.class final Lcom/google/ads/interactivemedia/v3/internal/az;
.super Landroid/content/BroadcastReceiver;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/bb;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/ba;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/bb;Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/az;->a:Lcom/google/ads/interactivemedia/v3/internal/bb;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/az;->c:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/az;->b:Lcom/google/ads/interactivemedia/v3/internal/ba;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/az;->c:Landroid/os/Handler;

    .line 3
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/az;->a:Lcom/google/ads/interactivemedia/v3/internal/bb;

    .line 4
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/bb;->a(Lcom/google/ads/interactivemedia/v3/internal/bb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/az;->b:Lcom/google/ads/interactivemedia/v3/internal/ba;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/ei;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x3

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;ZII)V

    :cond_0
    return-void
.end method
