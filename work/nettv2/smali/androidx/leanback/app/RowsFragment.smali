.class public Landroidx/leanback/app/RowsFragment;
.super Landroidx/leanback/app/BaseRowFragment;
.source "RowsFragment.java"

# interfaces
.implements Landroidx/leanback/app/BrowseFragment$MainFragmentRowsAdapterProvider;
.implements Landroidx/leanback/app/BrowseFragment$MainFragmentAdapterProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/app/RowsFragment$MainFragmentRowsAdapter;,
        Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;,
        Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public mAfterEntranceTransition:Z

.field private mAlignedTop:I

.field private final mBridgeAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field public mExpand:Z

.field public mExternalAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field public mFreezeRows:Z

.field private mMainFragmentAdapter:Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;

.field private mMainFragmentRowsAdapter:Landroidx/leanback/app/RowsFragment$MainFragmentRowsAdapter;

.field public mOnItemViewClickedListener:Landroidx/leanback/widget/BaseOnItemViewClickedListener;

.field public mOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

.field private mPresenterMapper:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation
.end field

.field private mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field public mSelectAnimatorDuration:I

.field public mSelectAnimatorInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field public mSelectedViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

.field private mSubPosition:I

.field public mViewsCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/leanback/app/BaseRowFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/leanback/app/RowsFragment;->mExpand:Z

    const/high16 v1, -0x80000000

    .line 3
    iput v1, p0, Landroidx/leanback/app/RowsFragment;->mAlignedTop:I

    .line 4
    iput-boolean v0, p0, Landroidx/leanback/app/RowsFragment;->mAfterEntranceTransition:Z

    .line 5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroidx/leanback/app/RowsFragment;->mSelectAnimatorInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 6
    new-instance v0, Landroidx/leanback/app/RowsFragment$1;

    invoke-direct {v0, p0}, Landroidx/leanback/app/RowsFragment$1;-><init>(Landroidx/leanback/app/RowsFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/RowsFragment;->mBridgeAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    return-void
.end method

.method private freezeRows(Z)V
    .locals 5

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/app/RowsFragment;->mFreezeRows:Z

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 5
    invoke-virtual {v3}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/RowPresenter;

    .line 6
    invoke-virtual {v3}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v3

    .line 7
    invoke-virtual {v4, v3, p1}, Landroidx/leanback/widget/RowPresenter;->freeze(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getRowViewHolder(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/RowPresenter;

    .line 5
    invoke-virtual {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public static setRowViewSelected(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getExtraObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;

    .line 2
    iget-object v1, v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p2, v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroidx/leanback/widget/RowPresenter;

    iget-object v0, v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/RowPresenter;->setSelectLevel(Landroidx/leanback/widget/Presenter$ViewHolder;F)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p2, v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroidx/leanback/widget/RowPresenter;

    iget-object v2, v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, v2}, Landroidx/leanback/widget/RowPresenter;->getSelectLevel(Landroidx/leanback/widget/Presenter$ViewHolder;)F

    move-result p2

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;->this$0:Landroidx/leanback/app/RowsFragment;

    iget v2, p2, Landroidx/leanback/app/RowsFragment;->mSelectAnimatorDuration:I

    iput v2, v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    .line 6
    iget-object p2, p2, Landroidx/leanback/app/RowsFragment;->mSelectAnimatorInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iput-object p2, v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/DecelerateInterpolator;

    .line 7
    iget-object p2, v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;->mRowPresenter:Landroidx/leanback/widget/RowPresenter;

    iget-object v2, v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;->mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, v2}, Landroidx/leanback/widget/RowPresenter;->getSelectLevel(Landroidx/leanback/widget/Presenter$ViewHolder;)F

    move-result p2

    iput p2, v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    sub-float/2addr v1, p2

    .line 8
    iput v1, v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    .line 9
    iget-object p2, v0, Landroidx/leanback/app/RowsFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p2}, Landroid/animation/TimeAnimator;->start()V

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/RowPresenter;

    invoke-virtual {p0}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Landroidx/leanback/widget/RowPresenter;->setRowViewSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Z)V

    return-void
.end method


# virtual methods
.method public enableRowScaling(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final findGridViewFromRoot(Landroid/view/View;)Landroidx/leanback/widget/VerticalGridView;
    .locals 1

    sget v0, Landroidx/leanback/R$id;->container_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    return-object p1
.end method

.method public findRowViewHolderByPosition(I)Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/BaseRowFragment;->mVerticalGridView:Landroidx/leanback/widget/VerticalGridView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 3
    invoke-static {p1}, Landroidx/leanback/app/RowsFragment;->getRowViewHolder(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final getLayoutResourceId()I
    .locals 1

    sget v0, Landroidx/leanback/R$layout;->lb_rows_fragment:I

    return v0
.end method

.method public getMainFragmentAdapter()Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;

    invoke-direct {v0, p0}, Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;-><init>(Landroidx/leanback/app/RowsFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;

    return-object v0
.end method

.method public getMainFragmentRowsAdapter()Landroidx/leanback/app/BrowseFragment$MainFragmentRowsAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/RowsFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/RowsFragment$MainFragmentRowsAdapter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/leanback/app/RowsFragment$MainFragmentRowsAdapter;

    invoke-direct {v0, p0}, Landroidx/leanback/app/RowsFragment$MainFragmentRowsAdapter;-><init>(Landroidx/leanback/app/RowsFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/RowsFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/RowsFragment$MainFragmentRowsAdapter;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/RowsFragment;->mMainFragmentRowsAdapter:Landroidx/leanback/app/RowsFragment$MainFragmentRowsAdapter;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroidx/leanback/widget/BaseOnItemViewClickedListener;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/RowsFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    return-object v0
.end method

.method public getOnItemViewSelectedListener()Landroidx/leanback/widget/BaseOnItemViewSelectedListener;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/RowsFragment;->mOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    return-object v0
.end method

.method public getRowViewHolder(I)Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 3
    invoke-static {p1}, Landroidx/leanback/app/RowsFragment;->getRowViewHolder(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getSelectedPosition()I
    .locals 1

    invoke-super {p0}, Landroidx/leanback/app/BaseRowFragment;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/leanback/R$integer;->lb_browse_rows_anim_duration:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/app/RowsFragment;->mSelectAnimatorDuration:I

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/leanback/app/BaseRowFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/leanback/app/RowsFragment;->mViewsCreated:Z

    .line 2
    invoke-super {p0}, Landroidx/leanback/app/BaseRowFragment;->onDestroyView()V

    return-void
.end method

.method public final onRowSelected(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/RowsFragment;->mSelectedViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    iget v3, p0, Landroidx/leanback/app/RowsFragment;->mSubPosition:I

    if-eq v3, p3, :cond_2

    .line 2
    :cond_0
    iput p3, p0, Landroidx/leanback/app/RowsFragment;->mSubPosition:I

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, v1, v1}, Landroidx/leanback/app/RowsFragment;->setRowViewSelected(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 4
    :cond_1
    check-cast p1, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iput-object p1, p0, Landroidx/leanback/app/RowsFragment;->mSelectedViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz p1, :cond_2

    .line 5
    invoke-static {p1, v2, v1}, Landroidx/leanback/app/RowsFragment;->setRowViewSelected(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    .line 6
    :cond_2
    iget-object p1, p0, Landroidx/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter;->getFragmentHost()Landroidx/leanback/app/BrowseFragment$FragmentHost;

    move-result-object p1

    if-gtz p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-interface {p1, v1}, Landroidx/leanback/app/BrowseFragment$FragmentHost;->showTitleView(Z)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/leanback/app/BaseRowFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTransitionEnd()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/leanback/app/BaseRowFragment;->onTransitionEnd()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/leanback/app/RowsFragment;->freezeRows(Z)V

    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/leanback/app/BaseRowFragment;->onTransitionPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v1}, Landroidx/leanback/app/RowsFragment;->freezeRows(Z)V

    :cond_0
    return v0
.end method

.method public bridge synthetic onTransitionStart()V
    .locals 0

    invoke-super {p0}, Landroidx/leanback/app/BaseRowFragment;->onTransitionStart()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/leanback/app/BaseRowFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    sget p2, Landroidx/leanback/R$id;->row_content:I

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentViewId(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/BaseGridView;->setSaveChildrenPolicy(I)V

    .line 4
    iget p1, p0, Landroidx/leanback/app/RowsFragment;->mAlignedTop:I

    invoke-virtual {p0, p1}, Landroidx/leanback/app/RowsFragment;->setAlignment(I)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/leanback/app/RowsFragment;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 6
    iput-object p1, p0, Landroidx/leanback/app/RowsFragment;->mPresenterMapper:Ljava/util/ArrayList;

    .line 7
    iget-object p1, p0, Landroidx/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter;->getFragmentHost()Landroidx/leanback/app/BrowseFragment$FragmentHost;

    move-result-object p1

    iget-object p2, p0, Landroidx/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroidx/leanback/app/RowsFragment$MainFragmentAdapter;

    invoke-interface {p1, p2}, Landroidx/leanback/app/BrowseFragment$FragmentHost;->notifyViewCreated(Landroidx/leanback/app/BrowseFragment$MainFragmentAdapter;)V

    :cond_0
    return-void
.end method

.method public setAlignment(I)V
    .locals 3

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Landroidx/leanback/app/RowsFragment;->mAlignedTop:I

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentOffset(I)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    invoke-virtual {p1, v1}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentOffsetPercent(F)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/BaseGridView;->setItemAlignmentOffsetWithPadding(Z)V

    .line 6
    iget v2, p0, Landroidx/leanback/app/RowsFragment;->mAlignedTop:I

    invoke-virtual {p1, v2}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignmentOffset(I)V

    .line 7
    invoke-virtual {p1, v1}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 8
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/BaseGridView;->setWindowAlignment(I)V

    :cond_1
    return-void
.end method

.method public setEntranceTransitionState(Z)V
    .locals 5

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/app/RowsFragment;->mAfterEntranceTransition:Z

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 5
    invoke-virtual {v2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/RowPresenter;

    .line 6
    invoke-virtual {v2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v2

    .line 7
    iget-boolean v4, p0, Landroidx/leanback/app/RowsFragment;->mAfterEntranceTransition:Z

    invoke-virtual {v3, v2, v4}, Landroidx/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExpand(Z)V
    .locals 5

    .line 1
    iput-boolean p1, p0, Landroidx/leanback/app/RowsFragment;->mExpand:Z

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 6
    iget-boolean v3, p0, Landroidx/leanback/app/RowsFragment;->mExpand:Z

    .line 7
    invoke-virtual {v2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/RowPresenter;

    invoke-virtual {v2}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Landroidx/leanback/widget/RowPresenter;->setRowViewExpanded(Landroidx/leanback/widget/Presenter$ViewHolder;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnItemViewClickedListener(Landroidx/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/RowsFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    .line 2
    iget-boolean p1, p0, Landroidx/leanback/app/RowsFragment;->mViewsCreated:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Item clicked listener must be set before views are created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroidx/leanback/app/RowsFragment;->mOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 6
    invoke-static {v2}, Landroidx/leanback/app/RowsFragment;->getRowViewHolder(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v2

    iget-object v3, p0, Landroidx/leanback/app/RowsFragment;->mOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewSelectedListener(Landroidx/leanback/widget/BaseOnItemViewSelectedListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setSelectedPosition(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/leanback/app/BaseRowFragment;->setSelectedPosition(I)V

    return-void
.end method

.method public bridge synthetic setSelectedPosition(IZ)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/leanback/app/BaseRowFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZLandroidx/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 4
    new-instance v1, Landroidx/leanback/app/RowsFragment$2;

    invoke-direct {v1, p3}, Landroidx/leanback/app/RowsFragment$2;-><init>(Landroidx/leanback/widget/Presenter$ViewHolderTask;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPositionSmooth(ILandroidx/leanback/widget/ViewHolderTask;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/BaseGridView;->setSelectedPosition(ILandroidx/leanback/widget/ViewHolderTask;)V

    :goto_0
    return-void
.end method

.method public final setupSharedViewPool(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/RowPresenter;

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {p1}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/HorizontalGridView;

    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/leanback/app/RowsFragment;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/app/RowsFragment;->mRecycledViewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->getBridgeAdapter()Landroidx/leanback/widget/ItemBridgeAdapter;

    move-result-object p1

    .line 9
    iget-object v0, p0, Landroidx/leanback/app/RowsFragment;->mPresenterMapper:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter;->getPresenterMapper()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/app/RowsFragment;->mPresenterMapper:Ljava/util/ArrayList;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ItemBridgeAdapter;->setPresenterMapper(Ljava/util/ArrayList;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateAdapter()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/leanback/app/BaseRowFragment;->updateAdapter()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/leanback/app/RowsFragment;->mSelectedViewHolder:Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/leanback/app/RowsFragment;->mViewsCreated:Z

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/app/BaseRowFragment;->getBridgeAdapter()Landroidx/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Landroidx/leanback/app/RowsFragment;->mBridgeAdapterListener:Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ItemBridgeAdapter;->setAdapterListener(Landroidx/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    :cond_0
    return-void
.end method
