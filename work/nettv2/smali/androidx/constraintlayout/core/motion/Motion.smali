.class public Landroidx/constraintlayout/core/motion/Motion;
.super Ljava/lang/Object;
.source "Motion.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# static fields
.field private static final DEBUG:Z = false

.field public static final DRAW_PATH_AS_CONFIGURED:I = 0x4

.field public static final DRAW_PATH_BASIC:I = 0x1

.field public static final DRAW_PATH_CARTESIAN:I = 0x3

.field public static final DRAW_PATH_NONE:I = 0x0

.field public static final DRAW_PATH_RECTANGLE:I = 0x5

.field public static final DRAW_PATH_RELATIVE:I = 0x2

.field public static final DRAW_PATH_SCREEN:I = 0x6

.field private static final FAVOR_FIXED_SIZE_VIEWS:Z = false

.field public static final HORIZONTAL_PATH_X:I = 0x2

.field public static final HORIZONTAL_PATH_Y:I = 0x3

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field private static final INTERPOLATOR_UNDEFINED:I = -0x3

.field public static final PATH_PERCENT:I = 0x0

.field public static final PATH_PERPENDICULAR:I = 0x1

.field public static final ROTATION_LEFT:I = 0x2

.field public static final ROTATION_RIGHT:I = 0x1

.field private static final SPLINE_STRING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MotionController"

.field public static final VERTICAL_PATH_X:I = 0x4

.field public static final VERTICAL_PATH_Y:I = 0x5


# instance fields
.field private MAX_DIMENSION:I

.field private mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field private mAttributeInterpolatorCount:[I

.field private mAttributeNames:[Ljava/lang/String;

.field private mAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;"
        }
    .end annotation
.end field

.field private mCurveFitType:I

.field private mCycleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/key/MotionKey;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/motion/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field private mNoMovement:Z

.field private mPathMotionArc:I

.field private mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

.field private mQuantizeMotionPhase:F

.field private mQuantizeMotionSteps:I

.field private mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

.field public mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;",
            ">;"
        }
    .end annotation
.end field

.field private mTransformPivotTarget:I

.field private mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

