.class final Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;
.super Landroidx/core/app/SharedElementCallback;
.source "DetailsOverviewSharedElementHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$TransitionTimeOutRunnable;
    }
.end annotation


# instance fields
.field public mActivityToRunTransition:Landroid/app/Activity;

.field public mRightPanelHeight:I

.field public mRightPanelWidth:I

.field private mSavedMatrix:Landroid/graphics/Matrix;

.field private mSavedScaleType:Landroid/widget/ImageView$ScaleType;

.field public mSharedElementName:Ljava/lang/String;

.field public mStartedPostpone:Z

.field public mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/SharedElementCallback;-><init>()V

    return-void
.end method

.method private changeImageViewScale(Landroid/view/View;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/widget/ImageView;

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 6
    :cond_0
    invoke-static {v0}, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->updateImageViewAfterScaleTypeChange(Landroid/widget/ImageView;)V

    return-void
.end method

.method private hasImageViewScaleChange(Landroid/view/View;)Z
    .locals 0

    instance-of p1, p1, Landroid/widget/ImageView;

    return p1
.end method

.method private restoreImageViewScale()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 7
    invoke-static {v1}, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->updateImageViewAfterScaleTypeChange(Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method private saveImageViewScale()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedScaleType:Landroid/widget/ImageView$ScaleType;

    .line 4
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mSavedMatrix:Landroid/graphics/Matrix;

    :cond_1
    return-void
.end method

.method private static updateImageViewAfterScaleTypeChange(Landroid/widget/ImageView;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 6
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x1

    if-ge p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 3
    iget-object p3, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    if-eqz p3, :cond_2

    iget-object p3, p3, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    if-eq p3, p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->restoreImageViewScale()V

    .line 5
    iget-object p2, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object p2, p2, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    const/high16 p3, 0x20000

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 6
    iget-object p2, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object p2, p2, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object p2, p2, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    const/high16 p3, 0x40000

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 8
    iget-object p2, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object p2, p2, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 9
    iget-object p2, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object p2, p2, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    if-eq v0, p2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 5
    invoke-direct {p0, p3}, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->hasImageViewScaleChange(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-direct {p0}, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->saveImageViewScale()V

    .line 7
    invoke-direct {p0, p3}, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->changeImageViewScale(Landroid/view/View;)V

    .line 8
    :cond_2
    iget-object p3, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object p3, p3, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 12
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 13
    invoke-virtual {p3, v2, v3}, Landroid/view/View;->measure(II)V

    .line 14
    invoke-virtual {p3, p1, p1, v0, p2}, Landroid/view/View;->layout(IIII)V

    .line 15
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    .line 16
    iget p2, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelWidth:I

    if-eqz p2, :cond_3

    iget p3, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelHeight:I

    if-eqz p3, :cond_3

    .line 17
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget p3, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelHeight:I

    .line 18
    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget p3, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelWidth:I

    add-int/2addr p3, v0

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelHeight:I

    add-int/2addr v1, v2

    .line 22
    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 24
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method
