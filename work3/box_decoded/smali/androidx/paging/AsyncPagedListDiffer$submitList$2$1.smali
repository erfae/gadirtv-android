.class final Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;
.super Ljava/lang/Object;
.source "AsyncPagedListDiffer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/AsyncPagedListDiffer$submitList$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $result:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

.field final synthetic this$0:Landroidx/paging/AsyncPagedListDiffer$submitList$2;


# direct methods
.method constructor <init>(Landroidx/paging/AsyncPagedListDiffer$submitList$2;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->this$0:Landroidx/paging/AsyncPagedListDiffer$submitList$2;

    iput-object p2, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$result:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 410
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->this$0:Landroidx/paging/AsyncPagedListDiffer$submitList$2;

    iget-object v0, v0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->this$0:Landroidx/paging/AsyncPagedListDiffer;

    invoke-virtual {v0}, Landroidx/paging/AsyncPagedListDiffer;->getMaxScheduledGeneration$paging_runtime_release()I

    move-result v0

    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->this$0:Landroidx/paging/AsyncPagedListDiffer$submitList$2;

    iget v1, v1, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$runGeneration:I

    if-ne v0, v1, :cond_0

    .line 411
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->this$0:Landroidx/paging/AsyncPagedListDiffer$submitList$2;

    iget-object v1, v0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->this$0:Landroidx/paging/AsyncPagedListDiffer;

    .line 412
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->this$0:Landroidx/paging/AsyncPagedListDiffer$submitList$2;

    iget-object v2, v0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$pagedList:Landroidx/paging/PagedList;

    .line 413
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->this$0:Landroidx/paging/AsyncPagedListDiffer$submitList$2;

    iget-object v3, v0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$newSnapshot:Landroidx/paging/PagedList;

    .line 414
    iget-object v4, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$result:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 415
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->this$0:Landroidx/paging/AsyncPagedListDiffer$submitList$2;

    iget-object v5, v0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$recordingCallback:Landroidx/paging/RecordingCallback;

    .line 416
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->this$0:Landroidx/paging/AsyncPagedListDiffer$submitList$2;

    iget-object v0, v0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$oldSnapshot:Landroidx/paging/PagedList;

    invoke-virtual {v0}, Landroidx/paging/PagedList;->lastLoad()I

    move-result v6

    .line 417
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->this$0:Landroidx/paging/AsyncPagedListDiffer$submitList$2;

    iget-object v7, v0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$commitCallback:Ljava/lang/Runnable;

    .line 411
    invoke-virtual/range {v1 .. v7}, Landroidx/paging/AsyncPagedListDiffer;->latchPagedList$paging_runtime_release(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Landroidx/paging/RecordingCallback;ILjava/lang/Runnable;)V

    :cond_0
    return-void
.end method
