.class Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$1;
.super Ljava/lang/Object;
.source "ExoPlayerVodActivity.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 374
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onExperimentalOffloadSchedulingEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onExperimentalOffloadSchedulingEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLoading"
        }
    .end annotation

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackParameters"
        }
    .end annotation

    return-void
.end method

.method public synthetic onPlaybackStateChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playWhenReady",
            "playbackState"
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->finish()V

    goto :goto_0

    .line 397
    :cond_1
    iget-object p2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->access$000(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    .line 398
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->access$100(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x0

    const-string v2, "event"

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->logMovie(Ljava/lang/String;JLjava/lang/String;)V

    .line 399
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->access$002(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 403
    :cond_2
    :goto_0
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->LINEATV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 404
    :cond_3
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$1;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->access$200(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)V

    :cond_4
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatMode"
        }
    .end annotation

    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shuffleModeEnabled"
        }
    .end annotation

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeline",
            "manifest",
            "reason"
        }
    .end annotation

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trackGroups",
            "trackSelections"
        }
    .end annotation

    return-void
.end method
