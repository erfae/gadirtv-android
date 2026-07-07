.class Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;
.super Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalTouchHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;
    }
.end annotation


# instance fields
.field mLastX:I

.field mMotionViewNewLeft:I

.field mMotionViewOriginalLeft:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 4619
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V

    return-void
.end method


# virtual methods
.method protected getFlingRunnable()Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;
    .locals 2

    .line 4638
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V

    return-object v0
.end method

.method protected getPositionScroller()Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;
    .locals 1

    .line 4644
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalPositionScroller;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;)V

    return-object v0
.end method

.method public synthetic lambda$onTouchEvent$0$TwoWayAbsListView$HorizontalTouchHandler(Landroid/view/View;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;)V
    .locals 1

    const/4 v0, 0x0

    .line 4881
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 4882
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    .line 4883
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    if-nez p1, :cond_0

    .line 4884
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4886
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 p2, -0x1

    iput p2, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 4650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 4688
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4690
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 4691
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionX:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->startScrollIfNeeded(I)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    .line 4700
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v0, -0x1

    iput v0, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4702
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    goto :goto_0

    .line 4663
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4665
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 4666
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 4668
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->findMotionRowX(I)I

    move-result v4

    const/4 v5, 0x4

    if-eq v0, v5, :cond_4

    if-ltz v4, :cond_4

    .line 4672
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v7, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int v7, v4, v7

    invoke-virtual {v6, v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4673
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewOriginalLeft:I

    .line 4674
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v3, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionX:I

    .line 4675
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput p1, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionY:I

    .line 4676
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v4, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 4677
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4678
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->clearScrollingCache()V

    :cond_4
    const/high16 p1, -0x80000000

    .line 4680
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mLastX:I

    if-ne v0, v5, :cond_5

    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 4714
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 4717
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isClickable()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 4728
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4733
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v3

    if-nez v3, :cond_3

    .line 4734
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2702(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 4736
    :cond_3
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/high16 v3, -0x80000000

    const/4 v4, 0x3

    if-eqz v0, :cond_1f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eq v0, v1, :cond_e

    if-eq v0, v6, :cond_7

    if-eq v0, v4, :cond_4

    goto/16 :goto_8

    .line 4958
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4959
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    .line 4960
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4962
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4964
    :cond_5
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->clearScrollingCache()V

    .line 4966
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 4968
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4971
    :cond_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 4972
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 4973
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2702(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    goto/16 :goto_8

    .line 4786
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 4787
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionX:I

    sub-int v0, p1, v0

    .line 4788
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-eqz v5, :cond_d

    if-eq v5, v1, :cond_d

    if-eq v5, v6, :cond_d

    if-eq v5, v4, :cond_8

    goto/16 :goto_8

    .line 4804
    :cond_8
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mLastX:I

    if-eq p1, v4, :cond_25

    .line 4805
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mMotionCorrection:I

    sub-int/2addr v0, v4

    .line 4806
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mLastX:I

    if-eq v4, v3, :cond_9

    sub-int v3, p1, v4

    goto :goto_1

    :cond_9
    move v3, v0

    :goto_1
    if-eqz v3, :cond_a

    .line 4811
    invoke-virtual {p0, v0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->trackMotionScroll(II)Z

    move-result v2

    :cond_a
    if-eqz v2, :cond_c

    .line 4815
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 4820
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->findMotionRowX(I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 4822
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4823
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewOriginalLeft:I

    .line 4825
    :cond_b
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput p1, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionX:I

    .line 4826
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v0, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 4827
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invalidate()V

    .line 4829
    :cond_c
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mLastX:I

    goto/16 :goto_8

    .line 4794
    :cond_d
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->startScrollIfNeeded(I)Z

    goto/16 :goto_8

    .line 4838
    :cond_e
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-eqz p1, :cond_14

    if-eq p1, v1, :cond_14

    if-eq p1, v6, :cond_14

    if-eq p1, v4, :cond_f

    goto/16 :goto_6

    .line 4899
    :cond_f
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_13

    .line 4901
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v0, v3, :cond_10

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v0, p1

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    if-ge v0, v3, :cond_10

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    sub-int/2addr p1, v1

    .line 4903
    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    .line 4904
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    if-gt p1, v0, :cond_10

    .line 4905
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4906
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_6

    .line 4908
    :cond_10
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object p1

    const/16 v0, 0x3e8

    .line 4909
    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 4910
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    .line 4912
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$3100(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I

    move-result v3

    if-le v0, v3, :cond_12

    .line 4913
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    if-nez v0, :cond_11

    .line 4914
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;

    invoke-direct {v0, p0, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler$HorizontalFlingRunnable;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    .line 4916
    :cond_11
    invoke-virtual {p0, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    .line 4918
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->start(I)V

    goto/16 :goto_6

    .line 4920
    :cond_12
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4921
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_6

    .line 4925
    :cond_13
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4926
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_6

    .line 4842
    :cond_14
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 4843
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 4844
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 4845
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-eqz v3, :cond_15

    .line 4846
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4849
    :cond_15
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2900(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;

    move-result-object v3

    if-nez v3, :cond_16

    .line 4850
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    new-instance v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;

    invoke-direct {v4, v3, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2902(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;

    .line 4853
    :cond_16
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2900(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;

    move-result-object v3

    .line 4854
    iput-object v0, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 4855
    iput p1, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->mClickMotionPosition:I

    .line 4856
    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 4858
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput p1, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mResurrectToPosition:I

    .line 4860
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-ne v4, v1, :cond_17

    goto :goto_2

    .line 4892
    :cond_17
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 4893
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 4861
    :cond_18
    :goto_2
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 4863
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-nez v5, :cond_19

    .line 4864
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2800(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v5

    goto :goto_3

    :cond_19
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    move-result-object v5

    .line 4863
    :goto_3
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4866
    :cond_1a
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v2, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    .line 4867
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 4868
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4869
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setSelectedPositionInt(I)V

    .line 4870
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->layoutChildren()V

    .line 4871
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4872
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->positionSelector(Landroid/view/View;)V

    .line 4873
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    .line 4874
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1b

    .line 4875
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 4876
    instance-of v2, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_1b

    .line 4877
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 4880
    :cond_1b
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    new-instance v2, Lcom/magoware/magoware/webtv/adapters/-$$Lambda$TwoWayAbsListView$HorizontalTouchHandler$lnW02nAEjE1aDQNmjg2bUEO4TAk;

    invoke-direct {v2, p0, v0, v3}, Lcom/magoware/magoware/webtv/adapters/-$$Lambda$TwoWayAbsListView$HorizontalTouchHandler$lnW02nAEjE1aDQNmjg2bUEO4TAk;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;Landroid/view/View;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;)V

    .line 4887
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    int-to-long v3, v0

    .line 4880
    invoke-virtual {p1, v2, v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 4889
    :cond_1c
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    :goto_4
    return v1

    .line 4896
    :cond_1d
    :goto_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4931
    :goto_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    .line 4934
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invalidate()V

    .line 4936
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 4938
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4941
    :cond_1e
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 4942
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 4943
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2702(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    goto/16 :goto_8

    .line 4740
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 4741
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 4742
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v6, v0, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->pointToPosition(II)I

    move-result v6

    .line 4743
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean v7, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    if-nez v7, :cond_23

    .line 4744
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v7, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_21

    if-ltz v6, :cond_21

    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    .line 4745
    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v7

    check-cast v7, Landroid/widget/ListAdapter;

    invoke-interface {v7, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 4748
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v2, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4750
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2800(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_20

    .line 4751
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    new-instance v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;

    invoke-direct {v2, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V

    invoke-static {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2802(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4753
    :cond_20
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2800(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {p1, v2, v7, v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 4755
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p1

    if-eqz p1, :cond_22

    if-gez v6, :cond_22

    return v2

    .line 4762
    :cond_22
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-ne p1, v8, :cond_23

    .line 4764
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->createScrollingCache()V

    .line 4765
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v4, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4766
    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mMotionCorrection:I

    .line 4767
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->findMotionRowX(I)I

    move-result v6

    .line 4768
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    :cond_23
    :goto_7
    if-ltz v6, :cond_24

    .line 4775
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int v2, v6, v2

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 4776
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewOriginalLeft:I

    .line 4778
    :cond_24
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v0, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionX:I

    .line 4779
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v5, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionY:I

    .line 4780
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v6, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 4781
    iput v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mLastX:I

    :cond_25
    :goto_8
    return v1
.end method

.method resurrectSelection()Z
    .locals 12

    .line 4987
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 4995
    :cond_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 4996
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 4997
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    .line 4998
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mResurrectToPosition:I

    const/4 v6, 0x1

    if-lt v5, v4, :cond_2

    add-int v7, v4, v0

    if-ge v5, v7, :cond_2

    .line 5004
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v7, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v0, v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5005
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 5006
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v2, :cond_1

    .line 5010
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    add-int v7, v2, v0

    goto :goto_1

    :cond_1
    if-le v8, v3, :cond_8

    .line 5012
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    .line 5013
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    sub-int v7, v3, v0

    goto :goto_1

    :cond_2
    if-ge v5, v4, :cond_9

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_7

    .line 5020
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v7, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5021
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    if-nez v3, :cond_5

    if-gtz v4, :cond_3

    if-ge v7, v2, :cond_4

    .line 5030
    :cond_3
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v2, v5

    :cond_4
    move v5, v7

    :cond_5
    if-lt v7, v2, :cond_6

    add-int/2addr v3, v4

    move v5, v3

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    move v7, v5

    move v5, v4

    :cond_8
    :goto_1
    const/4 v0, 0x1

    goto :goto_4

    .line 5041
    :cond_9
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    add-int v5, v4, v0

    add-int/lit8 v7, v5, -0x1

    sub-int/2addr v0, v6

    move v9, v0

    const/4 v8, 0x0

    :goto_2
    if-ltz v9, :cond_e

    .line 5046
    iget-object v10, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v10, v9}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5047
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 5048
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    if-ne v9, v0, :cond_c

    if-lt v5, v2, :cond_a

    if-le v10, v3, :cond_b

    .line 5053
    :cond_a
    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHorizontalFadingEdgeLength()I

    move-result v8

    sub-int/2addr v3, v8

    :cond_b
    move v8, v11

    :cond_c
    if-gt v10, v3, :cond_d

    add-int v5, v4, v9

    move v7, v11

    goto :goto_3

    :cond_d
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_e
    move v5, v7

    move v7, v8

    :goto_3
    const/4 v0, 0x0

    .line 5066
    :goto_4
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mResurrectToPosition:I

    .line 5067
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    invoke-virtual {v2, v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5068
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v3, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 5069
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->clearScrollingCache()V

    .line 5070
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSpecificTop:I

    .line 5071
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2, v5, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v0

    if-lt v0, v4, :cond_f

    .line 5072
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getLastVisiblePosition()I

    move-result v2

    if-gt v0, v2, :cond_f

    .line 5073
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v3, 0x4

    iput v3, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    .line 5074
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setSelectionInt(I)V

    .line 5075
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invokeOnItemScrollListener()V

    move v3, v0

    .line 5079
    :cond_f
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->reportScrollStateChange(I)V

    if-ltz v3, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method trackMotionScroll(II)Z
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delta",
            "incrementalDelta"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 5088
    iget-object v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    .line 5093
    :cond_0
    iget-object v5, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 5094
    iget-object v7, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    .line 5096
    iget-object v9, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v9, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 5099
    iget v10, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v5

    .line 5100
    iget-object v11, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v11}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getWidth()I

    move-result v11

    iget v12, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    sub-int v12, v7, v11

    .line 5103
    iget-object v13, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v13}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getWidth()I

    move-result v13

    iget-object v14, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v14}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    iget-object v14, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v14}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    if-gez v1, :cond_1

    add-int/lit8 v14, v13, -0x1

    neg-int v14, v14

    .line 5105
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    add-int/lit8 v14, v13, -0x1

    .line 5107
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-gez v2, :cond_2

    sub-int/2addr v13, v4

    neg-int v13, v13

    .line 5111
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_2
    sub-int/2addr v13, v4

    .line 5113
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 5116
    :goto_1
    iget-object v13, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v13, v13, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    if-nez v13, :cond_3

    .line 5118
    iget v14, v9, Landroid/graphics/Rect;->left:I

    if-lt v5, v14, :cond_3

    if-ltz v1, :cond_3

    return v4

    :cond_3
    add-int v5, v13, v3

    .line 5124
    iget-object v14, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v14, v14, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    if-ne v5, v14, :cond_4

    if-gt v7, v11, :cond_4

    if-gtz v1, :cond_4

    return v4

    :cond_4
    if-gez v2, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 5132
    :goto_2
    iget-object v7, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isInTouchMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 5134
    iget-object v11, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v11}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->hideSelector()V

    .line 5137
    :cond_6
    iget-object v11, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v11}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeaderViewsCount()I

    move-result v11

    .line 5138
    iget-object v14, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v14, v14, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    iget-object v15, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v15}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getFooterViewsCount()I

    move-result v15

    sub-int/2addr v14, v15

    if-eqz v5, :cond_a

    .line 5144
    iget v8, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v2

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v9, v3, :cond_9

    .line 5146
    iget-object v6, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v6, v9}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5147
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v4

    if-lt v4, v8, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v15, v15, 0x1

    add-int v4, v13, v9

    if-lt v4, v11, :cond_8

    if-ge v4, v14, :cond_8

    .line 5153
    iget-object v4, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v4, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_8
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto :goto_3

    :cond_9
    :goto_4
    const/4 v4, 0x0

    goto :goto_6

    .line 5164
    :cond_a
    iget-object v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getWidth()I

    move-result v3

    iget v4, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ltz v8, :cond_d

    .line 5166
    iget-object v6, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v6, v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5167
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v3, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v15, v15, 0x1

    add-int v4, v13, v8

    if-lt v4, v11, :cond_c

    if-ge v4, v14, :cond_c

    .line 5174
    iget-object v4, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v4, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_c
    add-int/lit8 v4, v8, -0x1

    move/from16 v16, v8

    move v8, v4

    move/from16 v4, v16

    goto :goto_5

    .line 5186
    :cond_d
    :goto_6
    iget v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewOriginalLeft:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->mMotionViewNewLeft:I

    .line 5188
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mBlockLayoutRequests:Z

    if-lez v15, :cond_e

    .line 5191
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v1, v4, v15}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$3500(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;II)V

    .line 5193
    :cond_e
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->offsetChildrenLeftAndRight(I)V

    if-eqz v5, :cond_f

    .line 5196
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v3, v15

    iput v3, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    .line 5199
    :cond_f
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invalidate()V

    .line 5201
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v10, v1, :cond_10

    if-ge v12, v1, :cond_11

    .line 5203
    :cond_10
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->fillGap(Z)V

    :cond_11
    if-nez v7, :cond_12

    .line 5206
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    .line 5207
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_12

    .line 5208
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 5209
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->positionSelector(Landroid/view/View;)V

    .line 5213
    :cond_12
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mBlockLayoutRequests:Z

    .line 5215
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$HorizontalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invokeOnItemScrollListener()V

    return v2
.end method
