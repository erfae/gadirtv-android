.class Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;
.super Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerticalFlingRunnable"
.end annotation


# instance fields
.field protected mLastFlingY:I

.field final synthetic this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 4383
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V
    .locals 0

    .line 4383
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 4417
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 4422
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 4427
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 4428
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 4429
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 4433
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mLastFlingY:I

    sub-int/2addr v2, v0

    if-lez v2, :cond_2

    .line 4438
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    iput v4, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 4439
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4440
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    .line 4443
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 4446
    :cond_2
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 4447
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v5, v3

    iput v5, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 4449
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4450
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    .line 4453
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    neg-int v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4456
    :goto_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    invoke-virtual {v3, v2, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->trackMotionScroll(II)Z

    move-result v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 4459
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invalidate()V

    .line 4460
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mLastFlingY:I

    .line 4461
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 4463
    :cond_3
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->endFling()V

    :goto_1
    return-void

    .line 4423
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->endFling()V

    return-void
.end method

.method start(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialVelocity"
        }
    .end annotation

    if-gez p1, :cond_0

    const v0, 0x7fffffff

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 4392
    :goto_0
    iput v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mLastFlingY:I

    .line 4393
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 4395
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v0, 0x4

    iput v0, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4396
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method startScroll(II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "distance",
            "duration"
        }
    .end annotation

    if-gez p1, :cond_0

    const v0, 0x7fffffff

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 4409
    :goto_0
    iput v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mLastFlingY:I

    .line 4410
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4411
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 p2, 0x4

    iput p2, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4412
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
