.class final Lcom/google/ads/interactivemedia/v3/internal/gq;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/fv;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/gr;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/gr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/gq;->a:Lcom/google/ads/interactivemedia/v3/internal/gr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gq;->a:Lcom/google/ads/interactivemedia/v3/internal/gr;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/gr;->b(Lcom/google/ads/interactivemedia/v3/internal/gr;)Lcom/google/ads/interactivemedia/v3/internal/ec;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gq;->a:Lcom/google/ads/interactivemedia/v3/internal/gr;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/gr;->b(Lcom/google/ads/interactivemedia/v3/internal/gr;)Lcom/google/ads/interactivemedia/v3/internal/ec;

    move-result-object v0

    .line 1
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ec;->a()V

    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/gq;->a:Lcom/google/ads/interactivemedia/v3/internal/gr;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/gr;->a(Lcom/google/ads/interactivemedia/v3/internal/gr;)Lcom/google/ads/interactivemedia/v3/internal/fr;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/fr;->a(IJJ)V

    return-void
.end method
