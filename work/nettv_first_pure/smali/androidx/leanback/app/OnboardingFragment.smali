.class public abstract Landroidx/leanback/app/OnboardingFragment;
.super Landroid/app/Fragment;
.source "OnboardingFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DESCRIPTION_START_DELAY_MS:J = 0x21L

.field private static final HEADER_ANIMATION_DURATION_MS:J = 0x1a1L

.field private static final HEADER_APPEAR_DELAY_MS:J = 0x1f4L

.field private static final HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final KEY_CURRENT_PAGE_INDEX:Ljava/lang/String; = "leanback.onboarding.current_page_index"

.field private static final KEY_ENTER_ANIMATION_FINISHED:Ljava/lang/String; = "leanback.onboarding.enter_animation_finished"

.field private static final KEY_LOGO_ANIMATION_FINISHED:Ljava/lang/String; = "leanback.onboarding.logo_animation_finished"

.field private static final LOGO_SPLASH_PAUSE_DURATION_MS:J = 0x535L

.field private static final SLIDE_DISTANCE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "OnboardingF"

.field private static sSlideDistance:I


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mArrowBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mArrowBackgroundColorSet:Z

.field private mArrowColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mArrowColorSet:Z

.field public mCurrentPageIndex:I

.field public mDescriptionView:Landroid/widget/TextView;

.field private mDescriptionViewTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mDescriptionViewTextColorSet:Z

.field private mDotBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mDotBackgroundColorSet:Z

.field public mEnterAnimationFinished:Z

.field private mIconResourceId:I

.field public mIsLtr:Z

.field public mLogoAnimationFinished:Z

.field private mLogoResourceId:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mMainIconView:Landroid/widget/ImageView;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field public mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

.field public mStartButton:Landroid/view/View;

.field private mStartButtonText:Ljava/lang/CharSequence;

.field private mStartButtonTextSet:Z

.field private mThemeWrapper:Landroid/view/ContextThemeWrapper;

.field public mTitleView:Landroid/widget/TextView;

