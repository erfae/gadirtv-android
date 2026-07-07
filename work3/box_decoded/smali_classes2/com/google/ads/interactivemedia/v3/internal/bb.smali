.class final Lcom/google/ads/interactivemedia/v3/internal/bb;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/az;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/ba;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bb;->a:Landroid/content/Context;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/az;

    .line 2
    invoke-direct {p1, p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/az;-><init>(Lcom/google/ads/interactivemedia/v3/internal/bb;Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/ba;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bb;->b:Lcom/google/ads/interactivemedia/v3/internal/az;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/bb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Z

    return p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bb;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bb;->b:Lcom/google/ads/interactivemedia/v3/internal/az;

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bb;->c:Z

    :cond_0
    return-void
.end method
