.class public Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SimilarMoviesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

.field private mContext:Landroid/content/Context;

.field private mSimilarMovies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field private vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field private vodCardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "similarMovies"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->mSimilarMovies:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->mSimilarMovies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public intentVodDetail()V
    .locals 3

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodTypeEnum()Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->FILM:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->vodCardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v1

    const-string v2, "vod_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->vodCardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v1

    const-string v2, "tv_show_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$0$SimilarMoviesAdapter(ILandroid/view/View;)V
    .locals 0

    .line 57
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->mSimilarMovies:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->vodCardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 58
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isAdult()Z

    move-result p1

    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->intentVodDetail()V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;->OnVodItemAdultListener()V

    :goto_0
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

    .line 27
    check-cast p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter$ViewHolder;I)V
    .locals 3
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

    .line 48
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->mSimilarMovies:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 51
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 52
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 53
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 56
    iget-object p1, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$SimilarMoviesAdapter$7wRNfUBj582aBxDBvPxXWqKasoc;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$SimilarMoviesAdapter$7wRNfUBj582aBxDBvPxXWqKasoc;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;I)V

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

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter$ViewHolder;
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

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0202

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->mContext:Landroid/content/Context;

    .line 43
    new-instance p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter$ViewHolder;

    invoke-direct {p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setOnItemClickListener(Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodItemAdultListener"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SimilarMoviesAdapter;->listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

    return-void
.end method
