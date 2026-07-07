.class abstract Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "TouchHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;,
        Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;
    }
.end annotation


# instance fields
.field protected mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

.field mMotionCorrection:I

.field protected mPositionScroller:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;

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

    .line 3380
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearScrollingCache()V
    .locals 2

    .line 3563
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2400(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3564
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    new-instance v1, Lcom/magoware/magoware/webtv/adapters/-$$Lambda$TwoWayAbsListView$TouchHandler$6ubv5jzquMhko0ufd2-TpzyJwuE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/adapters/-$$Lambda$TwoWayAbsListView$TouchHandler$6ubv5jzquMhko0ufd2-TpzyJwuE;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;)V

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2402(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3577
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2400(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected createScrollingCache()V
    .locals 2

    .line 3555
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 3556
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2200(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Z)V

    .line 3557
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2300(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Z)V

    .line 3558
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mCachingStarted:Z

    :cond_0
    return-void
.end method

.method protected abstract getFlingRunnable()Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;
.end method

.method protected abstract getPositionScroller()Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;
.end method

.method public synthetic lambda$clearScrollingCache$0$TwoWayAbsListView$TouchHandler()V
    .locals 2

    .line 3565
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 3566
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mCachingStarted:Z

    .line 3567
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2500(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Z)V

    .line 3568
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getPersistentDrawingCache()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 3569
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Z)V

    .line 3571
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3572
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invalidate()V

    :cond_1
    return-void
.end method

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isInTouchMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3481
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->hideSelector()V

    .line 3485
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 3488
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->layoutChildren()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasWindowFocus"
        }
    .end annotation

    .line 3398
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 3401
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$1700(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Z)V

    .line 3402
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    if-eqz p1, :cond_0

    .line 3403
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v3, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3406
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->endFling()V

    .line 3408
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3409
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getScrollX()I

    move-result v3

    invoke-virtual {p1, v3, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->scrollTo(II)V

    .line 3411
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->invalidate()V

    :cond_0
    if-ne v0, v1, :cond_3

    .line 3419
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    iput v1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mResurrectToPosition:I

    goto :goto_0

    .line 3428
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$1800(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I

    move-result p1

    if-eq v0, p1, :cond_3

    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$1800(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    if-ne v0, v1, :cond_2

    .line 3432
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->resurrectSelection()Z

    goto :goto_0

    .line 3436
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->hideSelector()V

    .line 3437
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iput v2, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mLayoutMode:I

    .line 3438
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->layoutChildren()V

    .line 3443
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$1802(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;I)I

    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    .line 3501
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2000(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 3502
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2100(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3503
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2100(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$OnScrollListener;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-interface {v0, v1, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;I)V

    .line 3504
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$2002(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;I)I

    :cond_0
    return-void
.end method

.method abstract resurrectSelection()Z
.end method

.method public smoothScrollBy(II)V
    .locals 1
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

    .line 3546
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    if-nez v0, :cond_0

    .line 3547
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->getFlingRunnable()Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    goto :goto_0

    .line 3549
    :cond_0
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->endFling()V

    .line 3551
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mFlingRunnable:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->startScroll(II)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 3516
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;

    if-nez v0, :cond_0

    .line 3517
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->getPositionScroller()Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;

    .line 3519
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->start(I)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "boundPosition"
        }
    .end annotation

    .line 3533
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;

    if-nez v0, :cond_0

    .line 3534
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->getPositionScroller()Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;

    .line 3536
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->start(II)V

    return-void
.end method

.method public startScrollIfNeeded(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delta"
        }
    .end annotation

    .line 3450
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3451
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$1900(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    .line 3452
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->createScrollingCache()V

    .line 3453
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v1, 0x3

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 3454
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mMotionCorrection:I

    .line 3455
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3460
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3462
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    .line 3463
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3465
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    const/4 p1, 0x1

    .line 3467
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->reportScrollStateChange(I)V

    .line 3470
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->requestDisallowInterceptTouchEvent(Z)V

    return p1

    :cond_2
    return v2
.end method

.method abstract trackMotionScroll(II)Z
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
.end method
