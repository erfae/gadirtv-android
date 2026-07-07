.class public Lcom/magoware/magoware/webtv/players/channelMenu/search/ChannelMenuSearchActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ChannelMenuSearchActivity.java"


# instance fields
.field private mFragment:Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ChannelMenuSearchActivity()V
    .locals 2

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/search/ChannelMenuSearchActivity;->mFragment:Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->getRecognizerIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/players/channelMenu/search/ChannelMenuSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
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

    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e006b

    .line 41
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/search/ChannelMenuSearchActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/search/ChannelMenuSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/search/ChannelMenuSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/channelMenu/search/ChannelMenuSearchActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0b057a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/channelMenu/search/ChannelMenuSearchActivity;->mFragment:Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;

    .line 45
    new-instance p1, Lcom/magoware/magoware/webtv/players/channelMenu/search/-$$Lambda$ChannelMenuSearchActivity$xz2YtCeMH0PwUdq1_ZsuovufDic;

    invoke-direct {p1, p0}, Lcom/magoware/magoware/webtv/players/channelMenu/search/-$$Lambda$ChannelMenuSearchActivity$xz2YtCeMH0PwUdq1_ZsuovufDic;-><init>(Lcom/magoware/magoware/webtv/players/channelMenu/search/ChannelMenuSearchActivity;)V

    .line 52
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/channelMenu/search/ChannelMenuSearchActivity;->mFragment:Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/channelMenu/search/SearchFragment;->setSpeechRecognitionCallback(Landroidx/leanback/widget/SpeechRecognitionCallback;)V

    return-void
.end method
