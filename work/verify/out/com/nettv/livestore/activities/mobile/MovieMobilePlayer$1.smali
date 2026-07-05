.class Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$1;
.super Ljava/lang/Object;
.source "MovieMobilePlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/AnalyticsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->playVideo(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;


# direct methods
.method public constructor <init>(Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$1;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public final synthetic onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public final synthetic onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public final synthetic onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public final synthetic onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public final synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public final synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public final synthetic onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioPositionAdvancing(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public final synthetic onAudioSessionIdChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public final synthetic onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioSinkError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAudioUnderrun(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public final synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public final synthetic onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onBandwidthEstimate(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public final synthetic onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public final synthetic onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic onDecoderDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public final synthetic onDecoderEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public final synthetic onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method

.method public final synthetic onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDecoderInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public final synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public final synthetic onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method public final synthetic onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDownstreamFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public final synthetic onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysLoaded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public final synthetic onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRemoved(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public final synthetic onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRestored(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public final synthetic onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public final synthetic onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public final synthetic onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionManagerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDrmSessionReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public final synthetic onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onDroppedVideoFrames(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V

    return-void
.end method

.method public final synthetic onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onEvents(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public final synthetic onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public final synthetic onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public final synthetic onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCanceled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public final synthetic onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadCompleted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public final synthetic onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final synthetic onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public final synthetic onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public final synthetic onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public final synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public final synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public final synthetic onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onMetadata(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public final synthetic onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public final synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public final synthetic onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public final synthetic onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public final synthetic onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public final synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public final synthetic onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public final synthetic onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public final synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public final synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public final synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public final synthetic onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    return-void
.end method

.method public final synthetic onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public final synthetic onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public final synthetic onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public final synthetic onSeekProcessed(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public final synthetic onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSeekStarted(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public final synthetic onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onShuffleModeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public final synthetic onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public final synthetic onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method public final synthetic onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public final synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public final synthetic onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method public final synthetic onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onUpstreamDiscarded(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    return-void
.end method

.method public final synthetic onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoCodecError(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public final synthetic onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public final synthetic onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderReleased(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoDisabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public final synthetic onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoEnabled(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public final synthetic onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoFrameProcessingOffset(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method public final synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public final synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public final synthetic onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V
    .registers 6
    .param p1    # Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/video/VideoSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$1;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Lcom/google/android/exoplayer2/video/VideoSize;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/google/android/exoplayer2/video/VideoSize;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;->resolution:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$1;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer$1;->this$0:Lcom/nettv/livestore/activities/mobile/MovieMobilePlayer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public final synthetic onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method
