.class Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;
.super Ljava/lang/Object;
.source "MoviePlayerActivity.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/activities/MoviePlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerEventListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;


# direct methods
.method private constructor <init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;Lcom/nettv/livestore/activities/MoviePlayerActivity$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;-><init>(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    return-void
.end method


# virtual methods
.method public final synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public final synthetic onAudioSessionIdChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public final synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public final synthetic onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public final synthetic onCues(Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public final synthetic onDeviceVolumeChanged(IZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public final synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public final synthetic onIsLoadingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onIsPlayingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onLoadingChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onMaxSeekToPreviousPositionChanged(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public final synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public final synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public final synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public final synthetic onPlayWhenReadyChanged(ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public final synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .registers 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    # invokes: Lcom/nettv/livestore/activities/MoviePlayerActivity;->releaseMediaPlayer()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->access$200(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object v0, p1, Lcom/nettv/livestore/activities/MoviePlayerActivity;->cont_url:Ljava/lang/String;

    const-wide/16 v1, 0x0

    # invokes: Lcom/nettv/livestore/activities/MoviePlayerActivity;->playVideo(Ljava/lang/String;J)V
    invoke-static {p1, v0, v1, v2}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->access$300(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/lang/String;J)V

    goto :goto_44

    :cond_12
    const/4 v0, 0x3

    if-ne p1, v0, :cond_29

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    const/4 v0, 0x0

    iput v0, p1, Lcom/nettv/livestore/activities/MoviePlayerActivity;->error_count:I

    .line 4
    iget-object p1, p1, Lcom/nettv/livestore/activities/MoviePlayerActivity;->image_forward:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/MoviePlayerActivity;->image_rewind:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_44

    :cond_29
    const/4 v0, 0x2

    if-ne p1, v0, :cond_44

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/MoviePlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_44

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object v0, p1, Lcom/nettv/livestore/activities/MoviePlayerActivity;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/nettv/livestore/activities/MoviePlayerActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/MoviePlayerActivity$$ExternalSyntheticLambda3;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    # invokes: Lcom/nettv/livestore/activities/MoviePlayerActivity;->listTimer()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->access$400(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public final synthetic onPlaybackSuppressionReasonChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 6

    .line 1
    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const-wide/16 v0, 0x0

    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_25

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/MoviePlayerActivity;->image_forward:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/MoviePlayerActivity;->image_rewind:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    # invokes: Lcom/nettv/livestore/activities/MoviePlayerActivity;->releaseMediaPlayer()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->access$200(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object v2, p1, Lcom/nettv/livestore/activities/MoviePlayerActivity;->cont_url:Ljava/lang/String;

    # invokes: Lcom/nettv/livestore/activities/MoviePlayerActivity;->playVideo(Ljava/lang/String;J)V
    invoke-static {p1, v2, v0, v1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->access$300(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/lang/String;J)V

    goto :goto_43

    .line 6
    :cond_25
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget v2, p1, Lcom/nettv/livestore/activities/MoviePlayerActivity;->error_count:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_35

    .line 7
    # invokes: Lcom/nettv/livestore/activities/MoviePlayerActivity;->releaseMediaPlayer()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->access$200(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    # invokes: Lcom/nettv/livestore/activities/MoviePlayerActivity;->showPlayErrorDlgFragment()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->access$500(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    goto :goto_43

    :cond_35
    add-int/lit8 v2, v2, 0x1

    .line 9
    iput v2, p1, Lcom/nettv/livestore/activities/MoviePlayerActivity;->error_count:I

    .line 10
    # invokes: Lcom/nettv/livestore/activities/MoviePlayerActivity;->releaseMediaPlayer()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->access$200(Lcom/nettv/livestore/activities/MoviePlayerActivity;)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/activities/MoviePlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/MoviePlayerActivity;

    iget-object v2, p1, Lcom/nettv/livestore/activities/MoviePlayerActivity;->cont_url:Ljava/lang/String;

    # invokes: Lcom/nettv/livestore/activities/MoviePlayerActivity;->playVideo(Ljava/lang/String;J)V
    invoke-static {p1, v2, v0, v1}, Lcom/nettv/livestore/activities/MoviePlayerActivity;->access$300(Lcom/nettv/livestore/activities/MoviePlayerActivity;Ljava/lang/String;J)V

    :goto_43
    return-void
.end method

.method public final synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public final synthetic onPlayerStateChanged(ZI)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public final synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public final synthetic onPositionDiscontinuity(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public final synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public final synthetic onRenderedFirstFrame()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public final synthetic onRepeatModeChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public final synthetic onSeekBackIncrementChanged(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public final synthetic onSeekForwardIncrementChanged(J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public final synthetic onSeekProcessed()V
    .registers 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public final synthetic onShuffleModeEnabledChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onSkipSilenceEnabledChanged(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onSurfaceSizeChanged(II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public final synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public final synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public final synthetic onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public final synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public final synthetic onVolumeChanged(F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method
