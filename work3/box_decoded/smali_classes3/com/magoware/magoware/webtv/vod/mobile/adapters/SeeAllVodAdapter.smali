.class public Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SeeAllVodAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

.field private mContext:Landroid/content/Context;

.field private mMovies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field private vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field private vodCardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movies"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->mMovies:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->mMovies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public intentVodDetail()V
    .locals 3

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->vodCardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    const-string v2, "vod_card"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$0$SeeAllVodAdapter(ILandroid/view/View;)V
    .locals 0

    .line 64
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->mMovies:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->vodCardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 65
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isAdult()Z

    move-result p1

    if-nez p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->intentVodDetail()V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;->OnVodItemAdultListener()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->mMovies:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 52
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 53
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const v1, 0x7f0803e8

    .line 54
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 56
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 58
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 59
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 63
    iget-object p1, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$SeeAllVodAdapter$sKoyopsNl28SSgxFMJDzdtwCb_U;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$SeeAllVodAdapter$sKoyopsNl28SSgxFMJDzdtwCb_U;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;I)V

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

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;
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

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0202

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->mContext:Landroid/content/Context;

    .line 44
    new-instance p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;

    invoke-direct {p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter$ViewHolder;-><init>(Landroid/view/View;)V

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

    .line 87
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SeeAllVodAdapter;->listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

    return-void
.end method
