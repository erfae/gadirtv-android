.class Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment$1;
.super Ljava/lang/Object;
.source "MovieTrailerFragment.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment$1;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 0
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

    .line 54
    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->setShowFullscreenButton(Z)V

    .line 55
    iget-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment$1;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;->access$000(Lcom/magoware/magoware/webtv/vod/mobile/fragments/MovieTrailerFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->cueVideo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
