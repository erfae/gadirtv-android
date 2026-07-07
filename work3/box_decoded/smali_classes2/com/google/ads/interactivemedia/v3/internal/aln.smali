.class final Lcom/google/ads/interactivemedia/v3/internal/aln;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/acx;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/alo;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/alo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aln;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    return-void
.end method

.method public final a(IIIF)V
    .locals 0

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aln;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/alo;->a(Lcom/google/ads/interactivemedia/v3/internal/alo;)Lcom/google/ads/interactivemedia/v3/internal/yz;

    move-result-object p3

    if-nez p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    mul-float p1, p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1
    :goto_0
    invoke-virtual {p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/yz;->a(F)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
