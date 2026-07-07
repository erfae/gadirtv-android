.class Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;
.super Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$WindowRunnnable;
.source "TwoWayAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1820
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$WindowRunnnable;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V
    .locals 0

    .line 1820
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1822
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 1823
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1825
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    .line 1826
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v3, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mMotionPosition:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1829
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;->sameWindow()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    if-nez v4, :cond_0

    .line 1830
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1833
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v2, -0x1

    iput v2, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    .line 1834
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    .line 1835
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 1837
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v1, 0x2

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mTouchMode:I

    :cond_2
    :goto_1
    return-void
.end method
