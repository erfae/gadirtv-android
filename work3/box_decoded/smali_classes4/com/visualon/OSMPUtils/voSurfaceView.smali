.class public Lcom/visualon/OSMPUtils/voSurfaceView;
.super Landroid/view/SurfaceView;
.source "voSurfaceView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "voSurfaceView.java"


# instance fields
.field private final mAfter:Landroid/graphics/RectF;

.field private final mBefore:Landroid/graphics/RectF;

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private relevanceTextureView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->relevanceTextureView:Landroid/view/View;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    .line 32
    iput p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    .line 37
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mBefore:Landroid/graphics/RectF;

    .line 38
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mAfter:Landroid/graphics/RectF;

    .line 39
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->relevanceTextureView:Landroid/view/View;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    .line 32
    iput p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    .line 37
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mBefore:Landroid/graphics/RectF;

    .line 38
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mAfter:Landroid/graphics/RectF;

    .line 39
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->relevanceTextureView:Landroid/view/View;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    .line 32
    iput p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    .line 37
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mBefore:Landroid/graphics/RectF;

    .line 38
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mAfter:Landroid/graphics/RectF;

    .line 39
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private computeRect(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 3

    .line 146
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 147
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 150
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 152
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 154
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/RectF;->sort()V

    return-void
.end method

.method private invalidateAfterUpdate()V
    .locals 7

    .line 159
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mAfter:Landroid/graphics/RectF;

    .line 164
    invoke-direct {p0, v0, p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    .line 165
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mBefore:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 167
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    .line 168
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    .line 169
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    .line 170
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v0

    .line 171
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 167
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method private prepareForUpdate()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mBefore:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    return-void
.end method

.method private voSetTranslationX(F)V
    .locals 1

    .line 125
    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->prepareForUpdate()V

    .line 127
    iput p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTranslationX:F

    .line 128
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method

.method private voSetTranslationY(F)V
    .locals 1

    .line 133
    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->prepareForUpdate()V

    .line 135
    iput p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mTranslationY:F

    .line 136
    invoke-direct {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->invalidateAfterUpdate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addRelevanceTextureView(Landroid/view/View;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->relevanceTextureView:Landroid/view/View;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 66
    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/visualon/OSMPUtils/voSurfaceView;->getDefaultSize(II)I

    move-result p1

    .line 67
    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    invoke-static {v0, p2}, Lcom/visualon/OSMPUtils/voSurfaceView;->getDefaultSize(II)I

    move-result p2

    .line 68
    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 75
    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "voSurfaceView.java"

    const-string v0, "(%d, %d)"

    invoke-static {p2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_1
    iget p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    iget p2, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/visualon/OSMPUtils/voSurfaceView;->setMeasuredDimension(II)V

    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/visualon/OSMPUtils/voSurfaceView;->setMeasuredDimension(II)V

    :goto_1
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 83
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    .line 84
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    .line 85
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->relevanceTextureView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 89
    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    iget v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->mVideoHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voSurfaceView;->relevanceTextureView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public voSetX(F)V
    .locals 2

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPUtils/voSurfaceView;->setX(F)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voSurfaceView;->voSetTranslationX(F)V

    :goto_0
    return-void
.end method

.method public voSetY(F)V
    .locals 2

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPUtils/voSurfaceView;->setY(F)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voSurfaceView;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/visualon/OSMPUtils/voSurfaceView;->voSetTranslationY(F)V

    :goto_0
    return-void
.end method
