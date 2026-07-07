.class public final Landroidx/paging/PagingDataAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "PagingDataAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PagingDataAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0002J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "androidx/paging/PagingDataAdapter$1",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        "considerAllowingStateRestoration",
        "",
        "onItemRangeInserted",
        "positionStart",
        "",
        "itemCount",
        "paging-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/paging/PagingDataAdapter;


# direct methods
.method constructor <init>(Landroidx/paging/PagingDataAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Landroidx/paging/PagingDataAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method private final considerAllowingStateRestoration()V
    .locals 2

    .line 79
    iget-object v0, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Landroidx/paging/PagingDataAdapter;

    invoke-virtual {v0}, Landroidx/paging/PagingDataAdapter;->getStateRestorationPolicy()Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Landroidx/paging/PagingDataAdapter;

    invoke-static {v0}, Landroidx/paging/PagingDataAdapter;->access$getUserSetRestorationPolicy$p(Landroidx/paging/PagingDataAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Landroidx/paging/PagingDataAdapter;

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataAdapter;->setStateRestorationPolicy(Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onItemRangeInserted(II)V
    .locals 2

    .line 72
    invoke-direct {p0}, Landroidx/paging/PagingDataAdapter$1;->considerAllowingStateRestoration()V

    .line 73
    iget-object v0, p0, Landroidx/paging/PagingDataAdapter$1;->this$0:Landroidx/paging/PagingDataAdapter;

    move-object v1, p0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataAdapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 74
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    return-void
.end method
