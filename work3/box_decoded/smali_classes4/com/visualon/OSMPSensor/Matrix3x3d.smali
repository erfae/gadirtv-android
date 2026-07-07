.class public Lcom/visualon/OSMPSensor/Matrix3x3d;
.super Ljava/lang/Object;
.source "Matrix3x3d.java"


# instance fields
.field public m:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [D

    .line 9
    iput-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    return-void
.end method

.method public constructor <init>(DDDDDDDDD)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [D

    move-object v1, p0

    .line 14
    iput-object v0, v1, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v2, 0x0

    aput-wide p1, v0, v2

    const/4 v2, 0x1

    aput-wide p3, v0, v2

    const/4 v2, 0x2

    aput-wide p5, v0, v2

    const/4 v2, 0x3

    aput-wide p7, v0, v2

    const/4 v2, 0x4

    aput-wide p9, v0, v2

    const/4 v2, 0x5

    aput-wide p11, v0, v2

    const/4 v2, 0x6

    aput-wide p13, v0, v2

    const/4 v2, 0x7

    aput-wide p15, v0, v2

    const/16 v2, 0x8

    aput-wide p17, v0, v2

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPSensor/Matrix3x3d;)V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [D

    .line 27
    iput-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    iget-object p1, p1, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 28
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    .line 29
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    .line 30
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    .line 31
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    .line 32
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    .line 33
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    .line 34
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    .line 35
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    return-void
.end method

.method public static add(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V
    .locals 5

    .line 233
    iget-object p2, p2, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    iget-object p0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    iget-object p1, p1, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x1

    .line 234
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x2

    .line 235
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x3

    .line 236
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x4

    .line 237
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x5

    .line 238
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x6

    .line 239
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p2, v0

    const/4 v0, 0x7

    .line 240
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p2, v0

    const/16 v0, 0x8

    .line 241
    aget-wide v1, p0, v0

    aget-wide p0, p1, v0

    add-double/2addr v1, p0

    aput-wide v1, p2, v0

    return-void
.end method

.method public static mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V
    .locals 30

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    .line 245
    iget-object v15, v1, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v13, 0x0

    aget-wide v1, v15, v13

    move-object/from16 v3, p1

    iget-object v14, v3, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    aget-wide v3, v14, v13

    mul-double v1, v1, v3

    const/16 v16, 0x1

    aget-wide v3, v15, v16

    const/16 v17, 0x3

    aget-wide v5, v14, v17

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    const/16 v18, 0x2

    aget-wide v3, v15, v18

    const/16 v19, 0x6

    aget-wide v5, v14, v19

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    aget-wide v3, v15, v13

    aget-wide v5, v14, v16

    mul-double v3, v3, v5

    aget-wide v5, v15, v16

    const/16 v20, 0x4

    aget-wide v7, v14, v20

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    aget-wide v5, v15, v18

    const/16 v21, 0x7

    aget-wide v7, v14, v21

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    aget-wide v5, v15, v13

    aget-wide v7, v14, v18

    mul-double v5, v5, v7

    aget-wide v7, v15, v16

    const/16 v22, 0x5

    aget-wide v9, v14, v22

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    aget-wide v7, v15, v18

    const/16 v23, 0x8

    aget-wide v9, v14, v23

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    aget-wide v7, v15, v17

    aget-wide v9, v14, v13

    mul-double v7, v7, v9

    aget-wide v9, v15, v20

    aget-wide v11, v14, v17

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    aget-wide v9, v15, v22

    aget-wide v11, v14, v19

    mul-double v9, v9, v11

    add-double/2addr v7, v9

    aget-wide v9, v15, v17

    aget-wide v11, v14, v16

    mul-double v9, v9, v11

    aget-wide v11, v15, v20

    aget-wide v24, v14, v20

    mul-double v11, v11, v24

    add-double/2addr v9, v11

    aget-wide v11, v15, v22

    aget-wide v24, v14, v21

    mul-double v11, v11, v24

    add-double/2addr v9, v11

    aget-wide v11, v15, v17

    aget-wide v24, v14, v18

    mul-double v11, v11, v24

    aget-wide v24, v15, v20

    aget-wide v26, v14, v22

    mul-double v24, v24, v26

    add-double v11, v11, v24

    aget-wide v24, v15, v22

    aget-wide v26, v14, v23

    mul-double v24, v24, v26

    add-double v11, v11, v24

    aget-wide v24, v15, v19

    aget-wide v26, v14, v13

    mul-double v24, v24, v26

    aget-wide v26, v15, v21

    aget-wide v28, v14, v17

    mul-double v26, v26, v28

    add-double v24, v24, v26

    aget-wide v26, v15, v23

    aget-wide v28, v14, v19

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-object/from16 v17, v14

    move-wide/from16 v13, v24

    aget-wide v24, v15, v19

    aget-wide v26, v17, v16

    mul-double v24, v24, v26

    aget-wide v26, v15, v21

    aget-wide v28, v17, v20

    mul-double v26, v26, v28

    add-double v24, v24, v26

    aget-wide v26, v15, v23

    aget-wide v28, v17, v21

    mul-double v26, v26, v28

    add-double v24, v24, v26

    move-object/from16 v20, v15

    move-wide/from16 v15, v24

    aget-wide v24, v20, v19

    aget-wide v18, v17, v18

    mul-double v24, v24, v18

    aget-wide v18, v20, v21

    aget-wide v21, v17, v22

    mul-double v18, v18, v21

    add-double v24, v24, v18

    aget-wide v18, v20, v23

    aget-wide v20, v17, v23

    mul-double v18, v18, v20

    add-double v17, v24, v18

    invoke-virtual/range {v0 .. v18}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(DDDDDDDDD)V

    return-void
.end method

.method public static mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V
    .locals 11

    .line 249
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iget-wide v3, p1, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    mul-double v1, v1, v3

    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    iget-wide v5, p1, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    iget-wide v5, p1, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    .line 250
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    iget-wide v5, p1, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    mul-double v3, v3, v5

    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v5, 0x4

    aget-wide v5, v0, v5

    iget-wide v7, p1, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v5, 0x5

    aget-wide v5, v0, v5

    iget-wide v7, p1, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    .line 251
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v5, 0x6

    aget-wide v5, v0, v5

    iget-wide v7, p1, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    mul-double v5, v5, v7

    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v7, 0x7

    aget-wide v7, v0, v7

    iget-wide v9, p1, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    mul-double v7, v7, v9

    add-double/2addr v5, v7

    iget-object p0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/16 v0, 0x8

    aget-wide v7, p0, v0

    iget-wide p0, p1, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    mul-double v7, v7, p0

    add-double/2addr v5, v7

    .line 252
    iput-wide v1, p2, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    .line 253
    iput-wide v3, p2, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    .line 254
    iput-wide v5, p2, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    return-void
.end method


# virtual methods
.method public containsNaN()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    if-nez v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    aget-wide v2, v1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public determinant()D
    .locals 13

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, v0, v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v4

    const/4 v6, 0x2

    invoke-virtual {p0, v6, v6}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v7

    mul-double v4, v4, v7

    invoke-virtual {p0, v6, v3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v7

    invoke-virtual {p0, v3, v6}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v9

    mul-double v7, v7, v9

    sub-double/2addr v4, v7

    mul-double v1, v1, v4

    invoke-virtual {p0, v0, v3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v4

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v7

    invoke-virtual {p0, v6, v6}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v9

    mul-double v7, v7, v9

    invoke-virtual {p0, v3, v6}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v9

    invoke-virtual {p0, v6, v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v11

    mul-double v9, v9, v11

    sub-double/2addr v7, v9

    mul-double v4, v4, v7

    sub-double/2addr v1, v4

    invoke-virtual {p0, v0, v6}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v4

    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v7

    invoke-virtual {p0, v6, v3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v9

    mul-double v7, v7, v9

    invoke-virtual {p0, v3, v3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v9

    invoke-virtual {p0, v6, v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v11

    mul-double v9, v9, v11

    sub-double/2addr v7, v9

    mul-double v4, v4, v7

    add-double/2addr v1, v4

    return-wide v1
.end method

.method public get(II)D
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public getArrayD()[D
    .locals 6

    const/16 v0, 0x9

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 282
    iget-object v3, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    aget-wide v4, v3, v2

    aput-wide v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getArrayF()[F
    .locals 6

    const/16 v0, 0x9

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 274
    iget-object v3, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    aget-wide v4, v3, v2

    double-to-float v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getColumn(ILcom/visualon/OSMPSensor/Vector3d;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    aget-wide v1, v0, p1

    iput-wide v1, p2, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    .line 105
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x3

    aget-wide v1, v0, v1

    iput-wide v1, p2, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    .line 106
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    add-int/lit8 p1, p1, 0x6

    aget-wide v1, v0, p1

    iput-wide v1, p2, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    return-void
.end method

.method public invert(Lcom/visualon/OSMPSensor/Matrix3x3d;)Z
    .locals 32

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->determinant()D

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v0

    move-object/from16 v0, p0

    .line 267
    iget-object v1, v0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v5, 0x4

    aget-wide v6, v1, v5

    const/16 v8, 0x8

    aget-wide v9, v1, v8

    mul-double v6, v6, v9

    const/4 v9, 0x7

    aget-wide v10, v1, v9

    const/4 v12, 0x5

    aget-wide v13, v1, v12

    mul-double v10, v10, v13

    sub-double/2addr v6, v10

    mul-double v14, v6, v3

    const/4 v6, 0x1

    aget-wide v10, v1, v6

    aget-wide v16, v1, v8

    mul-double v10, v10, v16

    const/4 v7, 0x2

    aget-wide v16, v1, v7

    aget-wide v18, v1, v9

    mul-double v16, v16, v18

    sub-double v10, v10, v16

    neg-double v10, v10

    mul-double v16, v10, v3

    aget-wide v10, v1, v6

    aget-wide v18, v1, v12

    mul-double v10, v10, v18

    aget-wide v18, v1, v7

    aget-wide v20, v1, v5

    mul-double v18, v18, v20

    sub-double v10, v10, v18

    mul-double v18, v10, v3

    const/4 v10, 0x3

    aget-wide v20, v1, v10

    aget-wide v22, v1, v8

    mul-double v20, v20, v22

    aget-wide v22, v1, v12

    const/4 v11, 0x6

    aget-wide v24, v1, v11

    mul-double v22, v22, v24

    sub-double v5, v20, v22

    neg-double v5, v5

    mul-double v20, v5, v3

    aget-wide v5, v1, v2

    aget-wide v22, v1, v8

    mul-double v5, v5, v22

    aget-wide v22, v1, v7

    aget-wide v24, v1, v11

    mul-double v22, v22, v24

    sub-double v5, v5, v22

    mul-double v22, v5, v3

    aget-wide v5, v1, v2

    aget-wide v24, v1, v12

    mul-double v5, v5, v24

    aget-wide v24, v1, v10

    aget-wide v7, v1, v7

    mul-double v24, v24, v7

    sub-double v5, v5, v24

    neg-double v5, v5

    mul-double v24, v5, v3

    aget-wide v5, v1, v10

    aget-wide v7, v1, v9

    mul-double v5, v5, v7

    aget-wide v7, v1, v11

    const/4 v12, 0x4

    aget-wide v26, v1, v12

    mul-double v7, v7, v26

    sub-double/2addr v5, v7

    mul-double v26, v5, v3

    aget-wide v5, v1, v2

    aget-wide v7, v1, v9

    mul-double v5, v5, v7

    aget-wide v7, v1, v11

    const/4 v9, 0x1

    aget-wide v11, v1, v9

    mul-double v7, v7, v11

    sub-double/2addr v5, v7

    neg-double v5, v5

    mul-double v28, v5, v3

    aget-wide v5, v1, v2

    const/4 v2, 0x4

    aget-wide v7, v1, v2

    mul-double v5, v5, v7

    aget-wide v7, v1, v10

    aget-wide v10, v1, v9

    mul-double v7, v7, v10

    sub-double/2addr v5, v7

    mul-double v30, v5, v3

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v31}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(DDDDDDDDD)V

    return v9
.end method

.method public minusEquals(Lcom/visualon/OSMPSensor/Matrix3x3d;)V
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    .line 178
    aget-wide v2, v0, v1

    iget-object p1, p1, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 181
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    .line 184
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    .line 187
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    .line 190
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    .line 193
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    .line 196
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    .line 199
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    .line 202
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    return-void
.end method

.method public plusEquals(Lcom/visualon/OSMPSensor/Matrix3x3d;)V
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    .line 148
    aget-wide v2, v0, v1

    iget-object p1, p1, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    aget-wide v4, p1, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 151
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    .line 154
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    .line 157
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    .line 160
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    .line 163
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    .line 166
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    .line 169
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    .line 172
    aget-wide v2, v0, v1

    aget-wide v4, p1, v1

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    return-void
.end method

.method public scale(D)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    .line 118
    aget-wide v2, v0, v1

    mul-double v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 121
    aget-wide v2, v0, v1

    mul-double v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    .line 124
    aget-wide v2, v0, v1

    mul-double v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    .line 127
    aget-wide v2, v0, v1

    mul-double v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    .line 130
    aget-wide v2, v0, v1

    mul-double v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    .line 133
    aget-wide v2, v0, v1

    mul-double v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    .line 136
    aget-wide v2, v0, v1

    mul-double v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    .line 139
    aget-wide v2, v0, v1

    mul-double v2, v2, p1

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    .line 142
    aget-wide v2, v0, v1

    mul-double v2, v2, p1

    aput-wide v2, v0, v1

    return-void
.end method

.method public set(DDDDDDDDD)V
    .locals 3

    move-object v0, p0

    .line 39
    iget-object v1, v0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    const/4 v2, 0x1

    .line 40
    aput-wide p3, v1, v2

    const/4 v2, 0x2

    .line 41
    aput-wide p5, v1, v2

    const/4 v2, 0x3

    .line 42
    aput-wide p7, v1, v2

    const/4 v2, 0x4

    .line 43
    aput-wide p9, v1, v2

    const/4 v2, 0x5

    .line 44
    aput-wide p11, v1, v2

    const/4 v2, 0x6

    .line 45
    aput-wide p13, v1, v2

    const/4 v2, 0x7

    .line 46
    aput-wide p15, v1, v2

    const/16 v2, 0x8

    .line 47
    aput-wide p17, v1, v2

    return-void
.end method

.method public set(IID)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    aput-wide p3, v0, p1

    return-void
.end method

.method public set(Lcom/visualon/OSMPSensor/Matrix3x3d;)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    iget-object p1, p1, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 52
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    .line 53
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    .line 54
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    .line 55
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    .line 56
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    .line 57
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    .line 58
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    .line 59
    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    return-void
.end method

.method public setColumn(ILcom/visualon/OSMPSensor/Vector3d;)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    iget-wide v1, p2, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    aput-wide v1, v0, p1

    .line 111
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    add-int/lit8 v1, p1, 0x3

    iget-wide v2, p2, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    aput-wide v2, v0, v1

    .line 112
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    add-int/lit8 p1, p1, 0x6

    iget-wide v1, p2, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    aput-wide v1, v0, p1

    return-void
.end method

.method public setIdentity()V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    .line 76
    aput-wide v4, v0, v1

    const/4 v1, 0x2

    .line 77
    aput-wide v4, v0, v1

    const/4 v1, 0x3

    .line 78
    aput-wide v4, v0, v1

    const/4 v1, 0x4

    .line 79
    aput-wide v2, v0, v1

    const/4 v1, 0x5

    .line 80
    aput-wide v4, v0, v1

    const/4 v1, 0x6

    .line 81
    aput-wide v4, v0, v1

    const/4 v1, 0x7

    .line 82
    aput-wide v4, v0, v1

    const/16 v1, 0x8

    .line 83
    aput-wide v2, v0, v1

    return-void
.end method

.method public setSameDiagonal(D)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/16 v1, 0x8

    .line 91
    aput-wide p1, v0, v1

    const/4 v1, 0x4

    .line 92
    aput-wide p1, v0, v1

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    return-void
.end method

.method public setZero()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 64
    aput-wide v2, v0, v1

    const/4 v1, 0x2

    .line 65
    aput-wide v2, v0, v1

    const/4 v1, 0x3

    .line 66
    aput-wide v2, v0, v1

    const/4 v1, 0x4

    .line 67
    aput-wide v2, v0, v1

    const/4 v1, 0x5

    .line 68
    aput-wide v2, v0, v1

    const/4 v1, 0x6

    .line 69
    aput-wide v2, v0, v1

    const/4 v1, 0x7

    .line 70
    aput-wide v2, v0, v1

    const/16 v1, 0x8

    .line 71
    aput-wide v2, v0, v1

    return-void
.end method

.method public transpose()V
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const/4 v4, 0x3

    .line 207
    aget-wide v5, v0, v4

    aput-wide v5, v0, v1

    .line 208
    aput-wide v2, v0, v4

    const/4 v1, 0x2

    .line 209
    aget-wide v2, v0, v1

    const/4 v4, 0x6

    .line 210
    aget-wide v5, v0, v4

    aput-wide v5, v0, v1

    .line 211
    aput-wide v2, v0, v4

    const/4 v1, 0x5

    .line 212
    aget-wide v2, v0, v1

    const/4 v4, 0x7

    .line 213
    aget-wide v5, v0, v4

    aput-wide v5, v0, v1

    .line 214
    aput-wide v2, v0, v4

    return-void
.end method

.method public transpose(Lcom/visualon/OSMPSensor/Matrix3x3d;)V
    .locals 13

    .line 218
    iget-object v0, p0, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const/4 v4, 0x2

    .line 219
    aget-wide v5, v0, v4

    const/4 v7, 0x5

    .line 220
    aget-wide v8, v0, v7

    .line 221
    iget-object p1, p1, Lcom/visualon/OSMPSensor/Matrix3x3d;->m:[D

    const/4 v10, 0x0

    aget-wide v11, v0, v10

    aput-wide v11, p1, v10

    const/4 v10, 0x3

    .line 222
    aget-wide v11, v0, v10

    aput-wide v11, p1, v1

    const/4 v1, 0x6

    .line 223
    aget-wide v11, v0, v1

    aput-wide v11, p1, v4

    .line 224
    aput-wide v2, p1, v10

    const/4 v2, 0x4

    .line 225
    aget-wide v3, v0, v2

    aput-wide v3, p1, v2

    const/4 v2, 0x7

    .line 226
    aget-wide v3, v0, v2

    aput-wide v3, p1, v7

    .line 227
    aput-wide v5, p1, v1

    .line 228
    aput-wide v8, p1, v2

    const/16 v1, 0x8

    .line 229
    aget-wide v2, v0, v1

    aput-wide v2, p1, v1

    return-void
.end method
