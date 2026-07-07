.class public Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;
.super Landroidx/fragment/app/Fragment;
.source "MovieTrailerFragment.java"


# instance fields
.field private movieUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;->movieUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movieUrl"
        }
    .end annotation

    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    new-instance v1, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;-><init>()V

    const-string v2, "movieTrailer"

    .line 24
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e00d1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "movieTrailer"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;->movieUrl:Ljava/lang/String;

    const-string p3, "v="

    .line 41
    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;->movieUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, "4CbLXeGSDxg"

    .line 42
    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;->movieUrl:Ljava/lang/String;

    .line 44
    :goto_0
    invoke-static {}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->newInstance()Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;

    move-result-object p2

    .line 46
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    const v0, 0x7f0b070e

    .line 47
    invoke-virtual {p3, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 48
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 50
    new-instance p3, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment$1;

    invoke-direct {p3, p0}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment$1;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;)V

    const-string v0, "AIzaSyBIzdS0RO7w963FQpHpMAZBO8i6_u7D2rU"

    invoke-virtual {p2, v0, p3}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    return-object p1
.end method
