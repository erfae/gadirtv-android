.class public Landroidx/transition/ChangeTransform;
.super Landroidx/transition/Transition;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeTransform$PathAnimatorMatrix;,
        Landroidx/transition/ChangeTransform$GhostListener;,
        Landroidx/transition/ChangeTransform$Transforms;
    }
.end annotation


# static fields
.field private static final NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final PROPNAME_INTERMEDIATE_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final PROPNAME_INTERMEDIATE_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final PROPNAME_MATRIX:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final PROPNAME_PARENT_MATRIX:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final PROPNAME_TRANSFORMS:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

.field private static final TRANSLATIONS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeTransform$PathAnimatorMatrix;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field public mUseOverlay:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "android:changeTransform:matrix"

    const-string v1, "android:changeTransform:transforms"

    const-string v2, "android:changeTransform:parentMatrix"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 2
    new-instance v0, Landroidx/transition/ChangeTransform$1;

    invoke-direct {v0}, Landroidx/transition/ChangeTransform$1;-><init>()V

    sput-object v0, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 3
    new-instance v0, Landroidx/transition/ChangeTransform$2;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1}, Landroidx/transition/ChangeTransform$2;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 3
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 7
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 8
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 9
    sget-object v1, Landroidx/transition/Styleable;->CHANGE_TRANSFORM:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v1, "reparentWithOverlay"

    invoke-static {p1, p2, v1, v0, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    const-string/jumbo v1, "reparent"

    const/4 v2, 0x0

    .line 11
    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeTransform:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Landroidx/transition/ChangeTransform$Transforms;

    invoke-direct {v1, v0}, Landroidx/transition/ChangeTransform$Transforms;-><init>(Landroid/view/View;)V

    .line 5
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:transforms"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 9
    :goto_1
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-boolean v1, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v1, :cond_3

    .line 11
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 13
    invoke-static {v2, v1}, Landroidx/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 15
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:parentMatrix"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget v2, Landroidx/transition/R$id;->transition_transform:I

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "android:changeTransform:intermediateMatrix"

    .line 18
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    sget v1, Landroidx/transition/R$id;->parent_matrix:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "android:changeTransform:intermediateParentMatrix"

    .line 21
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .locals 4

    .line 1
    iget-object v0, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    iget-object v1, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 3
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 4
    invoke-static {p1, v2}, Landroidx/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ne v1, v3, :cond_0

    .line 6
    invoke-static {v0, p1, v2}, Landroidx/transition/GhostViewPlatform;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0, p1, v2}, Landroidx/transition/GhostViewPort;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewPort;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-interface {p1, v1, v2}, Landroidx/transition/GhostView;->reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    move-object v1, p0

    .line 9
    :goto_1
    iget-object v2, v1, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v2, :cond_2

    move-object v1, v2

    goto :goto_1

    .line 10
    :cond_2
    new-instance v2, Landroidx/transition/ChangeTransform$GhostListener;

    invoke-direct {v2, v0, p1}, Landroidx/transition/ChangeTransform$GhostListener;-><init>(Landroid/view/View;Landroidx/transition/GhostView;)V

    .line 11
    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 12
    sget-boolean p1, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object p2, p3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    .line 14
    invoke-static {p1, p2}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    invoke-static {v0, p1}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    :cond_4
    return-void
.end method

.method private createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    .line 1
    iget-object v1, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:matrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 2
    iget-object v3, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_0
    if-nez v2, :cond_1

    .line 4
    sget-object v2, Landroidx/transition/MatrixUtils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    :cond_1
    move-object v6, v2

    .line 5
    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    return-object v3

    .line 6
    :cond_2
    iget-object v2, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:transforms"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/transition/ChangeTransform$Transforms;

    .line 7
    iget-object v7, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v7

    .line 8
    invoke-static/range {v9 .. v17}, Landroidx/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V

    const/16 v0, 0x9

    new-array v2, v0, [F

    .line 9
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    new-array v1, v0, [F

    .line 10
    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 11
    new-instance v9, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {v9, v7, v2}, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;-><init>(Landroid/view/View;[F)V

    .line 12
    sget-object v4, Landroidx/transition/ChangeTransform;->NON_TRANSLATIONS_PROPERTY:Landroid/util/Property;

    new-instance v5, Landroidx/transition/FloatArrayEvaluator;

    new-array v0, v0, [F

    invoke-direct {v5, v0}, Landroidx/transition/FloatArrayEvaluator;-><init>([F)V

    const/4 v0, 0x2

    new-array v10, v0, [[F

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v12, 0x1

    aput-object v1, v10, v12

    invoke-static {v4, v5, v10}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v5

    aget v10, v2, v0

    const/4 v13, 0x5

    aget v2, v2, v13

    aget v14, v1, v0

    aget v1, v1, v13

    invoke-virtual {v5, v10, v2, v14, v1}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 14
    sget-object v2, Landroidx/transition/ChangeTransform;->TRANSLATIONS_PROPERTY:Landroid/util/Property;

    .line 15
    invoke-static {v2, v3, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v0, v11

    aput-object v1, v0, v12

    .line 16
    invoke-static {v9, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 17
    new-instance v1, Landroidx/transition/ChangeTransform$3;

    move-object v3, v1

    move-object/from16 v4, p0

    move/from16 v5, p3

    invoke-direct/range {v3 .. v9}, Landroidx/transition/ChangeTransform$3;-><init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-object v0
.end method

.method private parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, p1, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move v2, v1

    :cond_3
    return v2
.end method

.method private setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V
    .locals 4

    .line 1
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parentMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 2
    iget-object p2, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v2, Landroidx/transition/R$id;->parent_matrix:I

    invoke-virtual {p2, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3
    iget-object p2, p0, Landroidx/transition/ChangeTransform;->mTempMatrix:Landroid/graphics/Matrix;

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 5
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 6
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeTransform:matrix"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 10
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 11
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public static setTransforms(Landroid/view/View;FFFFFFFF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 4
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    .line 5
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    .line 6
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    .line 7
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    .line 8
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 1
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/transition/ChangeTransform;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2
    sget-boolean v0, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 1
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    iget-object v2, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 6
    iget-boolean v2, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Landroidx/transition/ChangeTransform;->parentsMatch(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:intermediateMatrix"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-eqz v2, :cond_2

    .line 8
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    iget-object v2, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeTransform:intermediateParentMatrix"

    .line 10
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-eqz v2, :cond_3

    .line 11
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeTransform:parentMatrix"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v1, :cond_4

    .line 12
    invoke-direct {p0, p2, p3}, Landroidx/transition/ChangeTransform;->setMatricesForParent(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    .line 13
    :cond_4
    invoke-direct {p0, p2, p3, v1}, Landroidx/transition/ChangeTransform;->createTransformAnimator(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 14
    iget-boolean v1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    if-eqz v1, :cond_5

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroidx/transition/ChangeTransform;->createGhostView(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)V

    goto :goto_1

    .line 16
    :cond_5
    sget-boolean p1, Landroidx/transition/ChangeTransform;->SUPPORTS_VIEW_REMOVAL_SUPPRESSION:Z

    if-nez p1, :cond_6

    .line 17
    iget-object p1, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-object v2

    :cond_7
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getReparent()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    return v0
.end method

.method public getReparentWithOverlay()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/transition/ChangeTransform;->mReparent:Z

    return-void
.end method

.method public setReparentWithOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    return-void
.end method
