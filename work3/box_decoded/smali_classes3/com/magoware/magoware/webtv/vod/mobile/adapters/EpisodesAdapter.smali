.class public Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EpisodesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final episodesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation
.end field

.field private final magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "episodesList",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    move-object v1, p2

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 49
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->sortEpisodeList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->episodesList:Ljava/util/List;

    .line 50
    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->context:Landroid/content/Context;

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

    .line 95
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowEpisodeDetail(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->context:Landroid/content/Context;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$EpisodesAdapter$3xcL3107DlFq9JjijxQhl8HXkw0;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$EpisodesAdapter$3xcL3107DlFq9JjijxQhl8HXkw0;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getRunTime()Ljava/lang/String;
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getRunTimeOfMovie()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getRunTimeOfMovie()I

    move-result v0

    div-int/lit8 v0, v0, 0x3c

    .line 82
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getRunTimeOfMovie()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3c

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "h "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private intentVisualon()V
    .locals 3

    .line 145
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/visualon/VisualonPlayerVod;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 147
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "movieJson"

    .line 148
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$sortEpisodeList$3(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)I
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getEpisodeNumber()I

    move-result p0

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getEpisodeNumber()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private playVideo()V
    .locals 7

    .line 108
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->visualOn:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isPlayer(Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->intentVisualon()V

    .line 113
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 115
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "movieJson"

    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f140414

    .line 120
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const-string v1, "VOD"

    const-string v2, "2132018196"

    const-string v3, "testUrlNewVodMobile"

    const-string v4, "exoplayer"

    const-string v5, "-1"

    const-string v6, "-1"

    .line 124
    invoke-static/range {v1 .. v6}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logVodErrors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setTokenUrl()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getTokenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getStreamToken(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->context:Landroid/content/Context;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$EpisodesAdapter$XT1y35OU8-teKtCjFoVcMYAoA6Q;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$EpisodesAdapter$XT1y35OU8-teKtCjFoVcMYAoA6Q;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private sortEpisodeList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unsortedList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/Card;",
            ">;"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$EpisodesAdapter$XF9aNoAwyTUd2KgvoExkJmzMg9M;->INSTANCE:Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$EpisodesAdapter$XF9aNoAwyTUd2KgvoExkJmzMg9M;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->episodesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$getEpisodeDetail$1$EpisodesAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V
    .locals 1

    .line 96
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 98
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->hasToken()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->setTokenUrl()V

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->playVideo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$0$EpisodesAdapter(ILandroid/view/View;)V
    .locals 2

    .line 69
    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->episodesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getId()I

    move-result v0

    const-string v1, "episode_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->episodesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "episode_title"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->episodesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getOverview()Ljava/lang/String;

    move-result-object p1

    const-string v0, "episode_description"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$setTokenUrl$2$EpisodesAdapter(Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;->getExtraData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

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

    .line 132
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->playVideo()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "i"
        }
    .end annotation

    .line 41
    check-cast p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "i"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->episodesList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 63
    iget-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;->episodeNumberText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 65
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;->episodeImage:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 68
    iget-object p1, p1, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;->episodeImage:Landroid/widget/ImageView;

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$EpisodesAdapter$M0ujPB8JJnPDL5ArgXfggwu35pg;

    invoke-direct {v0, p0, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/-$$Lambda$EpisodesAdapter$M0ujPB8JJnPDL5ArgXfggwu35pg;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
            "viewGroup",
            "i"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e01f1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter$ViewHolder;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/adapters/EpisodesAdapter;Landroid/view/View;)V

    return-object p2
.end method
