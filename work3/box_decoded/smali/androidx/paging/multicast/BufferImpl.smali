.class final Landroidx/paging/multicast/BufferImpl;
.super Ljava/lang/Object;
.source "ChannelManager.kt"

# interfaces
.implements Landroidx/paging/multicast/Buffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/paging/multicast/Buffer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0016\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0016R \u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00080\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/paging/multicast/BufferImpl;",
        "T",
        "Landroidx/paging/multicast/Buffer;",
        "limit",
        "",
        "(I)V",
        "items",
        "Ljava/util/ArrayDeque;",
        "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;",
        "getItems",
        "()Ljava/util/ArrayDeque;",
        "add",
        "",
        "item",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final items:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final limit:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/paging/multicast/BufferImpl;->limit:I

    .line 380
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Landroidx/paging/multicast/BufferImpl;->items:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public add(Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    :goto_0
    invoke-virtual {p0}, Landroidx/paging/multicast/BufferImpl;->getItems()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Landroidx/paging/multicast/BufferImpl;->limit:I

    if-lt v0, v1, :cond_0

    .line 384
    invoke-virtual {p0}, Landroidx/paging/multicast/BufferImpl;->getItems()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p0}, Landroidx/paging/multicast/BufferImpl;->getItems()Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    return-void
.end method

.method public getItems()Ljava/util/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "Landroidx/paging/multicast/ChannelManager$Message$Dispatch$Value<",
            "TT;>;>;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Landroidx/paging/multicast/BufferImpl;->items:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public bridge synthetic getItems()Ljava/util/Collection;
    .locals 1

    .line 377
    invoke-virtual {p0}, Landroidx/paging/multicast/BufferImpl;->getItems()Ljava/util/ArrayDeque;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 377
    invoke-static {p0}, Landroidx/paging/multicast/Buffer$DefaultImpls;->isEmpty(Landroidx/paging/multicast/Buffer;)Z

    move-result v0

    return v0
.end method
