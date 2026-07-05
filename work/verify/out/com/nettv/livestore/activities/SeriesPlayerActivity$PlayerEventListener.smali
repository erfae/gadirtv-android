.class Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;
.super Ljava/lang/Object;
.source "SeriesPlayerActivity.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/activities/SeriesPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerEventListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/SeriesPlayerActivity;Lcom/nettv/livestore/activities/SeriesPlayerActivity$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;-><init>(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)V

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
    .registers 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-virtual {p1}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->releasePlayer()V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    # invokes: Lcom/nettv/livestore/activities/SeriesPlayerActivity;->playNextEpisode()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->access$400(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)V

    goto :goto_40

    :cond_e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_25

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    const/4 v0, 0x0

    iput v0, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->error_count:I

    .line 4
    iget-object p1, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->image_rewind:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->image_forward:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_40

    :cond_25
    const/4 v0, 0x2

    if-ne p1, v0, :cond_40

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_40

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->hideInfoTicker:Lcom/nettv/livestore/activities/SeriesPlayerActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    # invokes: Lcom/nettv/livestore/activities/SeriesPlayerActivity;->listTimer()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->access$100(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public final synthetic onPlaybackSuppressionReasonChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 5
    .param p1    # Lcom/google/android/exoplayer2/PlaybackException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_2f

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->image_forward:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->image_rewind:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    invoke-virtual {p1}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->releasePlayer()V

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->resume_key:Ljava/lang/String;

    # invokes: Lcom/nettv/livestore/activities/SeriesPlayerActivity;->getLastPosition(Ljava/lang/String;)J
    invoke-static {p1, v0}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->access$500(Lcom/nettv/livestore/activities/SeriesPlayerActivity;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->last_position:J

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->contentUrl:Ljava/lang/String;

    iget-wide v1, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->last_position:J

    # invokes: Lcom/nettv/livestore/activities/SeriesPlayerActivity;->playVideo(Ljava/lang/String;J)V
    invoke-static {p1, v0, v1, v2}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->access$000(Lcom/nettv/livestore/activities/SeriesPlayerActivity;Ljava/lang/String;J)V

    goto :goto_4f

    .line 7
    :cond_2f
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget v0, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->error_count:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3f

    .line 8
    invoke-virtual {p1}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->releasePlayer()V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    # invokes: Lcom/nettv/livestore/activities/SeriesPlayerActivity;->showPlayErrorDlgFragment()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->access$600(Lcom/nettv/livestore/activities/SeriesPlayerActivity;)V

    goto :goto_4f

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    .line 10
    iput v0, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->error_count:I

    .line 11
    invoke-virtual {p1}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->releasePlayer()V

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/activities/SeriesPlayerActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/SeriesPlayerActivity;

    iget-object v0, p1, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->contentUrl:Ljava/lang/String;

    const-wide/16 v1, 0x0

    # invokes: Lcom/nettv/livestore/activities/SeriesPlayerActivity;->playVideo(Ljava/lang/String;J)V
    invoke-static {p1, v0, v1, v2}, Lcom/nettv/livestore/activities/SeriesPlayerActivity;->access$000(Lcom/nettv/livestore/activities/SeriesPlayerActivity;Ljava/lang/String;J)V

    :goto_4f
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
