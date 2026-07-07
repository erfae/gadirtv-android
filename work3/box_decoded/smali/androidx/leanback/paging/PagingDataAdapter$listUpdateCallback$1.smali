.class public final Landroidx/leanback/paging/PagingDataAdapter$listUpdateCallback$1;
.super Ljava/lang/Object;
.source "PagingDataAdapter.kt"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/paging/PagingDataAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005H\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "androidx/leanback/paging/PagingDataAdapter$listUpdateCallback$1",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "onChanged",
        "",
        "position",
        "",
        "count",
        "payload",
        "",
        "onInserted",
        "onMoved",
        "fromPosition",
        "toPosition",
        "onRemoved",
        "leanback-paging_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/paging/PagingDataAdapter;


# direct methods
.method constructor <init>(Landroidx/leanback/paging/PagingDataAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Landroidx/leanback/paging/PagingDataAdapter$listUpdateCallback$1;->this$0:Landroidx/leanback/paging/PagingDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/leanback/paging/PagingDataAdapter$listUpdateCallback$1;->this$0:Landroidx/leanback/paging/PagingDataAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/leanback/paging/PagingDataAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/leanback/paging/PagingDataAdapter$listUpdateCallback$1;->this$0:Landroidx/leanback/paging/PagingDataAdapter;

    invoke-static {v0, p1, p2}, Landroidx/leanback/paging/PagingDataAdapter;->access$notifyItemRangeInserted(Landroidx/leanback/paging/PagingDataAdapter;II)V

    return-void
.end method

.method public onMoved(II)V
    .locals 1

    .line 60
    iget-object v0, p0, Landroidx/leanback/paging/PagingDataAdapter$listUpdateCallback$1;->this$0:Landroidx/leanback/paging/PagingDataAdapter;

    invoke-static {v0, p1, p2}, Landroidx/leanback/paging/PagingDataAdapter;->access$notifyItemMoved(Landroidx/leanback/paging/PagingDataAdapter;II)V

    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/leanback/paging/PagingDataAdapter$listUpdateCallback$1;->this$0:Landroidx/leanback/paging/PagingDataAdapter;

    invoke-static {v0, p1, p2}, Landroidx/leanback/paging/PagingDataAdapter;->access$notifyItemRangeRemoved(Landroidx/leanback/paging/PagingDataAdapter;II)V

    return-void
.end method
