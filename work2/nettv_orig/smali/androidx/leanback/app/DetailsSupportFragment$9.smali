.class Landroidx/leanback/app/DetailsSupportFragment$9;
.super Ljava/lang/Object;
.source "DetailsSupportFragment.java"

# interfaces
.implements Landroidx/leanback/widget/BaseOnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/DetailsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/leanback/widget/BaseOnItemViewSelectedListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/DetailsSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/DetailsSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$9;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment$9;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/BaseGridView;->getSelectedPosition()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/leanback/app/DetailsSupportFragment$9;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    iget-object v1, v1, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    invoke-virtual {v1}, Landroidx/leanback/app/BaseRowSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/leanback/widget/BaseGridView;->getSelectedSubPosition()I

    move-result v1

    .line 3
    iget-object v2, p0, Landroidx/leanback/app/DetailsSupportFragment$9;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    .line 4
    invoke-virtual {v2}, Landroidx/leanback/app/DetailsSupportFragment;->getAdapter()Landroidx/leanback/widget/ObjectAdapter;

    move-result-object v3

    .line 5
    iget-object v4, v2, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroidx/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroidx/leanback/app/RowsSupportFragment;

    .line 6
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, v2, Landroidx/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v2}, Landroidx/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/leanback/widget/BaseGridView;->getSelectedPosition()I

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {v2}, Landroidx/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/leanback/widget/BaseGridView;->getSelectedSubPosition()I

    move-result v4

    if-nez v4, :cond_1

    .line 10
    :cond_0
    invoke-virtual {v2, v6}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v2, v5}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    :goto_0
    if-eqz v3, :cond_7

    .line 12
    invoke-virtual {v3}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v3

    if-le v3, v0, :cond_7

    .line 13
    invoke-virtual {v2}, Landroidx/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 15
    iget-object v7, v2, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v2, v2, Landroidx/leanback/app/DetailsSupportFragment;->EVT_DETAILS_ROW_LOADED:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v7, v2}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_7

    .line 16
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    check-cast v7, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 17
    invoke-virtual {v7}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v8

    check-cast v8, Landroidx/leanback/widget/RowPresenter;

    .line 18
    invoke-virtual {v7}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v9

    .line 19
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v7

    .line 20
    instance-of v10, v8, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    if-eqz v10, :cond_6

    .line 21
    check-cast v8, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    check-cast v9, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    if-le v0, v7, :cond_3

    .line 22
    invoke-virtual {v8, v9, v5}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_2

    :cond_3
    if-ne v0, v7, :cond_4

    if-ne v1, v6, :cond_4

    .line 23
    invoke-virtual {v8, v9, v5}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_2

    :cond_4
    if-ne v0, v7, :cond_5

    if-nez v1, :cond_5

    .line 24
    invoke-virtual {v8, v9, v6}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_2

    :cond_5
    const/4 v7, 0x2

    .line 25
    invoke-virtual {v8, v9, v7}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26
    :cond_7
    iget-object v0, p0, Landroidx/leanback/app/DetailsSupportFragment$9;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroidx/leanback/app/DetailsSupportFragment;->mExternalOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    if-eqz v0, :cond_8

    .line 27
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method
