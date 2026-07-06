.class abstract Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "GridLinearSmoothScroller"
.end annotation


# instance fields
.field public mSkipOnStopInternal:Z

.field public final synthetic this$0:Landroidx/leanback/widget/GridLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 2
    iget-object p1, p1, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final calculateTimeForScrolling(I)I
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v1, v1, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v1

    if-lez v1, :cond_0

    const/high16 v1, 0x41f00000    # 30.0f

    .line 3
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 4
    invoke-virtual {v2}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float p1, p1

    mul-float v1, v1, p1

    int-to-float p1, v0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    float-to-int v0, v1

    :cond_0
    return v0
.end method

.method public final onStop()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDy:I

    iput v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mInterimTargetDx:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetVector:Landroid/graphics/PointF;

    .line 3
    iget-boolean v1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->mSkipOnStopInternal:Z

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->onStopInternal()V

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v2, v1, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    if-ne v2, p0, :cond_1

    .line 6
    iput-object v0, v1, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    .line 7
    :cond_1
    iget-object v2, v1, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-ne v2, p0, :cond_2

    .line 8
    iput-object v0, v1, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    :cond_2
    return-void
.end method

.method public onStopInternal()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroidx/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v2

    iput v2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 6
    :cond_2
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 9
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 10
    :cond_3
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 11
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    return-void
.end method

.method public final onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;[I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget p1, p1, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v0, p1, v0

    .line 4
    aget p1, p1, v1

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v1, p1, v1

    .line 6
    aget p1, p1, v0

    move v0, v1

    :goto_0
    mul-int v1, v0, v0

    mul-int v2, p1, p1

    add-int/2addr v2, v1

    int-to-double v1, v2

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v1

    .line 9
    iget-object v2, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p2, v0, p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method
