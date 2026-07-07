.class public Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VodAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemClickListener;

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

.field private verticalPosition:I


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

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;->mMovies:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;->mMovies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$VodAdapter(Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroid/view/View;)V
    .locals 1

    .line 57
    iget-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;->listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemClickListener;

    if-eqz p3, :cond_0

    .line 58
    iget v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;->verticalPosition:I

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p3, v0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemClickListener;->OnVodItemClickListener(IILcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    :cond_0
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
    check-cast p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;I)V
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
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;->mMovies:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 47
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 48
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const v1, 0x7f0803e8

    .line 49
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 51
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 53
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 56
    iget-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$VodAdapter$q5IMV-xMUFm3eSPLnaPh7Gz1Vqc;

    invoke-direct {v1, p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$VodAdapter$q5IMV-xMUFm3eSPLnaPh7Gz1Vqc;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;
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

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0201

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;->mContext:Landroid/content/Context;

    .line 39
    new-instance p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;

    invoke-direct {p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setOnItemClickListener(Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemClickListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "verticalPosition"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;->listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemClickListener;

    .line 70
    iput p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/VodAdapter;->verticalPosition:I

    return-void
.end method
