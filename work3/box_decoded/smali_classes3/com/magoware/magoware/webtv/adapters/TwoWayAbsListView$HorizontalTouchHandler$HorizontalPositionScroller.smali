.class Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;
.super Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalPositionScroller"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 5323
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 5326
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getWidth()I

    move-result v0

    .line 5327
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    .line 5329
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mMode:I

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

    .line 5420
    :cond_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v5

    if-gez v2, :cond_1

    return-void

    :cond_1
    add-int/2addr v1, v2

    .line 5426
    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    if-ne v1, v3, :cond_2

    .line 5428
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 5432
    :cond_2
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5433
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 5434
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v4, v0, v2

    .line 5436
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    .line 5437
    iget v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mBoundPos:I

    if-le v1, v5, :cond_3

    .line 5438
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    sub-int/2addr v4, v1

    neg-int v1, v4

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    .line 5439
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 5441
    :cond_3
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    sub-int/2addr v0, v1

    add-int/2addr v2, v3

    if-le v0, v2, :cond_11

    .line 5444
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    sub-int/2addr v0, v2

    neg-int v0, v0

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    goto/16 :goto_3

    .line 5362
    :cond_4
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    .line 5364
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mBoundPos:I

    if-eq v1, v2, :cond_8

    if-le v0, v3, :cond_8

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    if-lt v0, v2, :cond_5

    goto :goto_0

    :cond_5
    add-int/2addr v1, v3

    .line 5370
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    if-ne v1, v0, :cond_6

    .line 5372
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 5376
    :cond_6
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5377
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 5378
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 5379
    iget v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    .line 5380
    iget v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mBoundPos:I

    if-ge v1, v5, :cond_7

    .line 5381
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    add-int/2addr v2, v0

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    invoke-virtual {v5, v0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    .line 5384
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    .line 5386
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_7
    if-le v0, v3, :cond_11

    .line 5389
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    sub-int/2addr v0, v3

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    invoke-virtual {v1, v0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    goto/16 :goto_3

    :cond_8
    :goto_0
    return-void

    .line 5396
    :cond_9
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    if-ne v1, v0, :cond_a

    .line 5398
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 5402
    :cond_a
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 5406
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lez v1, :cond_c

    .line 5407
    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    goto :goto_1

    :cond_c
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 5409
    :goto_1
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    invoke-virtual {v3, v0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    .line 5411
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    .line 5413
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mTargetPos:I

    if-le v1, v0, :cond_11

    .line 5414
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 5331
    :cond_d
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    if-gez v2, :cond_e

    return-void

    .line 5338
    :cond_e
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    if-ne v1, v4, :cond_f

    .line 5340
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 5344
    :cond_f
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5345
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 5346
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 5348
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_10

    iget v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mExtraScroll:I

    goto :goto_2

    :cond_10
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 5350
    :goto_2
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    sub-int/2addr v4, v0

    add-int/2addr v4, v2

    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mScrollDuration:I

    invoke-virtual {v3, v4, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->smoothScrollBy(II)V

    .line 5353
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mLastSeenPos:I

    .line 5354
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->mTargetPos:I

    if-ge v1, v0, :cond_11

    .line 5355
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_11
    :goto_3
    return-void
.end method
