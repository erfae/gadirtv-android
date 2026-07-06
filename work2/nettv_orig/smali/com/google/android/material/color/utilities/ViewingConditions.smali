.class public final Lcom/google/android/material/color/utilities/ViewingConditions;
.super Ljava/lang/Object;
.source "ViewingConditions.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;


# instance fields
.field private final aw:D

.field private final c:D

.field private final fl:D

.field private final flRoot:D

.field private final n:D

.field private final nbb:D

.field private final nc:D

.field private final ncb:D

.field private final rgbD:[D

.field private final z:D


# direct methods
.method public static constructor <clinit>()V
    .locals 38

    const/4 v0, 0x3

    new-array v1, v0, [D

    .line 1
    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    aput-wide v4, v1, v3

    .line 2
    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    move-result-object v2

    const/4 v4, 0x1

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4

    .line 3
    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    move-result-object v2

    const/4 v5, 0x2

    aget-wide v6, v2, v5

    aput-wide v6, v1, v5

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    .line 4
    invoke-static {v6, v7}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v8

    const-wide v10, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double v8, v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    .line 5
    sget-object v2, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    aget-wide v12, v1, v3

    .line 6
    aget-object v14, v2, v3

    aget-wide v15, v14, v3

    mul-double v12, v12, v15

    aget-wide v14, v1, v4

    aget-object v16, v2, v3

    aget-wide v17, v16, v4

    mul-double v14, v14, v17

    add-double/2addr v14, v12

    aget-wide v12, v1, v5

    aget-object v16, v2, v3

    aget-wide v17, v16, v5

    mul-double v12, v12, v17

    add-double/2addr v12, v14

    aget-wide v14, v1, v3

    .line 7
    aget-object v16, v2, v4

    aget-wide v17, v16, v3

    mul-double v14, v14, v17

    aget-wide v16, v1, v4

    aget-object v18, v2, v4

    aget-wide v19, v18, v4

    mul-double v16, v16, v19

    add-double v16, v16, v14

    aget-wide v14, v1, v5

    aget-object v18, v2, v4

    aget-wide v19, v18, v5

    mul-double v14, v14, v19

    add-double v14, v14, v16

    aget-wide v16, v1, v3

    .line 8
    aget-object v18, v2, v5

    aget-wide v19, v18, v3

    mul-double v16, v16, v19

    aget-wide v18, v1, v4

    aget-object v20, v2, v5

    aget-wide v21, v20, v4

    mul-double v18, v18, v21

    add-double v18, v18, v16

    aget-wide v16, v1, v5

    aget-object v2, v2, v5

    aget-wide v20, v2, v5

    mul-double v16, v16, v20

    add-double v16, v16, v18

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    const-wide v18, 0x3fe2e147ae147ae1L    # 0.59

    const-wide v20, 0x3fe6147ae147ae14L    # 0.69

    const-wide v22, 0x3feffffffffffffeL    # 0.9999999999999998

    .line 9
    invoke-static/range {v18 .. v23}, Lcom/google/android/material/color/utilities/MathUtils;->lerp(DDD)D

    move-result-wide v27

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    const-wide v20, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    neg-double v6, v8

    const-wide/high16 v24, 0x4045000000000000L    # 42.0

    sub-double v6, v6, v24

    const-wide/high16 v24, 0x4057000000000000L    # 92.0

    div-double v6, v6, v24

    .line 10
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double v6, v6, v20

    sub-double v6, v18, v6

    mul-double v35, v6, v29

    const-wide/16 v31, 0x0

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    .line 11
    invoke-static/range {v31 .. v36}, Lcom/google/android/material/color/utilities/MathUtils;->clampDouble(DDD)D

    move-result-wide v6

    new-array v2, v0, [D

    move-object/from16 v31, v2

    div-double v20, v10, v12

    mul-double v20, v20, v6

    add-double v20, v20, v18

    sub-double v20, v20, v6

    aput-wide v20, v2, v3

    div-double v20, v10, v14

    mul-double v20, v20, v6

    add-double v20, v20, v18

    sub-double v20, v20, v6

    aput-wide v20, v2, v4

    div-double v20, v10, v16

    mul-double v20, v20, v6

    add-double v20, v20, v18

    sub-double v20, v20, v6

    aput-wide v20, v2, v5

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double v6, v6, v8

    add-double v20, v6, v18

    div-double v20, v18, v20

    mul-double v24, v20, v20

    mul-double v24, v24, v20

    mul-double v24, v24, v20

    sub-double v18, v18, v24

    mul-double v24, v24, v8

    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double v8, v8, v18

    mul-double v8, v8, v18

    .line 12
    invoke-static {v6, v7}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v6

    mul-double v6, v6, v8

    add-double v6, v6, v24

    move-wide/from16 v32, v6

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    .line 13
    invoke-static {v8, v9}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v8

    aget-wide v18, v1, v4

    div-double v8, v8, v18

    move-wide/from16 v19, v8

    const-wide v21, 0x3ff7ae147ae147aeL    # 1.48

    .line 14
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v23

    add-double v36, v23, v21

    const-wide v21, 0x3fe7333333333333L    # 0.725

    const-wide v4, 0x3fc999999999999aL    # 0.2

    .line 15
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double v21, v21, v4

    move-wide/from16 v23, v21

    move-wide/from16 v25, v21

    new-array v4, v0, [D

    aget-wide v8, v2, v3

    mul-double v8, v8, v6

    mul-double v8, v8, v12

    div-double/2addr v8, v10

    const-wide v12, 0x3fdae147ae147ae1L    # 0.42

    .line 16
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    aput-wide v8, v4, v3

    const/4 v1, 0x1

    aget-wide v8, v2, v1

    mul-double v8, v8, v6

    mul-double v8, v8, v14

    div-double/2addr v8, v10

    .line 17
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    aput-wide v8, v4, v1

    const/4 v5, 0x2

    aget-wide v8, v2, v5

    mul-double v8, v8, v6

    mul-double v8, v8, v16

    div-double/2addr v8, v10

    .line 18
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    aput-wide v8, v4, v5

    new-array v0, v0, [D

    aget-wide v8, v4, v3

    const-wide/high16 v10, 0x4079000000000000L    # 400.0

    mul-double v8, v8, v10

    aget-wide v12, v4, v3

    const-wide v14, 0x403b2147ae147ae1L    # 27.13

    add-double/2addr v12, v14

    div-double/2addr v8, v12

    aput-wide v8, v0, v3

    const/4 v1, 0x1

    aget-wide v8, v4, v1

    mul-double v8, v8, v10

    aget-wide v12, v4, v1

    add-double/2addr v12, v14

    div-double/2addr v8, v12

    aput-wide v8, v0, v1

    const/4 v2, 0x2

    aget-wide v8, v4, v2

    mul-double v8, v8, v10

    aget-wide v10, v4, v2

    add-double/2addr v10, v14

    div-double/2addr v8, v10

    aput-wide v8, v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    aget-wide v8, v0, v3

    mul-double v8, v8, v4

    aget-wide v3, v0, v1

    add-double/2addr v8, v3

    const-wide v3, 0x3fa999999999999aL    # 0.05

    aget-wide v1, v0, v2

    mul-double v1, v1, v3

    add-double/2addr v1, v8

    mul-double v21, v21, v1

    .line 19
    new-instance v0, Lcom/google/android/material/color/utilities/ViewingConditions;

    move-object/from16 v18, v0

    const-wide/high16 v1, 0x3fd0000000000000L    # 0.25

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v34

    invoke-direct/range {v18 .. v37}, Lcom/google/android/material/color/utilities/ViewingConditions;-><init>(DDDDDD[DDDD)V

    .line 20
    sput-object v0, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    return-void
.end method

.method private constructor <init>(DDDDDD[DDDD)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    move-wide v1, p3

    .line 3
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    move-wide v1, p5

    .line 4
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    move-wide v1, p7

    .line 5
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    move-wide v1, p9

    .line 6
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    move-wide v1, p11

    .line 7
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    move-object/from16 v1, p13

    .line 8
    iput-object v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    move-wide/from16 v1, p14

    .line 9
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    move-wide/from16 v1, p16

    .line 10
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    move-wide/from16 v1, p18

    .line 11
    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    return-void
.end method


# virtual methods
.method public getAw()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    return-wide v0
.end method

.method public final getC()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    return-wide v0
.end method

.method public final getFl()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    return-wide v0
.end method

.method public getFlRoot()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    return-wide v0
.end method

.method public getN()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    return-wide v0
.end method

.method public getNbb()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    return-wide v0
.end method

.method public final getNc()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    return-wide v0
.end method

.method public final getNcb()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    return-wide v0
.end method

.method public getRgbD()[D
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    return-object v0
.end method

.method public final getZ()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    return-wide v0
.end method
