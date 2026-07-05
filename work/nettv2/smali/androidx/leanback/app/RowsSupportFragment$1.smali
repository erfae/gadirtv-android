.class Landroidx/leanback/app/RowsSupportFragment$1;
.super Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;
.source "RowsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/RowsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/RowsSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/RowsSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    invoke-direct {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddPresenter(Landroidx/leanback/widget/Presenter;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAddPresenter(Landroidx/leanback/widget/Presenter;I)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    iget-boolean v0, v0, Landroidx/leanback/app/RowsSupportFragment;->mExpand:Z

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/RowPresenter;

    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/RowPresenter;->setRowViewExpanded(Landroidx/leanback/widget/Presenter$ViewHolder;Z)V

    .line 3
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/RowPresenter;

    .line 4
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    .line 5
    iget-object v2, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    iget-boolean v2, v2, Landroidx/leanback/app/RowsSupportFragment;->mAfterEntranceTransition:Z

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 6
    iget-object v2, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    iget-boolean v2, v2, Landroidx/leanback/app/RowsSupportFragment;->mFreezeRows:Z

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/RowPresenter;->freeze(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 7
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAttachedToWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onBind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;->onBind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroidx/leanback/app/RowsSupportFragment;->setupSharedViewPool(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 4
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/leanback/app/RowsSupportFragment;->mViewsCreated:Z

    .line 5
    new-instance v3, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;

    invoke-direct {v3, v0, p1}, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;-><init>(Landroidx/leanback/app/RowsSupportFragment;Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    invoke-virtual {p1, v3}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->setExtraObject(Ljava/lang/Object;)V

    .line 6
    invoke-static {p1, v1, v2}, Landroidx/leanback/app/RowsSupportFragment;->setRowViewSelected(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 7
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;->onCreate(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/RowPresenter;

    .line 10
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    .line 11
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/RowsSupportFragment;->mOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 12
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/RowsSupportFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Landroidx/leanback/app/RowsSupportFragment;->setRowViewSelected(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 3
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/leanback/app/RowsSupportFragment;->mSelectedViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;->onDetachedFromWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_1
    return-void
.end method

.method public onUnbind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v0, v1}, Landroidx/leanback/app/RowsSupportFragment;->setRowViewSelected(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$1;->this$0:Landroidx/leanback/app/RowsSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/RowsSupportFragment;->mExternalAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;->onUnbind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method
