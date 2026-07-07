.class public Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MovieTrailerActivity.java"


# instance fields
.field private movieUrl:Ljava/lang/String;

.field youTubePlayerFragment:Lcom/google/android/youtube/player/YouTubePlayerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->movieUrl:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e00d1

    .line 24
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 28
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "4CbLXeGSDxg"

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "movieTrailer"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->movieUrl:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "v="

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->movieUrl:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_0
    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->movieUrl:Ljava/lang/String;

    goto :goto_0

    .line 35
    :cond_1
    iput-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->movieUrl:Ljava/lang/String;

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0b070e

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/youtube/player/YouTubePlayerFragment;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->youTubePlayerFragment:Lcom/google/android/youtube/player/YouTubePlayerFragment;

    .line 39
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 40
    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->youTubePlayerFragment:Lcom/google/android/youtube/player/YouTubePlayerFragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 41
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 43
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->youTubePlayerFragment:Lcom/google/android/youtube/player/YouTubePlayerFragment;

    new-instance v0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity$1;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;)V

    const-string v1, "AIzaSyBIzdS0RO7w963FQpHpMAZBO8i6_u7D2rU"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/youtube/player/YouTubePlayerFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 63
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerActivity;->youTubePlayerFragment:Lcom/google/android/youtube/player/YouTubePlayerFragment;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerFragment;->onDestroy()V

    return-void
.end method
