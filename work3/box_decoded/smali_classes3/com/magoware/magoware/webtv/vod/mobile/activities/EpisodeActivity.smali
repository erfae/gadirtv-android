.class public Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EpisodeActivity.java"


# static fields
.field public static final EPISODE_DESCRIPTION:Ljava/lang/String; = "episode_description"

.field public static final EPISODE_ID:Ljava/lang/String; = "episode_id"

.field public static final EPISODE_TITLE:Ljava/lang/String; = "episode_title"


# instance fields
.field public cancel:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0121
    .end annotation
.end field

.field public description:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0248
    .end annotation
.end field

.field extras:Landroid/os/Bundle;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field public playButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b04f9
    .end annotation
.end field

.field public title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b024c
    .end annotation
.end field

.field private vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getEpisodeDetail(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "episodeId"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getVodTvShowEpisodeDetail(I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$EpisodeActivity$Xc_wTkHavBO5julHQqqW2kyT7ZY;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$EpisodeActivity$Xc_wTkHavBO5julHQqqW2kyT7ZY;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private intentVisualon()V
    .locals 3

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magoware/magoware/webtv/visualon/VisualonPlayerVod;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 131
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "movieJson"

    .line 132
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private playVideo()V
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->visualOn:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isPlayer(Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->intentVisualon()V

    .line 102
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 104
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "movieJson"

    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f140414

    .line 109
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const-string v1, "VOD"

    const-string v2, "2132018196"

    const-string v3, "testUrlNewVodMobile"

    const-string v4, "exoplayer"

    const-string v5, "-1"

    const-string v6, "-1"

    .line 113
    invoke-static/range {v1 .. v6}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logVodErrors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->finish()V

    return-void
.end method

.method private setTokenUrl()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->getTokenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getStreamToken(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$EpisodeActivity$Fuoul8U-fy8j49x5nHoBpMgR8xg;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$EpisodeActivity$Fuoul8U-fy8j49x5nHoBpMgR8xg;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$getEpisodeDetail$0$EpisodeActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;)V
    .locals 1

    .line 83
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodInformation;->getVodItems()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    .line 85
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;->hasToken()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->setTokenUrl()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->playVideo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$setTokenUrl$1$EpisodeActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card;->getVodStream()Lcom/magoware/magoware/webtv/network/mvvm/models/VodStream;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->vodCard:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

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

    .line 124
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->playVideo()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onButtonClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0b04f9,
            0x7f0b0121
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0121

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b04f9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->extras:Landroid/os/Bundle;

    const-string v0, "episode_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->getEpisodeDetail(I)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e002e

    .line 51
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->setContentView(I)V

    .line 53
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 54
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->extras:Landroid/os/Bundle;

    .line 55
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 56
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->extras:Landroid/os/Bundle;

    const-string v1, "episode_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->description:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->extras:Landroid/os/Bundle;

    const-string v1, "episode_description"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->playButton:Landroid/widget/Button;

    const v0, 0x7f140332

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 59
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->cancel:Landroid/widget/Button;

    const v0, 0x7f140083

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    return-void
.end method
