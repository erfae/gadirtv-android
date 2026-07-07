.class Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;
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
    name = "CheckForKeyLongPress"
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

    .line 1844
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$WindowRunnnable;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$1;)V
    .locals 0

    .line 1844
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;-><init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1846
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_2

    .line 1847
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 1848
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1850
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mDataChanged:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1852
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1853
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget v3, v1, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-wide v4, v4, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mSelectedRowId:J

    invoke-static {v1, v0, v3, v4, v5}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$500(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1856
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    .line 1857
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 1860
    :cond_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$CheckForKeyLongPress;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->setPressed(Z)V

    if-eqz v0, :cond_2

    .line 1861
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    :goto_1
    return-void
.end method
