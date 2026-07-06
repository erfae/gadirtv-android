.class public abstract Landroidx/leanback/widget/RowPresenter;
.super Landroidx/leanback/widget/Presenter;
.source "RowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/RowPresenter$ViewHolder;,
        Landroidx/leanback/widget/RowPresenter$ContainerViewHolder;
    }
.end annotation


# static fields
.field public static final SYNC_ACTIVATED_CUSTOM:I = 0x0

.field public static final SYNC_ACTIVATED_TO_EXPANDED:I = 0x1

.field public static final SYNC_ACTIVATED_TO_EXPANDED_AND_SELECTED:I = 0x3

.field public static final SYNC_ACTIVATED_TO_SELECTED:I = 0x2


# instance fields
.field private mHeaderPresenter:Landroidx/leanback/widget/RowHeaderPresenter;

.field public mSelectEffectEnabled:Z

.field public mSyncActivatePolicy:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/leanback/widget/Presenter;-><init>()V

    .line 2
    new-instance v0, Landroidx/leanback/widget/RowHeaderPresenter;

    invoke-direct {v0}, Landroidx/leanback/widget/RowHeaderPresenter;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/RowPresenter;->mHeaderPresenter:Landroidx/leanback/widget/RowHeaderPresenter;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroidx/leanback/widget/RowPresenter;->mSelectEffectEnabled:Z

    .line 4
    iput v1, p0, Landroidx/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    .line 5
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/RowHeaderPresenter;->setNullItemVisibilityGone(Z)V

    return-void
.end method

