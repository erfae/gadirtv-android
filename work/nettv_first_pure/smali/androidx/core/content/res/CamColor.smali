.class Landroidx/core/content/res/CamColor;
.super Ljava/lang/Object;
.source "CamColor.java"


# static fields
.field private static final CHROMA_SEARCH_ENDPOINT:F = 0.4f

.field private static final DE_MAX:F = 1.0f

.field private static final DL_MAX:F = 0.2f

.field private static final LIGHTNESS_SEARCH_ENDPOINT:F = 0.01f


# instance fields
.field private final mAstar:F

.field private final mBstar:F

.field private final mChroma:F

.field private final mHue:F

.field private final mJ:F

.field private final mJstar:F

.field private final mM:F

.field private final mQ:F

.field private final mS:F


# direct methods
.method public constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/core/content/res/CamColor;->mHue:F

    .line 3
    iput p2, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 4
    iput p3, p0, Landroidx/core/content/res/CamColor;->mJ:F

    .line 5
    iput p4, p0, Landroidx/core/content/res/CamColor;->mQ:F

    .line 6
    iput p5, p0, Landroidx/core/content/res/CamColor;->mM:F

    .line 7
    iput p6, p0, Landroidx/core/content/res/CamColor;->mS:F

    .line 8
    iput p7, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 9
    iput p8, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 10
    iput p9, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    return-void
.end method

