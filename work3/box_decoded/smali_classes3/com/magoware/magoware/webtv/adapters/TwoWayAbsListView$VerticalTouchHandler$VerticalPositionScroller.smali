.class Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;
.super Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerticalPositionScroller"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 4480
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 4483
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeight()I

    move-result v0

    .line 4484
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    .line 4486
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_d

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v2, v5, :cond_9

    const/4 v6, 0x3

    if-eq v2, v6, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    .line 4577
    :cond_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v5

    if-gez v2, :cond_1

    return-void

    :cond_1
    add-int/2addr v1, v2

    .line 4583
    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    if-ne v1, v3, :cond_2

    .line 4585
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4589
    :cond_2
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4590
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 4591
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v4, v0, v2

    .line 4593
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    .line 4594
    iget v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mBoundPos:I

    if-le v1, v5, :cond_3

    .line 4595
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    sub-int/2addr v4, v1

    neg-int v1, v4

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    .line 4596
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 4598
    :cond_3
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    sub-int/2addr v0, v1

    add-int/2addr v2, v3

    if-le v0, v2, :cond_11

    .line 4601
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    sub-int/2addr v0, v2

    neg-int v0, v0

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    goto/16 :goto_3

    .line 4519
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 4521
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mBoundPos:I

    if-eq v1, v2, :cond_8

    if-le v0, v3, :cond_8

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    if-lt v0, v2, :cond_5

    goto :goto_0

    :cond_5
    add-int/2addr v1, v3

    .line 4527
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    if-ne v1, v0, :cond_6

    .line 4529
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4533
    :cond_6
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4534
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 4535
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 4536
    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    .line 4537
    iget v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mBoundPos:I

    if-ge v1, v5, :cond_7

    .line 4538
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    invoke-virtual {v5, v0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    .line 4541
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    .line 4543
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_7
    if-le v0, v3, :cond_11

    .line 4546
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    sub-int/2addr v0, v3

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    goto/16 :goto_3

    :cond_8
    :goto_0
    return-void

    .line 4553
    :cond_9
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    if-ne v1, v0, :cond_a

    .line 4555
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4559
    :cond_a
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 4563
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v1, :cond_c

    .line 4564
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    goto :goto_1

    :cond_c
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 4566
    :goto_1
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    invoke-virtual {v3, v0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    .line 4568
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    .line 4570
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mTargetPos:I

    if-le v1, v0, :cond_11

    .line 4571
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 4488
    :cond_d
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    if-gez v2, :cond_e

    return-void

    .line 4495
    :cond_e
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    if-ne v1, v4, :cond_f

    .line 4497
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4501
    :cond_f
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4502
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 4503
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    .line 4505
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_10

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mExtraScroll:I

    goto :goto_2

    :cond_10
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 4507
    :goto_2
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    sub-int/2addr v4, v0

    add-int/2addr v4, v2

    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mScrollDuration:I

    invoke-virtual {v3, v4, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->smoothScrollBy(II)V

    .line 4510
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mLastSeenPos:I

    .line 4511
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->mTargetPos:I

    if-ge v1, v0, :cond_11

    .line 4512
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_11
    :goto_3
    return-void
.end method
