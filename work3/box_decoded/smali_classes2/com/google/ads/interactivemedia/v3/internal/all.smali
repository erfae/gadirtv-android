.class final Lcom/google/ads/interactivemedia/v3/internal/all;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/alk;

.field private final b:Landroid/os/Handler;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/alk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/all;->a:Lcom/google/ads/interactivemedia/v3/internal/alk;

    new-instance p1, Landroid/os/Handler;

    .line 1
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/all;->b:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/all;->c:Z

    return-void
.end method

.method static final synthetic a(Lcom/google/ads/interactivemedia/v3/internal/alk;Landroid/os/Handler;)V
    .locals 0

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/alk;->a()V

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/all;->b(Lcom/google/ads/interactivemedia/v3/internal/alk;Landroid/os/Handler;)V

    return-void
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/alk;Landroid/os/Handler;)V
    .locals 3

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/alj;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/alj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/alk;Landroid/os/Handler;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/all;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/all;->c:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/all;->a:Lcom/google/ads/interactivemedia/v3/internal/alk;

    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/alk;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/all;->a:Lcom/google/ads/interactivemedia/v3/internal/alk;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/all;->b:Landroid/os/Handler;

    .line 4
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/all;->b(Lcom/google/ads/interactivemedia/v3/internal/alk;Landroid/os/Handler;)V

    return-void
.end method

.method final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/all;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/all;->c:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/all;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
