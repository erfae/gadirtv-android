.class public Landroidx/leanback/widget/PagingIndicator;
.super Landroid/view/View;
.source "PagingIndicator.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/PagingIndicator$Dot;
    }
.end annotation


# static fields
.field private static final DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final DOT_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOT_DIAMETER:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOT_TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/leanback/widget/PagingIndicator$Dot;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_ALPHA:J = 0xa7L

.field private static final DURATION_DIAMETER:J = 0x1a1L

.field private static final DURATION_TRANSLATION_X:J = 0x1a1L


# instance fields
.field private final mAnimator:Landroid/animation/AnimatorSet;

.field public mArrow:Landroid/graphics/Bitmap;

.field public final mArrowDiameter:I

.field private final mArrowGap:I

.field public mArrowPaint:Landroid/graphics/Paint;

.field public final mArrowRadius:I

.field public final mArrowRect:Landroid/graphics/Rect;

.field public final mArrowToBgRatio:F

.field public final mBgPaint:Landroid/graphics/Paint;

.field private mCurrentPage:I

.field public mDotCenterY:I

.field public final mDotDiameter:I

.field public mDotFgSelectColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final mDotGap:I

.field public final mDotRadius:I

.field private mDotSelectedNextX:[I

.field private mDotSelectedPrevX:[I

.field private mDotSelectedX:[I

.field private mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

.field public final mFgPaint:Landroid/graphics/Paint;

.field private final mHideAnimator:Landroid/animation/AnimatorSet;

.field public mIsLtr:Z

.field private mPageCount:I

.field private mPreviousPage:I

.field private final mShadowRadius:I

.field private final mShowAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 2
    new-instance v0, Landroidx/leanback/widget/PagingIndicator$1;

    invoke-direct {v0}, Landroidx/leanback/widget/PagingIndicator$1;-><init>()V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_ALPHA:Landroid/util/Property;

    .line 3
    new-instance v0, Landroidx/leanback/widget/PagingIndicator$2;

    invoke-direct {v0}, Landroidx/leanback/widget/PagingIndicator$2;-><init>()V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_DIAMETER:Landroid/util/Property;

    .line 4
    new-instance v0, Landroidx/leanback/widget/PagingIndicator$3;

    invoke-direct {v0}, Landroidx/leanback/widget/PagingIndicator$3;-><init>()V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_TRANSLATION_X:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroidx/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 6
    sget-object v2, Landroidx/leanback/R$styleable;->PagingIndicator:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Landroidx/leanback/R$styleable;->PagingIndicator_lbDotRadius:I

    sget p3, Landroidx/leanback/R$dimen;->lb_page_indicator_dot_radius:I

    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 p3, p2, 0x2

    .line 8
    iput p3, p0, Landroidx/leanback/widget/PagingIndicator;->mDotDiameter:I

    .line 9
    sget p3, Landroidx/leanback/R$styleable;->PagingIndicator_arrowRadius:I

    sget v2, Landroidx/leanback/R$dimen;->lb_page_indicator_arrow_radius:I

    invoke-direct {p0, p1, p3, v2}, Landroidx/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result p3

    iput p3, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowRadius:I

    mul-int/lit8 v2, p3, 0x2

    .line 10
    iput v2, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowDiameter:I

    .line 11
    sget v4, Landroidx/leanback/R$styleable;->PagingIndicator_dotToDotGap:I

    sget v5, Landroidx/leanback/R$dimen;->lb_page_indicator_dot_gap:I

    invoke-direct {p0, p1, v4, v5}, Landroidx/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    .line 12
    sget v4, Landroidx/leanback/R$styleable;->PagingIndicator_dotToArrowGap:I

    sget v5, Landroidx/leanback/R$dimen;->lb_page_indicator_arrow_gap:I

    invoke-direct {p0, p1, v4, v5}, Landroidx/leanback/widget/PagingIndicator;->getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    .line 13
    sget v4, Landroidx/leanback/R$styleable;->PagingIndicator_dotBgColor:I

    sget v5, Landroidx/leanback/R$color;->lb_page_indicator_dot:I

    invoke-direct {p0, p1, v4, v5}, Landroidx/leanback/widget/PagingIndicator;->getColorFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v4

    .line 14
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Landroidx/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    sget v4, Landroidx/leanback/R$styleable;->PagingIndicator_arrowBgColor:I

    sget v5, Landroidx/leanback/R$color;->lb_page_indicator_arrow_background:I

    invoke-direct {p0, p1, v4, v5}, Landroidx/leanback/widget/PagingIndicator;->getColorFromTypedArray(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    .line 17
    iget-object v4, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_0

    sget v4, Landroidx/leanback/R$styleable;->PagingIndicator_arrowColor:I

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 18
    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/leanback/widget/PagingIndicator;->setArrowColor(I)V

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    .line 21
    sget p1, Landroidx/leanback/R$color;->lb_page_indicator_arrow_shadow:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 22
    sget v4, Landroidx/leanback/R$dimen;->lb_page_indicator_arrow_shadow_radius:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Landroidx/leanback/widget/PagingIndicator;->mShadowRadius:I

    .line 23
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Landroidx/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    .line 24
    sget v7, Landroidx/leanback/R$dimen;->lb_page_indicator_arrow_shadow_offset:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v4, v4

    int-to-float v1, v1

    .line 25
    invoke-virtual {v5, v4, v1, v1, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 26
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->loadArrow()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    .line 27
    new-instance p1, Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v4, p0, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p1, v3, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowRect:Landroid/graphics/Rect;

    .line 28
    iget-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v2

    div-float/2addr p1, v1

    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    .line 29
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/animation/Animator;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 30
    invoke-direct {p0, v4, v5}, Landroidx/leanback/widget/PagingIndicator;->createDotAlphaAnimator(FF)Landroid/animation/Animator;

    move-result-object v7

    aput-object v7, v2, v3

    mul-int/lit8 v7, p2, 0x2

    int-to-float v7, v7

    mul-int/lit8 v8, p3, 0x2

    int-to-float v8, v8

    .line 31
    invoke-direct {p0, v7, v8}, Landroidx/leanback/widget/PagingIndicator;->createDotDiameterAnimator(FF)Landroid/animation/Animator;

    move-result-object v7

    aput-object v7, v2, v6

    .line 32
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->createDotTranslationXAnimator()Landroid/animation/Animator;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v2, v8

    .line 33
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 34
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    .line 35
    invoke-direct {p0, v5, v4}, Landroidx/leanback/widget/PagingIndicator;->createDotAlphaAnimator(FF)Landroid/animation/Animator;

    move-result-object v4

    aput-object v4, v1, v3

    mul-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 36
    invoke-direct {p0, p3, p2}, Landroidx/leanback/widget/PagingIndicator;->createDotDiameterAnimator(FF)Landroid/animation/Animator;

    move-result-object p2

    aput-object p2, v1, v6

    .line 37
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->createDotTranslationXAnimator()Landroid/animation/Animator;

    move-result-object p2

    aput-object p2, v1, v8

    .line 38
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p2, v8, [Landroid/animation/Animator;

    aput-object p1, p2, v3

    aput-object v2, p2, v6

    .line 39
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, v6, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private adjustDotPosition()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/leanback/widget/PagingIndicator$Dot;->deselect()V

    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v4, v1, v0

    iget v5, p0, Landroidx/leanback/widget/PagingIndicator;->mPreviousPage:I

    if-ne v0, v5, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iput v2, v4, Landroidx/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 4
    aget-object v1, v1, v0

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    aget v2, v2, v0

    int-to-float v2, v2

    iput v2, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v0, v0, v1

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Landroidx/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    .line 7
    iput v1, v0, Landroidx/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    .line 8
    iget-object v1, v0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v4, v1, Landroidx/leanback/widget/PagingIndicator;->mArrowDiameter:I

    int-to-float v4, v4

    iput v4, v0, Landroidx/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    .line 9
    iget v4, v1, Landroidx/leanback/widget/PagingIndicator;->mArrowRadius:I

    int-to-float v4, v4

    iput v4, v0, Landroidx/leanback/widget/PagingIndicator$Dot;->mRadius:F

    .line 10
    iget v1, v1, Landroidx/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float v4, v4, v1

    iput v4, v0, Landroidx/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    .line 11
    iput v3, v0, Landroidx/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    .line 12
    invoke-virtual {v0}, Landroidx/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    .line 13
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    aget-object v4, v0, v1

    iget v5, p0, Landroidx/leanback/widget/PagingIndicator;->mPreviousPage:I

    if-ge v5, v1, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    iput v2, v4, Landroidx/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 14
    aget-object v0, v0, v1

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    aget v2, v2, v1

    int-to-float v2, v2

    iput v2, v0, Landroidx/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 15
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v1, v0, :cond_3

    .line 16
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/leanback/widget/PagingIndicator$Dot;->deselect()V

    .line 17
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v2, v0, v1

    iput v3, v2, Landroidx/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 18
    aget-object v0, v0, v1

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    aget v2, v2, v1

    int-to-float v2, v2

    iput v2, v0, Landroidx/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    goto :goto_3

    :cond_3
    return-void
.end method

.method private calculateDotPositions()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 4
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v3

    add-int/2addr v0, v2

    .line 5
    div-int/lit8 v0, v0, 0x2

    .line 6
    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    new-array v4, v2, [I

    iput-object v4, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    .line 7
    new-array v5, v2, [I

    iput-object v5, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    .line 8
    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    .line 9
    iget-boolean v6, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 10
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 11
    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    add-int v6, v0, v3

    iget v9, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    sub-int/2addr v6, v9

    iget v10, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v6, v10

    aput v6, v4, v8

    add-int v4, v0, v3

    .line 12
    aput v4, v5, v8

    add-int/2addr v0, v3

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v0, v9

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v0

    .line 13
    aput v10, v2, v8

    .line 14
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v7, v0, :cond_1

    .line 15
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v3, v7, -0x1

    aget v4, v2, v3

    iget v5, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    add-int/2addr v4, v5

    aput v4, v0, v7

    .line 16
    aget v4, v2, v3

    iget v6, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v4, v6

    aput v4, v2, v7

    .line 17
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    aget v0, v0, v3

    add-int/2addr v0, v5

    aput v0, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 18
    :cond_0
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    .line 19
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    sub-int v6, v3, v0

    iget v9, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v6, v9

    iget v10, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v6, v10

    aput v6, v4, v8

    sub-int v4, v3, v0

    .line 20
    aput v4, v5, v8

    sub-int/2addr v3, v0

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v3

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    .line 21
    aput v9, v2, v8

    .line 22
    :goto_1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v7, v0, :cond_1

    .line 23
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    add-int/lit8 v3, v7, -0x1

    aget v4, v2, v3

    iget v5, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    sub-int/2addr v4, v5

    aput v4, v0, v7

    .line 24
    aget v4, v2, v3

    iget v6, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    sub-int/2addr v4, v6

    aput v4, v2, v7

    .line 25
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    aget v0, v0, v3

    sub-int/2addr v0, v5

    aput v0, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 26
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowRadius:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDotCenterY:I

    .line 27
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->adjustDotPosition()V

    return-void
.end method

.method private createDotAlphaAnimator(FF)Landroid/animation/Animator;
    .locals 3

    .line 1
    sget-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa7

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    sget-object p2, Landroidx/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private createDotDiameterAnimator(FF)Landroid/animation/Animator;
    .locals 3

    .line 1
    sget-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_DIAMETER:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1a1

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    sget-object p2, Landroidx/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private createDotTranslationXAnimator()Landroid/animation/Animator;
    .locals 4

    .line 1
    sget-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    neg-int v2, v2

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1a1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    sget-object v1, Landroidx/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private getColorFromTypedArray(Landroid/content/res/TypedArray;II)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    return p1
.end method

.method private getDesiredHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowDiameter:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mShadowRadius:I

    add-int/2addr v1, v0

    return v1
.end method

.method private getDesiredWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private getDimensionFromTypedArray(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    return p1
.end method

.method private getRequiredWidth()I
    .locals 3

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    add-int/lit8 v0, v0, -0x3

    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int v0, v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private loadArrow()Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/leanback/R$drawable;->lb_ic_nav_arrow:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2
    iget-boolean v0, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz v0, :cond_0

    return-object v2

    .line 3
    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private setSelectedPage(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    .line 3
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->adjustDotPosition()V

    return-void
.end method


# virtual methods
.method public getDotSelectedLeftX()[I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedPrevX:[I

    return-object v0
.end method

.method public getDotSelectedRightX()[I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedNextX:[I

    return-object v0
.end method

.method public getDotSelectedX()[I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotSelectedX:[I

    return-object v0
.end method

.method public getPageCount()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v1, v1, v0

    .line 3
    iget v2, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    iget v3, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    add-float/2addr v2, v3

    .line 4
    iget-object v3, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v4, v3, Landroidx/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v4, v4

    iget v5, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v3, v3, Landroidx/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5
    iget v3, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 6
    iget-object v3, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget-object v3, v3, Landroidx/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    iget v4, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->mFgColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v3, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v4, v3, Landroidx/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v4, v4

    iget v5, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v3, v3, Landroidx/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 8
    iget-object v3, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget-object v4, v3, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    iget-object v3, v3, Landroidx/leanback/widget/PagingIndicator;->mArrowRect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    sub-float v7, v2, v6

    float-to-int v7, v7

    iget-object v8, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v8, v8, Landroidx/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v8, v8

    sub-float v9, v8, v6

    float-to-int v9, v9

    add-float/2addr v2, v6

    float-to-int v2, v2

    add-float/2addr v8, v6

    float-to-int v6, v8

    invoke-direct {v5, v7, v9, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, v1, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget-object v1, v1, Landroidx/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getDesiredHeight()I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->getDesiredWidth()I

    move-result p2

    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 9
    :goto_1
    invoke-virtual {p0, p2, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageSelected(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 4
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mCurrentPage:I

    iput v0, p0, Landroidx/leanback/widget/PagingIndicator;->mPreviousPage:I

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Landroidx/leanback/widget/PagingIndicator;->mHideAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v0, v1, v0

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 6
    iget-object p2, p0, Landroidx/leanback/widget/PagingIndicator;->mShowAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Landroidx/leanback/widget/PagingIndicator;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 8
    :cond_2
    invoke-direct {p0, p1}, Landroidx/leanback/widget/PagingIndicator;->setSelectedPage(I)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-boolean v1, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eq v1, p1, :cond_3

    .line 3
    iput-boolean p1, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    .line 4
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->loadArrow()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    .line 5
    iget-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    if-eqz p1, :cond_2

    .line 6
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 7
    iget-object v3, v2, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget-boolean v3, v3, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    const/high16 v3, -0x40800000    # -1.0f

    :goto_2
    iput v3, v2, Landroidx/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_2
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->calculateDotPositions()V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->calculateDotPositions()V

    return-void
.end method

.method public setArrowBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    return-void
.end method

.method public setArrowColor(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setDotBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPageCount(I)V
    .locals 3

    if-lez p1, :cond_1

    .line 1
    iput p1, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    .line 2
    new-array p1, p1, [Landroidx/leanback/widget/PagingIndicator$Dot;

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mPageCount:I

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator;->mDots:[Landroidx/leanback/widget/PagingIndicator$Dot;

    new-instance v2, Landroidx/leanback/widget/PagingIndicator$Dot;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/PagingIndicator$Dot;-><init>(Landroidx/leanback/widget/PagingIndicator;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Landroidx/leanback/widget/PagingIndicator;->calculateDotPositions()V

    .line 6
    invoke-direct {p0, p1}, Landroidx/leanback/widget/PagingIndicator;->setSelectedPage(I)V

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The page count should be a positive integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
