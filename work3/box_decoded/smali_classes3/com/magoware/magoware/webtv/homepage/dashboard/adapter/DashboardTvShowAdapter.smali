.class public Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DashboardTvShowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
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

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;->mMovies:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;->mMovies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$DashboardTvShowAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroid/view/View;)V
    .locals 2

    .line 54
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 55
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "vod_card"

    .line 57
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 59
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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
    check-cast p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter$ViewHolder;I)V
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

    .line 45
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;->mMovies:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 48
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 49
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 51
    iget-object v0, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter$ViewHolder;->vod_item_text:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object p1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardTvShowAdapter$pjuivru2NyoXlsQLTPcHxvjDSdU;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardTvShowAdapter$pjuivru2NyoXlsQLTPcHxvjDSdU;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter$ViewHolder;
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

    move-result-object p2

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter;->mContext:Landroid/content/Context;

    .line 40
    new-instance p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter$ViewHolder;

    invoke-direct {p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardTvShowAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
