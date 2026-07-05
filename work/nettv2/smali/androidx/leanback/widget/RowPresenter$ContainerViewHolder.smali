.class Landroidx/leanback/widget/RowPresenter$ContainerViewHolder;
.super Landroidx/leanback/widget/Presenter$ViewHolder;
.source "RowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/RowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContainerViewHolder"
.end annotation


# instance fields
.field public final mRowViewHolder:Landroidx/leanback/widget/RowPresenter$ViewHolder;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/RowContainerView;Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iget-object v0, p2, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/RowContainerView;->addRowView(Landroid/view/View;)V

    .line 3
    iget-object v0, p2, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroidx/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/RowContainerView;->addHeaderView(Landroid/view/View;)V

    .line 5
    :cond_0
    iput-object p2, p0, Landroidx/leanback/widget/RowPresenter$ContainerViewHolder;->mRowViewHolder:Landroidx/leanback/widget/RowPresenter$ViewHolder;

    .line 6
    iput-object p0, p2, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroidx/leanback/widget/RowPresenter$ContainerViewHolder;

    return-void
.end method
