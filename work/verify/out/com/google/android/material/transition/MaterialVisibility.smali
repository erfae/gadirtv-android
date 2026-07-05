.class abstract Lcom/google/android/material/transition/MaterialVisibility;
.super Landroidx/transition/Visibility;
.source "MaterialVisibility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/google/android/material/transition/VisibilityAnimatorProvider;",
        ">",
        "Landroidx/transition/Visibility;"
    }
.end annotation


# instance fields
.field private final additionalAnimatorProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/transition/VisibilityAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final primaryAnimatorProvider:Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private secondaryAnimatorProvider:Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/transition/VisibilityAnimatorProvider;Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .registers 4
    .param p2    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/android/material/transition/VisibilityAnimatorProvider;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/transition/Visibility;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialVisibility;->primaryAnimatorProvider:Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    .line 4
    iput-object p2, p0, Lcom/google/android/material/transition/MaterialVisibility;->secondaryAnimatorProvider:Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    return-void
.end method

.method private static addAnimatorIfNeeded(Ljava/util/List;Lcom/google/android/material/transition/VisibilityAnimatorProvider;Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .registers 5
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/google/android/material/transition/VisibilityAnimatorProvider;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p4, :cond_a

    .line 1
    invoke-interface {p1, p2, p3}, Lcom/google/android/material/transition/VisibilityAnimatorProvider;->createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    goto :goto_e

    .line 2
    :cond_a
    invoke-interface {p1, p2, p3}, Lcom/google/android/material/transition/VisibilityAnimatorProvider;->createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    :goto_e
    if-eqz p1, :cond_13

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method private createAnimator(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;
    .registers 8
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialVisibility;->primaryAnimatorProvider:Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    invoke-static {v1, v2, p1, p2, p3}, Lcom/google/android/material/transition/MaterialVisibility;->addAnimatorIfNeeded(Ljava/util/List;Lcom/google/android/material/transition/VisibilityAnimatorProvider;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 4
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialVisibility;->secondaryAnimatorProvider:Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    invoke-static {v1, v2, p1, p2, p3}, Lcom/google/android/material/transition/MaterialVisibility;->addAnimatorIfNeeded(Ljava/util/List;Lcom/google/android/material/transition/VisibilityAnimatorProvider;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 5
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    .line 6
    invoke-static {v1, v3, p1, p2, p3}, Lcom/google/android/material/transition/MaterialVisibility;->addAnimatorIfNeeded(Ljava/util/List;Lcom/google/android/material/transition/VisibilityAnimatorProvider;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    goto :goto_1a

    .line 7
    :cond_2a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/android/material/transition/MaterialVisibility;->maybeApplyThemeValues(Landroid/content/Context;Z)V

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object v0
.end method

.method private maybeApplyThemeValues(Landroid/content/Context;Z)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/material/transition/MaterialVisibility;->getDurationThemeAttrResId(Z)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/TransitionUtils;->maybeApplyThemeDuration(Landroidx/transition/Transition;Landroid/content/Context;I)Z

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/material/transition/MaterialVisibility;->getEasingThemeAttrResId(Z)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/transition/MaterialVisibility;->getDefaultEasingInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz p2, :cond_1e

    .line 3
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 4
    invoke-static {p1, p2, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    :cond_1e
    return-void
.end method


# virtual methods
.method public addAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .registers 3
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAdditionalAnimatorProvider()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getDefaultEasingInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getDurationThemeAttrResId(Z)I
    .registers 2
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getEasingThemeAttrResId(Z)I
    .registers 2
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getPrimaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialVisibility;->primaryAnimatorProvider:Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    return-object v0
.end method

.method public getSecondaryAnimatorProvider()Lcom/google/android/material/transition/VisibilityAnimatorProvider;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialVisibility;->secondaryAnimatorProvider:Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transition/MaterialVisibility;->createAnimator(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transition/MaterialVisibility;->createAnimator(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)Z
    .registers 3
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/transition/MaterialVisibility;->additionalAnimatorProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setSecondaryAnimatorProvider(Lcom/google/android/material/transition/VisibilityAnimatorProvider;)V
    .registers 2
    .param p1    # Lcom/google/android/material/transition/VisibilityAnimatorProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/transition/MaterialVisibility;->secondaryAnimatorProvider:Lcom/google/android/material/transition/VisibilityAnimatorProvider;

    return-void
.end method
