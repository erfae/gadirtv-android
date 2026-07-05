.class Landroidx/leanback/app/ListRowDataAdapter;
.super Landroidx/leanback/widget/ObjectAdapter;
.source "ListRowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;,
        Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;
    }
.end annotation


# static fields
.field public static final ON_CHANGED:I = 0x10

.field public static final ON_ITEM_RANGE_CHANGED:I = 0x2

.field public static final ON_ITEM_RANGE_INSERTED:I = 0x4

.field public static final ON_ITEM_RANGE_REMOVED:I = 0x8


# instance fields
.field private final mAdapter:Landroidx/leanback/widget/ObjectAdapter;

.field public final mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

.field public mLastVisibleRowIndex:I


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/ObjectAdapter;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroidx/leanback/widget/PresenterSelector;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/leanback/widget/ObjectAdapter;-><init>(Landroidx/leanback/widget/PresenterSelector;)V

    .line 2
    iput-object p1, p0, Landroidx/leanback/app/ListRowDataAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    .line 3
    invoke-virtual {p0}, Landroidx/leanback/app/ListRowDataAdapter;->initialize()V

    .line 4
    invoke-virtual {p1}, Landroidx/leanback/widget/ObjectAdapter;->isImmediateNotifySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;

    invoke-direct {v0, p0}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;-><init>(Landroidx/leanback/app/ListRowDataAdapter;)V

    iput-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroidx/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;

    invoke-direct {v0, p0}, Landroidx/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;-><init>(Landroidx/leanback/app/ListRowDataAdapter;)V

    iput-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/app/ListRowDataAdapter;->initialize()V

    .line 8
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/ObjectAdapter;->registerObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V

    return-void
.end method


# virtual methods
.method public final detach()V
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroidx/leanback/app/ListRowDataAdapter;->mDataObserver:Landroidx/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/ObjectAdapter;->unregisterObserver(Landroidx/leanback/widget/ObjectAdapter$DataObserver;)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final initialize()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    .line 2
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroidx/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/leanback/app/ListRowDataAdapter;->mAdapter:Landroidx/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/Row;

    .line 4
    invoke-virtual {v1}, Landroidx/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
