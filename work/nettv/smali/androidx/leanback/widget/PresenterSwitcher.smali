.class public abstract Landroidx/leanback/widget/PresenterSwitcher;
.super Ljava/lang/Object;
.source "PresenterSwitcher.java"


# instance fields
.field private mCurrentPresenter:Landroidx/leanback/widget/Presenter;

.field private mCurrentViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

.field private mParent:Landroid/view/ViewGroup;

.field private mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private switchView(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PresenterSwitcher;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroidx/leanback/widget/Presenter;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroidx/leanback/widget/Presenter;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v1}, Landroidx/leanback/widget/PresenterSwitcher;->showView(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/PresenterSwitcher;->clear()V

    .line 5
    iput-object v0, p0, Landroidx/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroidx/leanback/widget/Presenter;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/leanback/widget/PresenterSwitcher;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    .line 7
    iget-object v0, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/PresenterSwitcher;->insertView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/Presenter;->onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    .line 9
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroidx/leanback/widget/Presenter;

    iget-object v1, p0, Landroidx/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/Presenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Landroidx/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/PresenterSwitcher;->onViewSelected(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroidx/leanback/widget/Presenter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Presenter;->onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    .line 3
    iget-object v0, p0, Landroidx/leanback/widget/PresenterSwitcher;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/leanback/widget/PresenterSwitcher;->mCurrentViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    .line 5
    iput-object v0, p0, Landroidx/leanback/widget/PresenterSwitcher;->mCurrentPresenter:Landroidx/leanback/widget/Presenter;

    :cond_0
    return-void
.end method

.method public final getParentViewGroup()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/PresenterSwitcher;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public init(Landroid/view/ViewGroup;Landroidx/leanback/widget/PresenterSelector;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/PresenterSwitcher;->clear()V

    .line 2
    iput-object p1, p0, Landroidx/leanback/widget/PresenterSwitcher;->mParent:Landroid/view/ViewGroup;

    .line 3
    iput-object p2, p0, Landroidx/leanback/widget/PresenterSwitcher;->mPresenterSelector:Landroidx/leanback/widget/PresenterSelector;

    return-void
.end method

.method public abstract insertView(Landroid/view/View;)V
.end method

.method public onViewSelected(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public select(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/PresenterSwitcher;->switchView(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Landroidx/leanback/widget/PresenterSwitcher;->showView(Z)V

    return-void
.end method

.method public unselect()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/leanback/widget/PresenterSwitcher;->showView(Z)V

    return-void
.end method
