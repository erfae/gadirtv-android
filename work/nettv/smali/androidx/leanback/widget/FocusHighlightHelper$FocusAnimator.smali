.class Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;
.super Ljava/lang/Object;
.source "FocusHighlightHelper.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/FocusHighlightHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FocusAnimator"
.end annotation


# instance fields
.field private final mAnimator:Landroid/animation/TimeAnimator;

.field private final mDimmer:Landroidx/leanback/graphics/ColorOverlayDimmer;

.field private final mDuration:I

.field private mFocusLevel:F

.field private mFocusLevelDelta:F

.field private mFocusLevelStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mScaleDiff:F

.field private final mView:Landroid/view/View;

.field private final mWrapper:Landroidx/leanback/widget/ShadowOverlayContainer;


# direct methods
.method public constructor <init>(Landroid/view/View;FZI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevel:F

    .line 3
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    .line 4
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5
    iput-object p1, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    .line 6
    iput p4, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDuration:I

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p2, p4

    .line 7
    iput p2, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mScaleDiff:F

    .line 8
    instance-of p2, p1, Landroidx/leanback/widget/ShadowOverlayContainer;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 9
    move-object p2, p1

    check-cast p2, Landroidx/leanback/widget/ShadowOverlayContainer;

    iput-object p2, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroidx/leanback/widget/ShadowOverlayContainer;

    goto :goto_0

    .line 10
    :cond_0
    iput-object p4, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroidx/leanback/widget/ShadowOverlayContainer;

    .line 11
    :goto_0
    invoke-virtual {v0, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/leanback/graphics/ColorOverlayDimmer;->createDefault(Landroid/content/Context;)Landroidx/leanback/graphics/ColorOverlayDimmer;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroidx/leanback/graphics/ColorOverlayDimmer;

    goto :goto_1

    .line 13
    :cond_1
    iput-object p4, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroidx/leanback/graphics/ColorOverlayDimmer;

    :goto_1
    return-void
.end method


# virtual methods
.method public final animateFocus(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->setFocusLevel(F)V

    goto :goto_1

    .line 3
    :cond_1
    iget p2, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevel:F

    cmpl-float v0, p2, p1

    if-eqz v0, :cond_2

    .line 4
    iput p2, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelStart:F

    sub-float/2addr p1, p2

    .line 5
    iput p1, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelDelta:F

    .line 6
    iget-object p1, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p1}, Landroid/animation/TimeAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 1

    .line 1
    iget p1, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDuration:I

    int-to-long p4, p1

    cmp-long v0, p2, p4

    if-ltz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iget-object p2, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    goto :goto_0

    :cond_0
    long-to-double p2, p2

    int-to-double p4, p1

    div-double/2addr p2, p4

    double-to-float p1, p2

    .line 3
    :goto_0
    iget-object p2, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 5
    :cond_1
    iget p2, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelStart:F

    iget p3, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevelDelta:F

    mul-float p1, p1, p3

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->setFocusLevel(F)V

    return-void
.end method

.method public setFocusLevel(F)V
    .locals 2

    .line 1
    iput p1, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mFocusLevel:F

    .line 2
    iget v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mScaleDiff:F

    mul-float v0, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 4
    iget-object v1, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroidx/leanback/widget/ShadowOverlayContainer;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ShadowOverlayContainer;->setShadowFocusLevel(F)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/leanback/widget/ShadowOverlayHelper;->setNoneWrapperShadowFocusLevel(Landroid/view/View;F)V

    .line 8
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroidx/leanback/graphics/ColorOverlayDimmer;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, p1}, Landroidx/leanback/graphics/ColorOverlayDimmer;->setActiveLevel(F)V

    .line 10
    iget-object p1, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mDimmer:Landroidx/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {p1}, Landroidx/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 11
    iget-object v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mWrapper:Landroidx/leanback/widget/ShadowOverlayContainer;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ShadowOverlayContainer;->setOverlayColor(I)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/FocusHighlightHelper$FocusAnimator;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/leanback/widget/ShadowOverlayHelper;->setNoneWrapperOverlayColor(Landroid/view/View;I)V

    :cond_2
    :goto_1
    return-void
.end method
