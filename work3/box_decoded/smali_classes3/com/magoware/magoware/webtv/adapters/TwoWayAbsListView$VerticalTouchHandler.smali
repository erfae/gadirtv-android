.class Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;
.super Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerticalTouchHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;
    }
.end annotation


# instance fields
.field mLastY:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

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

    .line 3765
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V

    return-void
.end method


# virtual methods
.method protected getFlingRunnable()Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;
    .locals 2

    .line 4374
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V

    return-object v0
.end method

.method protected getPositionScroller()Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;
    .locals 1

    .line 4369
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalPositionScroller;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;)V

    return-object v0
.end method

.method public synthetic lambda$onTouchEvent$0$TwoWayAbsListView$VerticalTouchHandler(Landroid/view/View;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;)V
    .locals 1

    const/4 v0, 0x0

    .line 3950
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3951
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    .line 3952
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    if-nez p1, :cond_0

    .line 3953
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3955
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

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

    .line 4057
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 4095
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4097
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 4098
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionY:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->startScrollIfNeeded(I)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    .line 4107
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v0, -0x1

    iput v0, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4109
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto :goto_0

    .line 4070
    :cond_3
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4072
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 4073
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 4075
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->findMotionRowY(I)I

    move-result v4

    const/4 v5, 0x4

    if-eq v0, v5, :cond_4

    if-ltz v4, :cond_4

    .line 4079
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v7, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int v7, v4, v7

    invoke-virtual {v6, v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4080
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    .line 4081
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v3, v6, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionX:I

    .line 4082
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput p1, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionY:I

    .line 4083
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v4, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 4084
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4085
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->clearScrollingCache()V

    :cond_4
    const/high16 p1, -0x80000000

    .line 4087
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

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

    .line 3783
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3786
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isClickable()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 3797
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3802
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v3

    if-nez v3, :cond_3

    .line 3803
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2702(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 3805
    :cond_3
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

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

    .line 4027
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4028
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    .line 4029
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4031
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4033
    :cond_5
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->clearScrollingCache()V

    .line 4035
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 4037
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4040
    :cond_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 4041
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 4042
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2702(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    goto/16 :goto_8

    .line 3855
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 3856
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionY:I

    sub-int v0, p1, v0

    .line 3857
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-eqz v5, :cond_d

    if-eq v5, v1, :cond_d

    if-eq v5, v6, :cond_d

    if-eq v5, v4, :cond_8

    goto/16 :goto_8

    .line 3873
    :cond_8
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    if-eq p1, v4, :cond_25

    .line 3874
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mMotionCorrection:I

    sub-int/2addr v0, v4

    .line 3875
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    if-eq v4, v3, :cond_9

    sub-int v3, p1, v4

    goto :goto_1

    :cond_9
    move v3, v0

    :goto_1
    if-eqz v3, :cond_a

    .line 3880
    invoke-virtual {p0, v0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->trackMotionScroll(II)Z

    move-result v2

    :cond_a
    if-eqz v2, :cond_c

    .line 3884
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 3889
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->findMotionRowY(I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 3891
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3892
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    .line 3894
    :cond_b
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput p1, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionY:I

    .line 3895
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v0, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 3896
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invalidate()V

    .line 3898
    :cond_c
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    goto/16 :goto_8

    .line 3863
    :cond_d
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->startScrollIfNeeded(I)Z

    goto/16 :goto_8

    .line 3907
    :cond_e
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-eqz p1, :cond_14

    if-eq p1, v1, :cond_14

    if-eq p1, v6, :cond_14

    if-eq p1, v4, :cond_f

    goto/16 :goto_6

    .line 3968
    :cond_f
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_13

    .line 3970
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-lt v0, v3, :cond_10

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v0, p1

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    if-ge v0, v3, :cond_10

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    sub-int/2addr p1, v1

    .line 3972
    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    .line 3973
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    if-gt p1, v0, :cond_10

    .line 3974
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 3975
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_6

    .line 3977
    :cond_10
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object p1

    const/16 v0, 0x3e8

    .line 3978
    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 3979
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int p1, p1

    .line 3981
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$3100(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I

    move-result v3

    if-le v0, v3, :cond_12

    .line 3982
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    if-nez v0, :cond_11

    .line 3983
    new-instance v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;

    invoke-direct {v0, p0, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler$VerticalFlingRunnable;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    .line 3985
    :cond_11
    invoke-virtual {p0, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    .line 3987
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->start(I)V

    goto/16 :goto_6

    .line 3989
    :cond_12
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 3990
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_6

    .line 3994
    :cond_13
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 3995
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    goto/16 :goto_6

    .line 3911
    :cond_14
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 3912
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3913
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 3914
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-eqz v3, :cond_15

    .line 3915
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3918
    :cond_15
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2900(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;

    move-result-object v3

    if-nez v3, :cond_16

    .line 3919
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    new-instance v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;

    invoke-direct {v4, v3, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V

    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2902(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;

    .line 3922
    :cond_16
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2900(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;

    move-result-object v3

    .line 3923
    iput-object v0, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 3924
    iput p1, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->mClickMotionPosition:I

    .line 3925
    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 3927
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput p1, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mResurrectToPosition:I

    .line 3929
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-ne v4, v1, :cond_17

    goto :goto_2

    .line 3961
    :cond_17
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 3962
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 3930
    :cond_18
    :goto_2
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 3932
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-nez v5, :cond_19

    .line 3933
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2800(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v5

    goto :goto_3

    :cond_19
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    move-result-object v5

    .line 3932
    :goto_3
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3935
    :cond_1a
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v2, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    .line 3936
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 3937
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 3938
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setSelectedPositionInt(I)V

    .line 3939
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->layoutChildren()V

    .line 3940
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3941
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->positionSelector(Landroid/view/View;)V

    .line 3942
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    .line 3943
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1b

    .line 3944
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 3945
    instance-of v2, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_1b

    .line 3946
    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3949
    :cond_1b
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    new-instance v2, Lcom/magoware/magoware/webtv/adapters/-$$Lambda$TwoWayAbsListView$VerticalTouchHandler$_zqv_t3bS3BJooTv5urF44UQo9A;

    invoke-direct {v2, p0, v0, v3}, Lcom/magoware/magoware/webtv/adapters/-$$Lambda$TwoWayAbsListView$VerticalTouchHandler$_zqv_t3bS3BJooTv5urF44UQo9A;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;Landroid/view/View;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;)V

    .line 3956
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    int-to-long v3, v0

    .line 3949
    invoke-virtual {p1, v2, v3, v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 3958
    :cond_1c
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    :goto_4
    return v1

    .line 3965
    :cond_1d
    :goto_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4000
    :goto_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    .line 4003
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invalidate()V

    .line 4005
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 4007
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4010
    :cond_1e
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 4011
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 4012
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2702(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    goto/16 :goto_8

    .line 3809
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3810
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 3811
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v6, v0, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->pointToPosition(II)I

    move-result v6

    .line 3812
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean v7, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    if-nez v7, :cond_23

    .line 3813
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v7, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_21

    if-ltz v6, :cond_21

    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    .line 3814
    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v7

    check-cast v7, Landroid/widget/ListAdapter;

    invoke-interface {v7, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 3817
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v2, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 3819
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2800(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_20

    .line 3820
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    new-instance v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;

    invoke-direct {v2, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForTap;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V

    invoke-static {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2802(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3822
    :cond_20
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2800(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v7, v4

    invoke-virtual {p1, v2, v7, v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 3824
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p1

    if-eqz p1, :cond_22

    if-gez v6, :cond_22

    return v2

    .line 3831
    :cond_22
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    if-ne p1, v8, :cond_23

    .line 3833
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->createScrollingCache()V

    .line 3834
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v4, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 3835
    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mMotionCorrection:I

    .line 3836
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->findMotionRowY(I)I

    move-result v6

    .line 3837
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

    :cond_23
    :goto_7
    if-ltz v6, :cond_24

    .line 3844
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int v2, v6, v2

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3845
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    .line 3847
    :cond_24
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v0, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionX:I

    .line 3848
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v5, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionY:I

    .line 3849
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v6, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 3850
    iput v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mLastY:I

    :cond_25
    :goto_8
    return v1
.end method

.method resurrectSelection()Z
    .locals 12

    .line 4269
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 4277
    :cond_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 4278
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v4}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 4279
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    .line 4280
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v5, v5, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mResurrectToPosition:I

    const/4 v6, 0x1

    if-lt v5, v4, :cond_2

    add-int v7, v4, v0

    if-ge v5, v7, :cond_2

    .line 4286
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v7, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v0, v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4287
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 4288
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v2, :cond_1

    .line 4292
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v0

    add-int v7, v2, v0

    goto :goto_1

    :cond_1
    if-le v8, v3, :cond_8

    .line 4294
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    .line 4295
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

    move-result v0

    sub-int v7, v3, v0

    goto :goto_1

    :cond_2
    if-ge v5, v4, :cond_9

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_7

    .line 4302
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v7, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4303
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    if-nez v3, :cond_5

    if-gtz v4, :cond_3

    if-ge v7, v2, :cond_4

    .line 4312
    :cond_3
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

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

    .line 4323
    :cond_9
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    add-int v5, v4, v0

    add-int/lit8 v7, v5, -0x1

    sub-int/2addr v0, v6

    move v9, v0

    const/4 v8, 0x0

    :goto_2
    if-ltz v9, :cond_e

    .line 4328
    iget-object v10, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v10, v9}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4329
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    .line 4330
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    if-ne v9, v0, :cond_c

    if-lt v5, v2, :cond_a

    if-le v10, v3, :cond_b

    .line 4335
    :cond_a
    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getVerticalFadingEdgeLength()I

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

    .line 4348
    :goto_4
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v3, -0x1

    iput v3, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mResurrectToPosition:I

    .line 4349
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v8, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    invoke-virtual {v2, v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4350
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v3, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 4351
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->clearScrollingCache()V

    .line 4352
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v7, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSpecificTop:I

    .line 4353
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2, v5, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->lookForSelectablePosition(IZ)I

    move-result v0

    if-lt v0, v4, :cond_f

    .line 4354
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getLastVisiblePosition()I

    move-result v2

    if-gt v0, v2, :cond_f

    .line 4355
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v3, 0x4

    iput v3, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    .line 4356
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setSelectionInt(I)V

    .line 4357
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invokeOnItemScrollListener()V

    move v3, v0

    .line 4361
    :cond_f
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->reportScrollStateChange(I)V

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
            "deltaY",
            "incrementalDeltaY"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 4128
    iget-object v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    .line 4133
    :cond_0
    iget-object v5, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 4134
    iget-object v7, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 4136
    iget-object v9, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v9, v9, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 4139
    iget v10, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v5

    .line 4140
    iget-object v11, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v11}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeight()I

    move-result v11

    iget v12, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    sub-int v12, v7, v11

    .line 4143
    iget-object v13, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v13}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeight()I

    move-result v13

    iget-object v14, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v14}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    iget-object v14, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v14}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    if-gez v1, :cond_1

    add-int/lit8 v14, v13, -0x1

    neg-int v14, v14

    .line 4145
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    add-int/lit8 v14, v13, -0x1

    .line 4147
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-gez v2, :cond_2

    sub-int/2addr v13, v4

    neg-int v13, v13

    .line 4151
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_2
    sub-int/2addr v13, v4

    .line 4153
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4156
    :goto_1
    iget-object v13, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v13, v13, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    if-nez v13, :cond_3

    .line 4158
    iget v14, v9, Landroid/graphics/Rect;->top:I

    if-lt v5, v14, :cond_3

    if-ltz v1, :cond_3

    return v4

    :cond_3
    add-int v5, v13, v3

    .line 4164
    iget-object v14, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

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

    .line 4172
    :goto_2
    iget-object v7, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isInTouchMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4174
    iget-object v11, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v11}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->hideSelector()V

    .line 4177
    :cond_6
    iget-object v11, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v11}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeaderViewsCount()I

    move-result v11

    .line 4178
    iget-object v14, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v14, v14, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    iget-object v15, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v15}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getFooterViewsCount()I

    move-result v15

    sub-int/2addr v14, v15

    if-eqz v5, :cond_a

    .line 4184
    iget v8, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v2

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v9, v3, :cond_9

    .line 4186
    iget-object v6, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v6, v9}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4187
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v4

    if-lt v4, v8, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v15, v15, 0x1

    add-int v4, v13, v9

    if-lt v4, v11, :cond_8

    if-ge v4, v14, :cond_8

    .line 4193
    iget-object v4, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

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

    .line 4204
    :cond_a
    iget-object v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeight()I

    move-result v3

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ltz v8, :cond_d

    .line 4206
    iget-object v6, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v6, v8}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4207
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    if-gt v9, v3, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v15, v15, 0x1

    add-int v4, v13, v8

    if-lt v4, v11, :cond_c

    if-ge v4, v14, :cond_c

    .line 4214
    iget-object v4, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mRecycler:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;

    invoke-virtual {v4, v6}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    :cond_c
    add-int/lit8 v4, v8, -0x1

    move/from16 v16, v8

    move v8, v4

    move/from16 v4, v16

    goto :goto_5

    .line 4226
    :cond_d
    :goto_6
    iget v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewOriginalTop:I

    add-int/2addr v3, v1

    iput v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->mMotionViewNewTop:I

    .line 4228
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mBlockLayoutRequests:Z

    if-lez v15, :cond_e

    .line 4231
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v1, v4, v15}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$3300(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;II)V

    .line 4233
    :cond_e
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->offsetChildrenTopAndBottom(I)V

    if-eqz v5, :cond_f

    .line 4236
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    add-int/2addr v3, v15

    iput v3, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    .line 4239
    :cond_f
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invalidate()V

    .line 4241
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v10, v1, :cond_10

    if-ge v12, v1, :cond_11

    .line 4243
    :cond_10
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->fillGap(Z)V

    :cond_11
    if-nez v7, :cond_12

    .line 4246
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    .line 4247
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_12

    .line 4248
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 4249
    iget-object v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->positionSelector(Landroid/view/View;)V

    .line 4253
    :cond_12
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mBlockLayoutRequests:Z

    .line 4255
    iget-object v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$VerticalTouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invokeOnItemScrollListener()V

    return v2
.end method
