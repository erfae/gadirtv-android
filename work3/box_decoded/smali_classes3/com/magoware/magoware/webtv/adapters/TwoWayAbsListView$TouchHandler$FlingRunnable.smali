.class public abstract Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "FlingRunnable"
.end annotation


# instance fields
.field protected final mScroller:Landroid/widget/Scroller;

.field final synthetic this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 3619
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3620
    new-instance v0, Landroid/widget/Scroller;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 2

    .line 3628
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 3630
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->reportScrollStateChange(I)V

    .line 3631
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->clearScrollingCache()V

    .line 3633
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3635
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;

    if-eqz v0, :cond_0

    .line 3636
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$FlingRunnable;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->mPositionScroller:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public abstract run()V
.end method

.method abstract start(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialVelocity"
        }
    .end annotation
.end method

.method abstract startScroll(II)V
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
.end method
