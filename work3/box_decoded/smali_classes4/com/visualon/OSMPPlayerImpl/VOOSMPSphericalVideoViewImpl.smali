.class public Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;
.super Ljava/lang/Object;
.source "VOOSMPSphericalVideoViewImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPSphericalVideoView;


# static fields
.field public static final TAG:Ljava/lang/String; = "@@@@VOOSMPSphericalVideoViewImpl"

.field public static final maxFOV:F = 65.0f

.field public static final minFOV:F = 1.0f


# instance fields
.field private aspectRatio:F

.field private mCompensateHeading:F

.field private mContext:Landroid/content/Context;

.field private mFOV:F

.field private mHeadingAngleConstraint:F

.field private mHeadingAngleLeftbound:F

.field private mHeadingAngleRightbound:F

.field private mHeadingBounded:I

.field private mPitchBottomBound:F

.field private mPitchTopBound:F

.field private mSensorAngleY:F

.field private mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

.field private mTouchHeading:F

.field private mTouchPitch:F

.field private mTouchRoll:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchPitch:F

    .line 32
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchRoll:F

    .line 33
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchHeading:F

    .line 34
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mCompensateHeading:F

    const/high16 v1, 0x42820000    # 65.0f

    .line 35
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mFOV:F

    const/4 v2, 0x0

    .line 36
    iput v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingBounded:I

    const/high16 v3, 0x43b40000    # 360.0f

    .line 37
    iput v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleConstraint:F

    const/high16 v3, 0x43340000    # 180.0f

    .line 38
    iput v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleLeftbound:F

    .line 39
    iput v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleRightbound:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    .line 40
    iput v5, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mPitchTopBound:F

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    .line 41
    iput v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mPitchBottomBound:F

    .line 42
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSensorAngleY:F

    const v0, 0x3fe38e39

    .line 43
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->aspectRatio:F

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mContext:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->createFromContext(Landroid/content/Context;)Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    if-nez p1, :cond_1

    .line 54
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "@@@@VOOSMPSphericalVideoViewImpl"

    const-string v1, "failed to create instance of voSphericalVideoViewImpl"

    .line 55
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private computeNearestBound(FF)F
    .locals 8

    .line 242
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleConstraint:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleLeftbound:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_3

    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleRightbound:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_3

    .line 243
    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingBounded:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x43340000    # 180.0f

    if-nez v2, :cond_0

    cmpl-float v7, p1, v6

    if-lez v7, :cond_0

    cmpl-float v7, p2, v5

    if-lez v7, :cond_0

    cmpg-float v7, p2, v4

    if-ltz v7, :cond_2

    :cond_0
    if-nez v2, :cond_1

    cmpl-float v2, p1, v6

    if-lez v2, :cond_1

    cmpg-float v2, p2, v5

    if-ltz v2, :cond_2

    cmpl-float p2, p2, v4

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    .line 247
    iput p2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingBounded:I

    sub-float/2addr v1, p1

    return v1

    .line 244
    :cond_2
    :goto_0
    iput v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingBounded:I

    sub-float/2addr v0, p1

    return v0

    :cond_3
    const/4 p1, 0x0

    .line 251
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingBounded:I

    const/4 p1, 0x0

    return p1
.end method

.method private setHeadingAngleConstraint(F)V
    .locals 6

    const/high16 v0, 0x43b40000    # 360.0f

    .line 70
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/high16 p1, 0x43b40000    # 360.0f

    .line 74
    :cond_0
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleConstraint:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 76
    iget p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mFOV:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iget p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->aspectRatio:F

    float-to-double v4, p1

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 77
    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleConstraint:F

    div-float v3, v2, v1

    sub-float/2addr v0, v3

    add-float/2addr v0, p1

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleLeftbound:F

    div-float/2addr v2, v1

    sub-float/2addr v2, p1

    .line 78
    iput v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleRightbound:F

    goto :goto_0

    :cond_1
    const/high16 p1, 0x43340000    # 180.0f

    .line 80
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleLeftbound:F

    .line 81
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleRightbound:F

    :goto_0
    return-void
.end method