.method private static findCamByJ(FFF)Landroidx/core/content/res/CamColor;
    .locals 19
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = Infinity
            toInclusive = false
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move/from16 v0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    move-object v5, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v6, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    :goto_0
    sub-float v8, v6, v7

    .line 1
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3c23d70a    # 0.01f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    sub-float v8, v7, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v8, v6

    move/from16 v9, p1

    .line 2
    invoke-static {v8, v9, v0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v10

    .line 3
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v11, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-virtual {v10, v11}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result v10

    .line 5
    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static {v11}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v11

    .line 6
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v12

    invoke-static {v12}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v12

    .line 7
    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v13}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v13

    .line 8
    sget-object v14, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    const/4 v15, 0x1

    .line 9
    aget-object v16, v14, v15

    const/16 v17, 0x0

    aget v16, v16, v17

    mul-float v11, v11, v16

    aget-object v16, v14, v15

    aget v16, v16, v15

    mul-float v12, v12, v16

    add-float/2addr v12, v11

    aget-object v11, v14, v15

    const/4 v14, 0x2

    aget v11, v11, v14

    mul-float v13, v13, v11

    add-float/2addr v13, v12

    div-float/2addr v13, v2

    const v11, 0x3c111aa7

    cmpg-float v11, v13, v11

    if-gtz v11, :cond_0

    const v11, 0x4461d2f7

    mul-float v13, v13, v11

    goto :goto_1

    :cond_0
    float-to-double v11, v13

    .line 10
    invoke-static {v11, v12}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x42e80000    # 116.0f

    mul-float v11, v11, v12

    const/high16 v12, 0x41800000    # 16.0f

    sub-float v13, v11, v12

    :goto_1
    sub-float v11, p2, v13

    .line 11
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x3e4ccccd    # 0.2f

    cmpg-float v12, v11, v12

    if-gez v12, :cond_1

    .line 12
    invoke-static {v10}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    move-result-object v10

    .line 13
    iget v12, v10, Landroidx/core/content/res/CamColor;->mJ:F

    .line 14
    iget v14, v10, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 15
    invoke-static {v12, v14, v0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v12

    .line 16
    iget v14, v10, Landroidx/core/content/res/CamColor;->mJstar:F

    iget v15, v12, Landroidx/core/content/res/CamColor;->mJstar:F

    sub-float/2addr v14, v15

    .line 17
    iget v15, v10, Landroidx/core/content/res/CamColor;->mAstar:F

    iget v2, v12, Landroidx/core/content/res/CamColor;->mAstar:F

    sub-float/2addr v15, v2

    .line 18
    iget v2, v10, Landroidx/core/content/res/CamColor;->mBstar:F

    iget v12, v12, Landroidx/core/content/res/CamColor;->mBstar:F

    sub-float/2addr v2, v12

    mul-float v14, v14, v14

    mul-float v15, v15, v15

    add-float/2addr v15, v14

    mul-float v2, v2, v2

    add-float/2addr v2, v15

    float-to-double v14, v2

    .line 19
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    const-wide v17, 0x3ff68f5c28f5c28fL    # 1.41

    move v12, v4

    const-wide v3, 0x3fe428f5c28f5c29L    # 0.63

    .line 20
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v17

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_2

    move v4, v3

    move-object v5, v10

    move v1, v11

    goto :goto_2

    :cond_1
    move v12, v4

    :cond_2
    move v4, v12

    :goto_2
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_3

    cmpl-float v3, v4, v2

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    cmpg-float v3, v13, p2

    if-gez v3, :cond_4

    move v6, v8

    goto :goto_3

    :cond_4
    move v7, v8

    :goto_3
    const/high16 v2, 0x42c80000    # 100.0f

    goto/16 :goto_0

    :cond_5
    :goto_4
    return-object v5
.end method

.method public static fromColor(I)Landroidx/core/content/res/CamColor;
    .locals 25
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 2
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v1

    .line 3
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v2

    .line 4
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Landroidx/core/content/res/CamUtils;->linearized(I)F

    move-result v3

    .line 5
    sget-object v4, Landroidx/core/content/res/CamUtils;->SRGB_TO_XYZ:[[F

    const/4 v5, 0x0

    .line 6
    aget-object v6, v4, v5

    aget v6, v6, v5

    mul-float v6, v6, v1

    aget-object v7, v4, v5

    const/4 v8, 0x1

    aget v7, v7, v8

    mul-float v7, v7, v2

    add-float/2addr v7, v6

    aget-object v6, v4, v5

    const/4 v9, 0x2

    aget v6, v6, v9

    mul-float v6, v6, v3

    add-float/2addr v6, v7

    .line 7
    aget-object v7, v4, v8

    aget v7, v7, v5

    mul-float v7, v7, v1

    aget-object v10, v4, v8

    aget v10, v10, v8

    mul-float v10, v10, v2

    add-float/2addr v10, v7

    aget-object v7, v4, v8

    aget v7, v7, v9

    mul-float v7, v7, v3

    add-float/2addr v7, v10

    .line 8
    aget-object v10, v4, v9

    aget v10, v10, v5

    mul-float v1, v1, v10

    aget-object v10, v4, v9

    aget v10, v10, v8

    mul-float v2, v2, v10

    add-float/2addr v2, v1

    aget-object v1, v4, v9

    aget v1, v1, v9

    mul-float v3, v3, v1

    add-float/2addr v3, v2

    const/4 v1, 0x3

    new-array v1, v1, [F

    aput v6, v1, v5

    aput v7, v1, v8

    aput v3, v1, v9

    .line 9
    sget-object v2, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    aget v3, v1, v5

    .line 10
    aget-object v4, v2, v5

    aget v4, v4, v5

    mul-float v3, v3, v4

    aget v4, v1, v8

    aget-object v6, v2, v5

    aget v6, v6, v8

    mul-float v4, v4, v6

    add-float/2addr v4, v3

    aget v3, v1, v9

    aget-object v6, v2, v5

    aget v6, v6, v9

    mul-float v3, v3, v6

    add-float/2addr v3, v4

    aget v4, v1, v5

    .line 11
    aget-object v6, v2, v8

    aget v6, v6, v5

    mul-float v4, v4, v6

    aget v6, v1, v8

    aget-object v7, v2, v8

    aget v7, v7, v8

    mul-float v6, v6, v7

    add-float/2addr v6, v4

    aget v4, v1, v9

    aget-object v7, v2, v8

    aget v7, v7, v9

    mul-float v4, v4, v7

    add-float/2addr v4, v6

    aget v6, v1, v5

    .line 12
    aget-object v7, v2, v9

    aget v7, v7, v5

    mul-float v6, v6, v7

    aget v7, v1, v8

    aget-object v10, v2, v9

    aget v10, v10, v8

    mul-float v7, v7, v10

    add-float/2addr v7, v6

    aget v1, v1, v9

    aget-object v2, v2, v9

    aget v2, v2, v9

    mul-float v1, v1, v2

    add-float/2addr v1, v7

    .line 13
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v2

    aget v2, v2, v5

    mul-float v2, v2, v3

    .line 14
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v3

    aget v3, v3, v8

    mul-float v3, v3, v4

    .line 15
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v4

    aget v4, v4, v9

    mul-float v4, v4, v1

    .line 16
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v5, v5, v1

    float-to-double v5, v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    const-wide v9, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v1, v5

    .line 17
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float v6, v6, v5

    float-to-double v5, v6

    div-double/2addr v5, v7

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 18
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float v11, v11, v6

    float-to-double v11, v11

    div-double/2addr v11, v7

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v6, v9

    .line 19
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    const/high16 v9, 0x43c80000    # 400.0f

    mul-float v2, v2, v9

    mul-float v2, v2, v1

    const v10, 0x41d90a3d    # 27.13f

    add-float/2addr v1, v10

    div-float/2addr v2, v1

    .line 20
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float v1, v1, v9

    mul-float v1, v1, v5

    add-float/2addr v5, v10

    div-float/2addr v1, v5

    .line 21
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float v3, v3, v9

    mul-float v3, v3, v6

    add-float/2addr v6, v10

    div-float/2addr v3, v6

    const-wide/high16 v4, 0x4026000000000000L    # 11.0

    float-to-double v9, v2

    mul-double v9, v9, v4

    const-wide/high16 v4, -0x3fd8000000000000L    # -12.0

    float-to-double v11, v1

    mul-double v11, v11, v4

    add-double/2addr v11, v9

    float-to-double v4, v3

    add-double/2addr v11, v4

    double-to-float v6, v11

    const/high16 v9, 0x41300000    # 11.0f

    div-float/2addr v6, v9

    add-float v9, v2, v1

    float-to-double v9, v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v11

    sub-double/2addr v9, v4

    double-to-float v4, v9

    const/high16 v5, 0x41100000    # 9.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float v9, v2, v5

    mul-float v1, v1, v5

    add-float/2addr v9, v1

    const/high16 v10, 0x41a80000    # 21.0f

    mul-float v10, v10, v3

    add-float/2addr v10, v9

    div-float/2addr v10, v5

    const/high16 v9, 0x42200000    # 40.0f

    mul-float v2, v2, v9

    add-float/2addr v2, v1

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-double v13, v4

    float-to-double v7, v6

    .line 22
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v1, v7

    const/high16 v3, 0x43340000    # 180.0f

    mul-float v1, v1, v3

    const v5, 0x40490fdb    # (float)Math.PI

    div-float/2addr v1, v5

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    cmpg-float v7, v1, v7

    if-gez v7, :cond_0

    add-float/2addr v1, v8

    goto :goto_0

    :cond_0
    cmpl-float v7, v1, v8

    if-ltz v7, :cond_1

    sub-float/2addr v1, v8

    :cond_1
    :goto_0
    mul-float v5, v5, v1

    div-float/2addr v5, v3

    .line 23
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    move-result v3

    mul-float v2, v2, v3

    .line 24
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 25
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v7

    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    move-result v9

    mul-float v7, v7, v9

    float-to-double v13, v7

    .line 26
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    .line 27
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v7

    const/high16 v9, 0x40800000    # 4.0f

    div-float v7, v9, v7

    div-float v3, v2, v3

    float-to-double v13, v3

    .line 28
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v3, v13

    mul-float v7, v7, v3

    .line 29
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v3

    add-float/2addr v3, v9

    mul-float v3, v3, v7

    .line 30
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v7

    mul-float v19, v3, v7

    float-to-double v13, v1

    const-wide v15, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v3, v13, v15

    if-gez v3, :cond_2

    add-float/2addr v8, v1

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    const/high16 v3, 0x3e800000    # 0.25f

    float-to-double v7, v8

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    mul-double v7, v7, v13

    const-wide v13, 0x4066800000000000L    # 180.0

    div-double/2addr v7, v13

    add-double/2addr v7, v11

    .line 31
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide v11, 0x400e666666666666L    # 3.8

    add-double/2addr v7, v11

    double-to-float v7, v7

    mul-float v7, v7, v3

    const v3, 0x45706276

    mul-float v7, v7, v3

    .line 32
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    move-result v3

    mul-float v7, v7, v3

    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    move-result v3

    mul-float v7, v7, v3

    mul-float v6, v6, v6

    mul-float v4, v4, v4

    add-float/2addr v4, v6

    float-to-double v3, v4

    .line 33
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v7, v7, v3

    const v3, 0x3e9c28f6    # 0.305f

    add-float/2addr v10, v3

    div-float/2addr v7, v10

    const-wide v3, 0x3ffa3d70a3d70a3dL    # 1.64

    const-wide v10, 0x3fd28f5c28f5c28fL    # 0.29

    .line 34
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getN()F

    move-result v6

    float-to-double v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v3, v10

    const-wide v10, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v6, v7

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    .line 35
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float v3, v3, v4

    float-to-double v6, v2

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v10

    .line 36
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float v17, v3, v4

    .line 37
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v4

    mul-float v20, v17, v4

    const/high16 v4, 0x42480000    # 50.0f

    .line 38
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v6

    mul-float v3, v3, v6

    .line 39
    invoke-virtual {v0}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v0

    add-float/2addr v0, v9

    div-float/2addr v3, v0

    float-to-double v6, v3

    .line 40
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float v21, v0, v4

    const v0, 0x3fd9999a    # 1.7f

    mul-float v0, v0, v2

    const v3, 0x3be56042    # 0.007f

    mul-float v3, v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    div-float v22, v0, v3

    const v0, 0x422f7048

    const v3, 0x3cbac711    # 0.0228f

    mul-float v3, v3, v20

    add-float/2addr v3, v4

    float-to-double v3, v3

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v0

    float-to-double v4, v5

    .line 42
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float v23, v3, v0

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v24, v3, v0

    .line 44
    new-instance v0, Landroidx/core/content/res/CamColor;

    move-object v15, v0

    move/from16 v16, v1

    move/from16 v18, v2

    invoke-direct/range {v15 .. v24}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    return-object v0
.end method

.method private static fromJch(FFF)Landroidx/core/content/res/CamColor;
    .locals 1
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = Infinity
            toInclusive = false
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/CamColor;->fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;

    move-result-object p0

    return-object p0
.end method

.method private static fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;
    .locals 13
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = Infinity
            toInclusive = false
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move v3, p0

    .line 1
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float v0, v1, v0

    float-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 2
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float v0, v0, v2

    .line 3
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    mul-float v2, v2, v0

    .line 4
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v0

    mul-float v6, v2, v0

    .line 5
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v0

    mul-float v7, p1, v0

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    div-float v0, p1, v0

    .line 7
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v2

    mul-float v0, v0, v2

    .line 8
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    div-float/2addr v0, v2

    float-to-double v0, v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v8, v0, v1

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float v0, v0, p2

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    const v1, 0x3fd9999a    # 1.7f

    mul-float v1, v1, v3

    const v2, 0x3be56042    # 0.007f

    mul-float v2, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    div-float v9, v1, v2

    float-to-double v1, v7

    const-wide v4, 0x3f9758e219652bd4L    # 0.0228

    mul-double v1, v1, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v4

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x422f7048

    mul-float v1, v1, v2

    float-to-double v4, v0

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v0, v10

    mul-float v10, v1, v0

    .line 12
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v11, v1, v0

    .line 13
    new-instance v12, Landroidx/core/content/res/CamColor;

    move-object v0, v12

    move v1, p2

    move v2, p1

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    invoke-direct/range {v0 .. v9}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    return-object v12
.end method

.method public static toColor(FFF)I
    .locals 7
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 360.0
        .end annotation
    .end param
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = Infinity
            toInclusive = false
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    float-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v1, v3

    if-ltz v5, :cond_7

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-lez v5, :cond_7

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p0, v1

    if-gez v2, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v2, 0x43b40000    # 360.0f

    .line 3
    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    move v1, p1

    move-object v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_1
    sub-float v5, v2, p1

    .line 4
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    .line 5
    invoke-static {p0, v1, p2}, Landroidx/core/content/res/CamColor;->findCamByJ(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_3

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v5, v0}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result p0

    goto :goto_4

    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    move p1, v1

    goto :goto_2

    :cond_4
    move v2, v1

    move-object v3, v5

    :goto_2
    sub-float v1, p1, v2

    div-float/2addr v1, v6

    add-float/2addr v1, v2

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    .line 7
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    move-result p0

    goto :goto_4

    .line 8
    :cond_6
    invoke-virtual {v3, v0}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result p0

    goto :goto_4

    .line 9
    :cond_7
    :goto_3
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    move-result p0

    :goto_4
    return p0
.end method


# virtual methods
.method public final getChroma()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = Infinity
        toInclusive = false
    .end annotation

    iget v0, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    return v0
.end method

.method public final getHue()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 360.0
        toInclusive = false
    .end annotation

    iget v0, p0, Landroidx/core/content/res/CamColor;->mHue:F

    return v0
.end method

.method public final viewed(Landroidx/core/content/res/ViewingConditions;)I
    .locals 16
    .param p1    # Landroidx/core/content/res/ViewingConditions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Landroidx/core/content/res/CamColor;->mChroma:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide/16 v6, 0x0

    cmpl-double v8, v2, v6

    if-eqz v8, :cond_1

    .line 2
    iget v2, v0, Landroidx/core/content/res/CamColor;->mJ:F

    float-to-double v2, v2

    cmpl-double v8, v2, v6

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    div-double/2addr v2, v4

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    float-to-double v1, v1

    const-wide v8, 0x3ffa3d70a3d70a3dL    # 1.64

    const-wide v10, 0x3fd28f5c28f5c28fL    # 0.29

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getN()F

    move-result v3

    float-to-double v12, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    const-wide v10, 0x3fe75c28f5c28f5cL    # 0.73

    .line 5
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v1, v8

    const-wide v8, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 6
    iget v2, v0, Landroidx/core/content/res/CamColor;->mHue:F

    const v3, 0x40490fdb    # (float)Math.PI

    mul-float v2, v2, v3

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3e800000    # 0.25f

    float-to-double v8, v2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-double/2addr v10, v8

    .line 7
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    const-wide v12, 0x400e666666666666L    # 3.8

    add-double/2addr v10, v12

    double-to-float v2, v10

    mul-float v2, v2, v3

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v3

    .line 9
    iget v10, v0, Landroidx/core/content/res/CamColor;->mJ:F

    float-to-double v10, v10

    div-double/2addr v10, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v12

    float-to-double v12, v12

    div-double/2addr v4, v12

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    move-result v12

    float-to-double v12, v12

    div-double/2addr v4, v12

    .line 11
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v3, v3, v4

    const v4, 0x45706276

    mul-float v2, v2, v4

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    move-result v4

    mul-float v2, v2, v4

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    move-result v4

    mul-float v2, v2, v4

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    move-result v4

    div-float/2addr v3, v4

    .line 14
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 15
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v5, v8

    const v8, 0x3e9c28f6    # 0.305f

    add-float/2addr v8, v3

    const/high16 v9, 0x41b80000    # 23.0f

    mul-float v8, v8, v9

    mul-float v8, v8, v1

    mul-float v2, v2, v9

    const/high16 v9, 0x41300000    # 11.0f

    mul-float v9, v9, v1

    mul-float v9, v9, v5

    add-float/2addr v9, v2

    const/high16 v2, 0x42d80000    # 108.0f

    mul-float v1, v1, v2

    mul-float v1, v1, v4

    add-float/2addr v1, v9

    div-float/2addr v8, v1

    mul-float v5, v5, v8

    mul-float v8, v8, v4

    const/high16 v1, 0x43e60000    # 460.0f

    mul-float v3, v3, v1

    const v1, 0x43e18000    # 451.0f

    mul-float v1, v1, v5

    add-float/2addr v1, v3

    const/high16 v2, 0x43900000    # 288.0f

    mul-float v2, v2, v8

    add-float/2addr v2, v1

    const v1, 0x44af6000    # 1403.0f

    div-float/2addr v2, v1

    const v4, 0x445ec000    # 891.0f

    mul-float v4, v4, v5

    sub-float v4, v3, v4

    const v9, 0x43828000    # 261.0f

    mul-float v9, v9, v8

    sub-float/2addr v4, v9

    div-float/2addr v4, v1

    const/high16 v9, 0x435c0000    # 220.0f

    mul-float v5, v5, v9

    sub-float/2addr v3, v5

    const v5, 0x45c4e000    # 6300.0f

    mul-float v8, v8, v5

    sub-float/2addr v3, v8

    div-float/2addr v3, v1

    .line 16
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v8, v1

    const-wide v10, 0x403b2147ae147ae1L    # 27.13

    mul-double v8, v8, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v12, v1

    const-wide/high16 v14, 0x4079000000000000L    # 400.0

    sub-double v12, v14, v12

    div-double/2addr v8, v12

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-float v1, v8

    .line 17
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v5

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v5, v8, v5

    mul-float v5, v5, v2

    float-to-double v1, v1

    const-wide v12, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v5, v5, v1

    .line 18
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    mul-double v1, v1, v10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    sub-double v9, v14, v10

    div-double/2addr v1, v9

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 19
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v4

    div-float v4, v8, v4

    mul-float v4, v4, v2

    float-to-double v1, v1

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v4, v4, v1

    .line 20
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v9, 0x403b2147ae147ae1L    # 27.13

    mul-double v1, v1, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v9, v9

    sub-double/2addr v14, v9

    div-double/2addr v1, v14

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 21
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v3

    div-float/2addr v8, v3

    mul-float v8, v8, v2

    float-to-double v1, v1

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v8, v8, v1

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    div-float/2addr v5, v1

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    div-float/2addr v4, v1

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v1

    const/4 v6, 0x2

    aget v1, v1, v6

    div-float/2addr v8, v1

    .line 25
    sget-object v1, Landroidx/core/content/res/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 26
    aget-object v7, v1, v2

    aget v7, v7, v2

    mul-float v7, v7, v5

    aget-object v9, v1, v2

    aget v9, v9, v3

    mul-float v9, v9, v4

    add-float/2addr v9, v7

    aget-object v7, v1, v2

    aget v7, v7, v6

    mul-float v7, v7, v8

    add-float/2addr v7, v9

    .line 27
    aget-object v9, v1, v3

    aget v9, v9, v2

    mul-float v9, v9, v5

    aget-object v10, v1, v3

    aget v10, v10, v3

    mul-float v10, v10, v4

    add-float/2addr v10, v9

    aget-object v9, v1, v3

    aget v9, v9, v6

    mul-float v9, v9, v8

    add-float/2addr v9, v10

    .line 28
    aget-object v10, v1, v6

    aget v2, v10, v2

    mul-float v5, v5, v2

    aget-object v2, v1, v6

    aget v2, v2, v3

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    aget-object v1, v1, v6

    aget v1, v1, v6

    mul-float v8, v8, v1

    add-float/2addr v8, v4

    float-to-double v1, v7

    float-to-double v3, v9

    float-to-double v5, v8

    .line 29
    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v1

    return v1
.end method
