.class Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;
.super Ljava/lang/Object;
.source "MovieMobilePlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerEventListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;


# direct methods
.method private constructor <init>(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;-><init>(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    return-void
.end method


# virtual methods
.method public final synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public final synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public final synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public final synthetic onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public final synthetic onCues(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public final synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;IZ)V

    return-void
.end method

.method public final synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public final synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public final synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public final synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public final synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public final synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public final synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {p1}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$200(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v0, p1, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->cont_url:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$300(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    const/4 v0, 0x0

    iput v0, p1, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->error_count:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object p1, p1, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->ly_control:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v0, p1, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->hideInfoTicker:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {p1}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$400(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 4

    .line 1
    iget p1, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const-wide/16 v0, 0x0

    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {p1}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$200(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v2, p1, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->cont_url:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$300(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;Ljava/lang/String;J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget v2, p1, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->error_count:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 5
    invoke-static {p1}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$200(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    .line 6
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {p1}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$500(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 7
    iput v2, p1, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->error_count:I

    .line 8
    invoke-static {p1}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$200(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$PlayerEventListener;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    iget-object v2, p1, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->cont_url:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1}, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->access$300(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public final synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public final synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/Player$Listener;ZI)V

    return-void
.end method

.method public final synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public final synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public final synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public final synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public final synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/Player$Listener;I)V

    return-void
.end method

.method public final synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public final synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/Player$Listener;J)V

    return-void
.end method

.method public final synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public final synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;II)V

    return-void
.end method

.method public final synthetic onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public final synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public final synthetic onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public final synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public final synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/Player$Listener;F)V

    return-void
.end method
