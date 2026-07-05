.class Lcom/nettv/livestore/dlgfragment/GroupDlgFragment$1;
.super Landroidx/leanback/widget/OnChildViewHolderSelectedListener;
.source "GroupDlgFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/dlgfragment/GroupDlgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$previousSelectedView0:[Landroid/view/View;


# direct methods
.method public constructor <init>([Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment$1;->val$previousSelectedView0:[Landroid/view/View;

    invoke-direct {p0}, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment$1;->val$previousSelectedView0:[Landroid/view/View;

    const/4 p3, 0x0

    aget-object p4, p1, p3

    if-eqz p4, :cond_1b

    .line 3
    aget-object p1, p1, p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/dlgfragment/GroupDlgFragment$1;->val$previousSelectedView0:[Landroid/view/View;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    aput-object p2, p1, p3

    .line 5
    aget-object p1, p1, p3

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_1b
    return-void
.end method
