.class public Lcom/visualon/OSMPSensor/So3Util;
.super Ljava/lang/Object;
.source "So3Util.java"


# static fields
.field private static final M_SQRT1_2:D = 0.7071067811865476

.field private static final ONE_20TH:D = 0.1666666716337204

.field private static final ONE_6TH:D = 0.1666666716337204

.field private static muFromSO3R2:Lcom/visualon/OSMPSensor/Vector3d;

.field private static rotationPiAboutAxisTemp:Lcom/visualon/OSMPSensor/Vector3d;

.field private static sO3FromTwoVec33R1:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private static sO3FromTwoVec33R2:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private static sO3FromTwoVecA:Lcom/visualon/OSMPSensor/Vector3d;

.field private static sO3FromTwoVecB:Lcom/visualon/OSMPSensor/Vector3d;

.field private static sO3FromTwoVecN:Lcom/visualon/OSMPSensor/Vector3d;

.field private static sO3FromTwoVecRotationAxis:Lcom/visualon/OSMPSensor/Vector3d;

.field private static temp31:Lcom/visualon/OSMPSensor/Vector3d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 145
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    sput-object v0, Lcom/visualon/OSMPSensor/So3Util;->temp31:Lcom/visualon/OSMPSensor/Vector3d;

    .line 146
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    sput-object v0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecN:Lcom/visualon/OSMPSensor/Vector3d;

    .line 147
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    sput-object v0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecA:Lcom/visualon/OSMPSensor/Vector3d;

    .line 148
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    sput-object v0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecB:Lcom/visualon/OSMPSensor/Vector3d;

    .line 149
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    sput-object v0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecRotationAxis:Lcom/visualon/OSMPSensor/Vector3d;

    .line 150
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    sput-object v0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVec33R1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 151
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    sput-object v0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVec33R2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 152
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    sput-object v0, Lcom/visualon/OSMPSensor/So3Util;->muFromSO3R2:Lcom/visualon/OSMPSensor/Vector3d;

    .line 153
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    sput-object v0, Lcom/visualon/OSMPSensor/So3Util;->rotationPiAboutAxisTemp:Lcom/visualon/OSMPSensor/Vector3d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatorField(ILcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 139
    invoke-virtual {p2, p0, v0, v1, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(IID)V

    add-int/lit8 v1, p0, 0x1

    .line 140
    rem-int/lit8 v1, v1, 0x3

    add-int/lit8 p0, p0, 0x2

    rem-int/lit8 p0, p0, 0x3

    invoke-virtual {p1, p0, v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p2, v1, v0, v2, v3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(IID)V

    .line 141
    invoke-virtual {p1, v1, v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v1

    invoke-virtual {p2, p0, v0, v1, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(IID)V

    return-void
.end method

.method public static muFromSO3(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    .line 81
    invoke-virtual {v0, v9, v9}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v1

    const/4 v10, 0x1

    invoke-virtual {v0, v10, v10}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v3

    add-double/2addr v1, v3

    const/4 v11, 0x2

    invoke-virtual {v0, v11, v11}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v3

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v12, v1, v3

    .line 82
    invoke-virtual {v0, v11, v10}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v1

    invoke-virtual {v0, v10, v11}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v3

    sub-double/2addr v1, v3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v2, v1, v14

    invoke-virtual {v0, v9, v11}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v4

    invoke-virtual {v0, v11, v9}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double/2addr v4, v14

    invoke-virtual {v0, v10, v9}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v6

    invoke-virtual {v0, v9, v10}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v16

    sub-double v6, v6, v16

    div-double/2addr v6, v14

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/visualon/OSMPSensor/Vector3d;->set(DDD)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/visualon/OSMPSensor/Vector3d;->length()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-wide v5, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    cmpl-double v7, v12, v5

    if-lez v7, :cond_0

    cmpl-double v0, v1, v3

    if-lez v0, :cond_5

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    div-double/2addr v3, v1

    invoke-virtual {v8, v3, v4}, Lcom/visualon/OSMPSensor/Vector3d;->scale(D)V

    goto/16 :goto_1

    :cond_0
    const-wide v5, -0x40195f619980c433L    # -0.7071067811865476

    cmpl-double v7, v12, v5

    if-lez v7, :cond_1

    .line 90
    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    div-double/2addr v3, v1

    .line 91
    invoke-virtual {v8, v3, v4}, Lcom/visualon/OSMPSensor/Vector3d;->scale(D)V

    goto/16 :goto_1

    :cond_1
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    .line 94
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    sub-double/2addr v5, v1

    .line 95
    invoke-virtual {v0, v9, v9}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v1

    sub-double v17, v1, v12

    .line 96
    invoke-virtual {v0, v10, v10}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v1

    sub-double v22, v1, v12

    .line 97
    invoke-virtual {v0, v11, v11}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v1

    sub-double v29, v1, v12

    .line 98
    sget-object v1, Lcom/visualon/OSMPSensor/So3Util;->muFromSO3R2:Lcom/visualon/OSMPSensor/Vector3d;

    mul-double v12, v17, v17

    mul-double v19, v22, v22

    cmpl-double v2, v12, v19

    if-lez v2, :cond_2

    mul-double v24, v29, v29

    cmpl-double v2, v12, v24

    if-lez v2, :cond_2

    .line 100
    invoke-virtual {v0, v10, v9}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v12

    invoke-virtual {v0, v9, v10}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v19

    add-double v12, v12, v19

    div-double v19, v12, v14

    invoke-virtual {v0, v9, v11}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v12

    invoke-virtual {v0, v11, v9}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v9

    add-double/2addr v12, v9

    div-double v21, v12, v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v22}, Lcom/visualon/OSMPSensor/Vector3d;->set(DDD)V

    goto :goto_0

    :cond_2
    mul-double v12, v29, v29

    cmpl-double v2, v19, v12

    if-lez v2, :cond_3

    .line 103
    invoke-virtual {v0, v10, v9}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v12

    invoke-virtual {v0, v9, v10}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v16

    add-double v12, v12, v16

    div-double v20, v12, v14

    invoke-virtual {v0, v11, v10}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v12

    invoke-virtual {v0, v10, v11}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v9

    add-double/2addr v12, v9

    div-double v24, v12, v14

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v25}, Lcom/visualon/OSMPSensor/Vector3d;->set(DDD)V

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {v0, v9, v11}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v12

    invoke-virtual {v0, v11, v9}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v16

    add-double v12, v12, v16

    div-double v25, v12, v14

    invoke-virtual {v0, v11, v10}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v12

    invoke-virtual {v0, v10, v11}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v9

    add-double/2addr v12, v9

    div-double v27, v12, v14

    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v30}, Lcom/visualon/OSMPSensor/Vector3d;->set(DDD)V

    .line 108
    :goto_0
    invoke-static {v1, v8}, Lcom/visualon/OSMPSensor/Vector3d;->dot(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)D

    move-result-wide v9

    cmpg-double v0, v9, v3

    if-gez v0, :cond_4

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 109
    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPSensor/Vector3d;->scale(D)V

    .line 111
    :cond_4
    invoke-virtual {v1}, Lcom/visualon/OSMPSensor/Vector3d;->normalize()V

    .line 112
    invoke-virtual {v1, v5, v6}, Lcom/visualon/OSMPSensor/Vector3d;->scale(D)V

    .line 113
    invoke-virtual {v8, v1}, Lcom/visualon/OSMPSensor/Vector3d;->set(Lcom/visualon/OSMPSensor/Vector3d;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private static rodriguesSo3Exp(Lcom/visualon/OSMPSensor/Vector3d;DDLcom/visualon/OSMPSensor/Matrix3x3d;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p5

    .line 118
    iget-wide v2, v0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    iget-wide v4, v0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    mul-double v2, v2, v4

    .line 119
    iget-wide v4, v0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    iget-wide v6, v0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    mul-double v4, v4, v6

    .line 120
    iget-wide v6, v0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    iget-wide v8, v0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    mul-double v6, v6, v8

    add-double v8, v4, v6

    mul-double v8, v8, p3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v8, v10, v8

    const/4 v12, 0x0

    .line 121
    invoke-virtual {v1, v12, v12, v8, v9}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(IID)V

    add-double/2addr v6, v2

    mul-double v6, v6, p3

    sub-double v6, v10, v6

    const/4 v8, 0x1

    .line 122
    invoke-virtual {v1, v8, v8, v6, v7}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(IID)V

    add-double/2addr v2, v4

    mul-double v2, v2, p3

    sub-double/2addr v10, v2

    const/4 v2, 0x2

    .line 123
    invoke-virtual {v1, v2, v2, v10, v11}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(IID)V

    .line 124
    iget-wide v3, v0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    mul-double v3, v3, p1

    .line 125
    iget-wide v5, v0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    iget-wide v9, v0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    mul-double v5, v5, v9

    mul-double v5, v5, p3

    sub-double v9, v5, v3

    .line 126
    invoke-virtual {v1, v12, v8, v9, v10}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(IID)V

    add-double/2addr v5, v3

    .line 127
    invoke-virtual {v1, v8, v12, v5, v6}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(IID)V

    .line 128
    iget-wide v3, v0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    mul-double v3, v3, p1

    .line 129
    iget-wide v5, v0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    iget-wide v9, v0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    mul-double v5, v5, v9

    mul-double v5, v5, p3

    add-double v9, v5, v3

    .line 130
    invoke-virtual {v1, v12, v2, v9, v10}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(IID)V

    sub-double/2addr v5, v3

    .line 131
    invoke-virtual {v1, v2, v12, v5, v6}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(IID)V

    .line 132
    iget-wide v3, v0, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    mul-double v3, v3, p1

    .line 133
    iget-wide v5, v0, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    iget-wide v9, v0, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    mul-double v5, v5, v9

    mul-double v5, v5, p3

    sub-double v9, v5, v3

    .line 134
    invoke-virtual {v1, v8, v2, v9, v10}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(IID)V

    add-double/2addr v5, v3

    .line 135
    invoke-virtual {v1, v2, v8, v5, v6}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(IID)V

    return-void
.end method

.method private static rotationPiAboutAxis(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V
    .locals 10

    .line 51
    sget-object v0, Lcom/visualon/OSMPSensor/So3Util;->rotationPiAboutAxisTemp:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {v0, p0}, Lcom/visualon/OSMPSensor/Vector3d;->set(Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 52
    sget-object p0, Lcom/visualon/OSMPSensor/So3Util;->rotationPiAboutAxisTemp:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p0}, Lcom/visualon/OSMPSensor/Vector3d;->length()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/visualon/OSMPSensor/Vector3d;->scale(D)V

    .line 56
    sget-object v4, Lcom/visualon/OSMPSensor/So3Util;->rotationPiAboutAxisTemp:Lcom/visualon/OSMPSensor/Vector3d;

    const-wide/16 v5, 0x0

    const-wide v7, 0x3fc9f02f6222c721L    # 0.20264236728467558

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/visualon/OSMPSensor/So3Util;->rodriguesSo3Exp(Lcom/visualon/OSMPSensor/Vector3d;DDLcom/visualon/OSMPSensor/Matrix3x3d;)V

    return-void
.end method

.method public static sO3FromMu(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V
    .locals 13

    .line 60
    invoke-static {p0, p0}, Lcom/visualon/OSMPSensor/Vector3d;->dot(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)D

    move-result-wide v0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide v6, 0x3fc5555560000000L    # 0.1666666716337204

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v12, v0, v10

    if-gez v12, :cond_0

    mul-double v0, v0, v6

    :goto_0
    sub-double/2addr v8, v0

    move-wide v7, v8

    move-wide v9, v4

    goto :goto_1

    :cond_0
    const-wide v10, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v12, v0, v10

    if-gez v12, :cond_1

    const-wide v2, 0x3fa5555560000000L    # 0.0416666679084301

    mul-double v2, v2, v0

    sub-double/2addr v4, v2

    mul-double v0, v0, v6

    sub-double v2, v8, v0

    mul-double v0, v0, v2

    goto :goto_0

    :cond_1
    div-double v0, v8, v2

    .line 74
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v0

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double/2addr v8, v2

    mul-double v0, v0, v0

    mul-double v0, v0, v8

    move-wide v9, v0

    move-wide v7, v4

    :goto_1
    move-object v6, p0

    move-object v11, p1

    .line 77
    invoke-static/range {v6 .. v11}, Lcom/visualon/OSMPSensor/So3Util;->rodriguesSo3Exp(Lcom/visualon/OSMPSensor/Vector3d;DDLcom/visualon/OSMPSensor/Matrix3x3d;)V

    return-void
.end method

.method public static sO3FromTwoVec(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V
    .locals 5

    .line 19
    sget-object v0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecN:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {p0, p1, v0}, Lcom/visualon/OSMPSensor/Vector3d;->cross(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 20
    sget-object v0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecN:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Vector3d;->length()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    .line 21
    invoke-static {p0, p1}, Lcom/visualon/OSMPSensor/Vector3d;->dot(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    .line 23
    invoke-virtual {p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setIdentity()V

    goto :goto_0

    .line 26
    :cond_0
    sget-object p1, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecRotationAxis:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {p0, p1}, Lcom/visualon/OSMPSensor/Vector3d;->ortho(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 27
    sget-object p0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecRotationAxis:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {p0, p2}, Lcom/visualon/OSMPSensor/So3Util;->rotationPiAboutAxis(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    :goto_0
    return-void

    .line 31
    :cond_1
    sget-object v0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecA:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {v0, p0}, Lcom/visualon/OSMPSensor/Vector3d;->set(Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 32
    sget-object p0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecB:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p0, p1}, Lcom/visualon/OSMPSensor/Vector3d;->set(Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 33
    sget-object p0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecN:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p0}, Lcom/visualon/OSMPSensor/Vector3d;->normalize()V

    .line 34
    sget-object p0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecA:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p0}, Lcom/visualon/OSMPSensor/Vector3d;->normalize()V

    .line 35
    sget-object p0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecB:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p0}, Lcom/visualon/OSMPSensor/Vector3d;->normalize()V

    .line 36
    sget-object p0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVec33R1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 37
    sget-object p1, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecA:Lcom/visualon/OSMPSensor/Vector3d;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setColumn(ILcom/visualon/OSMPSensor/Vector3d;)V

    .line 38
    sget-object p1, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecN:Lcom/visualon/OSMPSensor/Vector3d;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setColumn(ILcom/visualon/OSMPSensor/Vector3d;)V

    .line 39
    sget-object p1, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecN:Lcom/visualon/OSMPSensor/Vector3d;

    sget-object v2, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecA:Lcom/visualon/OSMPSensor/Vector3d;

    sget-object v3, Lcom/visualon/OSMPSensor/So3Util;->temp31:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {p1, v2, v3}, Lcom/visualon/OSMPSensor/Vector3d;->cross(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 40
    sget-object p1, Lcom/visualon/OSMPSensor/So3Util;->temp31:Lcom/visualon/OSMPSensor/Vector3d;

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setColumn(ILcom/visualon/OSMPSensor/Vector3d;)V

    .line 41
    sget-object p1, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVec33R2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 42
    sget-object v3, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecB:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p1, v0, v3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setColumn(ILcom/visualon/OSMPSensor/Vector3d;)V

    .line 43
    sget-object v0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecN:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p1, v1, v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setColumn(ILcom/visualon/OSMPSensor/Vector3d;)V

    .line 44
    sget-object v0, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecN:Lcom/visualon/OSMPSensor/Vector3d;

    sget-object v1, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVecB:Lcom/visualon/OSMPSensor/Vector3d;

    sget-object v3, Lcom/visualon/OSMPSensor/So3Util;->temp31:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {v0, v1, v3}, Lcom/visualon/OSMPSensor/Vector3d;->cross(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 45
    sget-object v0, Lcom/visualon/OSMPSensor/So3Util;->temp31:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p1, v2, v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setColumn(ILcom/visualon/OSMPSensor/Vector3d;)V

    .line 46
    invoke-virtual {p0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->transpose()V

    .line 47
    invoke-static {p1, p0, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    return-void
.end method
