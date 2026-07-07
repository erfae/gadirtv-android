.class public final Lcom/google/ads/interactivemedia/v3/internal/d;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Application Context cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/d;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/d;->a:Z

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/w;->a()Lcom/google/ads/interactivemedia/v3/internal/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/w;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/r;->a()Lcom/google/ads/interactivemedia/v3/internal/r;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/r;->a(Landroid/content/Context;)V

    .line 4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ah;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/t;->a()Lcom/google/ads/interactivemedia/v3/internal/t;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/t;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/d;->a:Z

    return v0
.end method