.field private mValuesBuff:[F

.field private mVelocity:[F

.field public mView:Landroidx/constraintlayout/core/motion/MotionWidget;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Rect;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 4
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 5
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 6
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    .line 7
    new-instance v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    iput v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    const/4 v1, 0x4

    .line 9
    iput v1, p0, Landroidx/constraintlayout/core/motion/Motion;->MAX_DIMENSION:I

    new-array v1, v1, [F

    .line 10
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [F

    .line 12
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mVelocity:[F

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    .line 14
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    .line 15
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 17
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 18
    iput v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    .line 19
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    .line 21
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/Motion;->setView(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    return-void
.end method

.method private getAdjustedPosition(F[F)F
    .locals 10

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1
    aput v1, p2, v0

    goto :goto_0

    .line 2
    :cond_0
    iget v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_2

    cmpg-float v4, p1, v2

    if-gez v4, :cond_1

    const/4 p1, 0x0

    :cond_1
    cmpl-float v4, p1, v2

    if-lez v4, :cond_2

    float-to-double v4, p1

    cmpg-double v8, v4, v6

    if-gez v8, :cond_2

    sub-float/2addr p1, v2

    mul-float p1, p1, v3

    .line 3
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 4
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 5
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 6
    iget-object v7, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v7, :cond_3

    .line 7
    iget v8, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    cmpg-float v9, v8, p1

    if-gez v9, :cond_4

    move-object v3, v7

    move v2, v8

    goto :goto_1

    .line 8
    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9
    iget v4, v6, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 10
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    sub-float/2addr p1, v2

    sub-float/2addr v1, v2

    div-float/2addr p1, v1

    float-to-double v4, p1

    .line 11
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float p1, p1, v1

    add-float/2addr p1, v2

    if-eqz p2, :cond_7

    .line 12
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/Easing;->getDiff(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p2, v0

    :cond_7
    return p1
.end method

.method private static getInterpolator(ILjava/lang/String;I)Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;
    .locals 0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object p0

    .line 2
    new-instance p1, Landroidx/constraintlayout/core/motion/Motion$1;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/motion/Motion$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    return-object p1
.end method

.method private getPreCycleDistance()F
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/16 v2, 0x63

    int-to-float v2, v2

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v10, v9, v2

    const-wide/16 v2, 0x0

    move-wide v13, v2

    move-wide v15, v13

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v8, v2, :cond_6

    int-to-float v2, v8

    mul-float v2, v2, v10

    float-to-double v3, v2

    .line 1
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 2
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/high16 v17, 0x7fc00000    # Float.NaN

    const/16 v18, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v9, v19

    check-cast v9, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    iget-object v11, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    if-eqz v11, :cond_1

    .line 4
    iget v12, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    cmpg-float v20, v12, v2

    if-gez v20, :cond_0

    move-object v5, v11

    move/from16 v18, v12

    goto :goto_2

    .line 5
    :cond_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 6
    iget v9, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move/from16 v17, v9

    :cond_1
    :goto_2
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_4

    .line 7
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v17, 0x3f800000    # 1.0f

    :cond_3
    sub-float v2, v2, v18

    sub-float v17, v17, v18

    div-float v2, v2, v17

    float-to-double v2, v2

    .line 8
    invoke-virtual {v5, v2, v3}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v17

    add-float v2, v2, v18

    float-to-double v2, v2

    move-wide v3, v2

    .line 9
    :cond_4
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 10
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    const/4 v9, 0x0

    move v11, v7

    move-object v7, v1

    move v12, v8

    move v8, v9

    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    const/4 v2, 0x1

    if-lez v12, :cond_5

    float-to-double v3, v11

    aget v5, v1, v2

    float-to-double v5, v5

    sub-double v5, v15, v5

    const/4 v7, 0x0

    aget v8, v1, v7

    float-to-double v8, v8

    sub-double/2addr v13, v8

    .line 11
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    add-double/2addr v5, v3

    double-to-float v3, v5

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    move v3, v11

    :goto_3
    aget v4, v1, v7

    float-to-double v13, v4

    aget v2, v1, v2

    float-to-double v4, v2

    add-int/lit8 v8, v12, 0x1

    move v7, v3

    move-wide v15, v4

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_6
    move v11, v7

    return v11
.end method

.method private insertKey(Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 2
    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    iget v4, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v1, " KeyPath position \""

    .line 5
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\" outside of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionController"

    invoke-static {v2, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private readView(Landroidx/constraintlayout/core/motion/MotionPaths;)V
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    return-void
.end method


# virtual methods
.method public addKey(Landroidx/constraintlayout/core/motion/key/MotionKey;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buildKeyFrames([F[I[I)I
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v1

    if-eqz p2, :cond_0

    .line 2
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/motion/MotionPaths;

    add-int/lit8 v5, v3, 0x1

    .line 3
    iget v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mMode:I

    aput v4, p2, v3

    move v3, v5

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    iget-object p2, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/motion/MotionPaths;

    add-int/lit8 v4, v2, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    .line 5
    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    aput v3, p3, v2

    move v2, v4

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 6
    :goto_2
    array-length v2, v1

    if-ge p2, v2, :cond_2

    .line 7
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v2, v2, v0

    aget-wide v3, v1, p2

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 8
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    aget-wide v3, v1, p2

    iget-object v5, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    move-object v7, p1

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 9
    :cond_2
    div-int/lit8 p3, p3, 0x2

    return p3

    :cond_3
    return v0
.end method

.method public buildPath([FI)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v8, p2

    add-int/lit8 v1, v8, -0x1

    int-to-float v1, v1

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v10, v9, v1

    .line 1
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v11, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-object v11, v1

    .line 2
    :goto_0
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v4, "translationY"

    if-nez v1, :cond_1

    move-object v12, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-object v12, v1

    .line 3
    :goto_1
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    if-nez v1, :cond_2

    move-object v13, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    move-object v13, v1

    .line 4
    :goto_2
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    :goto_3
    move-object v14, v3

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v8, :cond_10

    int-to-float v1, v7

    mul-float v1, v1, v10

    .line 5
    iget v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStaggerScale:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v9

    if-eqz v4, :cond_5

    cmpg-float v4, v1, v3

    if-gez v4, :cond_4

    const/4 v1, 0x0

    :cond_4
    cmpl-float v4, v1, v3

    if-lez v4, :cond_5

    float-to-double v4, v1

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v4, v16

    if-gez v6, :cond_5

    sub-float/2addr v1, v3

    mul-float v1, v1, v2

    .line 6
    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :cond_5
    move v6, v1

    float-to-double v1, v6

    .line 7
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v4, v4, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 8
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v16, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 9
    iget-object v15, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    move-wide/from16 v18, v1

    if-eqz v15, :cond_7

    .line 10
    iget v1, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    cmpg-float v2, v1, v6

    if-gez v2, :cond_6

    move/from16 v16, v1

    move-object v4, v15

    goto :goto_6

    .line 11
    :cond_6
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12
    iget v1, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    move v5, v1

    :cond_7
    :goto_6
    move-wide/from16 v1, v18

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    move-wide/from16 v18, v1

    if-eqz v4, :cond_a

    .line 13
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_9

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_9
    sub-float v1, v6, v16

    sub-float v5, v5, v16

    div-float/2addr v1, v5

    float-to-double v1, v1

    .line 14
    invoke-virtual {v4, v1, v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->get(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v5

    add-float v1, v1, v16

    float-to-double v1, v1

    move-wide v2, v1

    goto :goto_7

    :cond_a
    move-wide/from16 v2, v18

    .line 15
    :goto_7
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v9, 0x0

    aget-object v1, v1, v9

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 16
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v1, :cond_b

    .line 17
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    array-length v5, v4

    if-lez v5, :cond_b

    .line 18
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 19
    :cond_b
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    mul-int/lit8 v15, v7, 0x2

    move v9, v6

    move-object/from16 v6, p1

    move/from16 v16, v7

    move v7, v15

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    if-eqz v13, :cond_c

    .line 20
    aget v1, p1, v15

    invoke-virtual {v13, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    move-result v2

    add-float/2addr v2, v1

    aput v2, p1, v15

    goto :goto_8

    :cond_c
    if-eqz v11, :cond_d

    .line 21
    aget v1, p1, v15

    invoke-virtual {v11, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v2

    add-float/2addr v2, v1

    aput v2, p1, v15

    :cond_d
    :goto_8
    if-eqz v14, :cond_e

    add-int/lit8 v15, v15, 0x1

    .line 22
    aget v1, p1, v15

    invoke-virtual {v14, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->get(F)F

    move-result v2

    add-float/2addr v2, v1

    aput v2, p1, v15

    goto :goto_9

    :cond_e
    if-eqz v12, :cond_f

    add-int/lit8 v15, v15, 0x1

    .line 23
    aget v1, p1, v15

    invoke-virtual {v12, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->get(F)F

    move-result v2

    add-float/2addr v2, v1

    aput v2, p1, v15

    :cond_f
    :goto_9
    add-int/lit8 v7, v16, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_10
    return-void
.end method

.method public buildRect(F[FI)V
    .locals 15

    move-object v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 1
    invoke-direct {p0, v2, v1}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    move-result v1

    .line 2
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    float-to-double v4, v1

    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v2, v4, v5, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 3
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 4
    iget v5, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 5
    iget v6, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 6
    iget v7, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 7
    iget v8, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 8
    :goto_0
    array-length v9, v2

    if-ge v3, v9, :cond_4

    .line 9
    aget-wide v9, v4, v3

    double-to-float v9, v9

    .line 10
    aget v10, v2, v3

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    const/4 v11, 0x4

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_0
    move v8, v9

    goto :goto_1

    :cond_1
    move v7, v9

    goto :goto_1

    :cond_2
    move v6, v9

    goto :goto_1

    :cond_3
    move v5, v9

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_4
    iget-object v2, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    if-eqz v2, :cond_5

    .line 12
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/Motion;->getCenterX()F

    move-result v2

    .line 13
    iget-object v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/Motion;->getCenterY()F

    move-result v1

    float-to-double v2, v2

    float-to-double v4, v5

    float-to-double v9, v6

    .line 14
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v11, v11, v4

    add-double/2addr v11, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v7, v2

    float-to-double v13, v3

    sub-double/2addr v11, v13

    double-to-float v3, v11

    float-to-double v11, v1

    .line 15
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v9, v9, v4

    sub-double/2addr v11, v9

    div-float v1, v8, v2

    float-to-double v1, v1

    sub-double/2addr v11, v1

    double-to-float v6, v11

    move v5, v3

    :cond_5
    add-float/2addr v7, v5

    add-float/2addr v8, v6

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 16
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 17
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    const/4 v1, 0x0

    add-float/2addr v5, v1

    add-float/2addr v6, v1

    add-float/2addr v7, v1

    add-float/2addr v8, v1

    add-int/lit8 v1, p3, 0x1

    .line 18
    aput v5, p2, p3

    add-int/lit8 v2, v1, 0x1

    .line 19
    aput v6, p2, v1

    add-int/lit8 v1, v2, 0x1

    .line 20
    aput v7, p2, v2

    add-int/lit8 v2, v1, 0x1

    .line 21
    aput v6, p2, v1

    add-int/lit8 v1, v2, 0x1

    .line 22
    aput v7, p2, v2

    add-int/lit8 v2, v1, 0x1

    .line 23
    aput v8, p2, v1

    add-int/lit8 v1, v2, 0x1

    .line 24
    aput v5, p2, v2

    .line 25
    aput v8, p2, v1

    return-void
.end method

.method public getAnimateRelativeTo()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mAnimateRelativeTo:I

    return v0
.end method

.method public getCenter(D[F[F)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    const/4 v4, 0x4

    new-array v5, v4, [D

    new-array v6, v4, [D

    .line 1
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7, v1, v2, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 2
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v7, v7, v8

    invoke-virtual {v7, v1, v2, v6}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    const/4 v7, 0x0

    .line 3
    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 4
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 5
    iget v11, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 6
    iget v12, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 7
    iget v13, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 8
    iget v14, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 9
    :goto_0
    array-length v4, v10

    if-ge v15, v4, :cond_4

    .line 10
    aget-wide v0, v5, v15

    double-to-float v0, v0

    .line 11
    aget-wide v2, v6, v15

    double-to-float v2, v2

    .line 12
    aget v3, v10, v15

    const/4 v1, 0x1

    if-eq v3, v1, :cond_3

    const/4 v1, 0x2

    if-eq v3, v1, :cond_2

    const/4 v1, 0x3

    if-eq v3, v1, :cond_1

    const/4 v1, 0x4

    if-eq v3, v1, :cond_0

    goto :goto_1

    :cond_0
    move v14, v0

    move/from16 v17, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    move v13, v0

    move/from16 v16, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    move v12, v0

    move v8, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    move v11, v0

    move v7, v2

    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    goto :goto_0

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    div-float v16, v16, v0

    add-float v16, v16, v7

    div-float v17, v17, v0

    add-float v17, v17, v8

    .line 13
    iget-object v1, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    if-eqz v1, :cond_5

    const/4 v3, 0x2

    new-array v4, v3, [F

    new-array v3, v3, [F

    move-wide/from16 v5, p1

    .line 14
    invoke-virtual {v1, v5, v6, v4, v3}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    const/4 v1, 0x0

    aget v5, v4, v1

    const/4 v2, 0x1

    aget v4, v4, v2

    aget v6, v3, v1

    aget v1, v3, v2

    float-to-double v9, v5

    float-to-double v2, v11

    float-to-double v11, v12

    .line 15
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v15, v15, v2

    add-double/2addr v15, v9

    div-float v5, v13, v0

    float-to-double v9, v5

    sub-double v9, v15, v9

    double-to-float v5, v9

    float-to-double v9, v4

    .line 16
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v2

    sub-double/2addr v9, v15

    div-float v2, v14, v0

    float-to-double v2, v2

    sub-double/2addr v9, v2

    double-to-float v2, v9

    float-to-double v3, v6

    float-to-double v6, v7

    .line 17
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v9, v9, v6

    add-double/2addr v9, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    move/from16 p2, v1

    float-to-double v0, v8

    mul-double v3, v3, v0

    add-double/2addr v3, v9

    double-to-float v3, v3

    move/from16 v4, p2

    float-to-double v8, v4

    .line 18
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v6

    sub-double v8, v8, v18

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v0

    add-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v17, v0

    move v12, v2

    move/from16 v16, v3

    move v11, v5

    const/high16 v0, 0x40000000    # 2.0f

    :cond_5
    div-float/2addr v13, v0

    add-float/2addr v13, v11

    const/4 v1, 0x0

    add-float/2addr v13, v1

    const/4 v2, 0x0

    .line 19
    aput v13, p3, v2

    div-float/2addr v14, v0

    add-float/2addr v14, v12

    add-float/2addr v14, v1

    const/4 v0, 0x1

    .line 20
    aput v14, p3, v0

    .line 21
    aput v16, p4, v2

    .line 22
    aput v17, p4, v0

    return-void
.end method

.method public getCenterX()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenterY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDrawPath()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 3
    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getFinalHeight()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    return v0
.end method

.method public getFinalWidth()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    return v0
.end method

.method public getFinalX()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    return v0
.end method

.method public getFinalY()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getKeyFrame(I)Landroidx/constraintlayout/core/motion/MotionPaths;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/core/motion/MotionPaths;

    return-object p1
.end method

.method public getKeyFrameInfo(I[I)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 2
    iget v3, v14, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    if-eq v3, v1, :cond_0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aput v11, p2, v13

    add-int/lit8 v4, v13, 0x1

    .line 4
    aput v3, p2, v4

    const/4 v15, 0x1

    add-int/lit8 v16, v4, 0x1

    .line 5
    iget v3, v14, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    aput v3, p2, v16

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    .line 6
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v4, v4, v11

    float-to-double v5, v3

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 7
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    const/4 v9, 0x0

    move-wide v4, v5

    move-object v6, v7

    move-object v7, v8

    move-object v8, v2

    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    add-int/lit8 v16, v16, 0x1

    aget v3, v2, v11

    .line 8
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    aput v3, p2, v16

    add-int/lit8 v16, v16, 0x1

    aget v3, v2, v15

    .line 9
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    aput v3, p2, v16

    .line 10
    instance-of v3, v14, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    if-eqz v3, :cond_1

    .line 11
    check-cast v14, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    add-int/lit8 v16, v16, 0x1

    .line 12
    iget v3, v14, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPositionType:I

    aput v3, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 13
    iget v3, v14, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentX:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    aput v3, p2, v16

    add-int/lit8 v16, v16, 0x1

    .line 14
    iget v3, v14, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mPercentY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    aput v3, p2, v16

    :cond_1
    add-int/lit8 v16, v16, 0x1

    sub-int v3, v16, v13

    .line 15
    aput v3, p2, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v16

    goto :goto_0

    :cond_2
    return v12
.end method

.method public getKeyFramePositions([I[F)I
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/motion/key/MotionKey;

    add-int/lit8 v11, v2, 0x1

    .line 2
    iget v4, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iget v3, v3, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v3, v4

    aput v3, p1, v2

    int-to-float v2, v4

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 3
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v3, v3, v1

    float-to-double v4, v2

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v3, v4, v5, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 4
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v6, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v7, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    move-object v8, p2

    move v9, v10

    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/core/motion/MotionPaths;->getCenter(D[I[D[FI)V

    add-int/lit8 v10, v10, 0x2

    move v2, v11

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final getPos(D)[D
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    array-length v2, v1

    if-lez v2, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    return-object p1
.end method

.method public getStartHeight()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    return v0
.end method

.method public getStartWidth()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    return v0
.end method

.method public getStartX()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    return v0
.end method

.method public getStartY()F
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    return v0
.end method

.method public getTransformPivotTarget()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    return v0
.end method

.method public getView()Landroidx/constraintlayout/core/motion/MotionWidget;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    return-object v0
.end method

.method public interpolate(Landroidx/constraintlayout/core/motion/MotionWidget;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const/4 v1, 0x0

    move/from16 v2, p2

    .line 1
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/core/motion/Motion;->getAdjustedPosition(F[F)F

    move-result v1

    .line 2
    iget v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionSteps:I

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v2, v3, :cond_3

    int-to-float v2, v2

    div-float v2, v4, v2

    div-float v3, v1, v2

    float-to-double v5, v3

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v3, v5

    mul-float v3, v3, v2

    rem-float/2addr v1, v2

    div-float/2addr v1, v2

    .line 4
    iget v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5
    iget v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionPhase:F

    add-float/2addr v1, v5

    rem-float/2addr v1, v4

    .line 6
    :cond_0
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {v4, v1}, Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_0

    :cond_1
    float-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v4, v6

    if-lez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    mul-float v1, v1, v2

    add-float/2addr v1, v3

    :cond_3
    move v9, v1

    .line 8
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    .line 10
    invoke-virtual {v2, v8, v9}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setProperty(Landroidx/constraintlayout/core/motion/utils/TypedValues;F)V

    goto :goto_1

    .line 11
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 12
    aget-object v1, v1, v2

    float-to-double v3, v9

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 13
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    aget-object v1, v1, v2

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 14
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    if-eqz v1, :cond_5

    .line 15
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    array-length v5, v2

    if-lez v5, :cond_5

    .line 16
    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[D)V

    .line 17
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getSlope(D[D)V

    .line 18
    :cond_5
    iget-boolean v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mNoMovement:Z

    if-nez v1, :cond_14

    .line 19
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    iget-object v6, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    .line 20
    iget v7, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    .line 21
    iget v10, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    .line 22
    iget v11, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    .line 23
    iget v12, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    .line 24
    array-length v13, v2

    if-eqz v13, :cond_6

    iget-object v13, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    array-length v13, v13

    array-length v14, v2

    add-int/lit8 v14, v14, -0x1

    aget v14, v2, v14

    if-gt v13, v14, :cond_6

    .line 25
    array-length v13, v2

    add-int/lit8 v13, v13, -0x1

    aget v13, v2, v13

    add-int/lit8 v13, v13, 0x1

    .line 26
    new-array v14, v13, [D

    iput-object v14, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    .line 27
    new-array v13, v13, [D

    iput-object v13, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    .line 28
    :cond_6
    iget-object v13, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v13, v14, v15}, Ljava/util/Arrays;->fill([DD)V

    const/4 v13, 0x0

    .line 29
    :goto_2
    array-length v14, v2

    if-ge v13, v14, :cond_7

    .line 30
    iget-object v14, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    aget v15, v2, v13

    aget-wide v16, v5, v13

    aput-wide v16, v14, v15

    .line 31
    iget-object v14, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    aget v15, v2, v13

    aget-wide v16, v6, v13

    aput-wide v16, v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x7fc00000    # Float.NaN

    const/16 v16, 0x0

    move/from16 v17, v9

    .line 32
    :goto_3
    iget-object v9, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    array-length v0, v9

    if-ge v13, v0, :cond_f

    .line 33
    aget-wide v18, v9, v13

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_8

    move/from16 p2, v14

    move/from16 p3, v15

    goto :goto_5

    :cond_8
    const-wide/16 v18, 0x0

    .line 34
    iget-object v0, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    aget-wide v20, v0, v13

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object v0, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempValue:[D

    aget-wide v20, v0, v13

    add-double v18, v20, v18

    :goto_4
    move-wide/from16 v8, v18

    double-to-float v0, v8

    .line 35
    iget-object v8, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mTempDelta:[D

    move/from16 p2, v14

    move/from16 p3, v15

    aget-wide v14, v8, v13

    double-to-float v8, v14

    const/4 v9, 0x1

    if-eq v13, v9, :cond_e

    const/4 v9, 0x2

    if-eq v13, v9, :cond_d

    const/4 v9, 0x3

    if-eq v13, v9, :cond_c

    const/4 v9, 0x4

    if-eq v13, v9, :cond_b

    const/4 v8, 0x5

    if-eq v13, v8, :cond_a

    :goto_5
    move/from16 v15, p3

    goto :goto_6

    :cond_a
    move v15, v0

    goto :goto_6

    :cond_b
    move/from16 v15, p3

    move v12, v0

    move v14, v8

    goto :goto_7

    :cond_c
    move/from16 v14, p2

    move/from16 v15, p3

    move v11, v0

    move/from16 v16, v8

    goto :goto_7

    :cond_d
    move/from16 v15, p3

    move v10, v0

    move v5, v8

    goto :goto_6

    :cond_e
    move/from16 v15, p3

    move v7, v0

    move v2, v8

    :goto_6
    move/from16 v14, p2

    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    goto :goto_3

    :cond_f
    move/from16 p2, v14

    move/from16 p3, v15

    .line 36
    iget-object v0, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/core/motion/Motion;

    if-eqz v0, :cond_12

    const/4 v1, 0x2

    new-array v8, v1, [F

    new-array v1, v1, [F

    .line 37
    invoke-virtual {v0, v3, v4, v8, v1}, Landroidx/constraintlayout/core/motion/Motion;->getCenter(D[F[F)V

    const/4 v0, 0x0

    aget v9, v8, v0

    const/4 v13, 0x1

    aget v8, v8, v13

    aget v0, v1, v0

    aget v1, v1, v13

    float-to-double v13, v9

    move-wide/from16 v18, v3

    float-to-double v3, v7

    float-to-double v9, v10

    .line 38
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double v15, v15, v3

    add-double/2addr v15, v13

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v11, v7

    float-to-double v13, v7

    sub-double v13, v15, v13

    double-to-float v7, v13

    float-to-double v13, v8

    .line 39
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v3

    sub-double/2addr v13, v15

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v12, v8

    move v15, v7

    float-to-double v7, v8

    sub-double/2addr v13, v7

    double-to-float v7, v13

    float-to-double v13, v0

    move v0, v7

    float-to-double v7, v2

    .line 40
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v7

    add-double v20, v20, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v13, v13, v3

    move/from16 p5, v11

    move/from16 p4, v12

    float-to-double v11, v5

    mul-double v13, v13, v11

    add-double v13, v13, v20

    double-to-float v2, v13

    float-to-double v13, v1

    .line 41
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v7

    sub-double v13, v13, v20

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v7, v7, v3

    mul-double v7, v7, v11

    add-double/2addr v7, v13

    double-to-float v1, v7

    .line 42
    array-length v3, v6

    const/4 v4, 0x2

    if-lt v3, v4, :cond_10

    float-to-double v3, v2

    const/4 v5, 0x0

    .line 43
    aput-wide v3, v6, v5

    float-to-double v3, v1

    const/4 v5, 0x1

    .line 44
    aput-wide v3, v6, v5

    .line 45
    :cond_10
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_11

    move/from16 v3, p3

    float-to-double v3, v3

    float-to-double v5, v1

    float-to-double v1, v2

    .line 46
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    add-double/2addr v1, v3

    double-to-float v1, v1

    move-object/from16 v8, p1

    .line 47
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setRotationZ(F)V

    goto :goto_8

    :cond_11
    move-object/from16 v8, p1

    :goto_8
    move v10, v0

    move v7, v15

    goto :goto_9

    :cond_12
    move-object/from16 v8, p1

    move-wide/from16 v18, v3

    move/from16 p5, v11

    move/from16 p4, v12

    move/from16 v3, p3

    .line 48
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_13

    const/high16 v0, 0x40000000    # 2.0f

    div-float v16, v16, v0

    add-float v1, v16, v2

    div-float v14, p2, v0

    add-float/2addr v14, v5

    const/4 v0, 0x0

    float-to-double v4, v0

    float-to-double v2, v3

    float-to-double v11, v14

    float-to-double v0, v1

    .line 49
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    add-double/2addr v0, v4

    double-to-float v0, v0

    .line 50
    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/motion/MotionWidget;->setRotationZ(F)V

    :cond_13
    :goto_9
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v7, v0

    float-to-int v1, v7

    add-float/2addr v10, v0

    float-to-int v0, v10

    add-float v7, v7, p5

    float-to-int v2, v7

    add-float v10, v10, p4

    float-to-int v3, v10

    .line 51
    invoke-virtual {v8, v1, v0, v2, v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->layout(IIII)V

    goto :goto_a

    :cond_14
    move-wide/from16 v18, v3

    move/from16 v17, v9

    :goto_a
    move-object/from16 v0, p0

    .line 52
    iget v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 53
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    if-nez v1, :cond_15

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getParent()Landroidx/constraintlayout/core/motion/MotionWidget;

    move-result-object v1

    .line 55
    iget v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->findViewById(I)Landroidx/constraintlayout/core/motion/MotionWidget;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 56
    :cond_15
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    if-eqz v1, :cond_16

    .line 57
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    move-result v1

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 58
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    div-float/2addr v3, v2

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getBottom()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    move-result v4

    sub-int/2addr v2, v4

    if-lez v2, :cond_16

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 62
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/core/motion/MotionWidget;->setPivotX(F)V

    .line 63
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setPivotY(F)V

    :cond_16
    const/4 v1, 0x1

    .line 64
    :goto_b
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    array-length v3, v2

    if-ge v1, v3, :cond_17

    .line 65
    aget-object v2, v2, v1

    .line 66
    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    move-wide/from16 v4, v18

    invoke-virtual {v2, v4, v5, v3}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    .line 67
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/CustomVariable;

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mValuesBuff:[F

    invoke-virtual {v2, v8, v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->setInterpolatedValue(Landroidx/constraintlayout/core/motion/MotionWidget;[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 68
    :cond_17
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    cmpg-float v1, v17, v1

    if-gtz v1, :cond_18

    .line 69
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    goto :goto_c

    :cond_18
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v17, v1

    if-ltz v1, :cond_19

    .line 70
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    goto :goto_c

    .line 71
    :cond_19
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    if-eq v1, v2, :cond_1a

    const/4 v1, 0x4

    .line 72
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setVisibility(I)V

    .line 73
    :cond_1a
    :goto_c
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    .line 74
    :goto_d
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    .line 75
    aget-object v2, v2, v1

    move/from16 v9, v17

    invoke-virtual {v2, v9, v8}, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;->conditionallyFire(FLandroidx/constraintlayout/core/motion/MotionWidget;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1b
    move/from16 v9, v17

    goto :goto_e

    .line 76
    :cond_1c
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v4, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    invoke-static {v4, v2, v9, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v2

    .line 77
    iget v4, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    iget v5, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    invoke-static {v5, v4, v9, v4}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v4

    .line 78
    iget v5, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    iget v6, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    invoke-static {v6, v5, v9, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    .line 79
    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    iget v3, v3, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    invoke-static {v3, v1, v9, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v6, v2

    add-float/2addr v4, v3

    float-to-int v3, v4

    add-float/2addr v2, v5

    float-to-int v2, v2

    add-float/2addr v4, v1

    float-to-int v1, v4

    .line 80
    invoke-virtual {v8, v6, v3, v2, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->layout(IIII)V

    .line 81
    :goto_e
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1e

    .line 82
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 83
    instance-of v2, v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    if-eqz v2, :cond_1d

    .line 84
    check-cast v1, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;

    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const/4 v3, 0x1

    aget-wide v6, v2, v3

    move-object/from16 v2, p1

    move v3, v9

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator$PathRotateSet;->setPathRotate(Landroidx/constraintlayout/core/motion/MotionWidget;FDD)V

    goto :goto_f

    .line 85
    :cond_1d
    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setProperty(Landroidx/constraintlayout/core/motion/MotionWidget;F)V

    goto :goto_f

    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method public setDrawPath(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iput p1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->mDrawPath:I

    return-void
.end method

.method public setEnd(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 2
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 3
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/motion/Motion;->readView(Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    return-void
.end method

.method public setPathMotionArc(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    return-void
.end method

.method public setStart(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 2
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 3
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionPaths;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    return-void
.end method

.method public setStartState(Landroidx/constraintlayout/core/motion/utils/ViewState;Landroidx/constraintlayout/core/motion/MotionWidget;III)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    .line 2
    iput v1, v0, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    .line 3
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Rect;

    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p3, v1, :cond_1

    if-eq p3, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget p4, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    add-int/2addr p4, v1

    .line 5
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    add-int/2addr v1, v3

    .line 6
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    move-result v3

    add-int/2addr v3, v1

    div-int/2addr v3, v2

    sub-int/2addr p5, v3

    iput p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 7
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    move-result p5

    sub-int/2addr p4, p5

    div-int/2addr p4, v2

    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 8
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    move-result p5

    add-int/2addr p5, p4

    iput p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 9
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    move-result p5

    add-int/2addr p5, p4

    iput p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    goto :goto_0

    .line 10
    :cond_1
    iget p5, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->left:I

    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->right:I

    add-int/2addr p5, v1

    .line 11
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->top:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->bottom:I

    add-int/2addr v1, v3

    .line 12
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/2addr v1, v2

    iput v1, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    .line 13
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    move-result v1

    add-int/2addr v1, p5

    div-int/2addr v1, v2

    sub-int/2addr p4, v1

    iput p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    .line 14
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->width()I

    move-result p5

    add-int/2addr p5, p4

    iput p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->right:I

    .line 15
    iget p4, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/ViewState;->height()I

    move-result p5

    add-int/2addr p5, p4

    iput p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->bottom:I

    .line 16
    :goto_0
    iget-object p4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget p5, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    int-to-float p5, p5

    iget v1, v0, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p4, p5, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionPaths;->setBounds(FFFF)V

    .line 17
    iget-object p4, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget p1, p1, Landroidx/constraintlayout/core/motion/utils/ViewState;->rotation:F

    invoke-virtual {p4, v0, p2, p3, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/MotionWidget;IF)V

    return-void
.end method

.method public setTransformPivotTarget(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotTarget:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mTransformPivotView:Landroidx/constraintlayout/core/motion/MotionWidget;

    return-void
.end method

.method public setValue(IF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setValue(II)Z
    .locals 2

    const/16 v0, 0x1fd

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 p2, 0x2c0

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1

    .line 1
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/Motion;->setPathMotionArc(I)V

    return v1
.end method

.method public setValue(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x2c1

    if-ne v1, p1, :cond_0

    .line 2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_INTERPOLATOR  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 3
    invoke-static {p1, p2, v0}, Landroidx/constraintlayout/core/motion/Motion;->getInterpolator(ILjava/lang/String;I)Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mQuantizeMotionInterpolator:Landroidx/constraintlayout/core/motion/utils/DifferentialInterpolator;

    :cond_0
    return v0
.end method

.method public setValue(IZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setView(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/Motion;->mView:Landroidx/constraintlayout/core/motion/MotionWidget;

    return-void
.end method

.method public setup(IIFJ)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    .line 1
    const-class v3, D

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 5
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mPathMotionArc:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 7
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iput v8, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    .line 8
    :cond_0
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    invoke-virtual {v8, v10, v5}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;Ljava/util/HashSet;)V

    .line 9
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    if-eqz v8, :cond_7

    .line 10
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 11
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    if-eqz v12, :cond_2

    .line 12
    check-cast v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;

    .line 13
    new-instance v12, Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v15, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    move-object v13, v12

    move-object/from16 v18, v14

    move/from16 v14, p1

    move-object/from16 v17, v15

    move/from16 v15, p2

    move-object/from16 v16, v11

    invoke-direct/range {v13 .. v18}, Landroidx/constraintlayout/core/motion/MotionPaths;-><init>(IILandroidx/constraintlayout/core/motion/key/MotionKeyPosition;Landroidx/constraintlayout/core/motion/MotionPaths;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    invoke-direct {v0, v12}, Landroidx/constraintlayout/core/motion/Motion;->insertKey(Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 14
    iget v11, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyPosition;->mCurveFit:I

    if-eq v11, v9, :cond_1

    .line 15
    iput v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    goto :goto_0

    .line 16
    :cond_2
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    if-eqz v12, :cond_3

    .line 17
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_0

    .line 18
    :cond_3
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    if-eqz v12, :cond_4

    .line 19
    invoke-virtual {v11, v4}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_0

    .line 20
    :cond_4
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    if-eqz v12, :cond_6

    if-nez v10, :cond_5

    .line 21
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :cond_5
    check-cast v11, Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {v11, v7}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setInterpolation(Ljava/util/HashMap;)V

    .line 24
    invoke-virtual {v11, v5}, Landroidx/constraintlayout/core/motion/key/MotionKey;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_0

    :cond_7
    const/4 v10, 0x0

    :cond_8
    const/4 v8, 0x0

    if-eqz v10, :cond_9

    new-array v8, v8, [Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 25
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    iput-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyTriggers:[Landroidx/constraintlayout/core/motion/key/MotionKeyTrigger;

    .line 26
    :cond_9
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    const-string v9, ","

    const-string v10, "CUSTOM,"

    const/4 v11, 0x1

    if-nez v8, :cond_14

    .line 27
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    .line 28
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 29
    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 30
    new-instance v13, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    invoke-direct {v13}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;-><init>()V

    .line 31
    invoke-virtual {v12, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v11, v14, v11

    .line 32
    iget-object v14, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-object/from16 p1, v8

    .line 33
    iget-object v8, v15, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    if-nez v8, :cond_a

    goto :goto_3

    .line 34
    :cond_a
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/motion/CustomVariable;

    if-eqz v8, :cond_b

    .line 35
    iget v15, v15, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    invoke-virtual {v13, v15, v8}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    :cond_b
    :goto_3
    move-object/from16 v8, p1

    goto :goto_2

    :cond_c
    move-object/from16 p1, v8

    .line 36
    invoke-static {v12, v13}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-result-object v8

    goto :goto_4

    :cond_d
    move-object/from16 p1, v8

    .line 37
    invoke-static {v12, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-result-object v8

    :goto_4
    if-nez v8, :cond_e

    goto :goto_5

    .line 38
    :cond_e
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    .line 39
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v11, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    const/4 v11, 0x1

    move-object/from16 v8, p1

    goto :goto_1

    .line 40
    :cond_f
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    if-eqz v8, :cond_11

    .line 41
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 42
    instance-of v12, v11, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;

    if-eqz v12, :cond_10

    .line 43
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/motion/key/MotionKey;->addValues(Ljava/util/HashMap;)V

    goto :goto_6

    .line 44
    :cond_11
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 45
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndPoint:Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    const/16 v12, 0x64

    invoke-virtual {v8, v11, v12}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 46
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_12
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 47
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 48
    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_13

    .line 49
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_8

    :cond_13
    const/4 v12, 0x0

    .line 50
    :goto_8
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    if-eqz v11, :cond_12

    .line 51
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setup(I)V

    goto :goto_7

    .line 52
    :cond_14
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_20

    .line 53
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-nez v8, :cond_15

    .line 54
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 55
    :cond_15
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 56
    iget-object v11, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    goto :goto_9

    .line 57
    :cond_16
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 58
    new-instance v11, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;

    invoke-direct {v11}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;-><init>()V

    .line 59
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    .line 60
    iget-object v13, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_17
    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 61
    iget-object v15, v14, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    if-nez v15, :cond_18

    goto :goto_a

    .line 62
    :cond_18
    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/core/motion/CustomVariable;

    if-eqz v15, :cond_17

    .line 63
    iget v14, v14, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    invoke-virtual {v11, v14, v15}, Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;->append(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    goto :goto_a

    .line 64
    :cond_19
    invoke-static {v8, v11}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeCustomSplineSet(Ljava/lang/String;Landroidx/constraintlayout/core/motion/utils/KeyFrameArray$CustomVar;)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-result-object v11

    goto :goto_b

    .line 65
    :cond_1a
    invoke-static {v8, v1, v2}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/core/motion/utils/SplineSet;

    move-result-object v11

    :goto_b
    if-nez v11, :cond_1b

    goto :goto_9

    .line 66
    :cond_1b
    invoke-virtual {v11, v8}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setType(Ljava/lang/String;)V

    goto :goto_9

    .line 67
    :cond_1c
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 69
    instance-of v4, v2, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    if-eqz v4, :cond_1d

    .line 70
    check-cast v2, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    goto :goto_c

    .line 71
    :cond_1e
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 73
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_e

    :cond_1f
    const/4 v4, 0x0

    .line 74
    :goto_e
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setup(I)V

    goto :goto_d

    .line 75
    :cond_20
    iget-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v4, v1, [Landroidx/constraintlayout/core/motion/MotionPaths;

    .line 76
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    const/4 v8, 0x0

    aput-object v7, v4, v8

    add-int/lit8 v7, v1, -0x1

    .line 77
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    aput-object v9, v4, v7

    .line 78
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_21

    iget v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    sget v9, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    if-ne v7, v9, :cond_21

    .line 79
    iput v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    .line 80
    :cond_21
    iget-object v7, v0, Landroidx/constraintlayout/core/motion/Motion;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x1

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/core/motion/MotionPaths;

    add-int/lit8 v11, v8, 0x1

    .line 81
    aput-object v9, v4, v8

    move v8, v11

    goto :goto_f

    :cond_22
    const/16 v7, 0x12

    .line 82
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 83
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v9, v9, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_23
    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 84
    iget-object v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v12, v12, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 85
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_23

    .line 86
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_24
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    .line 87
    invoke-virtual {v8, v5}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    .line 88
    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    const/4 v5, 0x0

    .line 89
    :goto_11
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    array-length v9, v8

    if-ge v5, v9, :cond_27

    .line 90
    aget-object v8, v8, v5

    .line 91
    iget-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    const/4 v10, 0x0

    aput v10, v9, v5

    const/4 v9, 0x0

    :goto_12
    if-ge v9, v1, :cond_26

    .line 92
    aget-object v10, v4, v9

    iget-object v10, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 93
    aget-object v10, v4, v9

    iget-object v10, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/core/motion/CustomVariable;

    if-eqz v10, :cond_25

    .line 94
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeInterpolatorCount:[I

    aget v9, v8, v5

    invoke-virtual {v10}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v10

    add-int/2addr v10, v9

    aput v10, v8, v5

    goto :goto_13

    :cond_25
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_26
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_27
    const/4 v5, 0x0

    .line 95
    aget-object v5, v4, v5

    iget v5, v5, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    const/4 v9, -0x1

    if-eq v5, v9, :cond_28

    const/4 v5, 0x1

    goto :goto_14

    :cond_28
    const/4 v5, 0x0

    .line 96
    :goto_14
    array-length v8, v8

    add-int/2addr v7, v8

    new-array v8, v7, [Z

    const/4 v9, 0x1

    :goto_15
    if-ge v9, v1, :cond_29

    .line 97
    aget-object v10, v4, v9

    add-int/lit8 v11, v9, -0x1

    aget-object v11, v4, v11

    invoke-virtual {v10, v11, v8, v5}, Landroidx/constraintlayout/core/motion/MotionPaths;->different(Landroidx/constraintlayout/core/motion/MotionPaths;[ZZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_29
    const/4 v5, 0x1

    const/4 v9, 0x0

    :goto_16
    if-ge v5, v7, :cond_2b

    .line 98
    aget-boolean v10, v8, v5

    if-eqz v10, :cond_2a

    add-int/lit8 v9, v9, 0x1

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 99
    :cond_2b
    new-array v5, v9, [I

    iput-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    .line 100
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 101
    new-array v9, v5, [D

    iput-object v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateData:[D

    .line 102
    new-array v5, v5, [D

    iput-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVelocity:[D

    const/4 v5, 0x1

    const/4 v9, 0x0

    :goto_17
    if-ge v5, v7, :cond_2d

    .line 103
    aget-boolean v10, v8, v5

    if-eqz v10, :cond_2c

    .line 104
    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    add-int/lit8 v11, v9, 0x1

    aput v5, v10, v9

    move v9, v11

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 105
    :cond_2d
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    array-length v5, v5

    new-array v7, v2, [I

    const/4 v8, 0x1

    aput v5, v7, v8

    const/4 v5, 0x0

    aput v1, v7, v5

    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 106
    new-array v7, v1, [D

    const/4 v8, 0x0

    :goto_18
    const/4 v9, 0x6

    if-ge v8, v1, :cond_30

    .line 107
    aget-object v10, v4, v8

    aget-object v11, v5, v8

    iget-object v12, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    new-array v13, v9, [F

    .line 108
    iget v14, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->position:F

    const/4 v15, 0x0

    aput v14, v13, v15

    iget v14, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    const/4 v15, 0x1

    aput v14, v13, v15

    iget v14, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    aput v14, v13, v2

    iget v2, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->width:F

    const/4 v14, 0x3

    aput v2, v13, v14

    iget v2, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->height:F

    const/4 v14, 0x4

    aput v2, v13, v14

    iget v2, v10, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathRotate:F

    const/4 v10, 0x5

    aput v2, v13, v10

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 109
    :goto_19
    array-length v14, v12

    if-ge v2, v14, :cond_2f

    .line 110
    aget v14, v12, v2

    if-ge v14, v9, :cond_2e

    add-int/lit8 v9, v10, 0x1

    .line 111
    aget v14, v12, v2

    aget v14, v13, v14

    float-to-double v14, v14

    aput-wide v14, v11, v10

    move v10, v9

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    const/4 v9, 0x6

    goto :goto_19

    .line 112
    :cond_2f
    aget-object v2, v4, v8

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    float-to-double v9, v2

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x2

    goto :goto_18

    :cond_30
    const/4 v2, 0x0

    .line 113
    :goto_1a
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    array-length v9, v8

    if-ge v2, v9, :cond_32

    .line 114
    aget v8, v8, v2

    .line 115
    sget-object v9, Landroidx/constraintlayout/core/motion/MotionPaths;->names:[Ljava/lang/String;

    const/4 v10, 0x6

    if-ge v8, v10, :cond_31

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v0, Landroidx/constraintlayout/core/motion/Motion;->mInterpolateVariables:[I

    aget v10, v10, v2

    aget-object v9, v9, v10

    const-string v10, " ["

    .line 117
    invoke-static {v8, v9, v10}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v1, :cond_31

    .line 118
    invoke-static {v8}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 119
    aget-object v10, v5, v9

    aget-wide v11, v10, v2

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 120
    :cond_32
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iput-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    const/4 v2, 0x0

    .line 121
    :goto_1c
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mAttributeNames:[Ljava/lang/String;

    array-length v9, v8

    if-ge v2, v9, :cond_3a

    .line 122
    aget-object v8, v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1d
    if-ge v9, v1, :cond_39

    .line 123
    aget-object v13, v4, v9

    .line 124
    iget-object v13, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_38

    if-nez v12, :cond_34

    .line 125
    new-array v11, v1, [D

    .line 126
    aget-object v12, v4, v9

    .line 127
    iget-object v12, v12, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/core/motion/CustomVariable;

    if-nez v12, :cond_33

    const/4 v12, 0x0

    goto :goto_1e

    .line 128
    :cond_33
    invoke-virtual {v12}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v12

    :goto_1e
    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x1

    aput v12, v13, v14

    const/4 v12, 0x0

    aput v1, v13, v12

    .line 129
    invoke-static {v3, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[D

    .line 130
    :cond_34
    aget-object v13, v4, v9

    iget v13, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    float-to-double v13, v13

    aput-wide v13, v11, v10

    .line 131
    aget-object v13, v4, v9

    aget-object v14, v12, v10

    .line 132
    iget-object v13, v13, Landroidx/constraintlayout/core/motion/MotionPaths;->customAttributes:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/core/motion/CustomVariable;

    if-nez v13, :cond_35

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 p1, v8

    move-object/from16 p2, v11

    move-object/from16 p3, v12

    goto :goto_20

    .line 133
    :cond_35
    invoke-virtual {v13}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v15

    move-object/from16 p1, v8

    const/4 v8, 0x1

    if-ne v15, v8, :cond_37

    .line 134
    invoke-virtual {v13}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    move-result v8

    move-object/from16 p2, v11

    move-object/from16 p3, v12

    float-to-double v11, v8

    const/4 v8, 0x0

    aput-wide v11, v14, v8

    :cond_36
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    goto :goto_20

    :cond_37
    move-object/from16 p2, v11

    move-object/from16 p3, v12

    .line 135
    invoke-virtual {v13}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    move-result v8

    .line 136
    new-array v11, v8, [F

    .line 137
    invoke-virtual {v13, v11}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValuesToInterpolate([F)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1f
    if-ge v12, v8, :cond_36

    add-int/lit8 v15, v13, 0x1

    move/from16 p4, v8

    .line 138
    aget v8, v11, v12

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    float-to-double v3, v8

    aput-wide v3, v14, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v8, p4

    move v13, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_1f

    :goto_20
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    goto :goto_21

    :cond_38
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 p1, v8

    :goto_21
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, p1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_1d

    :cond_39
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 139
    invoke-static {v11, v10}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v3

    .line 140
    invoke-static {v12, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 141
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    add-int/lit8 v2, v2, 0x1

    iget v9, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    invoke-static {v9, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v3

    aput-object v3, v8, v2

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_1c

    :cond_3a
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 142
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mSpline:[Landroidx/constraintlayout/core/motion/utils/CurveFit;

    iget v3, v0, Landroidx/constraintlayout/core/motion/Motion;->mCurveFitType:I

    invoke-static {v3, v7, v5}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 143
    aget-object v2, v17, v4

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3c

    .line 144
    new-array v2, v1, [I

    .line 145
    new-array v3, v1, [D

    const/4 v5, 0x2

    new-array v7, v5, [I

    const/4 v8, 0x1

    aput v5, v7, v8

    aput v1, v7, v4

    move-object/from16 v4, v16

    .line 146
    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v1, :cond_3b

    .line 147
    aget-object v7, v17, v5

    iget v7, v7, Landroidx/constraintlayout/core/motion/MotionPaths;->mPathMotionArc:I

    aput v7, v2, v5

    .line 148
    aget-object v7, v17, v5

    iget v7, v7, Landroidx/constraintlayout/core/motion/MotionPaths;->time:F

    float-to-double v7, v7

    aput-wide v7, v3, v5

    .line 149
    aget-object v7, v4, v5

    aget-object v8, v17, v5

    iget v8, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    float-to-double v8, v8

    const/4 v10, 0x0

    aput-wide v8, v7, v10

    .line 150
    aget-object v7, v4, v5

    aget-object v8, v17, v5

    iget v8, v8, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    float-to-double v8, v8

    const/4 v10, 0x1

    aput-wide v8, v7, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 151
    :cond_3b
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/core/motion/Motion;->mArcSpline:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    :cond_3c
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 152
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    .line 153
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    if-eqz v2, :cond_42

    .line 154
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    invoke-static {v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->makeWidgetCycle(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    move-result-object v4

    if-nez v4, :cond_3d

    goto :goto_23

    .line 156
    :cond_3d
    invoke-virtual {v4}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->variesByPath()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 157
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 158
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/motion/Motion;->getPreCycleDistance()F

    move-result v1

    .line 159
    :cond_3e
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setType(Ljava/lang/String;)V

    .line 160
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 161
    :cond_3f
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 162
    instance-of v4, v3, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    if-eqz v4, :cond_40

    .line 163
    check-cast v3, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;

    iget-object v4, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    goto :goto_24

    .line 164
    :cond_41
    iget-object v2, v0, Landroidx/constraintlayout/core/motion/Motion;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    .line 165
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setup(F)V

    goto :goto_25

    :cond_42
    return-void
.end method

.method public setupRelative(Landroidx/constraintlayout/core/motion/Motion;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v1, p1, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget-object v1, p1, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/core/motion/MotionPaths;->setupRelative(Landroidx/constraintlayout/core/motion/Motion;Landroidx/constraintlayout/core/motion/MotionPaths;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, " start: x: "

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mStartMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/core/motion/MotionPaths;->x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/Motion;->mEndMotionPath:Landroidx/constraintlayout/core/motion/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/core/motion/MotionPaths;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
