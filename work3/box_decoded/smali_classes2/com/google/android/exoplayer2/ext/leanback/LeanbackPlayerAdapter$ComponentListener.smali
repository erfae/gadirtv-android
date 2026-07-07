.class final Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;
.super Ljava/lang/Object;
.source "LeanbackPlayerAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$EventListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/google/android/exoplayer2/video/VideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$1;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;)V

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

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

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

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 0

    .line 276
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->notifyStateChanged()V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 8

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->access$100(Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;)Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->access$100(Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;)Lcom/google/android/exoplayer2/util/ErrorMessageProvider;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/util/ErrorMessageProvider;->getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object p1

    .line 284
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/leanback/media/PlayerAdapter$Callback;->onError(Landroidx/leanback/media/PlayerAdapter;ILjava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    iget v2, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-static {v3}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->access$200(Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Landroidx/leanback/R$string;->lb_media_player_error:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->type:I

    .line 287
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget p1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->rendererIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v6

    .line 286
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/leanback/media/PlayerAdapter$Callback;->onError(Landroidx/leanback/media/PlayerAdapter;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$EventListener;ZI)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1

    .line 301
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object p1

    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-virtual {p1, v0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroidx/leanback/media/PlayerAdapter;)V

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-virtual {p1, v0}, Landroidx/leanback/media/PlayerAdapter$Callback;->onBufferedPositionChanged(Landroidx/leanback/media/PlayerAdapter;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$EventListener;I)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$EventListener;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/video/VideoListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/video/VideoListener;II)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    .line 293
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object p1

    .line 294
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-virtual {p1, p2}, Landroidx/leanback/media/PlayerAdapter$Callback;->onDurationChanged(Landroidx/leanback/media/PlayerAdapter;)V

    .line 295
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-virtual {p1, p2}, Landroidx/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroidx/leanback/media/PlayerAdapter;)V

    .line 296
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-virtual {p1, p2}, Landroidx/leanback/media/PlayerAdapter$Callback;->onBufferedPositionChanged(Landroidx/leanback/media/PlayerAdapter;)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$EventListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$EventListener;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    int-to-float p1, p1

    mul-float p1, p1, p4

    .line 314
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 315
    iget-object p3, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->getCallback()Landroidx/leanback/media/PlayerAdapter$Callback;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-virtual {p3, p4, p1, p2}, Landroidx/leanback/media/PlayerAdapter$Callback;->onVideoSizeChanged(Landroidx/leanback/media/PlayerAdapter;II)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 269
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ext/leanback/LeanbackPlayerAdapter;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method
