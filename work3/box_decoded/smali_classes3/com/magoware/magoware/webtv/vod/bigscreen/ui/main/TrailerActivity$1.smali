.class Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity$1;
.super Ljava/lang/Object;
.source "TrailerActivity.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity;

.field final synthetic val$youtubeTrailerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$youtubeTrailerId"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity$1;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity$1;->val$youtubeTrailerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arg0",
            "arg1"
        }
    .end annotation

    .line 37
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity$1;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->getErrorDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "arg0",
            "youTubePlayer",
            "b"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 29
    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->setShowFullscreenButton(Z)V

    .line 30
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/TrailerActivity$1;->val$youtubeTrailerId:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->cueVideo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
