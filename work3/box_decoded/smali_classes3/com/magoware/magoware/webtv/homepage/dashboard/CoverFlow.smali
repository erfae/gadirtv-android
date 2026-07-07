.class public Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;
.super Landroid/widget/Gallery;
.source "CoverFlow.java"


# instance fields
.field private imageHeight:F

.field private imageWidth:F

.field private final mCamera:Landroid/graphics/Camera;

.field private mCoveflowCenter:I

.field private mMaxZoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mCamera:Landroid/graphics/Camera;

    const/16 p1, -0x78

    .line 33
    iput p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mMaxZoom:I

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const v0, 0x1010070

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p3, Landroid/graphics/Camera;

    invoke-direct {p3}, Landroid/graphics/Camera;-><init>()V

    iput-object p3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mCamera:Landroid/graphics/Camera;

    const/16 p3, -0x78

    .line 33
    iput p3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mMaxZoom:I

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 97
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/magoware/magoware/webtv/R$styleable;->CoverFlow:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 201
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->imageWidth:F

    const/4 p2, 0x0

    .line 202
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->imageHeight:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    throw p2
.end method

.method private transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "child",
            "t",
            "rotationAngle",
            "isCenter"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 169
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 171
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 177
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mCamera:Landroid/graphics/Camera;

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v1, v2, v2, v3}, Landroid/graphics/Camera;->translate(FFF)V

    if-eqz p4, :cond_2

    .line 181
    sget-object p4, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p4}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p4

    if-nez p4, :cond_1

    sget-object p4, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MDU1:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p4}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object p4, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mCamera:Landroid/graphics/Camera;

    iget v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mMaxZoom:I

    int-to-float v1, v1

    invoke-virtual {p4, v2, v2, v1}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_1

    .line 182
    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mCamera:Landroid/graphics/Camera;

    iget v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mMaxZoom:I

    int-to-float v3, v1

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v3, v4

    int-to-float v1, v1

    invoke-virtual {p4, v3, v2, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 188
    :cond_2
    :goto_1
    iget-object p4, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mCamera:Landroid/graphics/Camera;

    int-to-float p3, p3

    invoke-virtual {p4, p3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 189
    iget-object p3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p3, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    neg-float p4, p1

    int-to-float v0, v0

    div-float/2addr v0, p3

    neg-float p3, v0

    .line 190
    invoke-virtual {p2, p4, p3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 191
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 192
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    return-void
.end method


# virtual methods
.method public getCenterOfCoverflow()I
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "child",
            "t"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 138
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    const/4 v1, 0x2

    .line 139
    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 142
    iget v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mCoveflowCenter:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 143
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0, p2, v3, v2}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;IZ)V

    goto :goto_0

    .line 145
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0, p2, v3, v3}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;IZ)V

    .line 148
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v2
.end method

.method public getImageHeight()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->imageHeight:F

    return v0
.end method

.method public getImageWidth()F
    .locals 1

    .line 70
    iget v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->imageWidth:F

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->getCenterOfCoverflow()I

    move-result v0

    iput v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mCoveflowCenter:I

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 21
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 102
    instance-of v0, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;

    if-eqz v0, :cond_0

    .line 106
    move-object v0, p1

    check-cast v0, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;

    .line 107
    iget v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->imageWidth:F

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;->setWidth(F)V

    .line 108
    iget v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->imageHeight:F

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;->setHeight(F)V

    .line 109
    invoke-super {p0, p1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The adapter should derive from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/magoware/magoware/webtv/homepage/dashboard/AbstractCoverFlowImageAdapter;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setImageHeight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imageHeight"
        }
    .end annotation

    .line 63
    iput p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->imageHeight:F

    return-void
.end method

.method public setImageWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imageWidth"
        }
    .end annotation

    .line 77
    iput p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->imageWidth:F

    return-void
.end method

.method public setMaxZoom(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "maxZoom"
        }
    .end annotation

    .line 116
    iput p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/CoverFlow;->mMaxZoom:I

    return-void
.end method
