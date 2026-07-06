.class public final Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    }
.end annotation


# instance fields
.field public final adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field public final adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field public final audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field public final availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

.field public final contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field public final contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field public final currentAdGroupIndex:I

.field public final currentAdIndexInAdGroup:I

.field public final currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

.field public final currentMediaItemIndex:I

.field public final deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

.field public final deviceVolume:I
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field public final discontinuityPositionMs:J

.field public final hasPositionDiscontinuity:Z

.field public final isDeviceMuted:Z

.field public final isLoading:Z

.field public final maxSeekToPreviousPositionMs:J

.field public final newlyRenderedFirstFrame:Z

.field public final playWhenReady:Z

.field public final playWhenReadyChangeReason:I

.field public final playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field public final playbackState:I

.field public final playbackSuppressionReason:I

.field public final playerError:Lcom/google/android/exoplayer2/PlaybackException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final playlist:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation
.end field

.field public final playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field public final positionDiscontinuityReason:I

.field public final repeatMode:I

.field public final seekBackIncrementMs:J

.field public final seekForwardIncrementMs:J

.field public final shuffleModeEnabled:Z

.field public final surfaceSize:Lcom/google/android/exoplayer2/util/Size;

.field public final timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public final timeline:Lcom/google/android/exoplayer2/Timeline;

.field public final totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

.field public final trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

.field public final videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field public final volume:F
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)V
    .locals 13

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v5, "Empty playlist only allowed in STATE_IDLE or STATE_ENDED"

    .line 6
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v5, "Ads not allowed if playlist is empty"

    .line 9
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    goto/16 :goto_8

    .line 10
    :cond_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v3, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    .line 11
    :cond_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v5

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    const-string v6, "currentMediaItemIndex must be less than playlist.size()"

    .line 12
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    move v8, v0

    .line 13
    :goto_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-eq v0, v3, :cond_9

    .line 14
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 15
    new-instance v11, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v11}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_5

    .line 18
    :cond_6
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v5

    :goto_5
    move-wide v9, v5

    .line 19
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v7

    move-object v12, v0

    .line 20
    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->access$800(Lcom/google/android/exoplayer2/Timeline;IJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v5

    .line 21
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupCount()I

    move-result v6

    if-ge v5, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    const-string v6, "PeriodData has less ad groups than adGroupIndex"

    .line 23
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v0

    if-eq v0, v3, :cond_9

    .line 25
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v5

    if-ge v5, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    const-string v5, "Ad group has less ads than adIndexInGroupIndex"

    .line 26
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 27
    :cond_9
    :goto_8
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 28
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v4, :cond_a

    const/4 v2, 0x1

    :cond_a
    const-string v0, "Player error only allowed in STATE_IDLE"

    .line 29
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 30
    :cond_b
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-eq v0, v4, :cond_c

    .line 31
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 32
    :cond_c
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v0

    xor-int/2addr v0, v4

    const-string v1, "isLoading only allowed when not in STATE_IDLE or STATE_ENDED"

    .line 33
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 34
    :cond_d
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    .line 35
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_f

    .line 36
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v3, :cond_e

    .line 37
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 39
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-nez v0, :cond_e

    .line 40
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-eqz v6, :cond_e

    .line 41
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    .line 42
    invoke-static {v0, v1, v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getExtrapolating(JF)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    goto :goto_9

    .line 43
    :cond_e
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    .line 44
    :cond_f
    :goto_9
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    .line 45
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 46
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v1

    if-eq v1, v3, :cond_10

    .line 47
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 48
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v1

    if-ne v1, v2, :cond_10

    .line 49
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v1

    if-nez v1, :cond_10

    .line 50
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getExtrapolating(JF)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    goto :goto_a

    .line 51
    :cond_10
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier$-CC;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    .line 52
    :cond_11
    :goto_a
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 53
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    .line 54
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    .line 55
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    .line 56
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    .line 57
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/PlaybackException;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    .line 58
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1800(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    .line 59
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    .line 60
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    .line 61
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    .line 62
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    .line 63
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    .line 64
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$1300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 65
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 66
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 67
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)F

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    .line 68
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 69
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/text/CueGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    .line 70
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2800(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    .line 71
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$2900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    .line 72
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    .line 73
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/util/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    .line 74
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3200(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    .line 75
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 76
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 77
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 78
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 79
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$500(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    .line 80
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    .line 81
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$400(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    .line 82
    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 83
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 84
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3600(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 85
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3700(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 86
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3800(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 87
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$3900(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    .line 88
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$4000(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    .line 89
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$4100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->discontinuityPositionMs:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    iget v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    iget v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    iget v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    iget v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 6
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 7
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 8
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    iget v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 9
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/video/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    .line 11
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    iget v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    .line 12
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 13
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/metadata/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 14
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 15
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iget v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    iget v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->discontinuityPositionMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->discontinuityPositionMs:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Player$Commands;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-wide v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-wide v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-wide v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/PlaybackParameters;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 16
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/VideoSize;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/DeviceInfo;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 20
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 21
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/Size;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 23
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 27
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 28
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 29
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 30
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 34
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 37
    iget-wide v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->discontinuityPositionMs:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method
