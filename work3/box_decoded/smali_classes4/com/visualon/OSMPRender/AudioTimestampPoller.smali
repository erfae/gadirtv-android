.class final Lcom/visualon/OSMPRender/AudioTimestampPoller;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;
    }
.end annotation


# static fields
.field private static final ERROR_POLL_INTERVAL_US:I = 0x7a120

.field private static final FAST_POLL_INTERVAL_US:I = 0x1388

.field private static final INITIALIZING_DURATION_US:I = 0x7a120

.field public static final SDK_INT:I

.field private static final SLOW_POLL_INTERVAL_US:I = 0x989680

.field private static final STATE_ERROR:I = 0x4

.field private static final STATE_INITIALIZING:I = 0x0

.field private static final STATE_NO_TIMESTAMP:I = 0x3

.field private static final STATE_TIMESTAMP:I = 0x1

.field private static final STATE_TIMESTAMP_ADVANCING:I = 0x2


# instance fields
.field private final audioTimestamp:Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;

.field private initialTimestampPositionFrames:J

.field private initializeSystemTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private sampleIntervalUs:J

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_0
    sput v0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->SDK_INT:I

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget v0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 78
    new-instance v0, Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;

    invoke-direct {v0, p1}, Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->audioTimestamp:Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;

    .line 79
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->reset()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->audioTimestamp:Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;

    const/4 p1, 0x3

    .line 82
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->updateState(I)V

    :goto_0
    return-void
.end method

.method private updateState(I)V
    .locals 6

    .line 216
    iput p1, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->state:I

    const-wide/16 v0, 0x1388

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-wide/32 v0, 0x7a120

    .line 233
    iput-wide v0, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->sampleIntervalUs:J

    goto :goto_0

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    const-wide/32 v0, 0x989680

    .line 230
    iput-wide v0, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->sampleIntervalUs:J

    goto :goto_0

    .line 226
    :cond_2
    iput-wide v0, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->sampleIntervalUs:J

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    .line 220
    iput-wide v2, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    const-wide/16 v2, -0x1

    .line 221
    iput-wide v2, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 222
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->initializeSystemTimeUs:J

    .line 223
    iput-wide v0, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->sampleIntervalUs:J

    :goto_0
    return-void
.end method


# virtual methods
.method public acceptTimestamp()V
    .locals 2

    .line 168
    iget v0, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->reset()V

    :cond_0
    return-void
.end method

.method public getTimestampPositionFrames()J
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->audioTimestamp:Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getTimestampSystemTimeUs()J
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->audioTimestamp:Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;->getTimestampSystemTimeUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public hasTimestamp()Z
    .locals 3

    .line 179
    iget v0, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isTimestampAdvancing()Z
    .locals 2

    .line 189
    iget v0, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybePollTimestamp(J)Z
    .locals 7

    .line 99
    iget-object v0, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->audioTimestamp:Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-wide v2, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->sampleIntervalUs:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto/16 :goto_1

    .line 102
    :cond_0
    iput-wide p1, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 103
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;->maybeUpdateTimestamp()Z

    move-result v0

    .line 104
    iget v2, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->state:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    const/4 p1, 0x2

    if-eq v2, v4, :cond_4

    if-eq v2, p1, :cond_3

    if-eq v2, v3, :cond_2

    const/4 p1, 0x4

    if-ne v2, p1, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    if-eqz v0, :cond_8

    .line 142
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->reset()V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_8

    .line 136
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->reset()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 125
    iget-object p2, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->audioTimestamp:Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {p2}, Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v1

    .line 126
    iget-wide v3, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->initialTimestampPositionFrames:J

    cmp-long p2, v1, v3

    if-lez p2, :cond_8

    .line 127
    invoke-direct {p0, p1}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->updateState(I)V

    goto :goto_0

    .line 130
    :cond_5
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->reset()V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 107
    iget-object p1, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->audioTimestamp:Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {p1}, Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;->getTimestampSystemTimeUs()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->initializeSystemTimeUs:J

    cmp-long v5, p1, v2

    if-ltz v5, :cond_9

    .line 109
    iget-object p1, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->audioTimestamp:Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;

    invoke-virtual {p1}, Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 110
    invoke-direct {p0, v4}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->updateState(I)V

    goto :goto_0

    .line 115
    :cond_7
    iget-wide v1, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->initializeSystemTimeUs:J

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x7a120

    cmp-long v4, p1, v1

    if-lez v4, :cond_8

    .line 120
    invoke-direct {p0, v3}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->updateState(I)V

    :cond_8
    :goto_0
    move v1, v0

    :cond_9
    :goto_1
    return v1
.end method

.method public rejectTimestamp()V
    .locals 1

    const/4 v0, 0x4

    .line 160
    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->updateState(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/visualon/OSMPRender/AudioTimestampPoller;->audioTimestamp:Lcom/visualon/OSMPRender/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->updateState(I)V

    :cond_0
    return-void
.end method
