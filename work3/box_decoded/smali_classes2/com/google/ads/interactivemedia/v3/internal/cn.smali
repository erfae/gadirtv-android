.class final Lcom/google/ads/interactivemedia/v3/internal/cn;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ec;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/cv;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/cv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cn;->a:Lcom/google/ads/interactivemedia/v3/internal/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cn;->a:Lcom/google/ads/interactivemedia/v3/internal/cv;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(Lcom/google/ads/interactivemedia/v3/internal/cv;)Lcom/google/ads/interactivemedia/v3/internal/abg;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abg;->b(I)V

    return-void
.end method

.method public final a(J)V
    .locals 3

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cn;->a:Lcom/google/ads/interactivemedia/v3/internal/cv;

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/cv;->b(Lcom/google/ads/interactivemedia/v3/internal/cv;)V

    :cond_0
    return-void
.end method
