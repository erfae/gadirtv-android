.class Landroidx/constraintlayout/motion/widget/MotionPaths;
.super Ljava/lang/Object;
.source "MotionPaths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final OLD_WAY:Z = false

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field public static names:[Ljava/lang/String;


# instance fields
.field public attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public height:F

.field public mAnimateRelativeTo:I

.field public mDrawPath:I

.field public mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field public mMode:I

.field public mPathMotionArc:I

.field public mPathRotate:F

.field public mProgress:F

.field public mRelativeAngle:F

.field public mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

.field public mTempDelta:[D

.field public mTempValue:[D

.field public position:F

.field public time:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "position"

    const-string/jumbo v1, "x"

    const-string/jumbo v2, "y"

    const-string/jumbo v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 3
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 4
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 5
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 6
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 7
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 10
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    .line 11
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v0, v0, [D

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentWidth",
            "parentHeight",
            "c",
            "startTimePoint",
            "endTimePoint"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 14
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 15
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 16
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 17
    sget v6, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 18
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 19
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    const/4 v5, 0x0

    .line 20
    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 21
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 22
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v4, 0x12

    new-array v5, v4, [D

    .line 23
    iput-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v4, v4, [D

    .line 24
    iput-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 25
    iget v4, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    sget v5, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/high16 v8, 0x42c80000    # 100.0f

    if-eq v4, v5, :cond_a

    .line 26
    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 27
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 28
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 29
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 30
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 31
    :goto_0
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    iget v8, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 32
    :goto_1
    iget v9, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v10, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v9, v10

    .line 33
    iget v11, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v12, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v11, v12

    .line 34
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    mul-float v9, v9, v5

    add-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    .line 35
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    mul-float v11, v11, v8

    add-float/2addr v11, v12

    float-to-int v9, v11

    int-to-float v9, v9

    .line 36
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 37
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    if-eq v9, v7, :cond_7

    if-eq v9, v6, :cond_4

    .line 38
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    :goto_2
    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v7, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-static {v6, v7, v5, v7}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 39
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_3
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-static {v3, v5, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    goto :goto_8

    .line 40
    :cond_4
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v5, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v6, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-static {v5, v6, v4, v6}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    goto :goto_4

    :cond_5
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v5, v5, v6

    :goto_4
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 41
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-static {v3, v5, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v3

    goto :goto_5

    :cond_6
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_5
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    goto :goto_8

    .line 42
    :cond_7
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v4

    goto :goto_6

    :cond_8
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    :goto_6
    iget v6, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v7, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-static {v6, v7, v5, v7}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v5

    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 43
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_7

    :cond_9
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_7
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v5, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-static {v3, v5, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 44
    :goto_8
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 45
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 46
    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void

    .line 47
    :cond_a
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v4, v7, :cond_16

    if-eq v4, v6, :cond_11

    .line 48
    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 49
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 50
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 51
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_b

    move v6, v4

    goto :goto_9

    :cond_b
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 52
    :goto_9
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v4

    goto :goto_a

    :cond_c
    iget v7, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 53
    :goto_a
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float v10, v8, v9

    .line 54
    iget v11, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v12, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float v13, v11, v12

    .line 55
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 56
    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float v15, v9, v5

    add-float/2addr v15, v14

    .line 57
    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v16, v12, v5

    add-float v16, v16, v1

    .line 58
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float/2addr v8, v5

    add-float/2addr v8, v2

    .line 59
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float/2addr v11, v5

    add-float/2addr v11, v2

    sub-float/2addr v8, v15

    sub-float v11, v11, v16

    mul-float v2, v8, v4

    add-float/2addr v2, v14

    mul-float v10, v10, v6

    div-float v3, v10, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    .line 60
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v2, v11, v4

    add-float/2addr v2, v1

    mul-float v13, v13, v7

    div-float v1, v13, v5

    sub-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v2, v2

    .line 61
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v9, v10

    float-to-int v2, v9

    int-to-float v2, v2

    .line 62
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v12, v13

    float-to-int v2, v12

    int-to-float v2, v2

    .line 63
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    move-object/from16 v2, p3

    .line 64
    iget v5, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v4

    goto :goto_b

    :cond_d
    iget v5, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 65
    :goto_b
    iget v6, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    goto :goto_c

    :cond_e
    iget v6, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 66
    :goto_c
    iget v7, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_d

    :cond_f
    iget v4, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 67
    :goto_d
    iget v7, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_e

    :cond_10
    iget v9, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    const/4 v7, 0x0

    .line 68
    :goto_e
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v7, p4

    .line 69
    iget v10, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v5, v5, v8

    add-float/2addr v5, v10

    mul-float v9, v9, v11

    add-float/2addr v9, v5

    sub-float/2addr v9, v3

    float-to-int v3, v9

    int-to-float v3, v3

    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 70
    iget v3, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    mul-float v8, v8, v6

    add-float/2addr v8, v3

    mul-float v11, v11, v4

    add-float/2addr v11, v8

    sub-float/2addr v11, v1

    float-to-int v1, v11

    int-to-float v1, v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 71
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 72
    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_11
    move-object v7, v2

    move-object v2, v1

    .line 73
    iget v1, v2, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    .line 74
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 75
    iget v4, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 76
    iget v4, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_12

    move v4, v1

    goto :goto_f

    :cond_12
    iget v4, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 77
    :goto_f
    iget v6, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_13

    move v6, v1

    goto :goto_10

    :cond_13
    iget v6, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 78
    :goto_10
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v9, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float v10, v8, v9

    .line 79
    iget v11, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v12, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float v13, v11, v12

    .line 80
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 81
    iget v14, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float v15, v9, v5

    add-float/2addr v15, v14

    .line 82
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float v16, v12, v5

    add-float v16, v16, v7

    .line 83
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    div-float/2addr v8, v5

    add-float/2addr v8, v2

    .line 84
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    div-float/2addr v11, v5

    add-float/2addr v11, v2

    sub-float/2addr v8, v15

    sub-float v11, v11, v16

    mul-float v8, v8, v1

    add-float/2addr v8, v14

    mul-float v10, v10, v4

    div-float v2, v10, v5

    sub-float/2addr v8, v2

    float-to-int v2, v8

    int-to-float v2, v2

    .line 85
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v11, v11, v1

    add-float/2addr v11, v7

    mul-float v13, v13, v6

    div-float v1, v13, v5

    sub-float/2addr v11, v1

    float-to-int v1, v11

    int-to-float v1, v1

    .line 86
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v9, v10

    float-to-int v1, v9

    int-to-float v1, v1

    .line 87
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v12, v13

    float-to-int v1, v12

    int-to-float v1, v1

    .line 88
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v1, 0x2

    .line 89
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v1, p3

    .line 90
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_14

    move/from16 v2, p1

    int-to-float v2, v2

    .line 91
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 92
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 93
    :cond_14
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_15

    move/from16 v2, p2

    int-to-float v2, v2

    .line 94
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 95
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 96
    :cond_15
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 97
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 98
    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void

    :cond_16
    move-object v7, v2

    .line 99
    iget v2, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    .line 100
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 101
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 102
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_17

    move v4, v2

    goto :goto_11

    :cond_17
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 103
    :goto_11
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_18

    move v6, v2

    goto :goto_12

    :cond_18
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 104
    :goto_12
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v9, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v8, v9

    .line 105
    iget v9, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget v10, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v9, v10

    .line 106
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 107
    iget v10, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_19

    goto :goto_13

    :cond_19
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 108
    :goto_13
    iget v10, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v11, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    div-float v12, v11, v5

    add-float/2addr v12, v10

    .line 109
    iget v13, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v14, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float v15, v14, v5

    add-float/2addr v15, v13

    .line 110
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    div-float/2addr v1, v5

    add-float/2addr v1, v7

    .line 111
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float/2addr v3, v5

    add-float/2addr v3, v7

    sub-float/2addr v1, v12

    sub-float/2addr v3, v15

    mul-float v7, v1, v2

    add-float/2addr v10, v7

    mul-float v8, v8, v4

    div-float v4, v8, v5

    sub-float/2addr v10, v4

    float-to-int v10, v10

    int-to-float v10, v10

    .line 112
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    mul-float v2, v2, v3

    add-float/2addr v13, v2

    mul-float v9, v9, v6

    div-float v5, v9, v5

    sub-float/2addr v13, v5

    float-to-int v6, v13

    int-to-float v6, v6

    .line 113
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v11, v8

    float-to-int v6, v11

    int-to-float v6, v6

    .line 114
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v14, v9

    float-to-int v6, v14

    int-to-float v6, v6

    .line 115
    iput v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    move-object/from16 v6, p3

    .line 116
    iget v8, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, 0x0

    goto :goto_14

    :cond_1a
    iget v8, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    :goto_14
    neg-float v3, v3

    mul-float v3, v3, v8

    mul-float v1, v1, v8

    const/4 v8, 0x1

    .line 117
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    move-object/from16 v8, p4

    .line 118
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    add-float/2addr v9, v7

    sub-float/2addr v9, v4

    float-to-int v4, v9

    int-to-float v4, v4

    .line 119
    iget v7, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    add-float/2addr v7, v2

    sub-float/2addr v7, v5

    float-to-int v2, v7

    int-to-float v2, v2

    add-float/2addr v4, v3

    .line 120
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    add-float/2addr v2, v1

    .line 121
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 122
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 123
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 124
    iget v1, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    return-void
.end method

.method private diff(FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sub-float/2addr p1, p2

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x358637bd    # 1.0E-6f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eq p1, p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private static final xRotate(FFFFFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sin",
            "cos",
            "cx",
            "cy",
            "x",
            "y"
        }
    .end annotation

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    mul-float p4, p4, p1

    mul-float p5, p5, p0

    sub-float/2addr p4, p5

    add-float/2addr p4, p2

    return p4
.end method

.method private static final yRotate(FFFFFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sin",
            "cos",
            "cx",
            "cy",
            "x",
            "y"
        }
    .end annotation

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    mul-float p4, p4, p0

    mul-float p5, p5, p1

    add-float/2addr p5, p4

    add-float/2addr p5, p3

    return p5
.end method


# virtual methods
.method public applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 2
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 3
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 4
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 5
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 6
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    .line 7
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 8
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    .line 9
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->isContinuous()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I
    .locals 1
    .param p1    # Landroidx/constraintlayout/motion/widget/MotionPaths;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 1
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I

    move-result p1

    return p1
.end method

.method public configureRelativeTo(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toOrbit"
        }
    .end annotation

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getPos(D)[D

    return-void
.end method

.method public final different(Landroidx/constraintlayout/motion/widget/MotionPaths;[ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "points",
            "mask",
            "custom",
            "arcMode"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v0

    .line 2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v1

    const/4 v2, 0x0

    .line 3
    aget-boolean v3, p2, v2

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget v5, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-direct {p0, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v4

    or-int/2addr v3, v4

    aput-boolean v3, p2, v2

    const/4 v2, 0x1

    .line 4
    aget-boolean v3, p2, v2

    or-int/2addr v0, v1

    or-int/2addr p3, v0

    or-int v0, v3, p3

    aput-boolean v0, p2, v2

    const/4 v0, 0x2

    .line 5
    aget-boolean v1, p2, v0

    or-int/2addr p3, v1

    aput-boolean p3, p2, v0

    const/4 p3, 0x3

    .line 6
    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x4

    .line 7
    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    invoke-direct {p0, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    move-result p1

    or-int/2addr p1, v0

    aput-boolean p1, p2, p3

    return-void
.end method

.method public final getCenter(D[I[D[FI)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "toUse",
            "data",
            "point",
            "offset"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p3

    .line 1
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 3
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 4
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 5
    :goto_0
    array-length v8, v1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v7, v8, :cond_4

    .line 6
    aget-wide v11, p4, v7

    double-to-float v8, v11

    .line 7
    aget v11, v1, v7

    if-eq v11, v10, :cond_3

    if-eq v11, v9, :cond_2

    const/4 v9, 0x3

    if-eq v11, v9, :cond_1

    const/4 v9, 0x4

    if-eq v11, v9, :cond_0

    goto :goto_1

    :cond_0
    move v5, v8

    goto :goto_1

    :cond_1
    move v4, v8

    goto :goto_1

    :cond_2
    move v3, v8

    goto :goto_1

    :cond_3
    move v2, v8

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 8
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v1, :cond_5

    new-array v8, v9, [F

    new-array v9, v9, [F

    move-wide/from16 v11, p1

    .line 9
    invoke-virtual {v1, v11, v12, v8, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    aget v1, v8, v6

    aget v6, v8, v10

    float-to-double v8, v1

    float-to-double v1, v2

    float-to-double v11, v3

    .line 10
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v13, v13, v1

    add-double/2addr v13, v8

    div-float v3, v4, v7

    float-to-double v8, v3

    sub-double/2addr v13, v8

    double-to-float v3, v13

    float-to-double v8, v6

    .line 11
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v1

    sub-double/2addr v8, v11

    div-float v1, v5, v7

    float-to-double v1, v1

    sub-double/2addr v8, v1

    double-to-float v1, v8

    move v2, v3

    move v3, v1

    :cond_5
    div-float/2addr v4, v7

    add-float/2addr v4, v2

    const/4 v1, 0x0

    add-float/2addr v4, v1

    .line 12
    aput v4, p5, p6

    add-int/lit8 v2, p6, 0x1

    div-float/2addr v5, v7

    add-float/2addr v5, v3

    add-float/2addr v5, v1

    .line 13
    aput v5, p5, v2

    return-void
.end method

.method public final getRect([I[D[FI)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "toUse",
            "data",
            "path",
            "offset"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 3
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 4
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_4

    .line 6
    aget-wide v5, p2, v4

    double-to-float v5, v5

    .line 7
    aget v6, p1, v4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenterX()F

    move-result p1

    .line 10
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenterY()F

    move-result p2

    float-to-double v4, p1

    float-to-double v6, v0

    float-to-double v0, v1

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    add-double/2addr v8, v4

    const/high16 p1, 0x40000000    # 2.0f

    div-float v4, v2, p1

    float-to-double v4, v4

    sub-double/2addr v8, v4

    double-to-float v4, v8

    float-to-double v8, p2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v0, v0, v6

    sub-double/2addr v8, v0

    div-float p1, v3, p1

    float-to-double p1, p1

    sub-double/2addr v8, p1

    double-to-float v1, v8

    move v0, v4

    :cond_5
    add-float/2addr v2, v0

    add-float/2addr v3, v1

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 13
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 14
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    const/4 p1, 0x0

    add-float p2, v0, p1

    add-float v4, v1, p1

    add-float v5, v2, p1

    add-float/2addr v1, p1

    add-float/2addr v2, p1

    add-float v6, v3, p1

    add-float/2addr v0, p1

    add-float/2addr v3, p1

    add-int/lit8 p1, p4, 0x1

    .line 15
    aput p2, p3, p4

    add-int/lit8 p2, p1, 0x1

    .line 16
    aput v4, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 17
    aput v5, p3, p2

    add-int/lit8 p2, p1, 0x1

    .line 18
    aput v1, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 19
    aput v2, p3, p2

    add-int/lit8 p2, p1, 0x1

    .line 20
    aput v6, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 21
    aput v0, p3, p2

    .line 22
    aput v3, p3, p1

    return-void
.end method

.method public final setBounds(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "w",
            "h"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 2
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 3
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 4
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    return-void
.end method

.method public final setDpDt(FF[F[I[D[D)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "locationX",
            "locationY",
            "mAnchorDpDt",
            "toUse",
            "deltaData",
            "data"
        }
    .end annotation

    move-object/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1
    :goto_0
    array-length v8, v0

    const/4 v9, 0x1

    if-ge v3, v8, :cond_4

    .line 2
    aget-wide v10, p5, v3

    double-to-float v8, v10

    .line 3
    aget-wide v10, p6, v3

    .line 4
    aget v10, v0, v3

    if-eq v10, v9, :cond_3

    const/4 v9, 0x2

    if-eq v10, v9, :cond_2

    const/4 v9, 0x3

    if-eq v10, v9, :cond_1

    const/4 v9, 0x4

    if-eq v10, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v8

    goto :goto_1

    :cond_1
    move v5, v8

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    move v4, v8

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    mul-float v0, v2, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v4, v0

    mul-float v0, v2, v7

    div-float/2addr v0, v3

    sub-float/2addr v6, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v5, v5, v0

    mul-float v7, v7, v0

    add-float/2addr v5, v4

    add-float/2addr v7, v6

    sub-float v3, v0, p1

    mul-float v3, v3, v4

    mul-float v5, v5, p1

    add-float/2addr v5, v3

    add-float/2addr v5, v2

    .line 5
    aput v5, p3, v1

    sub-float/2addr v0, p2

    mul-float v0, v0, v6

    mul-float v7, v7, p2

    add-float/2addr v7, v0

    add-float/2addr v7, v2

    .line 6
    aput v7, p3, v9

    return-void
.end method

.method public setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mc",
            "relative"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v1, v0

    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    float-to-double v0, v1

    .line 2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float/2addr v4, v2

    add-float/2addr v4, v3

    iget v3, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v4, v3

    iget p2, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float/2addr p2, v2

    sub-float/2addr v4, p2

    float-to-double v2, v4

    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 4
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 5
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    :goto_0
    return-void
.end method
