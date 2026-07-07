.class public Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DashboardEpisodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemClickListener;

.field mContext:Landroid/content/Context;

.field private mTvShows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private vodTvShows:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "movies",
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

    .line 42
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    move-object v0, p2

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 44
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->mTvShows:Ljava/util/ArrayList;

    .line 45
    iput-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getEpisodeDetail(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "episodeId"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowEpisodeDetail(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    new-instance v1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardEpisodeAdapter$QCjMlfDSFxxxeryPjKu4fZ21VfY;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardEpisodeAdapter$QCjMlfDSFxxxeryPjKu4fZ21VfY;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private playVideo()V
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->vodTvShows:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->vodTvShows:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 106
    iget-object v2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->vodTvShows:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "movieJson"

    .line 107
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    const v1, 0x7f140414

    .line 111
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const-string v1, "VOD"

    const-string v2, "2132018196"

    const-string v3, "testUrlNewVodMobile"

    const-string v4, "exoplayer"

    const-string v5, "-1"

    const-string v6, "-1"

    .line 115
    invoke-static/range {v1 .. v6}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logVodErrors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setTokenUrl()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->vodTvShows:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getTokenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getStreamToken(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardEpisodeAdapter$FyGwzCWke5en_5nu8ODXOYtshi0;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardEpisodeAdapter$FyGwzCWke5en_5nu8ODXOYtshi0;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->mTvShows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$getEpisodeDetail$1$DashboardEpisodeAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V
    .locals 1

    .line 92
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->vodTvShows:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 94
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->hasToken()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->setTokenUrl()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->playVideo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$0$DashboardEpisodeAdapter(ILandroid/view/View;)V
    .locals 0

    .line 63
    iget-object p2, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->mTvShows:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->getEpisodeDetail(I)V

    return-void
.end method

.method public synthetic lambda$setTokenUrl$2$DashboardEpisodeAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->vodTvShows:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->vodTvShows:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;->getExtraData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->setUrl(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->playVideo()V

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

    .line 35
    check-cast p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter$ViewHolder;I)V
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

    .line 56
    iget-object v0, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->mTvShows:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 58
    iget-object v1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter$ViewHolder;->vod_item_text:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 60
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 63
    iget-object p1, p1, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardEpisodeAdapter$MpYTa8L26PXJlGwm-rze125XAYE;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/-$$Lambda$DashboardEpisodeAdapter$MpYTa8L26PXJlGwm-rze125XAYE;-><init>(Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;I)V

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

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter$ViewHolder;
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

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e007f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    new-instance p2, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/adapter/DashboardEpisodeAdapter;->listener:Lcom/magoware/magoware/webtv/vod/mobile/activities/OnVodItemClickListener;

    return-void
.end method
