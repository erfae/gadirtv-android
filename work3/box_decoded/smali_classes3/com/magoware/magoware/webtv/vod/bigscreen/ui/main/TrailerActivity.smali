.class public Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity;
.super Lcom/google/android/youtube/player/YouTubeBaseActivity;
.source "TrailerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 19
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e003e

    .line 20
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "trailer_id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0b070f

    .line 24
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubePlayerView;

    .line 25
    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity$1;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity;Ljava/lang/String;)V

    const-string p1, "AIzaSyBIzdS0RO7w963FQpHpMAZBO8i6_u7D2rU"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    return-void
.end method
