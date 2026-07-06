.class Landroidx/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;
.super Landroidx/leanback/widget/ItemBridgeAdapter;
.source "VerticalGridPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/VerticalGridPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerticalGridItemBridgeAdapter"
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/VerticalGridPresenter;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/VerticalGridPresenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;->this$0:Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-direct {p0}, Landroidx/leanback/widget/ItemBridgeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public onBind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;->this$0:Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter;->getOnItemViewClickedListener()Landroidx/leanback/widget/OnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    .line 3
    new-instance v1, Landroidx/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter$1;

    invoke-direct {v1, p0, p1}, Landroidx/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter$1;-><init>(Landroidx/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/leanback/transition/TransitionHelper;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;->this$0:Landroidx/leanback/widget/VerticalGridPresenter;

    iget-object v0, v0, Landroidx/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroidx/leanback/widget/ShadowOverlayHelper;

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ShadowOverlayHelper;->onViewCreated(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onUnbind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;->this$0:Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter;->getOnItemViewClickedListener()Landroidx/leanback/widget/OnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object p1, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
