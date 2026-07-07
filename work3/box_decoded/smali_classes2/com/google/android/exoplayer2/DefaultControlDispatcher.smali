.class public Lcom/google/android/exoplayer2/DefaultControlDispatcher;
.super Ljava/lang/Object;
.source "DefaultControlDispatcher.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ControlDispatcher;


# static fields
.field public static final DEFAULT_FAST_FORWARD_MS:I = 0x3a98

.field public static final DEFAULT_REWIND_MS:I = 0x1388

.field private static final MAX_POSITION_FOR_SEEK_TO_PREVIOUS:I = 0xbb8


# instance fields
.field private fastForwardIncrementMs:J

.field private rewindIncrementMs:J

.field private final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x3a98

    const-wide/16 v2, 0x1388

    .line 38
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->fastForwardIncrementMs:J

    .line 51
    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->rewindIncrementMs:J

    .line 52
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    return-void
.end method

.method private static seekToOffset(Lcom/google/android/exoplayer2/Player;J)V
    .locals 5

    .line 177
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 178
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 180
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    .line 182
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 183
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    return-void
.end method


# virtual methods
.method public dispatchFastForward(Lcom/google/android/exoplayer2/Player;)Z
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->isFastForwardEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isCurrentWindowSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->fastForwardIncrementMs:J

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->seekToOffset(Lcom/google/android/exoplayer2/Player;J)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchNext(Lcom/google/android/exoplayer2/Player;)Z
    .locals 7

    .line 88
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v1

    .line 93
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getNextWindowIndex()I

    move-result v3

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v3, v4, :cond_1

    .line 95
    invoke-interface {p1, v3, v5, v6}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->isLive:Z

    if-eqz v0, :cond_2

    .line 97
    invoke-interface {p1, v1, v5, v6}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    :cond_2
    :goto_0
    return v2
.end method

.method public dispatchPrevious(Lcom/google/android/exoplayer2/Player;)Z
    .locals 8

    .line 69
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentWindowIndex()I

    move-result v1

    .line 74
    iget-object v3, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    .line 75
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getPreviousWindowIndex()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 77
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v3

    const-wide/16 v5, 0xbb8

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v3, :cond_2

    :cond_1
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    invoke-interface {p1, v0, v3, v4}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    .line 81
    invoke-interface {p1, v1, v3, v4}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    :cond_3
    :goto_0
    return v2
.end method

.method public dispatchRewind(Lcom/google/android/exoplayer2/Player;)Z
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->isRewindEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->isCurrentWindowSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->rewindIncrementMs:J

    neg-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->seekToOffset(Lcom/google/android/exoplayer2/Player;J)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSeekTo(Lcom/google/android/exoplayer2/Player;IJ)Z
    .locals 0

    .line 63
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/Player;->seekTo(IJ)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSetPlayWhenReady(Lcom/google/android/exoplayer2/Player;Z)Z
    .locals 0

    .line 57
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSetRepeatMode(Lcom/google/android/exoplayer2/Player;I)Z
    .locals 0

    .line 120
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setRepeatMode(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchSetShuffleModeEnabled(Lcom/google/android/exoplayer2/Player;Z)Z
    .locals 0

    .line 126
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setShuffleModeEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public dispatchStop(Lcom/google/android/exoplayer2/Player;Z)Z
    .locals 0

    .line 132
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->stop(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public getFastForwardIncrementMs()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->fastForwardIncrementMs:J

    return-wide v0
.end method

.method public getRewindIncrementMs()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->rewindIncrementMs:J

    return-wide v0
.end method

.method public isFastForwardEnabled()Z
    .locals 5

    .line 143
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->fastForwardIncrementMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRewindEnabled()Z
    .locals 5

    .line 138
    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->rewindIncrementMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFastForwardIncrementMs(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->fastForwardIncrementMs:J

    return-void
.end method

.method public setRewindIncrementMs(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultControlDispatcher;->rewindIncrementMs:J

    return-void
.end method
