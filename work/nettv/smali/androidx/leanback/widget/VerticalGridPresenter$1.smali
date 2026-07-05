.class Landroidx/leanback/widget/VerticalGridPresenter$1;
.super Ljava/lang/Object;
.source "VerticalGridPresenter.java"

# interfaces
.implements Landroidx/leanback/widget/OnChildSelectedListener;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/VerticalGridPresenter;

.field public final synthetic val$gridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/VerticalGridPresenter;Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/VerticalGridPresenter$1;->this$0:Landroidx/leanback/widget/VerticalGridPresenter;

    iput-object p2, p0, Landroidx/leanback/widget/VerticalGridPresenter$1;->val$gridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/VerticalGridPresenter$1;->this$0:Landroidx/leanback/widget/VerticalGridPresenter;

    iget-object p3, p0, Landroidx/leanback/widget/VerticalGridPresenter$1;->val$gridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    .line 2
    invoke-virtual {p1}, Landroidx/leanback/widget/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroidx/leanback/widget/OnItemViewSelectedListener;

    move-result-object p4

    if-eqz p4, :cond_2

    const/4 p4, 0x0

    if-nez p2, :cond_0

    move-object p2, p4

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;

    :goto_0
    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/leanback/widget/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroidx/leanback/widget/OnItemViewSelectedListener;

    move-result-object p1

    invoke-interface {p1, p4, p4, p4, p4}, Landroidx/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/widget/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroidx/leanback/widget/OnItemViewSelectedListener;

    move-result-object p1

    iget-object p3, p2, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    iget-object p2, p2, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-interface {p1, p3, p2, p4, p4}, Landroidx/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
