.class Landroidx/leanback/widget/ArrayObjectAdapter$2;
.super Ljava/lang/Object;
.source "ArrayObjectAdapter.java"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/ArrayObjectAdapter;->setItems(Ljava/util/List;Landroidx/leanback/widget/DiffCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/ArrayObjectAdapter;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ArrayObjectAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/ArrayObjectAdapter$2;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/leanback/widget/ArrayObjectAdapter;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ArrayObjectAdapter"

    const-string v1, "onChanged"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$2;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/leanback/widget/ArrayObjectAdapter;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ArrayObjectAdapter"

    const-string v1, "onInserted"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$2;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/leanback/widget/ArrayObjectAdapter;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ArrayObjectAdapter"

    const-string v1, "onMoved"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$2;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/leanback/widget/ArrayObjectAdapter;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ArrayObjectAdapter"

    const-string v1, "onRemoved"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/ArrayObjectAdapter$2;->this$0:Landroidx/leanback/widget/ArrayObjectAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
