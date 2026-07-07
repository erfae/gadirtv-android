.class public abstract Lcom/magoware/magoware/webtv/util/EndlessScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "EndlessScrollListener.java"


# instance fields
.field private currentPage:I

.field private loading:Z

.field mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private previousTotalItemCount:I

.field private startingPageIndex:I

.field private visibleThreshold:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutManager"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x5

    .line 11
    iput v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->visibleThreshold:I

    const/4 v1, 0x1

    .line 13
    iput v1, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->currentPage:I

    const/4 v2, 0x0

    .line 15
    iput v2, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->previousTotalItemCount:I

    .line 17
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->loading:Z

    .line 19
    iput v2, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->startingPageIndex:I

    .line 25
    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    mul-int v0, v0, p1

    iput v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->visibleThreshold:I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutManager"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x5

    .line 11
    iput v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->visibleThreshold:I

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->currentPage:I

    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->previousTotalItemCount:I

    .line 17
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->loading:Z

    .line 19
    iput v1, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->startingPageIndex:I

    .line 30
    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public getLastVisibleItem([I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastVisibleItemPositions"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    if-nez v0, :cond_0

    .line 38
    aget v1, p1, v0

    goto :goto_1

    .line 39
    :cond_0
    aget v2, p1, v0

    if-le v2, v1, :cond_1

    .line 40
    aget v1, p1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public abstract onLoadMore(IILandroidx/recyclerview/widget/RecyclerView;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "page",
            "totalItemsCount",
            "view"
        }
    .end annotation
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "dx",
            "dy"
        }
    .end annotation

    .line 52
    iget-object p2, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    .line 54
    iget-object p3, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    instance-of v0, p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    check-cast p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object p3

    .line 57
    invoke-virtual {p0, p3}, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->getLastVisibleItem([I)I

    move-result p3

    goto :goto_0

    .line 58
    :cond_0
    instance-of v0, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    .line 59
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    goto :goto_0

    .line 60
    :cond_1
    instance-of v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_2

    .line 61
    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 66
    :goto_0
    iget v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->previousTotalItemCount:I

    const/4 v2, 0x1

    if-ge p2, v0, :cond_3

    .line 67
    iget v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->startingPageIndex:I

    iput v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->currentPage:I

    .line 68
    iput p2, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->previousTotalItemCount:I

    if-nez p2, :cond_3

    .line 70
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->loading:Z

    .line 76
    :cond_3
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->loading:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->previousTotalItemCount:I

    if-le p2, v0, :cond_4

    .line 77
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->loading:Z

    .line 78
    iput p2, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->previousTotalItemCount:I

    .line 85
    :cond_4
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->loading:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->visibleThreshold:I

    add-int/2addr p3, v0

    if-le p3, p2, :cond_5

    .line 86
    iget p3, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->currentPage:I

    add-int/2addr p3, v2

    iput p3, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->currentPage:I

    .line 87
    invoke-virtual {p0, p3, p2, p1}, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->onLoadMore(IILandroidx/recyclerview/widget/RecyclerView;)V

    .line 88
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->loading:Z

    :cond_5
    return-void
.end method

.method public resetState()V
    .locals 1

    .line 94
    iget v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->startingPageIndex:I

    iput v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->currentPage:I

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->previousTotalItemCount:I

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/util/EndlessScrollListener;->loading:Z

    return-void
.end method
