.class Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "TwoWayAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 3070
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/view/View;

    .line 3084
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$1000(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;)Ljava/util/ArrayList;
    .locals 0

    .line 3070
    iget-object p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;)[Ljava/util/ArrayList;
    .locals 0

    .line 3070
    iget-object p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;
    .locals 0

    .line 3070
    iget-object p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mRecyclerListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;

    return-object p0
.end method

.method static synthetic access$802(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;)Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;
    .locals 0

    .line 3070
    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mRecyclerListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;

    return-object p1
.end method

.method static synthetic access$900(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;)[Landroid/view/View;
    .locals 0

    .line 3070
    iget-object p0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-object p0
.end method

.method private pruneScrapViews()V
    .locals 11

    .line 3311
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    .line 3312
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    .line 3313
    iget-object v2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 3315
    aget-object v5, v2, v4

    .line 3316
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v7, v6, v0

    add-int/lit8 v6, v6, -0x1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    .line 3320
    iget-object v9, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v9, v6, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$1600(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/View;Z)V

    add-int/lit8 v8, v8, 0x1

    move v6, v10

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrap"
        }
    .end annotation

    .line 3231
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 3238
    :cond_0
    iget v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->viewType:I

    .line 3239
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 3241
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$1400(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/View;Z)V

    :cond_1
    return-void

    .line 3246
    :cond_2
    iget v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 3247
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 3248
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3250
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 3251
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3254
    :goto_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mRecyclerListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;

    if-eqz v0, :cond_4

    .line 3255
    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method clear()V
    .locals 8

    .line 3137
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3138
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 3141
    iget-object v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v4, v5, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$1200(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/View;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 3146
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    .line 3147
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_1

    .line 3149
    iget-object v6, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v6, v7, v1}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$1300(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/View;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method fillActiveViews(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "childCount",
            "firstActivePosition"
        }
    .end annotation

    .line 3163
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 3164
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3166
    :cond_0
    iput p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mFirstActivePosition:I

    .line 3168
    iget-object p2, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 3170
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3171
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    if-eqz v2, :cond_1

    .line 3173
    iget v2, v2, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->viewType:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    .line 3176
    aput-object v1, p2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 3189
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int/2addr p1, v0

    .line 3190
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    .line 3191
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 3192
    aget-object v2, v0, p1

    .line 3193
    aput-object v1, v0, p1

    return-object v2

    :cond_0
    return-object v1
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 3204
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3205
    iget-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3206
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sub-int/2addr v0, v2

    .line 3208
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_0
    return-object v1

    .line 3213
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 3214
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v3, v0

    if-ge p1, v3, :cond_2

    .line 3215
    aget-object p1, v0, p1

    .line 3216
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    sub-int/2addr v0, v2

    .line 3218
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public markChildrenDirty()V
    .locals 7

    .line 3111
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3112
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 3115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 3120
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    .line 3121
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_1

    .line 3123
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "views"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3329
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3330
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 3333
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3335
    aget-object v3, v1, v2

    .line 3336
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method scrapActiveViews()V
    .locals 9

    .line 3264
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3265
    iget-object v1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mRecyclerListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3266
    :goto_0
    iget v4, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    if-le v4, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 3268
    :goto_1
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3269
    array-length v6, v0

    sub-int/2addr v6, v3

    :goto_2
    if-ltz v6, :cond_5

    .line 3271
    aget-object v3, v0, v6

    if-eqz v3, :cond_4

    .line 3273
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;

    iget v7, v7, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$LayoutParams;->viewType:I

    const/4 v8, 0x0

    .line 3275
    aput-object v8, v0, v6

    .line 3277
    invoke-virtual {p0, v7}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, -0x2

    if-eq v7, v8, :cond_4

    .line 3280
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->this$0:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;

    invoke-static {v7, v3, v2}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;->access$1500(Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView;Landroid/view/View;Z)V

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_3

    .line 3286
    iget-object v5, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v5, v5, v7

    .line 3288
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 3289
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_4

    .line 3292
    iget-object v7, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mRecyclerListener:Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;

    invoke-interface {v7, v3}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 3303
    :cond_5
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->pruneScrapViews()V

    return-void
.end method

.method setCacheColorHint(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 3347
    iget v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3348
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3349
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 3351
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 3356
    iget-object v3, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    .line 3357
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_1

    .line 3359
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3364
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 3365
    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_4

    .line 3367
    aget-object v3, v0, v1

    if-eqz v3, :cond_3

    .line 3369
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewTypeCount"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 3101
    new-array v0, p1, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 3103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3105
    :cond_0
    iput p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mViewTypeCount:I

    .line 3106
    aget-object p1, v0, v1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 3107
    iput-object v0, p0, Lcom/magoware/magoware/webtv/adapters/TwoWayAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-void

    .line 3097
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t have a viewTypeCount < 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldRecycleViewType(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewType"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
