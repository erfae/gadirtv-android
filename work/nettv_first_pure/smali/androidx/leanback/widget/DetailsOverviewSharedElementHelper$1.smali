.class Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$1;
.super Ljava/lang/Object;
.source "DetailsOverviewSharedElementHelper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object p1, p1, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object p2, p1, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object p2, p2, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p1, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelWidth:I

    .line 3
    iget-object p1, p0, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper$1;->this$0:Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;

    iget-object p2, p1, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mViewHolder:Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object p2, p2, Landroidx/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->mRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iput p2, p1, Landroidx/leanback/widget/DetailsOverviewSharedElementHelper;->mRightPanelHeight:I

    return-void
.end method
