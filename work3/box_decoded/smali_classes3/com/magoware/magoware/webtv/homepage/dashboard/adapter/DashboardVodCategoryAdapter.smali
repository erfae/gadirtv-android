.class public Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DashboardVodCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMovies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vodItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter;->mMovies:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter;->mMovies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$DashboardVodCategoryAdapter(ILandroid/view/View;)V
    .locals 2

    .line 53
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter;->mContext:Landroid/content/Context;

    const-class v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "vod_position"

    .line 54
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    iget-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter;->mContext:Landroid/content/Context;

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

    .line 26
    check-cast p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter$ViewHolder;I)V
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

    .line 44
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter;->mMovies:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;

    .line 47
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getVodIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 50
    iget-object v1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter$ViewHolder;->vod_category_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardVodCategoryAdapter$V5p8fj6355HQwRDW7FnAoYcKeHA;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardVodCategoryAdapter$V5p8fj6355HQwRDW7FnAoYcKeHA;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter;I)V

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

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter$ViewHolder;
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

    const v0, 0x7f0e007e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter;->mContext:Landroid/content/Context;

    .line 39
    new-instance p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter$ViewHolder;

    invoke-direct {p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardVodCategoryAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
