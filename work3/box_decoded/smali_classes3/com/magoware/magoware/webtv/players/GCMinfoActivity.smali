.class public Lcom/magoware/magoware/webtv/players/GCMinfoActivity;
.super Lcom/magoware/magoware/webtv/activities/CustomActivity;
.source "GCMinfoActivity.java"


# static fields
.field public static CHANNEL_NUMBER:Ljava/lang/String;

.field public static openScheduledPinProtected:Ljava/lang/Boolean;


# instance fields
.field EVENT:Ljava/lang/String;

.field EVENT_TIME:Ljava/lang/String;

.field PROGRAM_ID:Ljava/lang/String;

.field private SHOW_CUSTOM_DIALOG_TAG:Ljava/lang/String;

.field avenirHeavy:Landroid/graphics/Typeface;

.field avenirLight:Landroid/graphics/Typeface;

.field avenirMedium:Landroid/graphics/Typeface;

.field avenirRoman:Landroid/graphics/Typeface;

.field private cancel_button:Landroid/widget/Button;

.field private channelObject:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

.field desc:Landroid/widget/TextView;

.field private gcmRoot:Landroid/widget/RelativeLayout;

.field private gcmRootConstraint:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private gotTo_button:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;

.field private info_message_txt:Landroid/widget/TextView;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field program_description:Ljava/lang/String;

.field program_name:Ljava/lang/String;

.field private standart_fade_in_animation:Landroid/view/animation/Animation;

.field private standart_fade_out_animation:Landroid/view/animation/Animation;

