.class public Lcom/magoware/magoware/webtv/util/CustomConfigs;
.super Ljava/lang/Object;
.source "CustomConfigs.java"


# static fields
.field private static customConfigs:Lcom/magoware/magoware/webtv/util/CustomConfigs;


# instance fields
.field private catchupDelay:I

.field private displayShaderEPG:Z

.field private fontPath:Ljava/lang/String;

.field private hideNavigationBar:Z

.field private liveTvAspectRatio:I

.field private mustReadCompanyID:Z

.field private pauseButtonVisibility:I

.field private screenRotationEnabled:Z

.field private shouldSortEpisodes:Z

.field private showHomePageView:Z

.field private showTvHomePageView:Z

.field private signUpVisibility:I

.field private useModifiedCardPresenter:Z

.field private vodScreenOrientationEnable:Z

.field private vodTvAspectRatio:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 15
    iput v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->liveTvAspectRatio:I

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->vodTvAspectRatio:I

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->hideNavigationBar:Z

    const/16 v2, 0x8

    .line 18
    iput v2, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->pauseButtonVisibility:I

    .line 19
    iput v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->signUpVisibility:I

    .line 23
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->displayShaderEPG:Z

    .line 24
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->vodScreenOrientationEnable:Z

    .line 25
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->showHomePageView:Z

    .line 26
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->showTvHomePageView:Z

    .line 27
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->screenRotationEnabled:Z

    const/16 v2, 0x2ee0

    .line 28
    iput v2, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->catchupDelay:I

    const-string v2, "fonts/Avenir-Roman.ttf"

    .line 29
    iput-object v2, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->fontPath:Ljava/lang/String;

    .line 32
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GCN:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    .line 33
    iput v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->liveTvAspectRatio:I

    .line 34
    iput v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->vodTvAspectRatio:I

    .line 35
    iput v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->pauseButtonVisibility:I

    .line 36
    iput v3, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->signUpVisibility:I

    goto/16 :goto_1

    .line 38
    :cond_0
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->KOTT:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    iput v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->vodTvAspectRatio:I

    .line 40
    iput v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->liveTvAspectRatio:I

    .line 41
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->shouldSortEpisodes:Z

    goto :goto_1

    .line 43
    :cond_1
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->shouldSortEpisodes:Z

    .line 45
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->showHomePageView:Z

    goto :goto_1

    .line 48
    :cond_2
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->showTvHomePageView:Z

    goto :goto_1

    .line 49
    :cond_3
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 50
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->mustReadCompanyID:Z

    goto :goto_1

    .line 51
    :cond_4
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 52
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 53
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->showHomePageView:Z

    .line 54
    iput v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->vodTvAspectRatio:I

    goto :goto_0

    .line 57
    :cond_5
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->showTvHomePageView:Z

    .line 58
    :goto_0
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->useModifiedCardPresenter:Z

    .line 59
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->displayShaderEPG:Z

    .line 60
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->screenRotationEnabled:Z

    goto :goto_1

    .line 62
    :cond_6
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MDU1:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 63
    iput v3, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->signUpVisibility:I

    .line 64
    iput v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->liveTvAspectRatio:I

    .line 65
    iput v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->vodTvAspectRatio:I

    goto :goto_1

    .line 67
    :cond_7
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    .line 68
    :cond_8
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->LINEATV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 69
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->screenRotationEnabled:Z

    .line 73
    :cond_9
    :goto_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 74
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->hideNavigationBar:Z

    goto :goto_2

    .line 76
    :cond_a
    iput-boolean v1, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->screenRotationEnabled:Z

    :goto_2
    return-void
.end method

.method public static get()Lcom/magoware/magoware/webtv/util/CustomConfigs;
    .locals 1

    .line 81
    sget-object v0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->customConfigs:Lcom/magoware/magoware/webtv/util/CustomConfigs;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/magoware/magoware/webtv/util/CustomConfigs;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->customConfigs:Lcom/magoware/magoware/webtv/util/CustomConfigs;

    .line 84
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->customConfigs:Lcom/magoware/magoware/webtv/util/CustomConfigs;

    return-object v0
.end method


# virtual methods
.method public getCatchupDelay()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->catchupDelay:I

    return v0
.end method

.method public getFontPath()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->fontPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveTvAspectRatio()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->liveTvAspectRatio:I

    return v0
.end method

.method public getPauseButtonVisibility()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->pauseButtonVisibility:I

    return v0
.end method

.method public getSignUpVisibility()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->signUpVisibility:I

    return v0
.end method

.method public getVodAspectRatio()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->vodTvAspectRatio:I

    return v0
.end method

.method public isDisplayShaderEPG()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->displayShaderEPG:Z

    return v0
.end method

.method public isHomePageView()Ljava/lang/Boolean;
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->showHomePageView:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isMustReadCompanyID()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->mustReadCompanyID:Z

    return v0
.end method

.method public isScreenPortrait()Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isScreenRotationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenRotationEnabled()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->screenRotationEnabled:Z

    return v0
.end method

.method public isTvHomePageView()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->showTvHomePageView:Z

    return v0
.end method

.method public isVodScreenOrientationEnabled()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->vodScreenOrientationEnable:Z

    return v0
.end method

.method public shouldHideNavigationBar()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->hideNavigationBar:Z

    return v0
.end method

.method public shouldSortEpisodes()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->shouldSortEpisodes:Z

    return v0
.end method

.method public shouldUseModifiedCardPresenter()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/util/CustomConfigs;->useModifiedCardPresenter:Z

    return v0
.end method
