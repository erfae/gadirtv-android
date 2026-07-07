.class abstract Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PositionScroller"
.end annotation


# static fields
.field protected static final MOVE_DOWN_BOUND:I = 0x3

.field protected static final MOVE_DOWN_POS:I = 0x1

.field protected static final MOVE_UP_BOUND:I = 0x4

.field protected static final MOVE_UP_POS:I = 0x2

.field protected static final SCROLL_DURATION:I = 0x190


# instance fields
.field protected mBoundPos:I

.field protected final mExtraScroll:I

.field protected mLastSeenPos:I

.field protected mMode:I

.field protected mScrollDuration:I

.field protected mTargetPos:I

.field protected mVertical:Z

.field final synthetic this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 3659
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3660
    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result p1

    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mExtraScroll:I

    return-void
.end method


# virtual methods
.method public abstract run()V
.end method

.method start(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 3664
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    .line 3665
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt p1, v0, :cond_0

    sub-int/2addr v0, p1

    add-int/2addr v0, v2

    const/4 v1, 0x2

    .line 3670
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    goto :goto_0

    :cond_0
    if-lt p1, v1, :cond_2

    sub-int v0, p1, v1

    add-int/2addr v0, v2

    .line 3673
    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    :goto_0
    const/16 v1, 0x190

    if-lez v0, :cond_1

    .line 3680
    div-int/2addr v1, v0

    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mScrollDuration:I

    goto :goto_1

    .line 3682
    :cond_1
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mScrollDuration:I

    .line 3684
    :goto_1
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mTargetPos:I

    const/4 p1, -0x1

    .line 3685
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mBoundPos:I

    .line 3686
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mLastSeenPos:I

    .line 3688
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method start(II)V
    .locals 4
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

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3693
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->start(I)V

    return-void

    .line 3697
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    .line 3698
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt p1, v1, :cond_3

    sub-int/2addr v2, p2

    if-ge v2, v3, :cond_1

    return-void

    :cond_1
    sub-int/2addr v1, p1

    add-int/2addr v1, v3

    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_2

    const/4 v1, 0x4

    .line 3712
    iput v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    .line 3715
    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    goto :goto_1

    :cond_3
    if-lt p1, v2, :cond_7

    sub-int v1, p2, v1

    if-ge v1, v3, :cond_4

    return-void

    :cond_4
    sub-int v2, p1, v2

    add-int/2addr v2, v3

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_5

    const/4 v2, 0x3

    .line 3728
    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    goto :goto_1

    .line 3731
    :cond_5
    iput v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mMode:I

    goto :goto_0

    :goto_1
    const/16 v2, 0x190

    if-lez v1, :cond_6

    .line 3739
    div-int/2addr v2, v1

    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mScrollDuration:I

    goto :goto_2

    .line 3741
    :cond_6
    iput v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mScrollDuration:I

    .line 3743
    :goto_2
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mTargetPos:I

    .line 3744
    iput p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mBoundPos:I

    .line 3745
    iput v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->mLastSeenPos:I

    .line 3747
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {p1, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method stop()V
    .locals 1

    .line 3751
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler$PositionScroller;->this$1:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$TouchHandler;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
