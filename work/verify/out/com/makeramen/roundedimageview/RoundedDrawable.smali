.class public Lcom/makeramen/roundedimageview/RoundedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"


# static fields
.field public static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field public static final TAG:Ljava/lang/String; = "RoundedDrawable"


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private final mBitmapWidth:I

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:F

.field private final mBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private final mCornersRounded:[Z

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mOval:Z

.field private mRebuildShader:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private final mSquareCornersRect:Landroid/graphics/RectF;

.field private mTileModeX:Landroid/graphics/Shader$TileMode;

.field private mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 6
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 7
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    .line 8
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 9
    iput-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mRebuildShader:Z

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    const/4 v3, 0x4

    new-array v3, v3, [Z

    .line 12
    fill-array-data v3, :array_96

    iput-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v3, 0x0

    .line 13
    iput-boolean v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mOval:Z

    .line 14
    iput v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    const/high16 v3, -0x1000000

    .line 15
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 16
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 17
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    int-to-float p1, p1

    .line 20
    invoke-virtual {v0, v2, v2, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 25
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :array_96
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private static all([Z)Z
    .registers 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_d

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_a

    return v1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method private static any([Z)Z
    .registers 5

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_e

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    .line 2
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 3
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5
    :try_start_1c
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_36} :catch_37

    goto :goto_43

    :catch_37
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "RoundedDrawable"

    const-string v0, "Failed to create bitmap from drawable!"

    .line 10
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_43
    return-object v0
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Lcom/makeramen/roundedimageview/RoundedDrawable;

    invoke-direct {v0, p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 5

    if-eqz p0, :cond_32

    .line 1
    instance-of v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;

    if-eqz v0, :cond_7

    return-object p0

    .line 2
    :cond_7
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_27

    .line 3
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_26

    .line 5
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    invoke-static {v2}, Lcom/makeramen/roundedimageview/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_26
    return-object p0

    .line 7
    :cond_27
    invoke-static {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 8
    new-instance p0, Lcom/makeramen/roundedimageview/RoundedDrawable;

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_32
    return-object p0
.end method

.method private static only(I[Z)Z
    .registers 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x1

    if-ge v2, v0, :cond_12

    .line 2
    aget-boolean v4, p1, v2

    if-ne v2, p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    if-eq v4, v3, :cond_f

    return v1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v3
.end method

.method private redrawBitmapForSquareCorners(Landroid/graphics/Canvas;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    invoke-static {v0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->all([Z)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    return-void

    .line 3
    :cond_11
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 4
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 5
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, v1

    .line 6
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v3, v2

    .line 7
    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    .line 8
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-nez v5, :cond_3c

    .line 9
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    add-float v6, v1, v4

    add-float v7, v2, v4

    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 10
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 11
    :cond_3c
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    if-nez v5, :cond_51

    .line 12
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    sub-float v6, v0, v4

    invoke-virtual {v5, v6, v2, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 14
    :cond_51
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v5, 0x2

    aget-boolean v2, v2, v5

    if-nez v2, :cond_68

    .line 15
    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    sub-float v5, v0, v4

    sub-float v6, v3, v4

    invoke-virtual {v2, v5, v6, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 16
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 17
    :cond_68
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-nez v0, :cond_7e

    .line 18
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    sub-float v2, v3, v4

    add-float/2addr v4, v1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mSquareCornersRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_7e
    return-void
.end method

.method private redrawBorderForSquareCorners(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    invoke-static {v1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->all([Z)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 2
    :cond_b
    iget v1, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_13

    return-void

    .line 3
    :cond_13
    iget-object v1, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget v8, v1, Landroid/graphics/RectF;->left:F

    .line 4
    iget v9, v1, Landroid/graphics/RectF;->top:F

    .line 5
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v1, v8

    .line 6
    iget-object v2, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float v16, v2, v9

    .line 7
    iget v15, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    .line 8
    iget v2, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v17, v2, v3

    .line 9
    iget-object v2, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-nez v2, :cond_4d

    sub-float v3, v8, v17

    add-float v5, v8, v15

    .line 10
    iget-object v7, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v4, v9

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v9, v17

    add-float v6, v9, v15

    .line 11
    iget-object v7, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move v3, v8

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 12
    :cond_4d
    iget-object v2, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-nez v2, :cond_6c

    sub-float v2, v1, v15

    sub-float v3, v2, v17

    .line 13
    iget-object v7, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v4, v9

    move v5, v1

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v9, v17

    add-float v6, v9, v15

    .line 14
    iget-object v7, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 15
    :cond_6c
    iget-object v2, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-nez v2, :cond_94

    sub-float v2, v1, v15

    sub-float v11, v2, v17

    add-float v13, v1, v17

    .line 16
    iget-object v2, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move/from16 v12, v16

    move/from16 v14, v16

    move v9, v15

    move-object v15, v2

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v16, v9

    .line 17
    iget-object v7, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v1

    move v5, v1

    move/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_95

    :cond_94
    move v9, v15

    .line 18
    :goto_95
    iget-object v1, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v2, 0x3

    aget-boolean v1, v1, v2

    if-nez v1, :cond_b8

    sub-float v11, v8, v17

    add-float v13, v8, v9

    .line 19
    iget-object v15, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move/from16 v12, v16

    move/from16 v14, v16

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v4, v16, v9

    .line 20
    iget-object v7, v0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v3, v8

    move v5, v8

    move/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_b8
    return-void
.end method

.method private updateShaderMatrix()V
    .registers 8

    .line 1
    sget-object v0, Lcom/makeramen/roundedimageview/RoundedDrawable$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1d9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_73

    const/4 v1, 0x7

    if-eq v0, v1, :cond_50

    .line 2
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 3
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 4
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float v2, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 6
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_212

    .line 7
    :cond_50
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 8
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float v2, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 9
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 10
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_212

    .line 11
    :cond_73
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 12
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 13
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 14
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float v2, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 15
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_212

    .line 16
    :cond_a3
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 17
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 18
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 19
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float v2, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 20
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_212

    .line 21
    :cond_d3
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 22
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_f5

    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_f5

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_10d

    .line 23
    :cond_f5
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    .line 24
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 26
    :goto_10d
    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 27
    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v2

    float-to-int v2, v4

    int-to-float v2, v2

    .line 28
    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 29
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 30
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 31
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 32
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float v2, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 33
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_212

    .line 34
    :cond_15e
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 35
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float v4, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 36
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 37
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, v0

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float v0, v0, v4

    const/4 v4, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1a9

    .line 38
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 39
    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v4, v1, v2

    const/4 v1, 0x0

    goto :goto_1c1

    .line 40
    :cond_1a9
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 41
    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    sub-float/2addr v1, v5

    mul-float v1, v1, v2

    .line 42
    :goto_1c1
    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 43
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float/2addr v4, v2

    float-to-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float v6, v5, v3

    add-float/2addr v6, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v5, v3

    add-float/2addr v5, v1

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_212

    .line 44
    :cond_1d9
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 45
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    div-float v4, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 46
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 47
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    int-to-float v3, v3

    invoke-static {v1, v3, v2, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    .line 48
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    int-to-float v4, v4

    invoke-static {v3, v4, v2, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 50
    :goto_212
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mRebuildShader:Z

    if-eqz v0, :cond_26

    .line 2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 3
    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-ne v1, v2, :cond_1e

    .line 4
    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 5
    :cond_1e
    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mRebuildShader:Z

    .line 7
    :cond_26
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mOval:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 8
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_40

    .line 9
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 10
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_8c

    .line 11
    :cond_40
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_8c

    .line 12
    :cond_48
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    invoke-static {v0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->any([Z)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 13
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    .line 14
    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_6d

    .line 15
    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 16
    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->redrawBitmapForSquareCorners(Landroid/graphics/Canvas;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->redrawBorderForSquareCorners(Landroid/graphics/Canvas;)V

    goto :goto_8c

    .line 19
    :cond_6d
    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->redrawBitmapForSquareCorners(Landroid/graphics/Canvas;)V

    goto :goto_8c

    .line 21
    :cond_78
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 22
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8c

    .line 23
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_8c
    :goto_8c
    return-void
.end method

.method public getAlpha()I
    .registers 2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getBorderColor()I
    .registers 2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .registers 2

    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    return v0
.end method

.method public getCornerRadius(I)F
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSourceBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .registers 2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .registers 2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public isOval()Z
    .registers 2

    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mOval:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->updateShaderMatrix()V

    return-void
.end method

.method public final onStateChange([I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_16

    .line 3
    iget-object p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_16
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBorderColor(I)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->setBorderColor(Landroid/content/res/ColorStateList;)Lcom/makeramen/roundedimageview/RoundedDrawable;

    move-result-object p1

    return-object p1
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .registers 5

    if-eqz p1, :cond_3

    goto :goto_8

    :cond_3
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_8
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public setBorderWidth(F)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .registers 3

    .line 1
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderWidth:F

    .line 2
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadius(F)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .registers 2

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->setCornerRadius(FFFF)Lcom/makeramen/roundedimageview/RoundedDrawable;

    return-object p0
.end method

.method public setCornerRadius(FFFF)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .registers 9

    .line 10
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 11
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_9a

    .line 17
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 18
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_58

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_58

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_58

    .line 20
    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    goto :goto_71

    .line 21
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid radius value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_6f
    iput v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    .line 23
    :goto_71
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v2, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_7a

    const/4 p1, 0x1

    goto :goto_7b

    :cond_7a
    const/4 p1, 0x0

    :goto_7b
    aput-boolean p1, v0, v2

    cmpl-float p1, p2, v1

    if-lez p1, :cond_83

    const/4 p1, 0x1

    goto :goto_84

    :cond_83
    const/4 p1, 0x0

    .line 24
    :goto_84
    aput-boolean p1, v0, v3

    const/4 p1, 0x2

    cmpl-float p2, p3, v1

    if-lez p2, :cond_8d

    const/4 p2, 0x1

    goto :goto_8e

    :cond_8d
    const/4 p2, 0x0

    .line 25
    :goto_8e
    aput-boolean p2, v0, p1

    const/4 p1, 0x3

    cmpl-float p2, p4, v1

    if-lez p2, :cond_96

    goto :goto_97

    :cond_96
    const/4 v3, 0x0

    .line 26
    :goto_97
    aput-boolean v3, v0, p1

    return-object p0

    .line 27
    :cond_9a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multiple nonzero corner radii not yet supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCornerRadius(IF)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .registers 7

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_18

    .line 2
    iget v2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    cmpl-float v3, v2, v0

    if-eqz v3, :cond_18

    cmpl-float v2, v2, p2

    if-nez v2, :cond_10

    goto :goto_18

    .line 3
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multiple nonzero corner radii not yet supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    :goto_18
    if-nez v1, :cond_2a

    .line 4
    iget-object p2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    invoke-static {p1, p2}, Lcom/makeramen/roundedimageview/RoundedDrawable;->only(I[Z)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 5
    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    .line 6
    :cond_24
    iget-object p2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v0, 0x0

    aput-boolean v0, p2, p1

    goto :goto_37

    .line 7
    :cond_2a
    iget v1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_32

    .line 8
    iput p2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornerRadius:F

    .line 9
    :cond_32
    iget-object p2, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mCornersRounded:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    :goto_37
    return-object p0
.end method

.method public setDither(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setOval(Z)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .registers 2

    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mOval:Z

    return-object p0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .registers 3

    if-nez p1, :cond_4

    .line 1
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 2
    :cond_4
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_d

    .line 3
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 4
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->updateShaderMatrix()V

    :cond_d
    return-object p0
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_c

    .line 2
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeX:Landroid/graphics/Shader$TileMode;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mRebuildShader:Z

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_c
    return-object p0
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)Lcom/makeramen/roundedimageview/RoundedDrawable;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_c

    .line 2
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mTileModeY:Landroid/graphics/Shader$TileMode;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedDrawable;->mRebuildShader:Z

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_c
    return-object p0
.end method

.method public toBitmap()Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
