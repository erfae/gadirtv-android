.class public Landroidx/constraintlayout/motion/widget/KeyPosition;
.super Landroidx/constraintlayout/motion/widget/KeyPositionBase;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;
    }
.end annotation


# static fields
.field public static final DRAWPATH:Ljava/lang/String; = "drawPath"

.field public static final PERCENT_HEIGHT:Ljava/lang/String; = "percentHeight"

.field public static final PERCENT_WIDTH:Ljava/lang/String; = "percentWidth"

.field public static final PERCENT_X:Ljava/lang/String; = "percentX"

.field public static final PERCENT_Y:Ljava/lang/String; = "percentY"

.field public static final SIZE_PERCENT:Ljava/lang/String; = "sizePercent"

.field private static final TAG:Ljava/lang/String; = "KeyPosition"

.field public static final TRANSITION_EASING:Ljava/lang/String; = "transitionEasing"

.field public static final TYPE_CARTESIAN:I = 0x0

.field public static final TYPE_PATH:I = 0x1

.field public static final TYPE_SCREEN:I = 0x2


# instance fields
.field public mAltPercentX:F

.field public mAltPercentY:F

.field private mCalculatedPositionX:F

.field private mCalculatedPositionY:F

.field public mDrawPath:I

.field public mPathMotionArc:I

.field public mPercentHeight:F

.field public mPercentWidth:F

.field public mPercentX:F

.field public mPercentY:F

.field public mPositionType:I

.field public mTransitionEasing:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 3
    sget v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 5
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 7
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 8
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 9
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    .line 10
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 11
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 12
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    .line 13
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    const/4 v0, 0x2

    .line 14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    return-void
.end method

.method private calcCartesianPosition(FFFF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start_x",
            "start_y",
            "end_x",
            "end_y"
        }
    .end annotation

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 2
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 3
    :goto_1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 4
    :goto_2
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    :goto_3
    mul-float v0, v0, p3

    add-float/2addr v0, p1

    mul-float v1, v1, p4

    add-float/2addr v1, v0

    float-to-int p1, v1

    int-to-float p1, p1

    .line 5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    mul-float p3, p3, v2

    add-float/2addr p3, p2

    mul-float p4, p4, v3

    add-float/2addr p4, p3

    float-to-int p1, p4

    int-to-float p1, p1

    .line 6
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return-void
.end method

.method private calcPathPosition(FFFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start_x",
            "start_y",
            "end_x",
            "end_y"
        }
    .end annotation

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    neg-float v0, p4

    .line 1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    mul-float v2, p3, v1

    add-float/2addr v2, p1

    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    mul-float v0, v0, p1

    add-float/2addr v0, v2

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    mul-float p4, p4, v1

    add-float/2addr p4, p2

    mul-float p3, p3, p1

    add-float/2addr p3, p4

    .line 2
    iput p3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return-void
.end method

.method private calcScreenPosition(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutWidth",
            "layoutHeight"
        }
    .end annotation

    const/4 v0, 0x0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    mul-float p1, p1, v1

    int-to-float v2, v0

    add-float/2addr p1, v2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    sub-int/2addr p2, v0

    int-to-float p1, p2

    mul-float p1, p1, v1

    add-float/2addr p1, v2

    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .locals 1

    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyPosition;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyPosition;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyPosition;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object v0

    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    .line 2
    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 3
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 4
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 5
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 6
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 7
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 8
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 9
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 10
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    .line 11
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 12
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    .line 13
    iget p1, p1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return-object p0
.end method

