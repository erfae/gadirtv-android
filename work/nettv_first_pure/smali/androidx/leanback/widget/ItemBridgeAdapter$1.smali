.class Landroidx/leanback/widget/ItemBridgeAdapter$1;
.super Landroidx/leanback/widget/ObjectAdapter$DataObserver;
.source "ItemBridgeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/ItemBridgeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/ItemBridgeAdapter;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ItemBridgeAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-direct {p0}, Landroidx/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemMoved(II)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    iget-object v0, p0, Landroidx/leanback/widget/ItemBridgeAdapter$1;->this$0:Landroidx/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
