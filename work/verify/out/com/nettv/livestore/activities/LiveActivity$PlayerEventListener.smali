.class Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;
.super Ljava/lang/Object;
.source "LiveActivity.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/activities/LiveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerEventListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/LiveActivity;


# direct methods
.method private constructor <init>(Lcom/nettv/livestore/activities/LiveActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/LiveActivity;Lcom/nettv/livestore/activities/LiveActivity$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;-><init>(Lcom/nettv/livestore/activities/LiveActivity;)V

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

    if-ne p1, v0, :cond_10

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    # invokes: Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/LiveActivity;->access$900(Lcom/nettv/livestore/activities/LiveActivity;)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v0, p1, Lcom/nettv/livestore/activities/LiveActivity;->content_url:Ljava/lang/String;

    # invokes: Lcom/nettv/livestore/activities/LiveActivity;->playVideo(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/nettv/livestore/activities/LiveActivity;->access$1000(Lcom/nettv/livestore/activities/LiveActivity;Ljava/lang/String;)V

    goto :goto_18

    :cond_10
    const/4 v0, 0x3

    if-ne p1, v0, :cond_18

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    const/4 v0, 0x0

    iput v0, p1, Lcom/nettv/livestore/activities/LiveActivity;->error_count:I

    :cond_18
    :goto_18
    return-void
.end method

.method public final synthetic onPlaybackSuppressionReasonChanged(I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 4

    .line 1
    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_13

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    # invokes: Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/LiveActivity;->access$900(Lcom/nettv/livestore/activities/LiveActivity;)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v0, p1, Lcom/nettv/livestore/activities/LiveActivity;->content_url:Ljava/lang/String;

    # invokes: Lcom/nettv/livestore/activities/LiveActivity;->playVideo(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/nettv/livestore/activities/LiveActivity;->access$1000(Lcom/nettv/livestore/activities/LiveActivity;Ljava/lang/String;)V

    goto :goto_34

    .line 4
    :cond_13
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget v0, p1, Lcom/nettv/livestore/activities/LiveActivity;->error_count:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_26

    .line 5
    # invokes: Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/LiveActivity;->access$900(Lcom/nettv/livestore/activities/LiveActivity;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object p1, p1, Lcom/nettv/livestore/activities/LiveActivity;->image_def:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_34

    :cond_26
    add-int/lit8 v0, v0, 0x1

    .line 7
    iput v0, p1, Lcom/nettv/livestore/activities/LiveActivity;->error_count:I

    .line 8
    # invokes: Lcom/nettv/livestore/activities/LiveActivity;->releaseMediaPlayer()V
    invoke-static {p1}, Lcom/nettv/livestore/activities/LiveActivity;->access$900(Lcom/nettv/livestore/activities/LiveActivity;)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/LiveActivity$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/LiveActivity;

    iget-object v0, p1, Lcom/nettv/livestore/activities/LiveActivity;->content_url:Ljava/lang/String;

    # invokes: Lcom/nettv/livestore/activities/LiveActivity;->playVideo(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/nettv/livestore/activities/LiveActivity;->access$1000(Lcom/nettv/livestore/activities/LiveActivity;Ljava/lang/String;)V

    :goto_34
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
