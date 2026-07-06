.class public Landroidx/leanback/widget/VerticalGridPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "VerticalGridPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;,
        Landroidx/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GridPresenter"


# instance fields
.field private mFocusZoomFactor:I

.field private mKeepChildForeground:Z

.field private mNumColumns:I

.field private mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

.field private mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

.field private mRoundedCornersEnabled:Z

.field private mShadowEnabled:Z

.field public mShadowOverlayHelper:Landroidx/leanback/widget/ShadowOverlayHelper;

.field private mShadowOverlayWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

.field private mUseFocusDimmer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Landroidx/leanback/widget/VerticalGridPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/VerticalGridPresenter;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mShadowEnabled:Z

    .line 6
    iput-boolean v0, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    .line 7
    iput-boolean v0, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    .line 8
    iput p1, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mFocusZoomFactor:I

    .line 9
    iput-boolean p2, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    return-void
.end method


# virtual methods
.method public final areChildRoundedCornersEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    return v0
.end method

.method public final enableChildRoundedCorners(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    return-void
.end method

.method public final getFocusZoomFactor()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mFocusZoomFactor:I

    return v0
.end method

.method public final getKeepChildForeground()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    return v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    return v0
.end method

.method public final getOnItemViewClickedListener()Landroidx/leanback/widget/OnItemViewClickedListener;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method public final getOnItemViewSelectedListener()Landroidx/leanback/widget/OnItemViewSelectedListener;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    return-object v0
.end method

.method public final getShadowEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mShadowEnabled:Z

    return v0
.end method

.method public final isFocusDimmerUsed()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    return v0
.end method

.method public isUsingDefaultShadow()Z
    .locals 1

    invoke-static {}, Landroidx/leanback/widget/ShadowOverlayHelper;->supportsShadow()Z

    move-result v0

    return v0
.end method

.method public isUsingZOrder(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Landroidx/leanback/system/Settings;->getInstance(Landroid/content/Context;)Landroidx/leanback/system/Settings;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/system/Settings;->preferStaticShadows()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    .line 2
    iget-object v0, p1, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    check-cast p2, Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, p2}, Landroidx/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 3
    invoke-virtual {p1}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p2

    iget-object p1, p1, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/VerticalGridPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;
    .locals 5

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/leanback/R$layout;->lb_vertical_grid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance v0, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    sget v1, Landroidx/leanback/R$id;->browse_grid:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    invoke-direct {v0, p1}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;-><init>(Landroidx/leanback/widget/VerticalGridView;)V

    .line 4
    iput-boolean v2, v0, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    .line 5
    new-instance p1, Landroidx/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;

    invoke-direct {p1, p0}, Landroidx/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;-><init>(Landroidx/leanback/widget/VerticalGridPresenter;)V

    iput-object p1, v0, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    .line 6
    iget p1, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    .line 7
    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    iget v1, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/VerticalGridView;->setNumColumns(I)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    .line 9
    iget-object v1, v0, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 10
    iget-object v3, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroidx/leanback/widget/ShadowOverlayHelper;

    if-nez v3, :cond_1

    .line 11
    new-instance v3, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;

    invoke-direct {v3}, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;-><init>()V

    iget-boolean v4, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    .line 12
    invoke-virtual {v3, v4}, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->needsOverlay(Z)Landroidx/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v3

    .line 13
    invoke-virtual {p0}, Landroidx/leanback/widget/VerticalGridPresenter;->isUsingDefaultShadow()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/VerticalGridPresenter;->getShadowEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 14
    :goto_0
    invoke-virtual {v3, v4}, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->needsShadow(Z)Landroidx/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v3

    .line 15
    invoke-virtual {p0}, Landroidx/leanback/widget/VerticalGridPresenter;->areChildRoundedCornersEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->needsRoundedCorner(Z)Landroidx/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v3

    .line 16
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/VerticalGridPresenter;->isUsingZOrder(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder(Z)Landroidx/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v3

    iget-boolean v4, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    .line 17
    invoke-virtual {v3, v4}, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable(Z)Landroidx/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v3

    .line 18
    sget-object v4, Landroidx/leanback/widget/ShadowOverlayHelper$Options;->DEFAULT:Landroidx/leanback/widget/ShadowOverlayHelper$Options;

    .line 19
    invoke-virtual {v3, v4}, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->options(Landroidx/leanback/widget/ShadowOverlayHelper$Options;)Landroidx/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v3

    .line 20
    invoke-virtual {v3, v1}, Landroidx/leanback/widget/ShadowOverlayHelper$Builder;->build(Landroid/content/Context;)Landroidx/leanback/widget/ShadowOverlayHelper;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroidx/leanback/widget/ShadowOverlayHelper;

    .line 21
    invoke-virtual {v1}, Landroidx/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    new-instance v1, Landroidx/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;

    iget-object v3, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroidx/leanback/widget/ShadowOverlayHelper;

    invoke-direct {v1, v3}, Landroidx/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;-><init>(Landroidx/leanback/widget/ShadowOverlayHelper;)V

    iput-object v1, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mShadowOverlayWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

    .line 23
    :cond_1
    iget-object v1, v0, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    iget-object v3, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mShadowOverlayWrapper:Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/ItemBridgeAdapter;->setWrapper(Landroidx/leanback/widget/ItemBridgeAdapter$Wrapper;)V

    .line 24
    iget-object v1, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroidx/leanback/widget/ShadowOverlayHelper;

    iget-object v3, v0, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroidx/leanback/widget/VerticalGridView;

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/ShadowOverlayHelper;->prepareParentForShadow(Landroid/view/ViewGroup;)V

    .line 25
    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v1

    iget-object v3, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroidx/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v3}, Landroidx/leanback/widget/ShadowOverlayHelper;->getShadowType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/BaseGridView;->setFocusDrawingOrderEnabled(Z)V

    .line 26
    iget-object p1, v0, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    iget v1, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mFocusZoomFactor:I

    iget-boolean v2, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    invoke-static {p1, v1, v2}, Landroidx/leanback/widget/FocusHighlightHelper;->setupBrowseItemFocusHighlight(Landroidx/leanback/widget/ItemBridgeAdapter;IZ)V

    .line 27
    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    new-instance v1, Landroidx/leanback/widget/VerticalGridPresenter$1;

    invoke-direct {v1, p0, v0}, Landroidx/leanback/widget/VerticalGridPresenter$1;-><init>(Landroidx/leanback/widget/VerticalGridPresenter;Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;)V

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/BaseGridView;->setOnChildSelectedListener(Landroidx/leanback/widget/OnChildSelectedListener;)V

    .line 28
    iget-boolean p1, v0, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    if-eqz p1, :cond_3

    return-object v0

    .line 29
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "super.initializeGridViewHolder() must be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Number of columns must be set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 2

    .line 1
    check-cast p1, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    .line 2
    iget-object v0, p1, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroidx/leanback/widget/ObjectAdapter;)V

    .line 3
    invoke-virtual {p1}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setEntranceTransitionState(Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;Z)V
    .locals 0

    iget-object p1, p1, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroidx/leanback/widget/VerticalGridView;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/BaseGridView;->setChildrenVisibility(I)V

    return-void
.end method

.method public final setKeepChildForeground(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    return-void
.end method

.method public setNumberOfColumns(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid number of columns"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setOnItemViewClickedListener(Landroidx/leanback/widget/OnItemViewClickedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mOnItemViewClickedListener:Landroidx/leanback/widget/OnItemViewClickedListener;

    return-void
.end method

.method public final setOnItemViewSelectedListener(Landroidx/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mOnItemViewSelectedListener:Landroidx/leanback/widget/OnItemViewSelectedListener;

    return-void
.end method

.method public final setShadowEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/VerticalGridPresenter;->mShadowEnabled:Z

    return-void
.end method
