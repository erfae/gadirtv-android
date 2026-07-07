.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SearchActivity.java"


# instance fields
.field private isMovie:Z

.field mFragment:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;->isMovie:Z

    return-void
.end method

.method private addSpeechRecognitionCallback()V
    .locals 2

    .line 62
    new-instance v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchActivity$Fcr15OdqWv9_riJ-RRT0wEc2nlU;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$SearchActivity$Fcr15OdqWv9_riJ-RRT0wEc2nlU;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;)V

    .line 76
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;->mFragment:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->setSpeechRecognitionCallback(Landroidx/leanback/widget/SpeechRecognitionCallback;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 25
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$addSpeechRecognitionCallback$0$SearchActivity()V
    .locals 2

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;->mFragment:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->getRecognizerIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;->mFragment:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->isKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;->mFragment:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;->hideKeyboard()V

    return-void

    .line 48
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 30
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0044

    .line 31
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;->setContentView(I)V

    .line 33
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->GOTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_2

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0b057a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;->mFragment:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchFragment;

    .line 37
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isAmazonFireTv()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 38
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/SearchActivity;->addSpeechRecognitionCallback()V

    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 54
    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method