.field private mTitleViewTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mTitleViewTextColorSet:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/leanback/app/OnboardingFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/leanback/app/OnboardingFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleViewTextColor:I

    .line 3
    iput v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionViewTextColor:I

    .line 4
    iput v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDotBackgroundColor:I

    .line 5
    iput v0, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowColor:I

    .line 6
    iput v0, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowBackgroundColor:I

    .line 7
    new-instance v0, Landroidx/leanback/app/OnboardingFragment$1;

    invoke-direct {v0, p0}, Landroidx/leanback/app/OnboardingFragment$1;-><init>(Landroidx/leanback/app/OnboardingFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 8
    new-instance v0, Landroidx/leanback/app/OnboardingFragment$2;

    invoke-direct {v0, p0}, Landroidx/leanback/app/OnboardingFragment$2;-><init>(Landroidx/leanback/app/OnboardingFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v3, 0x800005

    if-eq p3, v3, :cond_3

    :cond_1
    if-nez v0, :cond_2

    const v0, 0x800003

    if-eq p3, v0, :cond_3

    :cond_2
    const/4 v0, 0x5

    if-ne p3, v0, :cond_4

    :cond_3
    const/4 p3, 0x1

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    :goto_1
    const/4 v0, 0x0

    const/4 v3, 0x2

    if-eqz p2, :cond_6

    .line 2
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p1, p2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 3
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v3, [F

    if-eqz p3, :cond_5

    sget p3, Landroidx/leanback/app/OnboardingFragment;->sSlideDistance:I

    goto :goto_2

    :cond_5
    sget p3, Landroidx/leanback/app/OnboardingFragment;->sSlideDistance:I

    neg-int p3, p3

    :goto_2
    int-to-float p3, p3

    aput p3, v5, v2

    aput v0, v5, v1

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 4
    sget-object v0, Landroidx/leanback/app/OnboardingFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    .line 6
    :cond_6
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {p1, p2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 7
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v3, [F

    aput v0, v5, v2

    if-eqz p3, :cond_7

    sget p3, Landroidx/leanback/app/OnboardingFragment;->sSlideDistance:I

    goto :goto_3

    :cond_7
    sget p3, Landroidx/leanback/app/OnboardingFragment;->sSlideDistance:I

    neg-int p3, p3

    :goto_3
    int-to-float p3, p3

    aput p3, v5, v1

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 8
    sget-object v0, Landroidx/leanback/app/OnboardingFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_4
    const-wide/16 v4, 0x1a1

    .line 10
    invoke-virtual {p2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 11
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 13
    invoke-virtual {p3, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 14
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v3, [Landroid/animation/Animator;

    aput-object p2, v0, v2

    aput-object p3, v0, v1

    .line 15
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p2, 0x0

    cmp-long v0, p4, p2

    if-lez v0, :cond_8

    .line 16
    invoke-virtual {p1, p4, p5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_8
    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private onPageChangedInternal(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget v1, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget v1, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    if-ge p1, v1, :cond_1

    .line 6
    iget-object v4, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const v6, 0x800003

    const-wide/16 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v4, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    const-wide/16 v7, 0x21

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v4, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x1

    const v6, 0x800005

    const-wide/16 v7, 0x1f4

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v5, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    const/4 v6, 0x1

    const v7, 0x800005

    const-wide/16 v8, 0x215

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v5, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x0

    const v7, 0x800005

    const-wide/16 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v4, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const v6, 0x800005

    const-wide/16 v7, 0x21

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v4, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x1

    const v6, 0x800003

    const-wide/16 v7, 0x1f4

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v5, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    const/4 v6, 0x1

    const v7, 0x800003

    const-wide/16 v8, 0x215

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/leanback/app/OnboardingFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :goto_0
    iget v3, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    .line 15
    new-instance v4, Landroidx/leanback/app/OnboardingFragment$6;

    invoke-direct {v4, p0, v3}, Landroidx/leanback/app/OnboardingFragment$6;-><init>(Landroidx/leanback/app/OnboardingFragment;I)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    .line 17
    iget v3, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    .line 18
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    .line 19
    iget-object p1, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 20
    sget p1, Landroidx/leanback/R$animator;->lb_onboarding_page_indicator_fade_out:I

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    .line 21
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 22
    new-instance v2, Landroidx/leanback/app/OnboardingFragment$7;

    invoke-direct {v2, p0}, Landroidx/leanback/app/OnboardingFragment$7;-><init>(Landroidx/leanback/app/OnboardingFragment;)V

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget p1, Landroidx/leanback/R$animator;->lb_onboarding_start_button_fade_in:I

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    .line 25
    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne p1, v3, :cond_3

    .line 28
    iget-object p1, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 29
    sget p1, Landroidx/leanback/R$animator;->lb_onboarding_page_indicator_fade_in:I

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    .line 30
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget p1, Landroidx/leanback/R$animator;->lb_onboarding_start_button_fade_out:I

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    .line 33
    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 34
    new-instance v1, Landroidx/leanback/app/OnboardingFragment$8;

    invoke-direct {v1, p0}, Landroidx/leanback/app/OnboardingFragment$8;-><init>(Landroidx/leanback/app/OnboardingFragment;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_3
    :goto_1
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Landroidx/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    .line 37
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 38
    iget-object p1, p0, Landroidx/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private resolveTheme()V
    .locals 5

    .line 1
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->onProvideTheme()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3
    sget v1, Landroidx/leanback/R$attr;->onboardingTheme:I

    .line 4
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getArrowBackgroundColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowBackgroundColor:I

    return v0
.end method

.method public final getArrowColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowColor:I

    return v0
.end method

.method public final getDescriptionViewTextColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionViewTextColor:I

    return v0
.end method

.method public final getDotBackgroundColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDotBackgroundColor:I

    return v0
.end method

.method public final getIconResourceId()I
    .locals 1

    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mIconResourceId:I

    return v0
.end method

.method public final getLogoResourceId()I
    .locals 1

    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoResourceId:I

    return v0
.end method

.method public abstract getPageCount()I
.end method

.method public abstract getPageDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getPageTitle()Ljava/lang/CharSequence;
.end method

.method public final getStartButtonText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleViewTextColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleViewTextColor:I

    return v0
.end method

.method public final moveToNextPage()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 3
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-direct {p0, v0}, Landroidx/leanback/app/OnboardingFragment;->onPageChangedInternal(I)V

    :cond_1
    return-void
.end method

.method public final moveToPreviousPage()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 3
    iput v0, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Landroidx/leanback/app/OnboardingFragment;->onPageChangedInternal(I)V

    :cond_1
    return-void
.end method

.method public abstract onCreateBackgroundView()Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract onCreateContentView()Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract onCreateForegroundView()Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/leanback/app/OnboardingFragment;->resolveTheme()V

    .line 2
    invoke-direct {p0, p1}, Landroidx/leanback/app/OnboardingFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 3
    sget p3, Landroidx/leanback/R$layout;->lb_onboarding_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mIsLtr:Z

    .line 5
    sget p2, Landroidx/leanback/R$id;->page_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/PagingIndicator;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    .line 6
    iget-object p3, p0, Landroidx/leanback/app/OnboardingFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget-object p3, p0, Landroidx/leanback/app/OnboardingFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 8
    sget p2, Landroidx/leanback/R$id;->button_start:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    .line 9
    iget-object p3, p0, Landroidx/leanback/app/OnboardingFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    iget-object p3, p0, Landroidx/leanback/app/OnboardingFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 11
    sget p2, Landroidx/leanback/R$id;->main_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mMainIconView:Landroid/widget/ImageView;

    .line 12
    sget p2, Landroidx/leanback/R$id;->logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    .line 13
    sget p2, Landroidx/leanback/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    .line 14
    sget p2, Landroidx/leanback/R$id;->description:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    .line 15
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleViewTextColorSet:Z

    if-eqz p2, :cond_1

    .line 16
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    iget p3, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleViewTextColor:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    :cond_1
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionViewTextColorSet:Z

    if-eqz p2, :cond_2

    .line 18
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    iget p3, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionViewTextColor:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    :cond_2
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mDotBackgroundColorSet:Z

    if-eqz p2, :cond_3

    .line 20
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget p3, p0, Landroidx/leanback/app/OnboardingFragment;->mDotBackgroundColor:I

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    .line 21
    :cond_3
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowColorSet:Z

    if-eqz p2, :cond_4

    .line 22
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget p3, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowColor:I

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PagingIndicator;->setArrowColor(I)V

    .line 23
    :cond_4
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowBackgroundColorSet:Z

    if-eqz p2, :cond_5

    .line 24
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget p3, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowBackgroundColor:I

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    .line 25
    :cond_5
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButtonTextSet:Z

    if-eqz p2, :cond_6

    .line 26
    iget-object p2, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    check-cast p2, Landroid/widget/Button;

    iget-object p3, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_6
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object p2

    .line 28
    sget p3, Landroidx/leanback/app/OnboardingFragment;->sSlideDistance:I

    if-nez p3, :cond_7

    const/high16 p3, 0x42700000    # 60.0f

    .line 29
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p2, p2, p3

    float-to-int p2, p2

    sput p2, Landroidx/leanback/app/OnboardingFragment;->sSlideDistance:I

    .line 31
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-object p1
.end method

.method public final onLogoAnimationFinished()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget v1, p0, Landroidx/leanback/app/OnboardingFragment;->mIconResourceId:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v3, p0, Landroidx/leanback/app/OnboardingFragment;->mMainIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mMainIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v3

    .line 8
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/leanback/app/OnboardingFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    .line 9
    sget v3, Landroidx/leanback/R$id;->background_container:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 10
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->onCreateBackgroundView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    :cond_2
    sget v3, Landroidx/leanback/R$id;->content_container:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->onCreateContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 15
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    :cond_3
    sget v4, Landroidx/leanback/R$id;->foreground_container:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 18
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->onCreateForegroundView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 19
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 21
    :cond_4
    sget v4, Landroidx/leanback/R$id;->page_container:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    .line 24
    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/leanback/widget/PagingIndicator;->setPageCount(I)V

    .line 25
    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget v4, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {v1, v4, v2}, Landroidx/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    .line 26
    :cond_5
    iget v1, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_6

    .line 27
    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 28
    :cond_6
    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :goto_0
    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v1, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-boolean v1, p0, Landroidx/leanback/app/OnboardingFragment;->mEnterAnimationFinished:Z

    if-eqz v1, :cond_7

    goto :goto_2

    .line 32
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_page_indicator_enter:I

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->getPageCount()I

    move-result v2

    if-gt v2, v3, :cond_8

    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    goto :goto_1

    :cond_8
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_title_enter:I

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 37
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_9
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_description_enter:I

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 40
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    .line 43
    :cond_b
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 45
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 46
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Landroidx/leanback/app/OnboardingFragment$5;

    invoke-direct {v1, p0}, Landroidx/leanback/app/OnboardingFragment$5;-><init>(Landroidx/leanback/app/OnboardingFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_2
    return-void
.end method

.method public onProvideTheme()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget v0, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    const-string v1, "leanback.onboarding.current_page_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    const-string v1, "leanback.onboarding.logo_animation_finished"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mEnterAnimationFinished:Z

    const-string v1, "leanback.onboarding.enter_animation_finished"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    .line 3
    iput-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    .line 4
    iput-boolean p2, p0, Landroidx/leanback/app/OnboardingFragment;->mEnterAnimationFinished:Z

    .line 5
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {v0, p2, p2}, Landroidx/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Landroidx/leanback/app/OnboardingFragment$3;

    invoke-direct {p2, p0}, Landroidx/leanback/app/OnboardingFragment$3;-><init>(Landroidx/leanback/app/OnboardingFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "leanback.onboarding.current_page_index"

    .line 7
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    const-string p1, "leanback.onboarding.logo_animation_finished"

    .line 8
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    const-string p1, "leanback.onboarding.enter_animation_finished"

    .line 9
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/leanback/app/OnboardingFragment;->mEnterAnimationFinished:Z

    .line 10
    iget-boolean p1, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    if-nez p1, :cond_1

    .line 11
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->startLogoAnimation()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    .line 13
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->onLogoAnimationFinished()V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingFragment;->onLogoAnimationFinished()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setArrowBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowBackgroundColor:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowBackgroundColorSet:Z

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PagingIndicator;->setArrowBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setArrowColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowColor:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mArrowColorSet:Z

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PagingIndicator;->setArrowColor(I)V

    :cond_0
    return-void
.end method

.method public setDescriptionViewTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionViewTextColor:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionViewTextColorSet:Z

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setDotBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mDotBackgroundColor:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mDotBackgroundColorSet:Z

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public final setIconResouceId(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mIconResourceId:I

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mMainIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Landroidx/leanback/app/OnboardingFragment;->mMainIconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final setLogoResourceId(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoResourceId:I

    return-void
.end method

.method public setStartButtonText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButtonText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButtonTextSet:Z

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mStartButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleViewTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleViewTextColor:I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleViewTextColorSet:Z

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/OnboardingFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final startLogoAnimation()Z
    .locals 7

    .line 1
    invoke-static {p0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoResourceId:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    iget v4, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoResourceId:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_logo_enter:I

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 6
    sget v4, Landroidx/leanback/R$animator;->lb_onboarding_logo_exit:I

    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    const-wide/16 v5, 0x535

    .line 7
    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 8
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v2, v6, v1

    aput-object v4, v6, v3

    .line 9
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 10
    iget-object v2, p0, Landroidx/leanback/app/OnboardingFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    .line 11
    new-instance v1, Landroidx/leanback/app/OnboardingFragment$4;

    invoke-direct {v1, p0, v0}, Landroidx/leanback/app/OnboardingFragment$4;-><init>(Landroidx/leanback/app/OnboardingFragment;Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    return v3

    :cond_2
    return v1
.end method
