.class Landroidx/leanback/app/DetailsSupportFragment$13;
.super Ljava/lang/Object;
.source "DetailsSupportFragment.java"

# interfaces
.implements Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/DetailsSupportFragment;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/DetailsSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    iget-object p2, p2, Landroidx/leanback/app/DetailsSupportFragment;->mRootView:Landroidx/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p2

    if-eq p1, p2, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    sget v0, Landroidx/leanback/R$id;->details_fragment_root:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    iget-boolean p2, p1, Landroidx/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    if-nez p2, :cond_3

    .line 4
    invoke-virtual {p1}, Landroidx/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroidx/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/leanback/widget/BaseGridView;->animateIn()V

    .line 6
    :cond_0
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-virtual {p1, v1}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Landroidx/leanback/R$id;->video_surface_container:I

    if-ne p1, p2, :cond_2

    .line 8
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-virtual {p1}, Landroidx/leanback/app/DetailsSupportFragment;->slideOutGridView()V

    .line 9
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Landroidx/leanback/app/DetailsSupportFragment$13;->this$0:Landroidx/leanback/app/DetailsSupportFragment;

    invoke-virtual {p1, v1}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
