.class public final Lcom/google/ads/interactivemedia/v3/internal/yz;
.super Landroid/widget/FrameLayout;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/yy;

.field private b:F

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yz;->c:I

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/yy;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/yy;-><init>(Lcom/google/ads/interactivemedia/v3/internal/yz;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yz;->a:Lcom/google/ads/interactivemedia/v3/internal/yy;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yz;->b:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yz;->b:F

    .line 11
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/yz;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 7

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yz;->b:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/yz;->getMeasuredWidth()I

    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/yz;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, p1

    int-to-float v2, v0

    div-float v3, v1, v2

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/yz;->b:F

    div-float/2addr v4, v3

    const/high16 v5, -0x40800000    # -1.0f

    add-float/2addr v4, v5

    .line 6
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yz;->a:Lcom/google/ads/interactivemedia/v3/internal/yy;

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yz;->b:F

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/yy;->a(FFZ)V

    return-void

    :cond_1
    cmpl-float p2, v4, p2

    if-lez p2, :cond_2

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yz;->b:F

    div-float/2addr v1, p2

    float-to-int v0, v1

    goto :goto_0

    .line 9
    :cond_2
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yz;->b:F

    mul-float v2, v2, p1

    float-to-int p1, v2

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yz;->a:Lcom/google/ads/interactivemedia/v3/internal/yy;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yz;->b:F

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p2, v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/yy;->a(FFZ)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 9
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 9
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
