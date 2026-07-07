.class Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "TwoWayAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 765
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 p1, 0x0

    .line 767
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    const/4 v0, 0x0

    .line 813
    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method

.method public onChanged()V
    .locals 2

    .line 771
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mDataChanged:Z

    .line 772
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    iget v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mItemCount:I

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOldItemCount:I

    .line 773
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mItemCount:I

    .line 777
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->access$000(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 780
    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    goto :goto_0

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->rememberSyncState()V

    .line 784
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->checkFocus()V

    .line 785
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 5

    .line 790
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mDataChanged:Z

    .line 792
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->access$100(Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    iget v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mItemCount:I

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mOldItemCount:I

    .line 800
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mItemCount:I

    .line 801
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    const/4 v2, -0x1

    iput v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedPosition:I

    .line 802
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mSelectedRowId:J

    .line 803
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    iput v2, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedPosition:I

    .line 804
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    iput-wide v3, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNextSelectedRowId:J

    .line 805
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    iput-boolean v1, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->mNeedSync:Z

    .line 806
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->checkSelectionChanged()V

    .line 808
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->checkFocus()V

    .line 809
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView$AdapterDataSetObserver;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAdapterView;->requestLayout()V

    return-void
.end method
