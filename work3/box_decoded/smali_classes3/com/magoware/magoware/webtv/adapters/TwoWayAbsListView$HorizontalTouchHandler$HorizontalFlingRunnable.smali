.class Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;
.super Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalFlingRunnable"
.end annotation


# instance fields
.field protected mLastFlingX:I

.field final synthetic this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 5226
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V
    .locals 0

    .line 5226
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 5260
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 5265
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 5270
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 5271
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 5272
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 5276
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mLastFlingX:I

    sub-int/2addr v2, v0

    if-lez v2, :cond_2

    .line 5281
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    iput v4, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 5282
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5283
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewOriginalLeft:I

    .line 5286
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 5289
    :cond_2
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 5290
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v5, v3

    iput v5, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 5292
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5293
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewOriginalLeft:I

    .line 5296
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    neg-int v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5299
    :goto_0
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-virtual {v3, v2, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->trackMotionScroll(II)Z

    move-result v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 5302
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invalidate()V

    .line 5303
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mLastFlingX:I

    .line 5304
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 5306
    :cond_3
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->endFling()V

    :goto_1
    return-void

    .line 5266
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->endFling()V

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

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 5235
    :goto_0
    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mLastFlingX:I

    .line 5236
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 5238
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v0, 0x4

    iput v0, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 5239
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

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

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 5252
    :goto_0
    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mLastFlingX:I

    .line 5253
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 5254
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 p2, 0x4

    iput p2, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 5255
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
