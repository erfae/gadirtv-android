.class Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;
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
    name = "PerformClick"
.end annotation


# instance fields
.field mChild:Landroid/view/View;

.field mClickMotionPosition:I

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

    .line 1801
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$WindowRunnnable;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V
    .locals 0

    .line 1801
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1808
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    if-eqz v0, :cond_0

    return-void

    .line 1810
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1811
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->mClickMotionPosition:I

    if-eqz v0, :cond_1

    .line 1812
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mItemCount:I

    if-lez v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1814
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1815
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$PerformClick;->mChild:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    return-void
.end method