.method private updateActivateStatus(Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->setActivated(Z)V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->setActivated(Z)V

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual {p1}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->isExpanded()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->setActivated(Z)V

    .line 5
    :goto_1
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->syncActivatedStatus(Landroid/view/View;)V

    return-void
.end method

.method private updateHeaderViewVisibility(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/RowPresenter;->mHeaderPresenter:Landroidx/leanback/widget/RowHeaderPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroidx/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroidx/leanback/widget/RowContainerView;

    .line 3
    invoke-virtual {p1}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->isExpanded()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/RowContainerView;->showHeader(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract createRowViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/RowPresenter$ViewHolder;
.end method

.method public dispatchItemSelectedListener(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mOnItemViewSelectedListener:Landroidx/leanback/widget/BaseOnItemViewSelectedListener;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRowObject()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v1, v1, p1, v0}, Landroidx/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public freeze(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public final getHeaderPresenter()Landroidx/leanback/widget/RowHeaderPresenter;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/RowPresenter;->mHeaderPresenter:Landroidx/leanback/widget/RowHeaderPresenter;

    return-object v0
.end method

.method public final getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/leanback/widget/RowPresenter$ContainerViewHolder;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/RowPresenter$ContainerViewHolder;->mRowViewHolder:Landroidx/leanback/widget/RowPresenter$ViewHolder;

    return-object p1

    .line 3
    :cond_0
    check-cast p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;

    return-object p1
.end method

.method public final getSelectEffectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/leanback/widget/RowPresenter;->mSelectEffectEnabled:Z

    return v0
.end method

.method public final getSelectLevel(Landroidx/leanback/widget/Presenter$ViewHolder;)F
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    iget p1, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    return p1
.end method

.method public final getSyncActivatePolicy()I
    .locals 1

    iget v0, p0, Landroidx/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    return v0
.end method

.method public initializeRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mInitialzed:Z

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter;->isClippingChildren()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 5
    :cond_0
    iget-object p1, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroidx/leanback/widget/RowPresenter$ContainerViewHolder;

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    return-void
.end method

.method public isClippingChildren()Z
    .locals 0

    instance-of p0, p0, Landroidx/leanback/widget/AbstractMediaItemPresenter;

    return p0
.end method

.method public isUsingDefaultSelectEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iput-object p2, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mRowObject:Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Landroidx/leanback/widget/Row;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/leanback/widget/Row;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mRow:Landroidx/leanback/widget/Row;

    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/leanback/widget/RowPresenter;->mHeaderPresenter:Landroidx/leanback/widget/RowHeaderPresenter;

    iget-object p1, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/RowHeaderPresenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/RowPresenter;->createRowViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mInitialzed:Z

    .line 3
    iget-object v2, p0, Landroidx/leanback/widget/RowPresenter;->mHeaderPresenter:Landroidx/leanback/widget/RowHeaderPresenter;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter;->isUsingDefaultSelectEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter;->getSelectEffectEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_4

    .line 5
    new-instance v1, Landroidx/leanback/widget/RowContainerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/leanback/widget/RowContainerView;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object p1, p0, Landroidx/leanback/widget/RowPresenter;->mHeaderPresenter:Landroidx/leanback/widget/RowHeaderPresenter;

    if-eqz p1, :cond_3

    .line 7
    iget-object v2, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p1, v2}, Landroidx/leanback/widget/RowHeaderPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    iput-object p1, v0, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    .line 9
    :cond_3
    new-instance p1, Landroidx/leanback/widget/RowPresenter$ContainerViewHolder;

    invoke-direct {p1, v1, v0}, Landroidx/leanback/widget/RowPresenter$ContainerViewHolder;-><init>(Landroidx/leanback/widget/RowContainerView;Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    goto :goto_1

    :cond_4
    move-object p1, v0

    .line 10
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/RowPresenter;->initializeRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    .line 11
    iget-boolean v0, v0, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mInitialzed:Z

    if-eqz v0, :cond_5

    return-object p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "super.initializeRowViewHolder() must be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRowViewAttachedToWindow(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/RowPresenter;->mHeaderPresenter:Landroidx/leanback/widget/RowHeaderPresenter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/Presenter;->onViewAttachedToWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public onRowViewDetachedFromWindow(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/RowPresenter;->mHeaderPresenter:Landroidx/leanback/widget/RowHeaderPresenter;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    .line 3
    :cond_0
    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-static {p1}, Landroidx/leanback/widget/Presenter;->cancelAnimationsRecursive(Landroid/view/View;)V

    return-void
.end method

.method public onRowViewExpanded(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/RowPresenter;->updateHeaderViewVisibility(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    .line 2
    iget-object p2, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/RowPresenter;->updateActivateStatus(Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public onRowViewSelected(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/RowPresenter;->dispatchItemSelectedListener(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 2
    invoke-direct {p0, p1}, Landroidx/leanback/widget/RowPresenter;->updateHeaderViewVisibility(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    .line 3
    iget-object p2, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/RowPresenter;->updateActivateStatus(Landroidx/leanback/widget/RowPresenter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public onSelectLevelChanged(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter;->getSelectEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mColorDimmer:Landroidx/leanback/graphics/ColorOverlayDimmer;

    iget v1, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    invoke-virtual {v0, v1}, Landroidx/leanback/graphics/ColorOverlayDimmer;->setActiveLevel(F)V

    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/leanback/widget/RowPresenter;->mHeaderPresenter:Landroidx/leanback/widget/RowHeaderPresenter;

    iget v2, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    invoke-virtual {v1, v0, v2}, Landroidx/leanback/widget/RowHeaderPresenter;->setSelectLevel(Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;F)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter;->isUsingDefaultSelectEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroidx/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroidx/leanback/widget/RowContainerView;

    iget-object p1, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mColorDimmer:Landroidx/leanback/graphics/ColorOverlayDimmer;

    .line 7
    invoke-virtual {p1}, Landroidx/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 8
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/RowContainerView;->setForegroundColor(I)V

    :cond_1
    return-void
.end method

.method public onUnbindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/leanback/widget/RowPresenter;->mHeaderPresenter:Landroidx/leanback/widget/RowHeaderPresenter;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/RowHeaderPresenter;->onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mRow:Landroidx/leanback/widget/Row;

    .line 4
    iput-object v0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mRowObject:Ljava/lang/Object;

    return-void
.end method

.method public final onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/RowPresenter;->onUnbindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/RowPresenter;->onRowViewAttachedToWindow(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/RowPresenter;->onRowViewDetachedFromWindow(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public setEntranceTransitionState(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 3
    iget-object p1, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final setHeaderPresenter(Landroidx/leanback/widget/RowHeaderPresenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/RowPresenter;->mHeaderPresenter:Landroidx/leanback/widget/RowHeaderPresenter;

    return-void
.end method

.method public final setRowViewExpanded(Landroidx/leanback/widget/Presenter$ViewHolder;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    .line 2
    iput-boolean p2, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mExpanded:Z

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/RowPresenter;->onRowViewExpanded(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V

    return-void
.end method

.method public final setRowViewSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    .line 2
    iput-boolean p2, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mSelected:Z

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/RowPresenter;->onRowViewSelected(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V

    return-void
.end method

.method public final setSelectEffectEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/leanback/widget/RowPresenter;->mSelectEffectEnabled:Z

    return-void
.end method

.method public final setSelectLevel(Landroidx/leanback/widget/Presenter$ViewHolder;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/RowPresenter;->getRowViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)Landroidx/leanback/widget/RowPresenter$ViewHolder;

    move-result-object p1

    .line 2
    iput p2, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    .line 3
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/RowPresenter;->onSelectLevelChanged(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public final setSyncActivatePolicy(I)V
    .locals 0

    iput p1, p0, Landroidx/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    return-void
.end method
