.class public Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;
.super Landroid/view/View;
.source "SimpleRatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;,
        Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;,
        Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;,
        Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;
    }
.end annotation


# instance fields
.field private backgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private borderColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private clickListener:Landroid/view/View$OnClickListener;

.field private cornerPathEffect:Landroid/graphics/CornerPathEffect;

.field private currentStarSize:F

.field private defaultStarSize:F

.field private desiredStarSize:F

.field private drawBorderEnabled:Z

.field private fillColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private gravity:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

.field private internalBitmap:Landroid/graphics/Bitmap;

.field private internalCanvas:Landroid/graphics/Canvas;

.field private isIndicator:Z

.field private maxStarSize:F

.field private numberOfStars:I

.field private paintStarBackground:Landroid/graphics/Paint;

.field private paintStarBorder:Landroid/graphics/Paint;

.field private paintStarFill:Landroid/graphics/Paint;

.field private paintStarOutline:Landroid/graphics/Paint;

.field private pressedBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private pressedBorderColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private pressedFillColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private pressedStarBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private rating:F

.field private ratingAnimator:Landroid/animation/ValueAnimator;

.field private ratingListener:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;

.field private starBackgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private starBorderWidth:F

.field private starCornerRadius:F

.field private starPath:Landroid/graphics/Path;