.field title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->openScheduledPinProtected:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->handler:Landroid/os/Handler;

    .line 70
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Avenir-Medium.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->avenirMedium:Landroid/graphics/Typeface;

    .line 71
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Avenir-Heavy.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->avenirHeavy:Landroid/graphics/Typeface;

    .line 72
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Avenir-Roman.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->avenirRoman:Landroid/graphics/Typeface;

    .line 73
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/avenir-light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->avenirLight:Landroid/graphics/Typeface;

    const-string v0, "show_custom_dialog_tag"

    .line 74
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->SHOW_CUSTOM_DIALOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private getSpannableDesc()Landroid/text/Spannable;
    .locals 5

    .line 262
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f14011a

    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->program_description:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 263
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method static synthetic lambda$onCreate$0(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public handleScheduleOutsideLive()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 229
    :try_start_0
    sget-object v3, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->CHANNEL_NUMBER:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->channel_to_be_played:I

    .line 230
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->CHANNEL_NUMBER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sput-object v1, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->CHANNEL_NUMBER:Ljava/lang/String;

    .line 232
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->openScheduledPinProtected:Ljava/lang/Boolean;

    .line 233
    sput-boolean v2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    .line 235
    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 239
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 242
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/magoware/magoware/webtv/homepage/smarttv/MainActivity2SmartTv;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 243
    :cond_3
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 244
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/magoware/magoware/webtv/homepage/smarttv/MainActivity2SmartTv;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 245
    :cond_4
    sget-object v3, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v3}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 246
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 248
    :cond_5
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const/high16 v4, 0x4000000

    .line 250
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const v3, 0x7f140493

    .line 254
    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 255
    sput-object v1, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->CHANNEL_NUMBER:Ljava/lang/String;

    .line 256
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->openScheduledPinProtected:Ljava/lang/Boolean;

    .line 257
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->finish()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onCreate$1$GCMinfoActivity()V
    .locals 2

    .line 151
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->exoplayer:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isPlayer(Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerActivity;->setPlayOnPauseActivity(Z)V

    goto :goto_0

    .line 153
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->visualOn:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isPlayer(Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setPlayOnPauseActivity(Z)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 156
    sput-object v0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->CHANNEL_NUMBER:Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreate$2$GCMinfoActivity(Landroid/view/View;)V
    .locals 3

    .line 168
    sget-boolean p1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->defaultOrExo:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 170
    :try_start_0
    sget-object v2, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->CHANNEL_NUMBER:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->channel_to_be_played:I

    .line 171
    sput-object v0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->CHANNEL_NUMBER:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->openScheduledPinProtected:Ljava/lang/Boolean;

    .line 173
    sput-boolean v1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->fromGcminfoactivity:Z

    .line 174
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v2, 0x7f140493

    .line 176
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 177
    sput-object v0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->CHANNEL_NUMBER:Ljava/lang/String;

    .line 178
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->openScheduledPinProtected:Ljava/lang/Boolean;

    .line 179
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->finish()V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->handleScheduleOutsideLive()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onCreate$3$GCMinfoActivity(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 187
    sput-object p1, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->CHANNEL_NUMBER:Ljava/lang/String;

    const/4 p1, 0x0

    .line 188
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->openScheduledPinProtected:Ljava/lang/Boolean;

    .line 189
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EVENT"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->EVENT:Ljava/lang/String;

    const-string v0, "PROGRAM_ID"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->PROGRAM_ID:Ljava/lang/String;

    const-string v0, "CHANNEL_NUMBER"

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->CHANNEL_NUMBER:Ljava/lang/String;

    const-string v0, "EVENT_TIME"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->EVENT_TIME:Ljava/lang/String;

    const-string v0, "program_name"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->program_name:Ljava/lang/String;

    const-string v0, "program_description"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->program_description:Ljava/lang/String;

    .line 96
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 97
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->requestWindowFeature(I)Z

    const p1, 0x7f01003a

    .line 100
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->standart_fade_in_animation:Landroid/view/animation/Animation;

    const p1, 0x7f01003b

    .line 101
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->standart_fade_out_animation:Landroid/view/animation/Animation;

    .line 103
    sget-boolean p1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->defaultOrExo:Z

    const v0, 0x7f0b054e

    if-eqz p1, :cond_1

    const p1, 0x7f0e00d3

    .line 104
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->setContentView(I)V

    .line 105
    sget-object p1, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->CHANNEL_NUMBER:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->channelObject:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 106
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->gcmRootConstraint:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 107
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->standart_fade_in_animation:Landroid/view/animation/Animation;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/util/Utils;->setViewVisibleWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    const p1, 0x7f0b0156

    .line 108
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0b015c

    .line 109
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->channelObject:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->avenirMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 115
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const v1, 0x7f080347

    .line 116
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 118
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->channelObject:Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->gcmRootConstraint:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->standart_fade_in_animation:Landroid/view/animation/Animation;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/util/Utils;->setViewVisibleWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0e00d2

    .line 125
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->setContentView(I)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->gcmRoot:Landroid/widget/RelativeLayout;

    .line 127
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->standart_fade_in_animation:Landroid/view/animation/Animation;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/util/Utils;->setViewVisibleWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V

    :goto_0
    const p1, 0x7f0b065f

    .line 130
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->title:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->avenirMedium:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0b01e7

    .line 132
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->desc:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->avenirLight:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->PROGRAM_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->scheduleProgramObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$GCMinfoActivity$lfvWeFB3mN_2zwNv_U94fVg26IA;->INSTANCE:Lcom/magoware/magoware/webtv/players/-$$Lambda$GCMinfoActivity$lfvWeFB3mN_2zwNv_U94fVg26IA;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 139
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->program_name:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 140
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->title:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f140450

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->program_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->program_description:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 143
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->desc:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->getSpannableDesc()Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->desc:Landroid/widget/TextView;

    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 148
    :cond_3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 150
    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$GCMinfoActivity$x_fUgDcHBFR6k9RoRPOAmLKz76k;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$GCMinfoActivity$x_fUgDcHBFR6k9RoRPOAmLKz76k;-><init>(Lcom/magoware/magoware/webtv/players/GCMinfoActivity;)V

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->EVENT_TIME:Ljava/lang/String;

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    .line 150
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const p1, 0x7f0b02e7

    .line 161
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->gotTo_button:Landroid/widget/Button;

    .line 162
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->avenirLight:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->gotTo_button:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    const p1, 0x7f0b0120

    .line 164
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->cancel_button:Landroid/widget/Button;

    .line 165
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->avenirLight:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->gotTo_button:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$GCMinfoActivity$SgAlHnnvgFclcCS6zZtfvn9i4FY;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$GCMinfoActivity$SgAlHnnvgFclcCS6zZtfvn9i4FY;-><init>(Lcom/magoware/magoware/webtv/players/GCMinfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->cancel_button:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$GCMinfoActivity$bQF339q9nOBxVuuZVEtSKiKD1b4;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$GCMinfoActivity$bQF339q9nOBxVuuZVEtSKiKD1b4;-><init>(Lcom/magoware/magoware/webtv/players/GCMinfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 80
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const/4 p1, 0x0

    .line 214
    sput-object p1, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->CHANNEL_NUMBER:Ljava/lang/String;

    .line 215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->openScheduledPinProtected:Ljava/lang/Boolean;

    .line 216
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/GCMinfoActivity;->finish()V

    return v1

    :cond_0
    const/16 v2, 0x17

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x42

    if-ne p1, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    or-int/2addr v0, v2

    if-eqz v0, :cond_3

    return v1

    .line 223
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 202
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onPause()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 207
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onStop()V

    return-void
.end method
