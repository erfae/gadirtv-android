.class final Landroidx/paging/PageKeyedDataSource$load$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "PageKeyedDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PageKeyedDataSource;->load$paging_common(Landroidx/paging/DataSource$Params;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0001\"\u0008\u0008\u0001\u0010\u0003*\u00020\u00012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00030\u00080\u0007H\u0080@"
    }
    d2 = {
        "load",
        "",
        "Key",
        "Value",
        "params",
        "Landroidx/paging/DataSource$Params;",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "Landroidx/paging/DataSource$BaseResult;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.paging.PageKeyedDataSource"
    f = "PageKeyedDataSource.kt"
    i = {}
    l = {
        0xb9,
        0xbf,
        0xc0
    }
    m = "load$paging_common"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/paging/PageKeyedDataSource;


# direct methods
.method constructor <init>(Landroidx/paging/PageKeyedDataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/PageKeyedDataSource$load$1;->this$0:Landroidx/paging/PageKeyedDataSource;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/paging/PageKeyedDataSource$load$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/paging/PageKeyedDataSource$load$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/paging/PageKeyedDataSource$load$1;->label:I

    iget-object p1, p0, Landroidx/paging/PageKeyedDataSource$load$1;->this$0:Landroidx/paging/PageKeyedDataSource;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/paging/PageKeyedDataSource;->load$paging_common(Landroidx/paging/DataSource$Params;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
