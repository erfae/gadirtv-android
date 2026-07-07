.class final Lcom/google/ads/interactivemedia/v3/internal/em;
.super Landroid/content/BroadcastReceiver;
.source "IMASDK"


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/en;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/en;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/em;->a:Lcom/google/ads/interactivemedia/v3/internal/en;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/em;->a:Lcom/google/ads/interactivemedia/v3/internal/en;

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/en;->a(Lcom/google/ads/interactivemedia/v3/internal/en;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/el;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/em;->a:Lcom/google/ads/interactivemedia/v3/internal/en;

    invoke-direct {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/el;-><init>(Lcom/google/ads/interactivemedia/v3/internal/en;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