# virtual methods
.method public enableViewAngleRestriction(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    .line 88
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->setHeadingAngleConstraint(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43b40000    # 360.0f

    .line 91
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->setHeadingAngleConstraint(F)V

    :goto_0
    return-void
.end method

.method public getFOV()F
    .locals 1

    .line 258
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mFOV:F

    return v0
.end method

.method public getRotation()[F
    .locals 47

    move-object/from16 v0, p0

    .line 106
    iget-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    const-string v2, "@@@@VOOSMPSphericalVideoViewImpl"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 107
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "mSphericalImpl is null"

    .line 108
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 113
    :cond_1
    invoke-virtual {v1}, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->getLastHeadView()[F

    move-result-object v1

    .line 124
    iget v4, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchHeading:F

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    cmpl-float v7, v4, v6

    if-lez v7, :cond_2

    sub-float/2addr v4, v6

    .line 125
    iput v4, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchHeading:F

    goto :goto_0

    :cond_2
    cmpg-float v7, v4, v5

    if-gtz v7, :cond_3

    add-float/2addr v4, v6

    .line 127
    iput v4, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchHeading:F

    .line 130
    :cond_3
    :goto_0
    new-instance v4, Lcom/visualon/OSMPSensor/Matrix3x3d;

    move-object v6, v4

    aget v7, v1, v3

    float-to-double v7, v7

    const/4 v9, 0x1

    aget v9, v1, v9

    float-to-double v9, v9

    const/4 v11, 0x2

    aget v11, v1, v11

    float-to-double v11, v11

    const/16 v25, 0x4

    aget v13, v1, v25

    float-to-double v13, v13

    const/4 v15, 0x5

    aget v15, v1, v15

    move-object/from16 v27, v4

    float-to-double v3, v15

    move-wide v15, v3

    const/4 v3, 0x6

    aget v4, v1, v3

    float-to-double v3, v4

    move-wide/from16 v17, v3

    const/16 v3, 0x8

    aget v4, v1, v3

    float-to-double v3, v4

    move-wide/from16 v19, v3

    const/16 v3, 0x9

    aget v3, v1, v3

    float-to-double v3, v3

    move-wide/from16 v21, v3

    const/16 v3, 0xa

    aget v3, v1, v3

    float-to-double v3, v3

    move-wide/from16 v23, v3

    invoke-direct/range {v6 .. v24}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>(DDDDDDDDD)V

    .line 134
    new-instance v3, Lcom/visualon/OSMPSensor/Vector3d;

    const/4 v4, 0x0

    aget v6, v1, v4

    float-to-double v6, v6

    aget v4, v1, v25

    float-to-double v8, v4

    const/16 v4, 0x8

    aget v4, v1, v4

    float-to-double v10, v4

    move-object/from16 v30, v3

    move-wide/from16 v31, v6

    move-wide/from16 v33, v8

    move-wide/from16 v35, v10

    invoke-direct/range {v30 .. v36}, Lcom/visualon/OSMPSensor/Vector3d;-><init>(DDD)V

    .line 135
    new-instance v4, Lcom/visualon/OSMPSensor/Vector3d;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move-object v12, v4

    invoke-direct/range {v12 .. v18}, Lcom/visualon/OSMPSensor/Vector3d;-><init>(DDD)V

    .line 136
    new-instance v13, Lcom/visualon/OSMPSensor/Vector3d;

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v11, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/visualon/OSMPSensor/Vector3d;-><init>(DDD)V

    .line 137
    new-instance v6, Lcom/visualon/OSMPSensor/Vector3d;

    const-wide/16 v17, 0x0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-object v14, v6

    invoke-direct/range {v14 .. v20}, Lcom/visualon/OSMPSensor/Vector3d;-><init>(DDD)V

    .line 138
    new-instance v7, Lcom/visualon/OSMPSensor/Vector3d;

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    move-object/from16 v29, v7

    invoke-direct/range {v29 .. v35}, Lcom/visualon/OSMPSensor/Vector3d;-><init>(DDD)V

    move-object/from16 v8, v27

    .line 139
    invoke-static {v8, v4, v4}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 140
    invoke-virtual {v4, v6}, Lcom/visualon/OSMPSensor/Vector3d;->sameValues(Lcom/visualon/OSMPSensor/Vector3d;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 141
    invoke-static {v4, v6, v7}, Lcom/visualon/OSMPSensor/Vector3d;->cross(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    goto :goto_1

    .line 143
    :cond_4
    invoke-static {v13, v4, v7}, Lcom/visualon/OSMPSensor/Vector3d;->cross(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 145
    :goto_1
    invoke-virtual {v7}, Lcom/visualon/OSMPSensor/Vector3d;->normalize()V

    .line 147
    invoke-virtual {v3}, Lcom/visualon/OSMPSensor/Vector3d;->length()D

    move-result-wide v9

    invoke-virtual {v7}, Lcom/visualon/OSMPSensor/Vector3d;->length()D

    move-result-wide v11

    mul-double v9, v9, v11

    const-wide/16 v11, 0x0

    cmpl-double v6, v9, v11

    if-eqz v6, :cond_5

    .line 148
    invoke-static {v3, v7}, Lcom/visualon/OSMPSensor/Vector3d;->dot(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)D

    move-result-wide v9

    invoke-virtual {v3}, Lcom/visualon/OSMPSensor/Vector3d;->length()D

    move-result-wide v13

    invoke-virtual {v7}, Lcom/visualon/OSMPSensor/Vector3d;->length()D

    move-result-wide v15

    mul-double v13, v13, v15

    div-double/2addr v9, v13

    goto :goto_2

    .line 150
    :cond_5
    invoke-static {v3, v7}, Lcom/visualon/OSMPSensor/Vector3d;->dot(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)D

    move-result-wide v9

    .line 152
    :goto_2
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v6, v9

    iput v6, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSensorAngleY:F

    .line 153
    invoke-static {v7, v3, v3}, Lcom/visualon/OSMPSensor/Vector3d;->cross(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 154
    invoke-static {v3, v4}, Lcom/visualon/OSMPSensor/Vector3d;->dot(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    const-wide v13, 0x4056800000000000L    # 90.0

    cmpl-double v3, v9, v13

    if-lez v3, :cond_6

    .line 155
    iget v3, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSensorAngleY:F

    neg-float v3, v3

    iput v3, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSensorAngleY:F

    .line 157
    :cond_6
    iget-wide v9, v7, Lcom/visualon/OSMPSensor/Vector3d;->x:D

    .line 158
    iget-wide v13, v7, Lcom/visualon/OSMPSensor/Vector3d;->y:D

    .line 159
    iget-wide v6, v7, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    move-wide v15, v6

    .line 161
    iget-wide v5, v4, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    const-wide v17, 0x3fb99999a0000000L    # 0.10000000149011612

    sub-double v5, v5, v17

    .line 162
    iget-wide v3, v4, Lcom/visualon/OSMPSensor/Vector3d;->z:D

    neg-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    neg-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    add-double v3, v3, v17

    .line 163
    iget v7, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchPitch:F

    float-to-double v11, v7

    cmpl-double v20, v11, v5

    if-lez v20, :cond_7

    double-to-float v3, v5

    .line 164
    iput v3, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchPitch:F

    goto :goto_3

    :cond_7
    float-to-double v5, v7

    cmpg-double v7, v5, v3

    if-gez v7, :cond_8

    double-to-float v3, v3

    .line 166
    iput v3, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchPitch:F

    .line 169
    :cond_8
    :goto_3
    iget-object v3, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    invoke-virtual {v3}, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->getHeadingDegrees()F

    move-result v3

    const/4 v4, 0x3

    new-array v5, v4, [F

    .line 171
    invoke-static {v1, v5}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 174
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "angle is: "

    .line 176
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v4, :cond_9

    .line 178
    aget v7, v5, v6

    float-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    double-to-float v7, v11

    aput v7, v5, v6

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v11, v5, v6

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 181
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_a
    iget v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchHeading:F

    add-float/2addr v1, v3

    iget v2, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mCompensateHeading:F

    add-float/2addr v1, v2

    float-to-double v4, v1

    const-wide v6, 0x4076800000000000L    # 360.0

    const-wide/16 v11, 0x0

    cmpg-double v2, v4, v11

    if-gez v2, :cond_b

    add-double/2addr v4, v6

    double-to-float v1, v4

    :cond_b
    float-to-double v4, v1

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_c

    sub-double/2addr v4, v6

    double-to-float v1, v4

    .line 202
    :cond_c
    invoke-virtual {v8}, Lcom/visualon/OSMPSensor/Matrix3x3d;->getArrayF()[F

    move-result-object v2

    const/4 v4, 0x6

    .line 203
    aget v4, v2, v4

    float-to-double v4, v4

    const/4 v11, 0x7

    aget v2, v2, v11

    float-to-double v11, v2

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    add-double/2addr v4, v6

    rem-double/2addr v4, v6

    const/4 v2, 0x0

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_d

    .line 205
    iget v2, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mCompensateHeading:F

    double-to-float v3, v4

    invoke-direct {v0, v1, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->computeNearestBound(FF)F

    move-result v1

    add-float/2addr v2, v1

    iput v2, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mCompensateHeading:F

    .line 210
    :cond_d
    iget v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchPitch:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    .line 211
    iget v3, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchPitch:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 212
    iget v5, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchHeading:F

    iget v6, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mCompensateHeading:F

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    move-wide/from16 v24, v5

    .line 213
    iget v7, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchHeading:F

    iget v11, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mCompensateHeading:F

    add-float/2addr v7, v11

    float-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-wide/from16 v18, v26

    .line 215
    new-instance v7, Lcom/visualon/OSMPSensor/Matrix3x3d;

    move-object/from16 v28, v7

    mul-double v11, v9, v9

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v22, v20, v11

    mul-double v22, v22, v3

    add-double v29, v11, v22

    mul-double v11, v9, v13

    sub-double v22, v20, v3

    mul-double v11, v11, v22

    mul-double v35, v15, v1

    sub-double v31, v11, v35

    mul-double v33, v9, v15

    mul-double v41, v33, v22

    mul-double v43, v13, v1

    add-double v33, v41, v43

    add-double v35, v11, v35

    mul-double v11, v13, v13

    sub-double v37, v20, v11

    mul-double v37, v37, v3

    add-double v37, v11, v37

    mul-double v13, v13, v15

    mul-double v13, v13, v22

    mul-double v9, v9, v1

    sub-double v39, v13, v9

    sub-double v41, v41, v43

    add-double v43, v13, v9

    mul-double v1, v15, v15

    sub-double v20, v20, v1

    mul-double v20, v20, v3

    add-double v45, v1, v20

    invoke-direct/range {v28 .. v46}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>(DDDDDDDDD)V

    .line 219
    new-instance v1, Lcom/visualon/OSMPSensor/Matrix3x3d;

    move-object/from16 v17, v1

    neg-double v2, v5

    move-wide/from16 v20, v2

    const-wide/16 v22, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v32, 0x0

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v17 .. v35}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>(DDDDDDDDD)V

    .line 223
    new-instance v2, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    .line 224
    invoke-virtual {v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setIdentity()V

    .line 225
    invoke-static {v1, v7, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 226
    invoke-static {v2, v8, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 238
    invoke-virtual {v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->getArrayF()[F

    move-result-object v1

    return-object v1
.end method

.method public getSensorRoll()F
    .locals 1

    .line 340
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSensorAngleY:F

    return v0
.end method

.method public pause()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    const/4 v1, 0x0

    const-string v2, "@@@@VOOSMPSphericalVideoViewImpl"

    if-nez v0, :cond_1

    .line 293
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "mSphericalImpl is null"

    .line 294
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 299
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "sensor pause"

    .line 300
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->pauseTracking()V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchPitch:F

    .line 62
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchRoll:F

    .line 63
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchHeading:F

    const/high16 v1, 0x42820000    # 65.0f

    .line 64
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mFOV:F

    .line 65
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSensorAngleY:F

    const/high16 v0, 0x43b40000    # 360.0f

    .line 66
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleConstraint:F

    return-void
.end method

.method public resume()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    const/4 v1, 0x0

    const-string v2, "@@@@VOOSMPSphericalVideoViewImpl"

    if-nez v0, :cond_1

    .line 308
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "mSphericalImpl is null"

    .line 309
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 314
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "sensor resume"

    .line 315
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->resumeTracking()V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0

    .line 345
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->aspectRatio:F

    .line 346
    iget p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mHeadingAngleConstraint:F

    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->setHeadingAngleConstraint(F)V

    return-void
.end method

.method public setFOV(F)V
    .locals 0

    .line 336
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mFOV:F

    return-void
.end method

.method public setTouchHeading(F)V
    .locals 1

    .line 332
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchHeading:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchHeading:F

    return-void
.end method

.method public setTouchPitch(F)V
    .locals 1

    .line 322
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchPitch:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchPitch:F

    return-void
.end method

.method public setTouchRoll(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mTouchRoll:F

    return-void
.end method

.method public start()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    const/4 v1, 0x0

    const-string v2, "@@@@VOOSMPSphericalVideoViewImpl"

    if-nez v0, :cond_1

    .line 263
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "mSphericalImpl is null"

    .line 264
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 269
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "sensor start"

    .line 270
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->startTracking()V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    const/4 v1, 0x0

    const-string v2, "@@@@VOOSMPSphericalVideoViewImpl"

    if-nez v0, :cond_1

    .line 278
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "mSphericalImpl is null"

    .line 279
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 284
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "sensor stop"

    .line 285
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSphericalVideoViewImpl;->mSphericalImpl:Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->stopTracking()V

    return-void
.end method
