.class public Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DashboardLiveTvAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channels",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;->mChannels:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;->mChannels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$DashboardLiveTvAdapter(ILandroid/view/View;)V
    .locals 1

    .line 61
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;->mChannels:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    sput p1, Lcom/magoware/magoware/webtv/players/ChannelActivity;->current_category_id:I

    .line 63
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 64
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;->mContext:Landroid/content/Context;

    const-class v0, Lcom/magoware/magoware/webtv/players/ChannelActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    sget-object p2, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 67
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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

    .line 26
    check-cast p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter$ViewHolder;I)V
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

    .line 44
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;->mChannels:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    .line 47
    iget v1, v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    const/16 v2, 0x29a

    if-ne v1, v2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f080179

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v0, v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->icon:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 57
    :goto_0
    iget-object v0, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter$ViewHolder;->live_tv_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;->mChannels:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardLiveTvAdapter$4tUNuGk1fbt7dRLrNFOr6ZfqeZU;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardLiveTvAdapter$4tUNuGk1fbt7dRLrNFOr6ZfqeZU;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;I)V

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
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

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter$ViewHolder;
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

    const v0, 0x7f0e007d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance p2, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardLiveTvAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
