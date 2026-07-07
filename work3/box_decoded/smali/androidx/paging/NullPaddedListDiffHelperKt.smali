.class public final Landroidx/paging/NullPaddedListDiffHelperKt;
.super Ljava/lang/Object;
.source "NullPaddedListDiffHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a8\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0007H\u0000\u001a:\u0010\u0008\u001a\u00020\t\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0001H\u0000\u001a,\u0010\r\u001a\u00020\u000e*\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u000c\u001a\u00020\u00012\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "computeDiff",
        "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
        "T",
        "",
        "Landroidx/paging/NullPaddedList;",
        "newList",
        "diffCallback",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "dispatchDiff",
        "",
        "callback",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "diffResult",
        "transformAnchorIndex",
        "",
        "oldPosition",
        "paging-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final computeDiff(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)",
            "Landroidx/recyclerview/widget/DiffUtil$DiffResult;"
        }
    .end annotation

    const-string v0, "$this$computeDiff"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p0}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v5

    .line 39
    invoke-interface {p1}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v6

    .line 42
    new-instance v0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$1;-><init>(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;II)V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Callback;

    const/4 p0, 0x1

    .line 41
    invoke-static {v0, p0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p0

    const-string p1, "DiffUtil.calculateDiff(\n\u2026    },\n        true\n    )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final dispatchDiff(Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$dispatchDiff"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-interface {p0}, Landroidx/paging/NullPaddedList;->getPlaceholdersAfter()I

    move-result v0

    .line 120
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getPlaceholdersAfter()I

    move-result v1

    .line 121
    invoke-interface {p0}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v2

    .line 122
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result p2

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    .line 130
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    return-void

    :cond_0
    if-le v0, v1, :cond_1

    sub-int/2addr v0, v1

    .line 137
    invoke-interface {p0}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-interface {p1, p0, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    .line 139
    invoke-interface {p0}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result p0

    sub-int/2addr v1, v0

    invoke-interface {p1, p0, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    if-le v2, p2, :cond_3

    sub-int/2addr v2, p2

    .line 144
    invoke-interface {p1, p0, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    goto :goto_1

    :cond_3
    if-ge v2, p2, :cond_4

    sub-int v0, p2, v2

    .line 146
    invoke-interface {p1, p0, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 151
    new-instance p0, Landroidx/paging/OffsettingListUpdateCallback;

    invoke-direct {p0, p2, p1}, Landroidx/paging/OffsettingListUpdateCallback;-><init>(ILandroidx/recyclerview/widget/ListUpdateCallback;)V

    check-cast p0, Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-virtual {p3, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    goto :goto_2

    .line 153
    :cond_5
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    :goto_2
    return-void
.end method

.method public static final transformAnchorIndex(Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Landroidx/paging/NullPaddedList;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/NullPaddedList<",
            "*>;",
            "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
            "Landroidx/paging/NullPaddedList<",
            "*>;I)I"
        }
    .end annotation

    const-string v0, "$this$transformAnchorIndex"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-interface {p0}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v0

    sub-int v0, p3, v0

    .line 170
    invoke-interface {p0}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    goto :goto_2

    :cond_0
    if-le v1, v0, :cond_4

    const/16 v1, 0x1d

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v1, :cond_4

    .line 176
    div-int/lit8 v4, v3, 0x2

    rem-int/lit8 v5, v3, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    const/4 v7, -0x1

    :cond_1
    mul-int v4, v4, v7

    add-int/2addr v4, v0

    if-ltz v4, :cond_3

    .line 179
    invoke-interface {p0}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v5

    if-lt v4, v5, :cond_2

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->convertOldPositionToNew(I)I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 186
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result p0

    add-int/2addr v4, p0

    return v4

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    :cond_4
    :goto_2
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result p0

    invoke-static {v2, p0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p0

    check-cast p0, Lkotlin/ranges/ClosedRange;

    invoke-static {p3, p0}, Lkotlin/ranges/RangesKt;->coerceIn(ILkotlin/ranges/ClosedRange;)I

    move-result p0

    return p0
.end method