.field private starVertex:[F

.field private starsDrawingSpace:Landroid/graphics/RectF;

.field private starsSeparation:F

.field private starsTouchSpace:Landroid/graphics/RectF;

.field private stepSize:F

.field private touchInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->parseAttrs(Landroid/util/AttributeSet;)V

    .line 5
    invoke-direct {p0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    invoke-direct {p0, p2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->parseAttrs(Landroid/util/AttributeSet;)V

    .line 8
    invoke-direct {p0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->initView()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->animateRating(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingListener:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)F
    .registers 1

    iget p0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    return p0
.end method

.method private animateRating(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)V
    .registers 5

    .line 1
    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->ratingTarget:F
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->access$100(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->normalizeRating(F)F

    move-result v0

    # setter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->ratingTarget:F
    invoke-static {p1, v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->access$102(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;F)F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 2
    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->ratingTarget:F
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->access$100(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingAnimator:Landroid/animation/ValueAnimator;

    .line 3
    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->duration:J
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->access$200(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingAnimator:Landroid/animation/ValueAnimator;

    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->repeatCount:I
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->access$300(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 5
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingAnimator:Landroid/animation/ValueAnimator;

    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->repeatMode:I
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->access$400(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 6
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$1;

    invoke-direct {v1, p0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$1;-><init>(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->interpolator:Landroid/view/animation/Interpolator;
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->access$500(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 8
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingAnimator:Landroid/animation/ValueAnimator;

    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->interpolator:Landroid/view/animation/Interpolator;
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->access$500(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    :cond_51
    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->animatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->access$600(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 10
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingAnimator:Landroid/animation/ValueAnimator;

    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->animatorListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;->access$600(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    :cond_60
    iget-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$2;

    invoke-direct {v0, p0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$2;-><init>(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    iget-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private calculateBestStarSize(II)F
    .registers 8

    .line 1
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    const/high16 v1, 0x4f000000

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_52

    .line 2
    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    iget v2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalWidth(FIFZ)I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    iget v2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    iget v4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalHeight(FIFZ)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    cmpl-float v0, v0, v2

    if-gez v0, :cond_2b

    int-to-float v0, p2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_28

    goto :goto_2b

    .line 4
    :cond_28
    iget p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    return p1

    .line 5
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    mul-float v0, v0, v2

    sub-float/2addr p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    .line 8
    :cond_52
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    mul-float v0, v0, v2

    sub-float/2addr p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private calculateTotalHeight(FIFZ)I
    .registers 5

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p4, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    add-int/2addr p3, p2

    goto :goto_11

    :cond_10
    const/4 p3, 0x0

    :goto_11
    add-int/2addr p1, p3

    return p1
.end method

.method private calculateTotalWidth(FIFZ)I
    .registers 6

    int-to-float v0, p2

    mul-float p1, p1, v0

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    mul-float p3, p3, p2

    add-float/2addr p3, p1

    .line 1
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-eqz p4, :cond_19

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    add-int/2addr p3, p2

    goto :goto_1a

    :cond_19
    const/4 p3, 0x0

    :goto_1a
    add-int/2addr p1, p3

    return p1
.end method

.method private drawFromLeftToRight(Landroid/graphics/Canvas;)V
    .registers 13

    .line 1
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    .line 2
    iget-object v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsDrawingSpace:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 3
    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    move v9, v0

    const/4 v0, 0x0

    .line 4
    :goto_b
    iget v3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    if-ge v0, v3, :cond_37

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v3, v9, v10

    if-ltz v3, :cond_22

    const/high16 v7, 0x3f800000    # 1.0f

    .line 5
    sget-object v8, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->Left:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    move-object v3, p0

    move-object v4, p1

    move v5, v2

    move v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->drawStar(Landroid/graphics/Canvas;FFFLcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;)V

    sub-float/2addr v9, v10

    goto :goto_2e

    .line 6
    :cond_22
    sget-object v8, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->Left:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    move-object v3, p0

    move-object v4, p1

    move v5, v2

    move v6, v1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->drawStar(Landroid/graphics/Canvas;FFFLcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;)V

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 7
    :goto_2e
    iget v3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    iget v4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_37
    return-void
.end method

.method private drawFromRightToLeft(Landroid/graphics/Canvas;)V
    .registers 13

    .line 1
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    .line 2
    iget-object v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsDrawingSpace:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    sub-float/2addr v2, v3

    .line 3
    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    move v9, v0

    const/4 v0, 0x0

    .line 4
    :goto_e
    iget v3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    if-ge v0, v3, :cond_3a

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v3, v9, v10

    if-ltz v3, :cond_25

    const/high16 v7, 0x3f800000    # 1.0f

    .line 5
    sget-object v8, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->Right:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    move-object v3, p0

    move-object v4, p1

    move v5, v2

    move v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->drawStar(Landroid/graphics/Canvas;FFFLcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;)V

    sub-float/2addr v9, v10

    goto :goto_31

    .line 6
    :cond_25
    sget-object v8, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->Right:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    move-object v3, p0

    move-object v4, p1

    move v5, v2

    move v6, v1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->drawStar(Landroid/graphics/Canvas;FFFLcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;)V

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 7
    :goto_31
    iget v3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    iget v4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_3a
    return-void
.end method

.method private drawStar(Landroid/graphics/Canvas;FFFLcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;)V
    .registers 16

    .line 1
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    mul-float v0, v0, p4

    .line 2
    iget-object p4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object p4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starVertex:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    add-float/2addr v2, p2

    const/4 v3, 0x1

    aget v1, v1, v3

    add-float/2addr v1, p3

    invoke-virtual {p4, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 p4, 0x2

    .line 4
    :goto_19
    iget-object v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starVertex:[F

    array-length v2, v1

    if-ge p4, v2, :cond_2e

    .line 5
    iget-object v2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starPath:Landroid/graphics/Path;

    aget v3, v1, p4

    add-float/2addr v3, p2

    add-int/lit8 v4, p4, 0x1

    aget v1, v1, v4

    add-float/2addr v1, p3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p4, p4, 0x2

    goto :goto_19

    .line 6
    :cond_2e
    iget-object p4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    .line 7
    iget-object p4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 8
    sget-object p4, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->Left:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    const v1, 0x3ca3d70a    # 0.02f

    if-ne p5, p4, :cond_61

    add-float v3, p2, v0

    .line 9
    iget p4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    mul-float v1, v1, p4

    add-float v7, v1, v3

    add-float v8, p3, p4

    iget-object v9, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarFill:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10
    iget p4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    add-float v5, p2, p4

    add-float v6, p3, p4

    iget-object v7, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBackground:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_85

    .line 11
    :cond_61
    iget p4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    add-float p5, p2, p4

    mul-float v1, v1, p4

    add-float/2addr v1, v0

    sub-float v3, p5, v1

    add-float v5, p2, p4

    add-float v6, p3, p4

    iget-object v7, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarFill:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 12
    iget p4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    add-float p5, p2, p4

    sub-float v4, p5, v0

    add-float v5, p3, p4

    iget-object v6, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBackground:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13
    :goto_85
    iget-boolean p2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->drawBorderEnabled:Z

    if-eqz p2, :cond_90

    .line 14
    iget-object p2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_90
    return-void
.end method

.method private generateInternalCanvas(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->internalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    if-lez p1, :cond_20

    if-lez p2, :cond_20

    .line 3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->internalBitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 5
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->internalCanvas:Landroid/graphics/Canvas;

    :cond_20
    return-void
.end method

.method private initView()V
    .registers 5

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starPath:Landroid/graphics/Path;

    .line 2
    new-instance v0, Landroid/graphics/CornerPathEffect;

    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starCornerRadius:F

    invoke-direct {v0, v1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->cornerPathEffect:Landroid/graphics/CornerPathEffect;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarOutline:Landroid/graphics/Paint;

    .line 4
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarOutline:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarOutline:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 7
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarOutline:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 8
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarOutline:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 9
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarOutline:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarOutline:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->cornerPathEffect:Landroid/graphics/CornerPathEffect;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBorder:Landroid/graphics/Paint;

    .line 12
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBorder:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 14
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBorder:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 15
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBorder:Landroid/graphics/Paint;

    iget v3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBorderWidth:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBorder:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->cornerPathEffect:Landroid/graphics/CornerPathEffect;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBackground:Landroid/graphics/Paint;

    .line 18
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBackground:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBackground:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 21
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBackground:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 22
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBackground:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarFill:Landroid/graphics/Paint;

    .line 24
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 26
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarFill:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 27
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 28
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarFill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->defaultStarSize:F

    return-void
.end method

.method private normalizeRating(F)F
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "SimpleRatingBar"

    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    if-gez v4, :cond_1b

    new-array v1, v1, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Assigned rating is less than 0 (%f < 0), I will set it to exactly 0"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2
    :cond_1b
    iget v3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v0

    iget p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "Assigned rating is greater than numberOfStars (%f > %d), I will set it to exactly numberOfStars"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    int-to-float p1, p1

    :cond_3f
    return p1
.end method

.method private parseAttrs(Landroid/util/AttributeSet;)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_borderColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/iarcuschin/simpleratingbar/R$color;->golden_stars:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->borderColor:I

    .line 3
    sget v1, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_fillColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->fillColor:I

    .line 4
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_starBackgroundColor:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBackgroundColor:I

    .line 5
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_backgroundColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->backgroundColor:I

    .line 6
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_pressedBorderColor:I

    iget v2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->borderColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedBorderColor:I

    .line 7
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_pressedFillColor:I

    iget v2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->fillColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedFillColor:I

    .line 8
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_pressedStarBackgroundColor:I

    iget v2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBackgroundColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedStarBackgroundColor:I

    .line 9
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_pressedBackgroundColor:I

    iget v2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->backgroundColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedBackgroundColor:I

    .line 10
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_numberOfStars:I

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    .line 11
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_starsSeparation:I

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v2, v1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->valueToPixels(FI)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    .line 12
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_maxStarSize:I

    const v2, 0x7fffffff

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    .line 13
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_starSize:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->desiredStarSize:F

    .line 14
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_stepSize:I

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->stepSize:F

    .line 15
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_starBorderWidth:I

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBorderWidth:F

    .line 16
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_starCornerRadius:I

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starCornerRadius:F

    .line 17
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_rating:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->normalizeRating(F)F

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    .line 18
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_isIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->isIndicator:Z

    .line 19
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_drawBorderEnabled:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->drawBorderEnabled:Z

    .line 20
    sget v0, Lcom/iarcuschin/simpleratingbar/R$styleable;->SimpleRatingBar_srb_gravity:I

    sget-object v2, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->Left:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    iget v2, v2, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->id:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 21
    invoke-static {}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->values()[Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_d8
    if-ge v4, v3, :cond_e4

    aget-object v5, v2, v4

    .line 22
    iget v6, v5, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->id:I

    if-ne v6, v0, :cond_e1

    goto :goto_f3

    :cond_e1
    add-int/lit8 v4, v4, 0x1

    goto :goto_d8

    :cond_e4
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Gravity chosen is neither \'left\' nor \'right\', I will set it to Left"

    .line 23
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleRatingBar"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-object v5, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->Left:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    .line 25
    :goto_f3
    iput-object v5, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->gravity:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    .line 26
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    invoke-direct {p0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->validateAttrs()V

    return-void
.end method

.method private performStarSizeAssociatedCalculations(II)V
    .registers 14

    .line 1
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    iget v2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalWidth(FIFZ)I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    iget v2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    iget v4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalHeight(FIFZ)I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    const/4 v2, 0x2

    div-int/2addr p1, v2

    int-to-float p1, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    sub-float/2addr p1, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p1, v5

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr p2, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr p2, v5

    div-int/2addr p2, v2

    int-to-float p2, p2

    div-float v4, v1, v4

    sub-float/2addr p2, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr p2, v4

    .line 5
    new-instance v4, Landroid/graphics/RectF;

    add-float/2addr v0, p1

    add-float/2addr v1, p2

    invoke-direct {v4, p1, p2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsDrawingSpace:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    mul-float p1, p1, p2

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsDrawingSpace:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, p1

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, p1

    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v4, v5, v6, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsTouchSpace:Landroid/graphics/RectF;

    .line 8
    iget p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, p1

    const v1, 0x3eb33333    # 0.35f

    mul-float v1, v1, p1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v4, v4, p1

    mul-float p2, p2, p1

    const v5, 0x3cf5c28f    # 0.03f

    mul-float v5, v5, p1

    const v6, 0x3ec28f5c    # 0.38f

    mul-float v6, v6, p1

    const v7, 0x3ea3d70a    # 0.32f

    mul-float v7, v7, p1

    const v8, 0x3f19999a    # 0.6f

    mul-float v8, v8, p1

    const v9, 0x3e8a3d71    # 0.27f

    mul-float v9, v9, p1

    const/16 v10, 0x14

    new-array v10, v10, [F

    aput v5, v10, v3

    const/4 v3, 0x1

    aput v6, v10, v3

    add-float v3, v5, v1

    aput v3, v10, v2

    const/4 v2, 0x3

    aput v6, v10, v2

    const/4 v2, 0x4

    aput v4, v10, v2

    const/4 v2, 0x5

    aput p2, v10, v2

    sub-float v2, p1, v5

    sub-float/2addr v2, v1

    const/4 v1, 0x6

    aput v2, v10, v1

    const/4 v1, 0x7

    aput v6, v10, v1

    sub-float v1, p1, v5

    const/16 v2, 0x8

    aput v1, v10, v2

    const/16 v1, 0x9

    aput v6, v10, v1

    sub-float v1, p1, v7

    const/16 v2, 0xa

    aput v1, v10, v2

    const/16 v1, 0xb

    aput v8, v10, v1

    sub-float v1, p1, v0

    const/16 v2, 0xc

    aput v1, v10, v2

    sub-float v1, p1, p2

    const/16 v2, 0xd

    aput v1, v10, v2

    const/16 v1, 0xe

    aput v4, v10, v1

    sub-float v1, p1, v9

    const/16 v2, 0xf

    aput v1, v10, v2

    const/16 v1, 0x10

    aput v0, v10, v1

    sub-float/2addr p1, p2

    const/16 p2, 0x11

    aput p1, v10, p2

    const/16 p1, 0x12

    aput v7, v10, p1

    const/16 p1, 0x13

    aput v8, v10, p1

    .line 9
    iput-object v10, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starVertex:[F

    return-void
.end method

.method private setNewRatingFromTouch(FF)V
    .registers 6

    .line 1
    iget-object p2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->gravity:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    sget-object v0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->Left:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    if-eq p2, v0, :cond_d

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sub-float p1, p2, p1

    .line 3
    :cond_d
    iget-object p2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsDrawingSpace:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_19

    .line 4
    iput v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    return-void

    .line 5
    :cond_19
    iget v2, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_25

    .line 6
    iget p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    int-to-float p1, p1

    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    return-void

    :cond_25
    sub-float/2addr p1, v0

    .line 7
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr v0, p2

    mul-float v0, v0, p1

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    .line 8
    iget p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->stepSize:F

    rem-float p2, v0, p1

    const/high16 v2, 0x40800000    # 4.0f

    div-float v2, p1, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_48

    sub-float/2addr v0, p2

    .line 9
    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    .line 10
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    goto :goto_55

    :cond_48
    sub-float/2addr v0, p2

    add-float/2addr v0, p1

    .line 11
    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    .line 12
    iget p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    int-to-float p1, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    :goto_55
    return-void
.end method

.method private setupColorsInPaint()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->touchInProgress:Z

    if-eqz v0, :cond_54

    .line 2
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBorder:Landroid/graphics/Paint;

    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarFill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedFillColor:I

    if-eqz v0, :cond_23

    .line 5
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarFill:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_2f

    .line 6
    :cond_23
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarFill:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 7
    :goto_2f
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBackground:Landroid/graphics/Paint;

    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedStarBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedStarBackgroundColor:I

    if-eqz v0, :cond_47

    .line 9
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_a3

    .line 10
    :cond_47
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_a3

    .line 11
    :cond_54
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBorder:Landroid/graphics/Paint;

    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->borderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarFill:Landroid/graphics/Paint;

    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->fillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->fillColor:I

    if-eqz v0, :cond_73

    .line 14
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarFill:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_7f

    .line 15
    :cond_73
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarFill:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 16
    :goto_7f
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBackground:Landroid/graphics/Paint;

    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBackgroundColor:I

    if-eqz v0, :cond_97

    .line 18
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_a3

    .line 19
    :cond_97
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_a3
    return-void
.end method

.method private validateAttrs()V
    .registers 6

    .line 1
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_8a

    .line 2
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->desiredStarSize:F

    const/high16 v3, 0x4f000000

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_34

    iget v4, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_34

    cmpl-float v3, v0, v4

    if-lez v3, :cond_34

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v1

    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Initialized with conflicting values: starSize is greater than maxStarSize (%f > %f). I will ignore maxStarSize"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "SimpleRatingBar"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_34
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->stepSize:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-lez v0, :cond_74

    .line 5
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBorderWidth:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_5e

    .line 6
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starCornerRadius:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_48

    return-void

    .line 7
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBorderWidth:F

    .line 8
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "SimpleRatingBar initialized with invalid value for starCornerRadius. Found %f, but should be greater or equal than 0"

    .line 9
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBorderWidth:F

    .line 11
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "SimpleRatingBar initialized with invalid value for starBorderWidth. Found %f, but should be greater than 0"

    .line 12
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->stepSize:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "SimpleRatingBar initialized with invalid value for stepSize. Found %f, but should be greater than 0"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "SimpleRatingBar initialized with invalid value for numberOfStars. Found %d, but should be greater than 0"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private valueFromPixels(FI)F
    .registers 4
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    if-eqz p2, :cond_12

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    return p1

    .line 1
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    :goto_10
    div-float/2addr p1, p2

    return p1

    .line 2
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    goto :goto_10
.end method

.method private valueToPixels(FI)F
    .registers 4
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    if-eqz p2, :cond_13

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    return p1

    .line 1
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1

    :cond_13
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method


# virtual methods
.method public getAnimationBuilder()Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;
    .registers 3

    new-instance v0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$AnimationBuilder;-><init>(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$1;)V

    return-object v0
.end method

.method public getBorderColor()I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->borderColor:I

    return v0
.end method

.method public getFillColor()I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->fillColor:I

    return v0
.end method

.method public getGravity()Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;
    .registers 2

    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->gravity:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    return-object v0
.end method

.method public getMaxStarSize()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    return v0
.end method

.method public getMaxStarSize(I)F
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 2
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    invoke-direct {p0, v0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->valueFromPixels(FI)F

    move-result p1

    return p1
.end method

.method public getNumberOfStars()I
    .registers 2

    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    return v0
.end method

.method public getPressedBorderColor()I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedBorderColor:I

    return v0
.end method

.method public getPressedFillColor()I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedFillColor:I

    return v0
.end method

.method public getPressedStarBackgroundColor()I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedStarBackgroundColor:I

    return v0
.end method

.method public getRating()F
    .registers 2

    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    return v0
.end method

.method public getStarBackgroundColor()I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBackgroundColor:I

    return v0
.end method

.method public getStarBorderWidth()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBorderWidth:F

    return v0
.end method

.method public getStarBorderWidth(I)F
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 2
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBorderWidth:F

    invoke-direct {p0, v0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->valueFromPixels(FI)F

    move-result p1

    return p1
.end method

.method public getStarCornerRadius()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starCornerRadius:F

    return v0
.end method

.method public getStarCornerRadius(I)F
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 2
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starCornerRadius:F

    invoke-direct {p0, v0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->valueFromPixels(FI)F

    move-result p1

    return p1
.end method

.method public getStarSize()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    return v0
.end method

.method public getStarSize(I)F
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 2
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    invoke-direct {p0, v0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->valueFromPixels(FI)F

    move-result p1

    return p1
.end method

.method public getStarsSeparation()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    return v0
.end method

.method public getStarsSeparation(I)F
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 2
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    invoke-direct {p0, v0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->valueFromPixels(FI)F

    move-result p1

    return p1
.end method

.method public getStepSize()F
    .registers 2

    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->stepSize:F

    return v0
.end method

.method public isDrawBorderEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->drawBorderEnabled:Z

    return v0
.end method

.method public isIndicator()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->isIndicator:Z

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_42

    if-nez v0, :cond_10

    goto :goto_42

    .line 4
    :cond_10
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->internalCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5
    invoke-direct {p0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setupColorsInPaint()V

    .line 6
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->gravity:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    sget-object v1, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;->Left:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    if-ne v0, v1, :cond_27

    .line 7
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->internalCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->drawFromLeftToRight(Landroid/graphics/Canvas;)V

    goto :goto_2c

    .line 8
    :cond_27
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->internalCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->drawFromRightToLeft(Landroid/graphics/Canvas;)V

    .line 9
    :goto_2c
    iget-boolean v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->touchInProgress:Z

    if-eqz v0, :cond_36

    .line 10
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_3b

    .line 11
    :cond_36
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 12
    :goto_3b
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->internalBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 4
    iget p3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->desiredStarSize:F

    const/high16 p4, 0x4f000000

    cmpl-float p4, p3, p4

    if-nez p4, :cond_1a

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateBestStarSize(II)F

    move-result p3

    iput p3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    goto :goto_1c

    .line 6
    :cond_1a
    iput p3, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    .line 7
    :goto_1c
    invoke-direct {p0, p1, p2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->performStarSizeAssociatedCalculations(II)V

    return-void
.end method

.method public final onMeasure(II)V
    .registers 12

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x4f000000

    const/4 v5, 0x1

    if-ne v0, v3, :cond_1a

    goto :goto_79

    :cond_1a
    if-ne v0, v2, :cond_51

    .line 5
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->desiredStarSize:F

    cmpl-float v6, v0, v4

    if-eqz v6, :cond_2f

    .line 6
    iget v6, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    iget v7, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalWidth(FIFZ)I

    move-result v0

    .line 7
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_79

    .line 8
    :cond_2f
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    cmpl-float v6, v0, v4

    if-eqz v6, :cond_42

    .line 9
    iget v6, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    iget v7, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalWidth(FIFZ)I

    move-result v0

    .line 10
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_79

    .line 11
    :cond_42
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->defaultStarSize:F

    iget v6, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    iget v7, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalWidth(FIFZ)I

    move-result v0

    .line 12
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_79

    .line 13
    :cond_51
    iget p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->desiredStarSize:F

    cmpl-float v0, p1, v4

    if-eqz v0, :cond_60

    .line 14
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    iget v6, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    invoke-direct {p0, p1, v0, v6, v5}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalWidth(FIFZ)I

    move-result p1

    goto :goto_79

    .line 15
    :cond_60
    iget p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    cmpl-float v0, p1, v4

    if-eqz v0, :cond_6f

    .line 16
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    iget v6, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    invoke-direct {p0, p1, v0, v6, v5}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalWidth(FIFZ)I

    move-result p1

    goto :goto_79

    .line 17
    :cond_6f
    iget p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->defaultStarSize:F

    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    iget v6, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    invoke-direct {p0, p1, v0, v6, v5}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalWidth(FIFZ)I

    move-result p1

    .line 18
    :goto_79
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iget v6, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    iget v7, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    add-int/lit8 v8, v7, -0x1

    int-to-float v8, v8

    mul-float v8, v8, v6

    sub-float/2addr v0, v8

    int-to-float v8, v7

    div-float/2addr v0, v8

    if-ne v1, v3, :cond_94

    goto :goto_d7

    :cond_94
    if-ne v1, v2, :cond_bd

    .line 19
    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->desiredStarSize:F

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_a5

    .line 20
    invoke-direct {p0, v1, v7, v6, v5}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalHeight(FIFZ)I

    move-result v0

    .line 21
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_d7

    .line 22
    :cond_a5
    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_b4

    .line 23
    invoke-direct {p0, v1, v7, v6, v5}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalHeight(FIFZ)I

    move-result v0

    .line 24
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_d7

    .line 25
    :cond_b4
    invoke-direct {p0, v0, v7, v6, v5}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalHeight(FIFZ)I

    move-result v0

    .line 26
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_d7

    .line 27
    :cond_bd
    iget p2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->desiredStarSize:F

    cmpl-float v1, p2, v4

    if-eqz v1, :cond_c8

    .line 28
    invoke-direct {p0, p2, v7, v6, v5}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalHeight(FIFZ)I

    move-result p2

    goto :goto_d7

    .line 29
    :cond_c8
    iget p2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    cmpl-float v1, p2, v4

    if-eqz v1, :cond_d3

    .line 30
    invoke-direct {p0, p2, v7, v6, v5}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalHeight(FIFZ)I

    move-result p2

    goto :goto_d7

    .line 31
    :cond_d3
    invoke-direct {p0, v0, v7, v6, v5}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->calculateTotalHeight(FIFZ)I

    move-result p2

    .line 32
    :goto_d7
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1
    check-cast p1, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    # getter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;->rating:F
    invoke-static {p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;->access$000(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setRating(F)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;

    invoke-direct {v1, v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->getRating()F

    move-result v0

    # setter for: Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;->rating:F
    invoke-static {v1, v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;->access$002(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$SavedState;F)F

    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->generateInternalCanvas(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget-boolean v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->isIndicator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_70

    .line 2
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_40

    if-eq v0, v2, :cond_22

    const/4 v3, 0x2

    if-eq v0, v3, :cond_40

    const/4 p1, 0x3

    if-eq v0, p1, :cond_34

    goto :goto_5d

    .line 3
    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setNewRatingFromTouch(FF)V

    .line 4
    iget-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_34

    .line 5
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 6
    :cond_34
    iget-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingListener:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;

    if-eqz p1, :cond_3d

    .line 7
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    invoke-interface {p1, p0, v0, v2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;->onRatingChanged(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;FZ)V

    .line 8
    :cond_3d
    iput-boolean v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->touchInProgress:Z

    goto :goto_5d

    .line 9
    :cond_40
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsTouchSpace:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 10
    iput-boolean v2, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->touchInProgress:Z

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setNewRatingFromTouch(FF)V

    .line 12
    :goto_5d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2

    .line 13
    :cond_61
    iget-boolean p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->touchInProgress:Z

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingListener:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;

    if-eqz p1, :cond_6e

    .line 14
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    invoke-interface {p1, p0, v0, v2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;->onRatingChanged(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;FZ)V

    .line 15
    :cond_6e
    iput-boolean v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->touchInProgress:Z

    :cond_70
    :goto_70
    return v1
.end method

.method public setBorderColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->borderColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDrawBorderEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->drawBorderEnabled:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFillColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->fillColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGravity(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->gravity:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$Gravity;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIndicator(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->isIndicator:Z

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->touchInProgress:Z

    return-void
.end method

.method public setMaxStarSize(F)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    .line 2
    iget v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->currentStarSize:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_19

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->generateInternalCanvas(II)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_19
    return-void
.end method

.method public setMaxStarSize(FI)V
    .registers 3
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->valueToPixels(FI)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setMaxStarSize(F)V

    return-void
.end method

.method public setNumberOfStars(I)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->numberOfStars:I

    if-lez p1, :cond_19

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->generateInternalCanvas(II)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 6
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "SimpleRatingBar initialized with invalid value for numberOfStars. Found %d, but should be greater than 0"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnRatingBarChangeListener(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingListener:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;

    return-void
.end method

.method public setPressedBorderColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedBorderColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPressedFillColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedFillColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPressedStarBackgroundColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->pressedStarBackgroundColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRating(F)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->normalizeRating(F)F

    move-result v0

    iput v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->rating:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingListener:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 4
    :cond_17
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->ratingListener:Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar$OnRatingBarChangeListener;->onRatingChanged(Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;FZ)V

    :cond_1d
    return-void
.end method

.method public setStarBackgroundColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBackgroundColor:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStarBorderWidth(F)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starBorderWidth:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 4
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "SimpleRatingBar initialized with invalid value for starBorderWidth. Found %f, but should be greater than 0"

    .line 6
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStarBorderWidth(FI)V
    .registers 3
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->valueToPixels(FI)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setStarBorderWidth(F)V

    return-void
.end method

.method public setStarCornerRadius(F)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starCornerRadius:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1e

    .line 2
    new-instance v0, Landroid/graphics/CornerPathEffect;

    invoke-direct {v0, p1}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->cornerPathEffect:Landroid/graphics/CornerPathEffect;

    .line 3
    iget-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 4
    iget-object p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->paintStarOutline:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->cornerPathEffect:Landroid/graphics/CornerPathEffect;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 6
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "SimpleRatingBar initialized with invalid value for starCornerRadius. Found %f, but should be greater or equal than 0"

    .line 8
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStarCornerRadius(FI)V
    .registers 3
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->valueToPixels(FI)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setStarCornerRadius(F)V

    return-void
.end method

.method public setStarSize(F)V
    .registers 4

    .line 1
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->desiredStarSize:F

    const/high16 v0, 0x4f000000

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_30

    .line 2
    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_30

    cmpl-float v0, p1, v1

    if-lez v0, :cond_30

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget v1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->maxStarSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "Initialized with conflicting values: starSize is greater than maxStarSize (%f > %f). I will ignore maxStarSize"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimpleRatingBar"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_30
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->generateInternalCanvas(II)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStarSize(FI)V
    .registers 3
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->valueToPixels(FI)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setStarSize(F)V

    return-void
.end method

.method public setStarsSeparation(F)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->starsSeparation:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->generateInternalCanvas(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStarsSeparation(FI)V
    .registers 3
    .param p2    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->valueToPixels(FI)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->setStarsSeparation(F)V

    return-void
.end method

.method public setStepSize(F)V
    .registers 5

    .line 1
    iput p1, p0, Lcom/iarcuschin/simpleratingbar/SimpleRatingBar;->stepSize:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_b

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 3
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "SimpleRatingBar initialized with invalid value for stepSize. Found %f, but should be greater than 0"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
