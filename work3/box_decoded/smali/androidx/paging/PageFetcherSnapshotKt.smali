.class public final Landroidx/paging/PageFetcherSnapshotKt;
.super Ljava/lang/Object;
.source "PageFetcherSnapshot.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "shouldPrioritizeOver",
        "",
        "Landroidx/paging/GenerationalViewportHint;",
        "previous",
        "loadType",
        "Landroidx/paging/LoadType;",
        "paging-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final shouldPrioritizeOver(Landroidx/paging/GenerationalViewportHint;Landroidx/paging/GenerationalViewportHint;Landroidx/paging/LoadType;)Z
    .locals 4

    const-string v0, "$this$shouldPrioritizeOver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previous"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Landroidx/paging/GenerationalViewportHint;->getGenerationId()I

    move-result v0

    invoke-virtual {p1}, Landroidx/paging/GenerationalViewportHint;->getGenerationId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 568
    :cond_1
    invoke-virtual {p1}, Landroidx/paging/GenerationalViewportHint;->getHint()Landroidx/paging/ViewportHint;

    move-result-object v0

    instance-of v0, v0, Landroidx/paging/ViewportHint$Initial;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/paging/GenerationalViewportHint;->getHint()Landroidx/paging/ViewportHint;

    move-result-object v0

    instance-of v0, v0, Landroidx/paging/ViewportHint$Access;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 569
    :cond_2
    invoke-virtual {p0}, Landroidx/paging/GenerationalViewportHint;->getHint()Landroidx/paging/ViewportHint;

    move-result-object v0

    instance-of v0, v0, Landroidx/paging/ViewportHint$Initial;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/paging/GenerationalViewportHint;->getHint()Landroidx/paging/ViewportHint;

    move-result-object v0

    instance-of v0, v0, Landroidx/paging/ViewportHint$Access;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 571
    :cond_3
    invoke-virtual {p0}, Landroidx/paging/GenerationalViewportHint;->getHint()Landroidx/paging/ViewportHint;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/paging/ViewportHint;->getOriginalPageOffsetFirst()I

    move-result v0

    invoke-virtual {p1}, Landroidx/paging/GenerationalViewportHint;->getHint()Landroidx/paging/ViewportHint;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/paging/ViewportHint;->getOriginalPageOffsetFirst()I

    move-result v1

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 572
    :cond_4
    invoke-virtual {p0}, Landroidx/paging/GenerationalViewportHint;->getHint()Landroidx/paging/ViewportHint;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/paging/ViewportHint;->getOriginalPageOffsetLast()I

    move-result v0

    invoke-virtual {p1}, Landroidx/paging/GenerationalViewportHint;->getHint()Landroidx/paging/ViewportHint;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/paging/ViewportHint;->getOriginalPageOffsetLast()I

    move-result v1

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 574
    :cond_5
    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    if-ne p2, v0, :cond_6

    invoke-virtual {p1}, Landroidx/paging/GenerationalViewportHint;->getHint()Landroidx/paging/ViewportHint;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/paging/ViewportHint;->getPresentedItemsBefore()I

    move-result v0

    invoke-virtual {p0}, Landroidx/paging/GenerationalViewportHint;->getHint()Landroidx/paging/ViewportHint;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/paging/ViewportHint;->getPresentedItemsBefore()I

    move-result v1

    if-ge v0, v1, :cond_6

    goto :goto_1

    .line 578
    :cond_6
    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroidx/paging/GenerationalViewportHint;->getHint()Landroidx/paging/ViewportHint;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/paging/ViewportHint;->getPresentedItemsAfter()I

    move-result p1

    invoke-virtual {p0}, Landroidx/paging/GenerationalViewportHint;->getHint()Landroidx/paging/ViewportHint;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/paging/ViewportHint;->getPresentedItemsAfter()I

    move-result p0

    if-ge p1, p0, :cond_0

    :goto_1
    return v2
.end method
