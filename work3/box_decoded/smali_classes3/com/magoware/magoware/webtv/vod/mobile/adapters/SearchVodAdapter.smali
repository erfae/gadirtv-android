.class public Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchVodAdapter.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter$ViewHolder;",
        ">;",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/OnRecyclerItemClickListener;"
    }
.end annotation


# instance fields
.field private listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

.field private mContext:Landroid/content/Context;

.field private mSearchedMovies:Ljava/util/ArrayList;
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
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchedMovies",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->mSearchedMovies:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->mSearchedMovies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public intentVodDetail()V
    .locals 3

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->vodCardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    const-string v2, "vod_card"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$0$SearchVodAdapter(ILandroid/view/View;)V
    .locals 0

    .line 56
    iget-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->mSearchedMovies:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->vodCardSelected:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 57
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->isAdult()Z

    move-result p1

    if-nez p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->intentVodDetail()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

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

    .line 27
    check-cast p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter$ViewHolder;I)V
    .locals 2
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

    .line 48
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->mSearchedMovies:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 51
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 52
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 53
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 55
    iget-object p1, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$SearchVodAdapter$RYJgkVVpgoCe9ijr3zt_E-xpXUM;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$SearchVodAdapter$RYJgkVVpgoCe9ijr3zt_E-xpXUM;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter$ViewHolder;
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

    move-result-object p1

    .line 43
    new-instance p2, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "position"
        }
    .end annotation

    return-void
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

    .line 79
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/SearchVodAdapter;->listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemAdultListener;

    return-void
.end method
