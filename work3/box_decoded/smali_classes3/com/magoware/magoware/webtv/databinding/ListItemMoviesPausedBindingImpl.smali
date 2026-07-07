.class public Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;
.super Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBinding;
.source "ListItemMoviesPausedBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView2:Landroidx/cardview/widget/CardView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0347

    const/4 v2, 0x5

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

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

    .line 30
    sget-object v0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9
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

    const/4 v0, 0x3

    .line 33
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    const-wide/16 v0, -0x1

    .line 153
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mDirtyFlags:J

    .line 39
    iget-object p1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->feedMoviePausedPoster:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object p1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->feedMovieTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 41
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 43
    aget-object p1, p3, p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mboundView2:Landroidx/cardview/widget/CardView;

    .line 44
    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->progressBar3:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 11

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 113
    iput-wide v2, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v4, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mClickListener:Landroid/view/View$OnClickListener;

    const/4 v5, 0x0

    .line 119
    iget-object v6, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mHomeFeedMoviesPaused:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;

    const-wide/16 v7, 0x5

    and-long/2addr v7, v0

    cmp-long v9, v7, v2

    const-wide/16 v7, 0x6

    and-long/2addr v0, v7

    const/4 v7, 0x0

    cmp-long v8, v0, v2

    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    .line 129
    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getBackdropPath()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v6}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;->getPercentagePosition()I

    move-result v5

    move-object v10, v7

    move-object v7, v0

    move-object v0, v10

    goto :goto_0

    :cond_0
    move-object v0, v7

    :goto_0
    if-eqz v8, :cond_1

    .line 140
    iget-object v1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->feedMoviePausedPoster:Landroid/widget/ImageView;

    invoke-static {v1, v7}, Lcom/magoware/magoware/webtv/binding/BindingAdaptersKt;->bindImageFromUrl(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->feedMovieTitle:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->progressBar3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    if-eqz v9, :cond_2

    .line 147
    iget-object v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mboundView2:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v4}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 114
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 63
    monitor-exit p0

    return v0

    .line 65
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

    .line 53
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 54
    :try_start_0
    iput-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mDirtyFlags:J

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 55
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

    .line 85
    iput-object p1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mClickListener:Landroid/view/View$OnClickListener;

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mDirtyFlags:J

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 89
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->notifyPropertyChanged(I)V

    .line 90
    invoke-super {p0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 88
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHomeFeedMoviesPaused(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "HomeFeedMoviesPaused"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mHomeFeedMoviesPaused:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x8

    .line 97
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->notifyPropertyChanged(I)V

    .line 98
    invoke-super {p0}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 96
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

    .line 73
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->setClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-ne v0, p1, :cond_1

    .line 76
    check-cast p2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;

    invoke-virtual {p0, p2}, Lcom/magoware/magoware/webtv/databinding/ListItemMoviesPausedBindingImpl;->setHomeFeedMoviesPaused(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