.method public intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z
    .locals 5
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
            "layoutWidth",
            "layoutHeight",
            "start",
            "end",
            "x",
            "y"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    .line 2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    .line 3
    invoke-direct {p0, v0, p3, v1, p4}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcCartesianPosition(FFFF)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcScreenPosition(II)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v0, p3, v1, p4}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcPathPosition(FFFF)V

    .line 6
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    sub-float/2addr p5, p1

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41a00000    # 20.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    sub-float/2addr p6, p1

    .line 7
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    return v3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->access$000(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "start",
            "end",
            "x",
            "y",
            "attribute",
            "value"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    const-string v2, "percentY"

    const-string v3, "percentX"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_5

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    .line 4
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    .line 5
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v7, v1

    sub-float/2addr v8, v6

    .line 6
    aget-object v9, p6, v4

    if-eqz v9, :cond_1

    .line 7
    aget-object v2, p6, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-float v1, p4, v1

    div-float/2addr v1, v7

    .line 8
    aput v1, p7, v4

    sub-float v1, p5, v6

    div-float/2addr v1, v8

    .line 9
    aput v1, p7, v5

    goto :goto_0

    :cond_0
    sub-float v1, p4, v1

    div-float/2addr v1, v7

    .line 10
    aput v1, p7, v5

    sub-float v1, p5, v6

    div-float/2addr v1, v8

    .line 11
    aput v1, p7, v4

    goto :goto_0

    .line 12
    :cond_1
    aput-object v3, p6, v4

    sub-float v1, p4, v1

    div-float/2addr v1, v7

    .line 13
    aput v1, p7, v4

    .line 14
    aput-object v2, p6, v5

    sub-float v1, p5, v6

    div-float/2addr v1, v8

    .line 15
    aput v1, p7, v5

    :goto_0
    return-void

    .line 16
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    .line 18
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    .line 19
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 23
    aget-object v7, p6, v4

    if-eqz v7, :cond_4

    .line 24
    aget-object v2, p6, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    int-to-float v2, v6

    div-float v2, p4, v2

    .line 25
    aput v2, p7, v4

    int-to-float v1, v1

    div-float v1, p5, v1

    .line 26
    aput v1, p7, v5

    goto :goto_1

    :cond_3
    int-to-float v2, v6

    div-float v2, p4, v2

    .line 27
    aput v2, p7, v5

    int-to-float v1, v1

    div-float v1, p5, v1

    .line 28
    aput v1, p7, v4

    goto :goto_1

    .line 29
    :cond_4
    aput-object v3, p6, v4

    int-to-float v3, v6

    div-float v3, p4, v3

    .line 30
    aput v3, p7, v4

    .line 31
    aput-object v2, p6, v5

    int-to-float v1, v1

    div-float v1, p5, v1

    .line 32
    aput v1, p7, v5

    :goto_1
    return-void

    .line 33
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    .line 35
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    .line 36
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v7, v1

    sub-float/2addr v8, v6

    float-to-double v9, v7

    float-to-double v11, v8

    .line 37
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-double v10, v9

    const-wide v12, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v14, v10, v12

    if-gez v14, :cond_6

    .line 38
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "distance ~ 0"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 39
    aput v1, p7, v4

    .line 40
    aput v1, p7, v5

    goto :goto_2

    :cond_6
    div-float/2addr v7, v9

    div-float/2addr v8, v9

    sub-float v6, p5, v6

    mul-float v10, v7, v6

    sub-float v1, p4, v1

    mul-float v11, v1, v8

    sub-float/2addr v10, v11

    div-float/2addr v10, v9

    mul-float v7, v7, v1

    mul-float v8, v8, v6

    add-float/2addr v8, v7

    div-float/2addr v8, v9

    .line 41
    aget-object v1, p6, v4

    if-eqz v1, :cond_7

    .line 42
    aget-object v1, p6, v4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 43
    aput v8, p7, v4

    .line 44
    aput v10, p7, v5

    goto :goto_2

    .line 45
    :cond_7
    aput-object v3, p6, v4

    .line 46
    aput-object v2, p6, v5

    .line 47
    aput v8, p7, v4

    .line 48
    aput v10, p7, v5

    :cond_8
    :goto_2
    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "percentY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "percentX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "sizePercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "drawPath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "percentHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "percentWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 2
    :pswitch_0
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    goto :goto_1

    .line 3
    :pswitch_1
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    goto :goto_1

    .line 4
    :pswitch_2
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    goto :goto_1

    .line 5
    :pswitch_3
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/Key;->toInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    goto :goto_1

    .line 6
    :pswitch_4
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    goto :goto_1

    .line 7
    :pswitch_5
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    goto :goto_1

    .line 8
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_6
        -0x4330437f -> :sswitch_5
        -0x3ca72634 -> :sswitch_4
        -0x314b3c77 -> :sswitch_3
        -0xbefb6fc -> :sswitch_2
        0x198424b3 -> :sswitch_1
        0x198424b4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
