.class Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;
.super Landroidx/leanback/widget/ObjectAdapter$DataObserver;
.source "ListRowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/ListRowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleDataObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/leanback/app/ListRowDataAdapter;


# direct methods
.method public constructor <init>(Landroidx/leanback/app/ListRowDataAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    invoke-direct {p0}, Landroidx/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0}, Landroidx/leanback/app/ListRowDataAdapter;->initialize()V

    const/16 v0, 0x10

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    return-void
.end method

.method public final onEventFired(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->notifyChanged()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid event type "

    .line 4
    invoke-static {p3, p1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0, p2, p3}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v0, p2, p3}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeChanged(II)V

    :goto_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    iget v0, v0, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    if-gt p1, v0, :cond_0

    const/4 v1, 0x2

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3
    invoke-virtual {p0, v1, p1, p2}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    iget v1, v0, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    const/4 v2, 0x4

    if-gt p1, v1, :cond_0

    add-int/2addr v1, p2

    .line 2
    iput v1, v0, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    .line 3
    invoke-virtual {p0, v2, p1, p2}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/leanback/app/ListRowDataAdapter;->initialize()V

    .line 5
    iget-object p1, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    iget p1, p1, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-virtual {p0, v2, v1, p1}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    :cond_1
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 4

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    .line 1
    iget-object v1, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    iget v2, v1, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    const/16 v3, 0x8

    if-ge v0, v2, :cond_0

    sub-int/2addr v2, p2

    .line 2
    iput v2, v1, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    .line 3
    invoke-virtual {p0, v3, p1, p2}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroidx/leanback/app/ListRowDataAdapter;->initialize()V

    .line 5
    iget-object p2, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    iget p2, p2, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    sub-int/2addr v2, p2

    if-lez v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 6
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    invoke-virtual {p0, v3, p1, v2}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    :cond_1
    return-void
.end method
