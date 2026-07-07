.class public Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;
.super Landroidx/fragment/app/Fragment;
.source "GridFragment.java"

# interfaces
.implements Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterProvider;


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VerticalGridFragment"


# instance fields
.field private mAdapter:Landroidx/leanback/widget/ObjectAdapter;

.field private final mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

.field private mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

.field private mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

.field private mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

.field private mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

.field private mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

.field private mSceneAfterEntranceTransition:Ljava/lang/Object;

.field private mSelectedPosition:I

.field private final mViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mSelectedPosition:I

    .line 49
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$1;

    invoke-direct {v0, p0, p0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$1;-><init>(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 93
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$2;

    invoke-direct {v0, p0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$2;-><init>(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;)V

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    .line 108
    new-instance v0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$3;

    invoke-direct {v0, p0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$3;-><init>(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;)V

    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

    return-void
.end method

.method static synthetic access$000(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;)Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 38
    sget-boolean v0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->gridOnItemSelected(I)V

    return-void
.end method

.method static synthetic access$300(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;)Landroidx/leanback/widget/OnItemViewSelectedListener;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->showOrHideTitle()V

    return-void
.end method

.method private gridOnItemSelected(I)V
    .locals 1

    .line 126
    iget v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mSelectedPosition:I

    if-eq p1, v0, :cond_0

    .line 127
    iput p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mSelectedPosition:I

    .line 128
    invoke-direct {p0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->showOrHideTitle()V

    :cond_0
    return-void
.end method

.method private showOrHideTitle()V
    .locals 2

    .line 133
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->hasPreviousViewInSameRow(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;->showTitleView(Z)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;->showTitleView(Z)V

    :goto_0
    return-void
.end method

.method private updateAdapter()V
    .locals 3

    .line 209
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    iget-object v2, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v0, v2}, Landroidx/leanback/widget/VerticalGridPresenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 211
    iget v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAdapter()Landroidx/leanback/widget/ObjectAdapter;
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getGridPresenter()Landroidx/leanback/widget/VerticalGridPresenter;
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    return-object v0
.end method

.method public getMainFragmentAdapter()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;
    .locals 1

    .line 195
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroidx/leanback/widget/OnItemViewClickedListener;
    .locals 1

    .line 158
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 164
    sget p3, Landroidx/leanback/supportleanbackshowcase/R$layout;->grid_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 189
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 169
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 170
    sget p2, Landroidx/leanback/supportleanbackshowcase/R$id;->browse_grid_dock:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 171
    iget-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/VerticalGridPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object p2

    iput-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    .line 172
    iget-object p2, p2, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 173
    iget-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {p2}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p2

    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/VerticalGridView;->setOnChildLaidOutListener(Landroidx/leanback/widget/OnChildLaidOutListener;)V

    .line 175
    new-instance p2, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$4;

    invoke-direct {p2, p0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment$4;-><init>(Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;)V

    invoke-static {p1, p2}, Landroidx/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    .line 182
    invoke-virtual {p0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->getMainFragmentAdapter()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object p1

    iget-object p2, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mMainFragmentAdapter:Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-interface {p1, p2}, Landroidx/leanback/app/BrowseSupportFragment$FragmentHost;->notifyViewCreated(Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapter;)V

    .line 183
    invoke-direct {p0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->updateAdapter()V

    return-void
.end method

.method public setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V
    .locals 0

    .line 82
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    .line 83
    invoke-direct {p0}, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->updateAdapter()V

    return-void
.end method

.method setEntranceTransitionState(Z)V
    .locals 2

    .line 218
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    iget-object v1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/VerticalGridPresenter;->setEntranceTransitionState(Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;Z)V

    return-void
.end method

.method public setGridPresenter(Landroidx/leanback/widget/VerticalGridPresenter;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 64
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    .line 65
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/VerticalGridPresenter;->setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V

    .line 66
    iget-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/VerticalGridPresenter;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    :cond_0
    return-void

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Grid presenter may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V
    .locals 1

    .line 148
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    .line 149
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/VerticalGridPresenter;->setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0

    .line 122
    iput-object p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    .line 202
    iput p1, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mSelectedPosition:I

    .line 203
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Landroidx/leanback/supportleanbackshowcase/app/page/GridFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(I)V

    :cond_0
    return-void
.end method
