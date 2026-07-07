.class public Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;
.super Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBinding;
.source "ListItemMoviesBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/cardview/widget/CardView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root",
            "bindings"
        }
    .end annotation

    const/4 v0, 0x1

    .line 30
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;)V

    const-wide/16 v2, -0x1

    .line 135
    iput-wide v2, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mDirtyFlags:J

    .line 33
    iget-object p1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->feedMoviePoster:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 34
    aget-object p1, p3, v1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mboundView0:Landroidx/cardview/widget/CardView;

    .line 35
    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setTag(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 10

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 103
    iput-wide v2, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v4, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mClickListener:Landroid/view/View$OnClickListener;

    .line 106
    iget-object v5, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mHomeFeedMovies:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;

    const/4 v6, 0x0

    const-wide/16 v7, 0x5

    and-long/2addr v7, v0

    cmp-long v9, v7, v2

    const-wide/16 v7, 0x6

    and-long/2addr v0, v7

    cmp-long v7, v0, v2

    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    .line 117
    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->getPosterPath()Ljava/lang/String;

    move-result-object v6

    :cond_0
    if-eqz v7, :cond_1

    .line 124
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->feedMoviePoster:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/magoware/magoware/webtv/binding/BindingAdaptersKt;->bindImageFromUrl(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    if-eqz v9, :cond_2

    .line 129
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mboundView0:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v4}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 104
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 53
    monitor-exit p0

    return v0

    .line 55
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 43
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 44
    :try_start_0
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mDirtyFlags:J

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 45
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localFieldId",
            "object",
            "fieldId"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ClickListener"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mClickListener:Landroid/view/View$OnClickListener;

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mDirtyFlags:J

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 79
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->notifyPropertyChanged(I)V

    .line 80
    invoke-super {p0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 78
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHomeFeedMovies(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "HomeFeedMovies"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mHomeFeedMovies:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->mDirtyFlags:J

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 87
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->notifyPropertyChanged(I)V

    .line 88
    invoke-super {p0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 86
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variableId",
            "variable"
        }
    .end annotation

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 63
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->setClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne v0, p1, :cond_1

    .line 66
    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesBindingImpl;->setHomeFeedMovies(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
