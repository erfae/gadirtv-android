.class public Lcom/visualon/OSMPRender/voAudioDSPClock;
.super Ljava/lang/Object;
.source "voAudioDSPClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;
    }
.end annotation


# static fields
.field private static final IS_DNA_TV:Z

.field private static final MAX_AUDIO_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEADPOS_OFFSET_CNT:I = 0xa

.field private static final MIN_PLAYHEADPOS_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "@@@voAudioDSPClock"

.field private static final TIME_UNSET:J = -0x7fffffffffffffffL

.field private static mLastErrorPlaybackPosTime:J

.field private static mRecordErrorPlaybackPosNum:I


# instance fields
.field private audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;

.field private mAC3Bitrate:I

.field private mAfterFlushTask:Ljava/util/TimerTask;

.field private mAudioTimestamp:Ljava/lang/Object;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAvailableCheckHeadPos:Z

.field private mBufferSize:I

.field private mChannelCnt:I

.field private mDSPTime:J

.field private mForceResetWorkaroundTimeMs:J

.field private mGetLatencyMethod:Ljava/lang/reflect/Method;

.field private mGetPlaybackHeadPosition:Ljava/lang/reflect/Method;

.field private mHeadPositionOffsetCnt:I

.field private mHeadPositionOffsets:[J

.field private mHeadWrapCnt:J

.field private mIsAC3:Z

.field private mIsUseTimer:Z

.field private mLastFramePosition:J

.field private mLastGetHeadPositionSampleTimeUs:J

.field private mLastRawHeadPosition:J

.field private mLatencyTimeUs:J

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNextHeadPositionOffsetIndex:I

.field private mRecordHeadPosUs:J

.field private mSampleRate:I

.field private mSmoothedHeadPositionOffsetUs:J

.field private mTimer:Ljava/util/Timer;

.field private mTimerDuration:I

.field private mTimerTask:Ljava/util/TimerTask;

.field public mbIsBuffering:Z

.field private onPlaybackHeadPosErrorListener:Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "DNA Android TV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/visualon/OSMPRender/voAudioDSPClock;->IS_DNA_TV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v0, "@@@voAudioDSPClock"

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    const v2, 0xbb80

    .line 32
    iput v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSampleRate:I

    const/4 v2, 0x2

    .line 33
    iput v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mChannelCnt:I

    .line 53
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetLatencyMethod:Ljava/lang/reflect/Method;

    .line 54
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetPlaybackHeadPosition:Ljava/lang/reflect/Method;

    .line 65
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTimestamp:Ljava/lang/Object;

    .line 68
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 69
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    .line 70
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimerTask:Ljava/util/TimerTask;

    .line 71
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAfterFlushTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    .line 72
    iput-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mDSPTime:J

    const/16 v4, 0x23

    .line 73
    iput v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimerDuration:I

    const/4 v4, 0x0

    .line 74
    iput-boolean v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsUseTimer:Z

    const/4 v5, 0x1

    .line 75
    iput-boolean v5, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAvailableCheckHeadPos:Z

    .line 76
    iput-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mRecordHeadPosUs:J

    .line 78
    iput-boolean v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mbIsBuffering:Z

    .line 150
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 151
    new-instance v2, Landroid/media/AudioTimestamp;

    invoke-direct {v2}, Landroid/media/AudioTimestamp;-><init>()V

    .line 152
    iput-object v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTimestamp:Ljava/lang/Object;

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 155
    iput-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mForceResetWorkaroundTimeMs:J

    const/16 v2, 0xa

    new-array v2, v2, [J

    .line 156
    iput-object v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsets:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :try_start_1
    const-class v2, Landroid/media/AudioTrack;

    const-string v3, "getPlaybackHeadPosition"

    move-object v5, v1

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetPlaybackHeadPosition:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Android AudioTrack getPlaybackHeadPosition method does not supported on the device."

    new-array v3, v4, [Ljava/lang/Object;

    .line 163
    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_1
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    .line 170
    :try_start_3
    const-class v2, Landroid/media/AudioTrack;

    const-string v3, "getLatency"

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 173
    :catch_1
    :try_start_4
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Android AudioTrack getLatency method does not supported on the device."

    new-array v2, v4, [Ljava/lang/Object;

    .line 174
    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method static synthetic access$000(Lcom/visualon/OSMPRender/voAudioDSPClock;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->setDSPTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/visualon/OSMPRender/voAudioDSPClock;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->waitForPlay()V

    return-void
.end method

.method private bytesToFrames(J)J
    .locals 3

    .line 333
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsAC3:Z

    if-eqz v0, :cond_1

    .line 334
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAC3Bitrate:I

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x8

    mul-long p1, p1, v1

    iget v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSampleRate:I

    int-to-long v1, v1

    mul-long p1, p1, v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p1, v0

    :goto_0
    return-wide p1

    .line 337
    :cond_1
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mChannelCnt:I

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private convertDurationUsToFrames(J)J
    .locals 2

    .line 577
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSampleRate:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private framesToDurationUs(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 573
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private static getAC3Bitrate(II)I
    .locals 2

    mul-int/lit8 p0, p0, 0x8

    mul-int p0, p0, p1

    const p1, 0x177000

    .line 343
    div-int/2addr p0, p1

    int-to-double p0, p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private getAudioTimestampFramePosition()J
    .locals 2

    .line 590
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastFramePosition:J

    return-wide v0
.end method

.method private getAudioTimestampNanoTime()J
    .locals 2

    .line 582
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTimestamp:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 583
    check-cast v0, Landroid/media/AudioTimestamp;

    .line 584
    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private getHeadPos()J
    .locals 10

    .line 424
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    return-wide v2

    .line 431
    :cond_0
    iget-object v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetPlaybackHeadPosition:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    const-wide v5, 0xffffffffL

    const/4 v7, 0x0

    .line 433
    :try_start_0
    iget-object v8, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    move-object v9, v7

    check-cast v9, [Ljava/lang/Object;

    .line 434
    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v7, v4

    and-long v4, v7, v5

    goto :goto_0

    .line 437
    :catch_0
    iput-object v7, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetPlaybackHeadPosition:Ljava/lang/reflect/Method;

    :cond_1
    move-wide v4, v2

    .line 440
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v6

    const-string v7, "@@@voAudioDSPClock"

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 441
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPlaybackHeadPosition: rawPos curPlaybackHeadPosition"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v7, v6, v9}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    :cond_2
    sget-boolean v6, Lcom/visualon/OSMPRender/voAudioDSPClock;->IS_DNA_TV:Z

    if-eqz v6, :cond_6

    cmp-long v6, v4, v2

    if-nez v6, :cond_5

    .line 445
    iget-object v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->onPlaybackHeadPosErrorListener:Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;

    if-eqz v6, :cond_5

    .line 446
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v6

    if-eqz v6, :cond_3

    sget v6, Lcom/visualon/OSMPRender/voAudioDSPClock;->mRecordErrorPlaybackPosNum:I

    const/16 v9, 0x32

    if-le v6, v9, :cond_3

    .line 447
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OnPlaybackHeadPosError , curPlaybackHeadPosition == 0  mRecordErrorPlaybackPosNum = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/visualon/OSMPRender/voAudioDSPClock;->mRecordErrorPlaybackPosNum:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v7, v6, v9}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    :cond_3
    sget v6, Lcom/visualon/OSMPRender/voAudioDSPClock;->mRecordErrorPlaybackPosNum:I

    const/16 v7, 0x50

    if-ne v6, v7, :cond_4

    .line 450
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->playbackHeadPosError()V

    .line 451
    sput v8, Lcom/visualon/OSMPRender/voAudioDSPClock;->mRecordErrorPlaybackPosNum:I

    .line 453
    :cond_4
    sget v6, Lcom/visualon/OSMPRender/voAudioDSPClock;->mRecordErrorPlaybackPosNum:I

    add-int/2addr v6, v1

    sput v6, Lcom/visualon/OSMPRender/voAudioDSPClock;->mRecordErrorPlaybackPosNum:I

    goto :goto_1

    .line 455
    :cond_5
    sput v8, Lcom/visualon/OSMPRender/voAudioDSPClock;->mRecordErrorPlaybackPosNum:I

    .line 459
    :cond_6
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-gt v1, v6, :cond_9

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v2

    if-nez v1, :cond_8

    .line 460
    iget-wide v8, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastRawHeadPosition:J

    cmp-long v1, v8, v2

    if-lez v1, :cond_8

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 468
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mForceResetWorkaroundTimeMs:J

    cmp-long v2, v0, v6

    if-nez v2, :cond_7

    .line 469
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mForceResetWorkaroundTimeMs:J

    .line 471
    :cond_7
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastRawHeadPosition:J

    return-wide v0

    .line 473
    :cond_8
    iput-wide v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mForceResetWorkaroundTimeMs:J

    .line 477
    :cond_9
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastRawHeadPosition:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_a

    .line 478
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadWrapCnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadWrapCnt:J

    .line 481
    :cond_a
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastRawHeadPosition:J

    .line 482
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadWrapCnt:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v4, v0

    return-wide v4
.end method

.method private getHeadPosUs()J
    .locals 7

    .line 496
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getHeadPos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 498
    sget-boolean v2, Lcom/visualon/OSMPRender/voAudioDSPClock;->IS_DNA_TV:Z

    if-eqz v2, :cond_1

    .line 499
    iget-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mRecordHeadPosUs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x989680

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 500
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->playbackHeadPosError()V

    .line 501
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPlaybackHeadPosError , getHeadPos : curHeadPosUs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "mRecordHeadPosUs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mRecordHeadPosUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "@@@voAudioDSPClock"

    invoke-static {v4, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    :cond_0
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mRecordHeadPosUs:J

    :cond_1
    return-wide v0
.end method

.method private maybePollAndCheckTimestamp(JJ)V
    .locals 5

    .line 555
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->maybePollTimestamp(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v0

    .line 561
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;

    invoke-virtual {v2}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v2

    sub-long/2addr v0, p1

    .line 562
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 v0, 0x4c4b40

    cmp-long v4, p1, v0

    if-lez v4, :cond_1

    .line 563
    iget-object p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;

    invoke-virtual {p1}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->rejectTimestamp()V

    goto :goto_0

    .line 564
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/visualon/OSMPRender/voAudioDSPClock;->framesToDurationUs(J)J

    move-result-wide p1

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_2

    .line 566
    iget-object p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;

    invoke-virtual {p1}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->rejectTimestamp()V

    goto :goto_0

    .line 568
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;

    invoke-virtual {p1}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->acceptTimestamp()V

    :goto_0
    return-void
.end method

.method private playbackHeadPosError()V
    .locals 7

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 515
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPlaybackHeadPosError , playbackHeadPosError :  currentTime \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "   lastTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastErrorPlaybackPosTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "@@@voAudioDSPClock"

    invoke-static {v4, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    :cond_0
    sget-wide v2, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastErrorPlaybackPosTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 521
    sput-wide v0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastErrorPlaybackPosTime:J

    .line 522
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->onPlaybackHeadPosErrorListener:Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;

    invoke-interface {v0}, Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;->OnPlaybackHeadPosError()V

    :cond_1
    return-void
.end method

.method private reScheduleAudioTimer(IZ)V
    .locals 8

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 84
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 86
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 87
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    :cond_0
    if-nez p2, :cond_1

    .line 91
    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    iput-object p2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    .line 92
    new-instance v3, Lcom/visualon/OSMPRender/voAudioDSPClock$1;

    invoke-direct {v3, p0}, Lcom/visualon/OSMPRender/voAudioDSPClock$1;-><init>(Lcom/visualon/OSMPRender/voAudioDSPClock;)V

    iput-object v3, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :try_start_1
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    int-to-long v6, p1

    move-wide v4, v6

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 102
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private reScheduleFlushTimer(Z)V
    .locals 8

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 113
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 115
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 116
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    :cond_0
    if-nez p1, :cond_1

    .line 119
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    .line 120
    new-instance v3, Lcom/visualon/OSMPRender/voAudioDSPClock$2;

    invoke-direct {v3, p0}, Lcom/visualon/OSMPRender/voAudioDSPClock$2;-><init>(Lcom/visualon/OSMPRender/voAudioDSPClock;)V

    iput-object v3, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAfterFlushTask:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :try_start_1
    iget-object v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x2

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 130
    iput-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private reset()V
    .locals 3

    .line 407
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voAudioDSPClock"

    const-string v2, "XXX reset"

    .line 408
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    .line 410
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastRawHeadPosition:J

    .line 411
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadWrapCnt:J

    .line 412
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastFramePosition:J

    .line 413
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    .line 414
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mDSPTime:J

    const/4 v2, 0x1

    .line 415
    iput-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAvailableCheckHeadPos:Z

    .line 416
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mRecordHeadPosUs:J

    .line 417
    invoke-virtual {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->resetWhenPause()V

    return-void
.end method

.method private setDSPTime()V
    .locals 11

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 249
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_5

    .line 250
    iget-boolean v5, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mbIsBuffering:Z

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->updatePlaybackPositionParams()V

    .line 256
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    div-long/2addr v5, v1

    .line 257
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v7

    .line 260
    invoke-direct {p0, v7, v8}, Lcom/visualon/OSMPRender/voAudioDSPClock;->framesToDurationUs(J)J

    move-result-wide v7

    .line 261
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->isTimestampAdvancing()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v9

    sub-long/2addr v5, v9

    add-long/2addr v7, v5

    goto :goto_1

    .line 269
    :cond_2
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    if-nez v0, :cond_3

    .line 271
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getHeadPosUs()J

    move-result-wide v5

    goto :goto_0

    .line 276
    :cond_3
    iget-wide v7, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    add-long/2addr v5, v7

    .line 278
    :goto_0
    iget-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsAC3:Z

    if-nez v0, :cond_4

    .line 279
    iget-wide v7, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    sub-long/2addr v5, v7

    :cond_4
    move-wide v7, v5

    goto :goto_1

    :cond_5
    move-wide v7, v3

    .line 285
    :goto_1
    div-long/2addr v7, v1

    iput-wide v7, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mDSPTime:J

    cmp-long v0, v7, v3

    if-gez v0, :cond_6

    .line 287
    iput-wide v3, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mDSPTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_6
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private updatePlaybackPositionParams()V
    .locals 13

    .line 527
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getHeadPosUs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 531
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 532
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    .line 535
    iget-wide v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastGetHeadPositionSampleTimeUs:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7530

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    .line 536
    iget-object v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsets:[J

    iget v7, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mNextHeadPositionOffsetIndex:I

    sub-long v8, v0, v4

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0xa

    .line 538
    rem-int/2addr v7, v6

    iput v7, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mNextHeadPositionOffsetIndex:I

    .line 540
    iget v7, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    if-ge v7, v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    .line 541
    iput v7, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    .line 543
    :cond_1
    iput-wide v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastGetHeadPositionSampleTimeUs:J

    .line 544
    iput-wide v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    const/4 v2, 0x0

    .line 545
    :goto_0
    iget v3, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    if-ge v2, v3, :cond_2

    .line 546
    iget-wide v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    iget-object v8, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsets:[J

    aget-wide v9, v8, v2

    int-to-long v11, v3

    div-long/2addr v9, v11

    add-long/2addr v6, v9

    iput-wide v6, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    :cond_2
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/visualon/OSMPRender/voAudioDSPClock;->maybePollAndCheckTimestamp(JJ)V

    return-void
.end method

.method private waitForPlay()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 141
    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleFlushTimer(Z)V

    .line 142
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimerDuration:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleAudioTimer(IZ)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 145
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mDSPTime:J

    :goto_0
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 4

    const/4 v0, 0x0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x1

    .line 227
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleAudioTimer(IZ)V

    const-wide/16 v1, 0x0

    .line 228
    iput-wide v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mDSPTime:J

    .line 229
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "@@@voAudioDSPClock"

    const-string v2, "XXX flush"

    new-array v3, v0, [Ljava/lang/Object;

    .line 230
    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsUseTimer:Z

    if-eqz v1, :cond_1

    .line 236
    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleFlushTimer(Z)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    .line 235
    iget-boolean v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsUseTimer:Z

    if-eqz v2, :cond_2

    .line 236
    invoke-direct {p0, v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleFlushTimer(Z)V

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public getDSPTimeStamp()J
    .locals 2

    .line 242
    iget-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mDSPTime:J

    return-wide v0
.end method

.method public getLatency(J)J
    .locals 6

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 299
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetLatencyMethod:Ljava/lang/reflect/Method;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .line 301
    :try_start_1
    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v0

    goto :goto_0

    .line 303
    :catch_0
    :try_start_2
    iput-object v4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetLatencyMethod:Ljava/lang/reflect/Method;

    :cond_0
    move-wide v3, v1

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mGetLatencyMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v0, v5, :cond_1

    cmp-long v0, p1, v1

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide p1, v3

    :goto_1
    const-wide/16 v3, 0x3e8

    mul-long p1, p1, v3

    .line 313
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mBufferSize:I

    int-to-long v3, v0

    .line 314
    invoke-direct {p0, v3, v4}, Lcom/visualon/OSMPRender/voAudioDSPClock;->bytesToFrames(J)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/visualon/OSMPRender/voAudioDSPClock;->framesToDurationUs(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    iput-wide p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    .line 316
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    const-wide/32 v3, 0x4c4b40

    cmp-long v0, p1, v3

    if-lez v0, :cond_3

    .line 318
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "@@@voAudioDSPClock"

    .line 319
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Audio latency too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    :cond_2
    iput-wide v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J

    .line 325
    :cond_3
    iget-wide p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLatencyTimeUs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public playAudioTrack()V
    .locals 2

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 214
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 216
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public reconfig(IZII)Lcom/visualon/OSMPRender/voAudioDSPClock;
    .locals 3

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 361
    iput p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSampleRate:I

    .line 362
    iput p4, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mChannelCnt:I

    .line 363
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const-string v1, "@@@voAudioDSPClock"

    if-eqz p4, :cond_0

    .line 364
    :try_start_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel count is "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mChannelCnt:I

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p4, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :cond_0
    iput-boolean p2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsAC3:Z

    .line 367
    iput p3, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mBufferSize:I

    .line 368
    invoke-static {p3, p1}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getAC3Bitrate(II)I

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAC3Bitrate:I

    .line 369
    invoke-direct {p0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reset()V

    .line 370
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsAC3=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsAC3:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-wide/16 p1, 0x0

    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/visualon/OSMPRender/voAudioDSPClock;->getLatency(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    iget-object p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public resetWhenPause()V
    .locals 3

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 385
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/visualon/OSMPRender/AudioTimestampPoller;->reset()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 388
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mSmoothedHeadPositionOffsetUs:J

    const/4 v2, 0x0

    .line 389
    iput v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mHeadPositionOffsetCnt:I

    .line 390
    iput v2, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mNextHeadPositionOffsetIndex:I

    .line 391
    iput-wide v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mLastGetHeadPositionSampleTimeUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setAudioTrack(Landroid/media/AudioTrack;)Lcom/visualon/OSMPRender/voAudioDSPClock;
    .locals 1

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 349
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mAudioTrack:Landroid/media/AudioTrack;

    .line 350
    new-instance v0, Lcom/visualon/OSMPRender/AudioTimestampPoller;

    invoke-direct {v0, p1}, Lcom/visualon/OSMPRender/AudioTimestampPoller;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->audioTimestampPoller:Lcom/visualon/OSMPRender/AudioTimestampPoller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setOnPlaybackHeadPosErrorListener(Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->onPlaybackHeadPosErrorListener:Lcom/visualon/OSMPRender/voAudioDSPClock$OnPlaybackHeadPosErrorListener;

    return-void
.end method

.method public startAudioDSPClockTimer()V
    .locals 2

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 190
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 192
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mTimerDuration:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleAudioTimer(IZ)V

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsUseTimer:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public startBuffering()V
    .locals 1

    const/4 v0, 0x1

    .line 399
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mbIsBuffering:Z

    return-void
.end method

.method public stopAudioDSPClockTimer()V
    .locals 2

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, v1, v0}, Lcom/visualon/OSMPRender/voAudioDSPClock;->reScheduleAudioTimer(IZ)V

    .line 204
    iput-boolean v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mIsUseTimer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public stopBuffering()V
    .locals 1

    const/4 v0, 0x0

    .line 403
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/voAudioDSPClock;->mbIsBuffering:Z

    return-void
.end method
