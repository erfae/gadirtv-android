.class public Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DashboardSeasonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMovies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;",
            ">;"
        }
    .end annotation
.end field

.field private mTvShow:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "movies",
            "tvShow",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;",
            ">;",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;->mMovies:Ljava/util/ArrayList;

    .line 31
    iput-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;->mTvShow:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 32
    iput-object p3, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;->mMovies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$DashboardSeasonAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;->mTvShow:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->getSeasonNumber()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->getVodTvShowsEpisodes(II)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;->mMovies:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;

    .line 47
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;->mTvShow:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 48
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 50
    iget-object v0, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter$ViewHolder;->vod_item_text:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter$ViewHolder;->vod_item_text:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object p1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardSeasonAdapter$o9yeLllkWE6aQAKFC5K39YLi8Ps;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardSeasonAdapter$o9yeLllkWE6aQAKFC5K39YLi8Ps;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;Lcom/magoware/magoware/webtv/network/mvvm/models/TvShowSeasons;)V

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e007f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance p2, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardSeasonAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
