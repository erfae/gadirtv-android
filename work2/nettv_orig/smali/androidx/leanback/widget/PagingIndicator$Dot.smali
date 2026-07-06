.class public Landroidx/leanback/widget/PagingIndicator$Dot;
.super Ljava/lang/Object;
.source "PagingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/PagingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Dot"
.end annotation


# instance fields
.field public mAlpha:F

.field public mArrowImageRadius:F

.field public mCenterX:F

.field public mDiameter:F

.field public mDirection:F

.field public mFgColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public mLayoutDirection:F

.field public mRadius:F

.field public mTranslationX:F

.field public final synthetic this$0:Landroidx/leanback/widget/PagingIndicator;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/PagingIndicator;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mDirection:F

    .line 3
    iget-boolean p1, p1, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    return-void
.end method


# virtual methods
.method public adjustAlpha()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v1, v1, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v2, v2, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 4
    iget-object v3, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v3, v3, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 5
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mFgColor:I

    return-void
.end method

.method public final deselect()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    .line 2
    iput v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    .line 3
    iget-object v1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v2, v1, Landroidx/leanback/widget/PagingIndicator;->mDotDiameter:I

    int-to-float v2, v2

    iput v2, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    .line 4
    iget v2, v1, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    int-to-float v2, v2

    iput v2, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mRadius:F

    .line 5
    iget v1, v1, Landroidx/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float v2, v2, v1

    iput v2, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    .line 6
    iput v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    .line 7
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    return v0
.end method

.method public getDiameter()F
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    return v0
.end method

.method public getTranslationX()F
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    .line 3
    iget-object p1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDiameter(F)V
    .locals 2

    .line 1
    iput p1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 2
    iput p1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mRadius:F

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    iget v1, v0, Landroidx/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float p1, p1, v1

    iput p1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mDirection:F

    mul-float p1, p1, v0

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    mul-float p1, p1, v0

    iput p1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    .line 2
    iget-object p1, p0, Landroidx/leanback/widget/PagingIndicator$Dot;->this$0:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
