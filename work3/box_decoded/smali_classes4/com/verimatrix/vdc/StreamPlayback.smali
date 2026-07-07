.class final Lcom/verimatrix/vdc/StreamPlayback;
.super Ljava/lang/Object;
.source "StreamPlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/StreamPlayback$SettleTimerRunnable;
    }
.end annotation


# static fields
.field static final CONTENT_ID_PENDING:J = -0x2L

.field static final CONTENT_ID_UNKNOWN:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "StreamPlayback"

.field private static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private assetisedSessionActive:Z

.field audioExpected:Z

.field private audioLanguage:[J

.field private audioResumed:Z

.field private audioStarted:Z

.field private audioStartedTime:J

.field private c:Landroid/content/Context;

.field private contentId:J

.field expectedPlayTime:J

.field identifiedType:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

.field identifier:Ljava/lang/String;

.field indicated:I

.field indicatedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

.field indicatedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

.field indicatedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

.field private isPause:Z

.field private isStalled:Z

.field private lastKnownProgressPlayingTime:J

.field private lastMediaOffset:J

.field lastMediaOffsetCheckTime:J

.field private lastPauseTimeMills:J

.field private lastPlaybackProgressCall:J

.field private lastPlaybackTime:J

.field lastReplayRate:F

.field lastStreamType:Lcom/verimatrix/vdc/Monitor$StreamType;

.field lastTime:J

.field mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

.field mediaUrl:Ljava/lang/String;

.field method:Lcom/verimatrix/vdc/Monitor$DeliveryType;

.field observed:I

.field observedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

.field observedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

.field observedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

.field pendingPvrStartEvent:Lcom/verimatrix/vdc/SendEvent;

.field private playbackResumedTime:J

.field playbackSettleTimerStarted:Z

.field private playbackStartedTime:J

.field playbackWasStarted:Z

.field playing:Z

.field referenceCode:Ljava/lang/String;

.field private settleHandler:Landroid/os/Handler;

.field private settleTimerRunnable:Lcom/verimatrix/vdc/StreamPlayback$SettleTimerRunnable;

.field private startCause:Lcom/verimatrix/vdc/Monitor$StartCause;

.field private startRequestTime:J

.field private stream:Lcom/verimatrix/vdc/Stream;

.field streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

.field private timeInPause:J

.field videoExpected:Z

.field private videoResumed:Z

.field private videoStarted:Z

.field private videoStartedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/verimatrix/vdc/Stream;)V
    .locals 6

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    .line 32
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->isStalled:Z

    .line 33
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->isPause:Z

    .line 34
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackWasStarted:Z

    .line 35
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->assetisedSessionActive:Z

    const-wide/16 v1, 0x0

    .line 38
    iput-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastPauseTimeMills:J

    .line 39
    iput-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    .line 40
    iput-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastKnownProgressPlayingTime:J

    .line 41
    iput-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioStartedTime:J

    .line 42
    iput-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->videoStartedTime:J

    .line 43
    iput-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackStartedTime:J

    .line 44
    iput-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->startRequestTime:J

    .line 45
    iput-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastPlaybackTime:J

    .line 46
    iput-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastTime:J

    .line 47
    iput-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastPlaybackProgressCall:J

    .line 48
    iput-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastMediaOffset:J

    .line 49
    iput-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackResumedTime:J

    const-string v3, "UNKNOWN"

    .line 52
    iput-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->mediaUrl:Ljava/lang/String;

    .line 53
    sget-object v4, Lcom/verimatrix/vdc/Monitor$MediaType;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$MediaType;

    iput-object v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 54
    sget-object v4, Lcom/verimatrix/vdc/Monitor$StartCause;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$StartCause;

    iput-object v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->startCause:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 55
    sget-object v4, Lcom/verimatrix/vdc/Monitor$DeliveryType;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    iput-object v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->method:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    .line 56
    iput-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->identifier:Ljava/lang/String;

    .line 57
    sget-object v3, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    iput-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->identifiedType:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    .line 58
    sget-object v3, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO:Lcom/verimatrix/vdc/Monitor$StreamType;

    iput-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    const/4 v3, 0x0

    .line 59
    iput-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->referenceCode:Ljava/lang/String;

    const-wide/16 v4, -0x2

    .line 60
    iput-wide v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->contentId:J

    const/4 v4, 0x1

    .line 62
    iput-boolean v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioExpected:Z

    .line 63
    iput-boolean v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->videoExpected:Z

    .line 64
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioStarted:Z

    .line 65
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->videoStarted:Z

    .line 66
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioResumed:Z

    .line 67
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->videoResumed:Z

    const/4 v4, 0x2

    new-array v4, v4, [J

    .line 68
    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioLanguage:[J

    .line 71
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    .line 76
    iput v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->indicated:I

    .line 77
    iput v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->observed:I

    .line 79
    new-instance v0, Lcom/verimatrix/vdc/Rate;

    invoke-direct {v0}, Lcom/verimatrix/vdc/Rate;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->indicatedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    .line 80
    new-instance v0, Lcom/verimatrix/vdc/Rate;

    invoke-direct {v0}, Lcom/verimatrix/vdc/Rate;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->observedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    .line 81
    new-instance v0, Lcom/verimatrix/vdc/Rate;

    invoke-direct {v0}, Lcom/verimatrix/vdc/Rate;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->indicatedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    .line 82
    new-instance v0, Lcom/verimatrix/vdc/Rate;

    invoke-direct {v0}, Lcom/verimatrix/vdc/Rate;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->observedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    .line 83
    new-instance v0, Lcom/verimatrix/vdc/Rate;

    invoke-direct {v0}, Lcom/verimatrix/vdc/Rate;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->indicatedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    .line 84
    new-instance v0, Lcom/verimatrix/vdc/Rate;

    invoke-direct {v0}, Lcom/verimatrix/vdc/Rate;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->observedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    .line 87
    iput-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastMediaOffsetCheckTime:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 88
    iput v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastReplayRate:F

    .line 89
    iput-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->pendingPvrStartEvent:Lcom/verimatrix/vdc/SendEvent;

    .line 90
    iput-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastStreamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    const-wide/16 v0, -0x1

    .line 97
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->expectedPlayTime:J

    .line 100
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 103
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "SettleHandlerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 105
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/verimatrix/vdc/StreamPlayback;->settleHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/verimatrix/vdc/StreamPlayback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/verimatrix/vdc/StreamPlayback;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/verimatrix/vdc/StreamPlayback;)Lcom/verimatrix/vdc/Stream;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    return-object p0
.end method

.method private addConsumptionMethodEventToQueue(Ljava/lang/String;J)V
    .locals 12

    .line 1081
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorUtils;->getFNVHashByModule(Ljava/lang/String;)J

    move-result-wide v0

    .line 1082
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v5, 0x1

    new-array v8, v5, [J

    const/4 v5, 0x0

    aput-wide v0, v8, v5

    iget-object v5, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 1083
    invoke-virtual {v5}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v9

    const/16 v5, 0x7d

    move-wide v10, p2

    .line 1082
    invoke-static/range {v3 .. v11}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 1084
    iget-object p2, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    const/4 p3, 0x2

    invoke-static {p2, p3, v0, v1, p1}, Lcom/verimatrix/vdc/NetworkManager;->sendContent(Landroid/content/Context;IJLjava/lang/String;)Z

    return-void
.end method

.method private cancelPlaybackSettleTimer()V
    .locals 2

    .line 1047
    sget-object v0, Lcom/verimatrix/vdc/StreamPlayback;->TAG:Ljava/lang/String;

    const-string v1, "PlaybackSettleTimer: cancelPlaybackSettleTimer() called (cancel)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->settleTimerRunnable:Lcom/verimatrix/vdc/StreamPlayback$SettleTimerRunnable;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->settleHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 1051
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    return-void
.end method

.method private getPlaybackRequest(JJLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    const/4 v2, 0x1

    .line 115
    invoke-virtual {v0, v2}, Lcom/verimatrix/vdc/StreamPlayback;->setAssetisedSessionActive(Z)V

    .line 117
    sget-object v3, Lcom/verimatrix/vdc/StreamPlayback$2;->$SwitchMap$com$verimatrix$vdc$Monitor$MediaType:[I

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v4}, Lcom/verimatrix/vdc/Monitor$MediaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    if-eq v3, v2, :cond_2

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_0

    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    goto/16 :goto_0

    .line 136
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v2

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v5, 0xa0

    const/4 v8, 0x0

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 137
    invoke-virtual {v6}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v9

    move-wide/from16 v6, p1

    move-wide/from16 v10, p3

    .line 136
    invoke-static/range {v3 .. v11}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/verimatrix/vdc/StreamPlayback;->sendVideoOnDemandEvent(JJLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p7, :cond_3

    .line 120
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v3

    iget-object v10, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v11, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v11, v11, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v12, 0x130

    new-array v15, v5, [J

    .line 121
    invoke-static/range {p7 .. p7}, Lcom/verimatrix/vdc/MonitorUtils;->getFNVHashByModule(Ljava/lang/String;)J

    move-result-wide v13

    aput-wide v13, v15, v4

    aput-wide v8, v15, v2

    aput-wide v8, v15, v7

    aput-wide v8, v15, v6

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 122
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v16

    move-wide/from16 v13, p1

    move-wide/from16 v17, p3

    .line 120
    invoke-static/range {v10 .. v18}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v10, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v10, v10, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v11, 0x130

    new-array v12, v5, [J

    iget-wide v13, v0, Lcom/verimatrix/vdc/StreamPlayback;->contentId:J

    aput-wide v13, v12, v4

    aput-wide v8, v12, v2

    aput-wide v8, v12, v7

    aput-wide v8, v12, v6

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 129
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v2

    move-object v4, v3

    move-object v5, v10

    move v6, v11

    move-wide/from16 v7, p1

    move-object v9, v12

    move-object v10, v2

    move-wide/from16 v11, p3

    .line 128
    invoke-static/range {v4 .. v12}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    iput-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->pendingPvrStartEvent:Lcom/verimatrix/vdc/SendEvent;

    .line 146
    :goto_0
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-wide/from16 v2, p3

    move-object/from16 v4, p8

    .line 147
    invoke-direct {v0, v4, v2, v3}, Lcom/verimatrix/vdc/StreamPlayback;->addConsumptionMethodEventToQueue(Ljava/lang/String;J)V

    :cond_4
    if-eqz v1, :cond_5

    .line 151
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v2, v1}, Lcom/verimatrix/vdc/Stream;->genericAttributesChange(Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;

    .line 154
    :cond_5
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method private needSendPlaybackStarted(Z)Z
    .locals 3

    .line 1005
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 1006
    sget-object v0, Lcom/verimatrix/vdc/StreamPlayback$2;->$SwitchMap$com$verimatrix$vdc$Monitor$StreamType:[I

    iget-object v2, p0, Lcom/verimatrix/vdc/StreamPlayback;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$StreamType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1018
    :cond_0
    iget-boolean p1, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioStarted:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/verimatrix/vdc/StreamPlayback;->videoStarted:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private playbackStarted(JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 15

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    const/4 v5, 0x1

    .line 511
    invoke-virtual {p0, v5}, Lcom/verimatrix/vdc/StreamPlayback;->setAssetisedSessionActive(Z)V

    .line 513
    invoke-direct {p0}, Lcom/verimatrix/vdc/StreamPlayback;->startPlaybackSettleTimer()V

    .line 515
    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v6}, Lcom/verimatrix/vdc/Stream;->addBatteryHeadsetAndVolumeListeners()V

    .line 516
    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v7, v7, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "time_ms="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start_cause="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/verimatrix/vdc/StreamPlayback;->startCause:Lcom/verimatrix/vdc/Monitor$StartCause;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const-string v9, "Event add: playback_started"

    invoke-static {v6, v7, v9, v8}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 519
    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v6, v6, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget-boolean v6, v6, Lcom/verimatrix/vdc/StreamErrorHandler;->slowStartTimersStarted:Z

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_0

    .line 520
    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v6, v6, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-virtual {v6}, Lcom/verimatrix/vdc/StreamErrorHandler;->stopSlowStartTimer()V

    .line 521
    invoke-direct {p0}, Lcom/verimatrix/vdc/StreamPlayback;->sendStartedEvent()V

    goto :goto_0

    .line 523
    :cond_0
    iget-wide v11, v0, Lcom/verimatrix/vdc/StreamPlayback;->audioStartedTime:J

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v6, v6, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget-wide v13, v6, Lcom/verimatrix/vdc/StreamErrorHandler;->noServiceTime:J

    sub-long/2addr v11, v13

    iget-wide v13, v0, Lcom/verimatrix/vdc/StreamPlayback;->videoStartedTime:J

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v6, v6, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget-wide v5, v6, Lcom/verimatrix/vdc/StreamErrorHandler;->noServiceTime:J

    sub-long/2addr v13, v5

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 525
    invoke-direct {p0, v1, v2, v5, v6}, Lcom/verimatrix/vdc/StreamPlayback;->sendPlaybackRestoredEvent(JJ)V

    .line 526
    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v5, v5, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iput-boolean v10, v5, Lcom/verimatrix/vdc/StreamErrorHandler;->noServiceErrorSent:Z

    .line 527
    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v5, v5, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iput-wide v7, v5, Lcom/verimatrix/vdc/StreamErrorHandler;->noServiceTime:J

    .line 530
    :goto_0
    invoke-direct/range {p0 .. p4}, Lcom/verimatrix/vdc/StreamPlayback;->sendMediaOffsetEvent(JJ)V

    .line 531
    invoke-virtual {p0, v3, v4}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    const/4 v3, 0x1

    .line 533
    iput-boolean v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackWasStarted:Z

    .line 534
    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iput-wide v7, v4, Lcom/verimatrix/vdc/StreamErrorHandler;->stallTime:J

    .line 535
    iput-wide v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastTime:J

    sub-long v1, v1, p5

    .line 536
    iput-wide v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackStartedTime:J

    .line 537
    iput-wide v7, v0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    .line 538
    iput-boolean v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    .line 539
    iput-boolean v10, v0, Lcom/verimatrix/vdc/StreamPlayback;->audioStarted:Z

    .line 540
    iput-boolean v10, v0, Lcom/verimatrix/vdc/StreamPlayback;->videoStarted:Z

    .line 541
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method private sendMediaOffsetEvent(JJ)V
    .locals 15

    move-object v0, p0

    move-wide/from16 v1, p3

    .line 1170
    iget-wide v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastMediaOffset:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    const-wide/16 v3, 0x3e8

    .line 1171
    div-long v5, v1, v3

    .line 1172
    rem-long v3, v1, v3

    .line 1174
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v7

    iget-object v8, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v9, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v9, v9, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v10, 0x227

    .line 1175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v13, 0x2

    new-array v13, v13, [J

    const/4 v14, 0x0

    aput-wide v5, v13, v14

    const/4 v5, 0x1

    aput-wide v3, v13, v5

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v14

    .line 1174
    invoke-static/range {v8 .. v14}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 1176
    iput-wide v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastMediaOffset:J

    move-wide/from16 v1, p1

    .line 1177
    iput-wide v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastMediaOffsetCheckTime:J

    :cond_0
    return-void
.end method

.method private sendMediaOffsetEventIfDrift(JJ)V
    .locals 6

    .line 1182
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StreamPlayback;->getLastPlaybackTime()J

    move-result-wide v0

    cmp-long v2, v0, p3

    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->isPause:Z

    if-nez v0, :cond_0

    .line 1183
    iget-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastMediaOffsetCheckTime:J

    sub-long v0, p1, v0

    .line 1184
    iget-wide v2, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastMediaOffset:J

    sub-long v2, p3, v2

    .line 1186
    iget v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastReplayRate:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    float-to-long v4, v4

    mul-long v0, v0, v4

    const-wide/16 v4, 0x64

    .line 1187
    div-long/2addr v0, v4

    sub-long/2addr v0, v2

    .line 1189
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 1190
    iget-object v2, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v3, "offsetdrift"

    invoke-virtual {v2, v3}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastReplayRate:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 1193
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verimatrix/vdc/StreamPlayback;->sendMediaOffsetEvent(JJ)V

    :cond_0
    return-void
.end method

.method private sendPlaybackRestoredEvent(JJ)V
    .locals 10

    .line 928
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StreamPlayback;->isAssetisedSessionActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-eqz v0, :cond_3

    .line 929
    sget-object v0, Lcom/verimatrix/vdc/StreamPlayback$2;->$SwitchMap$com$verimatrix$vdc$Monitor$MediaType:[I

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Monitor$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 946
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v5, 0x125

    new-array v8, v2, [J

    aput-wide p3, v8, v1

    iget-object p3, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 947
    invoke-virtual {p3}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v9

    move-wide v6, p1

    .line 946
    invoke-static/range {v3 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 941
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v5, 0x125

    new-array v8, v2, [J

    aput-wide p3, v8, v1

    iget-object p3, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 942
    invoke-virtual {p3}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v9

    move-wide v6, p1

    .line 941
    invoke-static/range {v3 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 936
    :cond_1
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v5, 0x127

    new-array v8, v2, [J

    aput-wide p3, v8, v1

    iget-object p3, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 937
    invoke-virtual {p3}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v9

    move-wide v6, p1

    .line 936
    invoke-static/range {v3 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 932
    :cond_2
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v5, 0x134

    new-array v8, v2, [J

    aput-wide p3, v8, v1

    iget-object p3, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 933
    invoke-virtual {p3}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v9

    move-wide v6, p1

    .line 932
    invoke-static/range {v3 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private sendRestoredAudioEvent(JJ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 914
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "time_after_resume="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "Event add: audio_restored"

    invoke-static {v3, v4, v7, v6}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 916
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v3

    iget-object v9, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v10, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-array v14, v5, [J

    aput-wide v1, v14, v8

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 917
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v15

    const/16 v11, 0x124

    move-wide/from16 v16, p3

    .line 916
    invoke-static/range {v9 .. v17}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    return-void
.end method

.method private sendRestoredVideoEvent(JJ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 921
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "time_after_resume="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "Event add: video_restored"

    invoke-static {v3, v4, v7, v6}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 923
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v3

    iget-object v9, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v10, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-array v14, v5, [J

    aput-wide v1, v14, v8

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 924
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v15

    const/16 v11, 0x123

    move-wide/from16 v16, p3

    .line 923
    invoke-static/range {v9 .. v17}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    return-void
.end method

.method private sendStartedEvent()V
    .locals 15

    .line 954
    iget-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioStartedTime:J

    iget-wide v2, p0, Lcom/verimatrix/vdc/StreamPlayback;->videoStartedTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 955
    iget-wide v2, p0, Lcom/verimatrix/vdc/StreamPlayback;->startRequestTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1

    add-long v9, v0, v4

    .line 965
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-eqz v0, :cond_4

    .line 966
    sget-object v0, Lcom/verimatrix/vdc/StreamPlayback$2;->$SwitchMap$com$verimatrix$vdc$Monitor$MediaType:[I

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Monitor$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-wide/16 v11, 0x0

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v8, 0x5

    if-eq v0, v8, :cond_0

    .line 990
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v8, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v13, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v13, v13, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v14, 0xa2

    new-array v4, v4, [J

    aput-wide v2, v4, v1

    aput-wide v11, v4, v7

    aput-wide v11, v4, v6

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->startCause:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 991
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Monitor$StartCause;->getValue()I

    move-result v1

    int-to-long v1, v1

    aput-wide v1, v4, v5

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 992
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v12

    const-wide/16 v1, 0x0

    move-object v6, v8

    move-object v7, v13

    move v8, v14

    move-object v11, v4

    move-wide v13, v1

    .line 990
    invoke-static/range {v6 .. v14}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto/16 :goto_0

    .line 984
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v8, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v13, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v13, v13, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v14, 0xa2

    new-array v4, v4, [J

    aput-wide v2, v4, v1

    aput-wide v11, v4, v7

    aput-wide v11, v4, v6

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->startCause:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 985
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Monitor$StartCause;->getValue()I

    move-result v1

    int-to-long v1, v1

    aput-wide v1, v4, v5

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 986
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v12

    const-wide/16 v1, 0x0

    move-object v6, v8

    move-object v7, v13

    move v8, v14

    move-object v11, v4

    move-wide v13, v1

    .line 984
    invoke-static/range {v6 .. v14}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto/16 :goto_0

    .line 979
    :cond_1
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v8, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v13, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v13, v13, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v14, 0xa2

    new-array v4, v4, [J

    aput-wide v2, v4, v1

    aput-wide v11, v4, v7

    aput-wide v11, v4, v6

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->startCause:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 980
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Monitor$StartCause;->getValue()I

    move-result v1

    int-to-long v1, v1

    aput-wide v1, v4, v5

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 981
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v12

    const-wide/16 v1, 0x0

    move-object v6, v8

    move-object v7, v13

    move v8, v14

    move-object v11, v4

    move-wide v13, v1

    .line 979
    invoke-static/range {v6 .. v14}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 974
    :cond_2
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v8, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v13, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v13, v13, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v14, 0xfe

    new-array v4, v4, [J

    aput-wide v2, v4, v1

    aput-wide v11, v4, v7

    aput-wide v11, v4, v6

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->startCause:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 975
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Monitor$StartCause;->getValue()I

    move-result v1

    int-to-long v1, v1

    aput-wide v1, v4, v5

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v12

    const-wide/16 v1, 0x0

    move-object v6, v8

    move-object v7, v13

    move v8, v14

    move-object v11, v4

    move-wide v13, v1

    .line 974
    invoke-static/range {v6 .. v14}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 969
    :cond_3
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v8, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v13, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v13, v13, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v14, 0x133

    new-array v4, v4, [J

    aput-wide v2, v4, v1

    aput-wide v11, v4, v7

    aput-wide v11, v4, v6

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->startCause:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 970
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Monitor$StartCause;->getValue()I

    move-result v1

    int-to-long v1, v1

    aput-wide v1, v4, v5

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v12

    const-wide/16 v1, 0x0

    move-object v6, v8

    move-object v7, v13

    move v8, v14

    move-object v11, v4

    move-wide v13, v1

    .line 969
    invoke-static/range {v6 .. v14}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private sendVideoOnDemandEvent(JJLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    .line 1089
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1092
    sget-object v1, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->URL:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    if-ne v1, p5, :cond_0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p6

    .line 1093
    invoke-direct/range {v0 .. v5}, Lcom/verimatrix/vdc/StreamPlayback;->sendVideoOnDemandEventWithIpAddress(JJLjava/lang/String;)Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1096
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 1097
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object p5

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object p6, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, p6, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v2, 0xfb

    const/4 v5, 0x0

    iget-object p6, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 1098
    invoke-virtual {p6}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v6

    move-wide v3, p1

    move-wide v7, p3

    .line 1097
    invoke-static/range {v0 .. v8}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    :cond_1
    return-void
.end method

.method private sendVideoOnDemandEventWithIpAddress(JJLjava/lang/String;)Z
    .locals 19

    move-object/from16 v9, p0

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 1106
    :try_start_0
    new-instance v0, Ljava/net/URI;

    move-object/from16 v2, p5

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1109
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    int-to-long v3, v0

    .line 1110
    invoke-static {v11}, Lcom/verimatrix/vdc/MonitorUtils;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    invoke-static {v11}, Lcom/verimatrix/vdc/MonitorUtils;->ipAddressToLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [J

    const-wide/16 v7, -0x1

    aput-wide v7, v0, v1

    aput-wide v5, v0, v10

    const/4 v2, 0x2

    aput-wide v3, v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v15, v0

    .line 1115
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v10, v9, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v2, v9, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v11, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v12, 0xfb

    iget-object v2, v9, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 1117
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v16

    move-wide/from16 v13, p1

    move-wide/from16 v17, p3

    .line 1115
    invoke-static/range {v10 .. v18}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 1121
    :cond_1
    :try_start_1
    iget-object v0, v9, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    new-instance v12, Landroid/os/Messenger;

    new-instance v13, Lcom/verimatrix/vdc/StreamPlayback$1;

    move-object v1, v13

    move-object/from16 v2, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-direct/range {v1 .. v8}, Lcom/verimatrix/vdc/StreamPlayback$1;-><init>(Lcom/verimatrix/vdc/StreamPlayback;JJJ)V

    invoke-direct {v12, v13}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v11, v12}, Lcom/verimatrix/vdc/NetworkManager;->loadIpAddressFromDomain(Landroid/content/Context;Ljava/lang/String;Landroid/os/Messenger;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1141
    :goto_1
    sget-object v2, Lcom/verimatrix/vdc/StreamPlayback;->TAG:Ljava/lang/String;

    const-string v3, "Can not get domain from url"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1142
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v10, v9, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v2, v9, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v11, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v12, 0xfb

    const/4 v15, 0x0

    iget-object v2, v9, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 1143
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v16

    move-wide/from16 v13, p1

    move-wide/from16 v17, p3

    .line 1142
    invoke-static/range {v10 .. v18}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    :goto_2
    move v10, v1

    :cond_2
    return v10
.end method

.method private startPlaybackSettleTimer()V
    .locals 6

    .line 1031
    invoke-direct {p0}, Lcom/verimatrix/vdc/StreamPlayback;->cancelPlaybackSettleTimer()V

    const/4 v0, 0x0

    .line 1032
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    .line 1034
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v1, "delay_playback_settle"

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1035
    sget-object v2, Lcom/verimatrix/vdc/StreamPlayback;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlaybackSettleTimer: startPlaybackSettleTimer() called ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    const/4 v2, 0x1

    .line 1038
    iput-boolean v2, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    .line 1039
    new-instance v2, Lcom/verimatrix/vdc/StreamPlayback$SettleTimerRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/verimatrix/vdc/StreamPlayback$SettleTimerRunnable;-><init>(Lcom/verimatrix/vdc/StreamPlayback;Lcom/verimatrix/vdc/StreamPlayback$1;)V

    iput-object v2, p0, Lcom/verimatrix/vdc/StreamPlayback;->settleTimerRunnable:Lcom/verimatrix/vdc/StreamPlayback$SettleTimerRunnable;

    .line 1040
    iget-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->settleHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string v0, "PlaybackSettleTimer: PlaybackSettleTimer does not started: error delay"

    .line 1042
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method detectIdByUrl(Ljava/lang/String;J)V
    .locals 2

    .line 1154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorUtils;->isLocalFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorUtils;->getFNVHashByModule(Ljava/lang/String;)J

    move-result-wide p1

    .line 1156
    sget-object p3, Lcom/verimatrix/vdc/StreamPlayback;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/StreamPlayback;->setContentId(J)V

    goto :goto_0

    .line 1160
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/verimatrix/vdc/StreamPlayback;->setContentId(J)V

    :goto_0
    return-void
.end method

.method getContentId()J
    .locals 2

    .line 1149
    iget-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->contentId:J

    return-wide v0
.end method

.method getCurrentPlaybackPosition(J)J
    .locals 2

    .line 1207
    iget-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackStartedTime:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method getLastPlaybackTime()J
    .locals 2

    .line 1063
    iget-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastPlaybackTime:J

    return-wide v0
.end method

.method isAssetisedSessionActive()Z
    .locals 1

    .line 1077
    iget-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->assetisedSessionActive:Z

    return v0
.end method

.method playbackAccelerated(JJFJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p5

    .line 725
    iget v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastReplayRate:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    .line 726
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "skip duplicated call"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 728
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    .line 732
    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamPlayback;->startPlaybackSettleTimer()V

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v3, v3, v1

    float-to-long v3, v3

    .line 734
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v2, :cond_1

    .line 736
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v7

    iget-object v8, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v9, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v9, v9, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v10, 0x176

    new-array v13, v6, [J

    aput-wide v3, v13, v5

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 738
    invoke-virtual {v3}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v14

    move-wide/from16 v11, p1

    move-wide/from16 v15, p6

    .line 736
    invoke-static/range {v8 .. v16}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 740
    :cond_1
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v7

    iget-object v8, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v9, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v9, v9, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v10, 0x177

    new-array v13, v6, [J

    aput-wide v3, v13, v5

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 742
    invoke-virtual {v3}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v14

    move-wide/from16 v11, p1

    move-wide/from16 v15, p6

    .line 740
    invoke-static/range {v8 .. v16}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 745
    :goto_0
    invoke-direct/range {p0 .. p4}, Lcom/verimatrix/vdc/StreamPlayback;->sendMediaOffsetEventIfDrift(JJ)V

    move-wide/from16 v3, p3

    .line 746
    invoke-virtual {v0, v3, v4}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    .line 747
    iput v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastReplayRate:F

    :cond_2
    if-nez v2, :cond_3

    .line 749
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    :goto_1
    return-object v1
.end method

.method playbackConsumptionMethodChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 3

    .line 355
    invoke-static {p1, p2, p3}, Lcom/verimatrix/vdc/InputValidator;->playbackConsumptionMethodChange(JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p5, v0

    const/4 p1, 0x1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "consumptionMethod:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p5, p1

    invoke-static {p4, p5}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 358
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 360
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    .line 361
    invoke-direct {p0, p3, p4, p5}, Lcom/verimatrix/vdc/StreamPlayback;->addConsumptionMethodEventToQueue(Ljava/lang/String;J)V

    .line 362
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 711
    invoke-static {p1, p2, p3, p4}, Lcom/verimatrix/vdc/InputValidator;->playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 712
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "streamType:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playbackErrorType:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "count:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "offset:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-static {v0, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 715
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 717
    :cond_0
    iget-wide v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastPauseTimeMills:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 719
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/verimatrix/vdc/StreamErrorHandler;->playbackError(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)V

    .line 721
    :cond_2
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method playbackLanguageChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    .line 901
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    .line 902
    iget-boolean v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-eqz v1, :cond_0

    .line 903
    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    .line 904
    invoke-static {p3}, Lcom/verimatrix/vdc/MonitorUtils;->parseLanguage(Ljava/lang/String;)[J

    move-result-object p1

    iput-object p1, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioLanguage:[J

    .line 905
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object p1

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object p2, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, p2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v2, 0x82

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 p2, 0x3

    new-array v5, p2, [J

    const-wide/16 p2, 0x0

    const/4 v6, 0x0

    aput-wide p2, v5, v6

    iget-object p2, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioLanguage:[J

    aget-wide v6, p2, v6

    const/4 p3, 0x1

    aput-wide v6, v5, p3

    const/4 v6, 0x2

    aget-wide v7, p2, p3

    aput-wide v7, v5, v6

    iget-object p2, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 907
    invoke-virtual {p2}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v6

    move-wide v7, p4

    .line 905
    invoke-static/range {v0 .. v8}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 908
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    :cond_0
    return-object v0
.end method

.method playbackMetadataChange(JLjava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    .line 502
    invoke-static {p1, p2, p3}, Lcom/verimatrix/vdc/InputValidator;->playbackMetadataChange(JLjava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeMs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-string p2, "metadata: null"

    aput-object p2, v0, p1

    invoke-static {p3, v0}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 504
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 506
    :cond_0
    iget-object p1, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object p1, p1, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    iget-object p2, p0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {p1, p3, p2}, Lcom/verimatrix/vdc/StreamMetadata;->updateMetadataRequest(Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackPaused(JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    .line 753
    iget-boolean v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->isPause:Z

    if-nez v3, :cond_0

    .line 754
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "time_ms="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "Event add: playback_paused"

    invoke-static {v3, v4, v7, v6}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 755
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v3

    iget-object v9, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v10, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v11, 0x171

    const/4 v4, 0x2

    new-array v14, v4, [J

    const-wide/16 v6, 0x0

    aput-wide v6, v14, v8

    aput-wide v1, v14, v5

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 756
    invoke-virtual {v4}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v15

    move-wide/from16 v12, p1

    move-wide/from16 v16, p5

    .line 755
    invoke-static/range {v9 .. v17}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 758
    invoke-direct/range {p0 .. p4}, Lcom/verimatrix/vdc/StreamPlayback;->sendMediaOffsetEventIfDrift(JJ)V

    .line 759
    invoke-virtual {v0, v1, v2}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    .line 761
    iput-boolean v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->isPause:Z

    move-wide/from16 v1, p1

    .line 762
    iput-wide v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastPauseTimeMills:J

    .line 764
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method playbackProgress(JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    .line 159
    iget-object v15, v13, Lcom/verimatrix/vdc/StreamPlayback;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    iget v7, v13, Lcom/verimatrix/vdc/StreamPlayback;->observed:I

    int-to-long v7, v7

    move-wide/from16 v18, v7

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v13, v16

    const-wide/16 v20, 0x0

    invoke-virtual/range {v0 .. v21}, Lcom/verimatrix/vdc/StreamPlayback;->playbackProgress(JJJJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0
.end method

.method playbackProgress(JJJJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 166
    invoke-static/range {p3 .. p19}, Lcom/verimatrix/vdc/InputValidator;->playbackProgress(JJJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJ)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v5, :cond_0

    .line 168
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timeMs:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expectedPlayTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p5

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indicatedAudioRate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p7

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "observedAudioRate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p9

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "indicatedVideoRate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p11

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "observedVideoRate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p13

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streamType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p15

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nominal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p16

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "observed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p18

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p20

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    :cond_0
    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    .line 176
    iget-wide v8, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastPlaybackProgressCall:J

    sub-long v8, v1, v8

    iget-object v10, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v10, v10, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v15, "stall_sampling_period"

    invoke-virtual {v10, v15}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v10, v8, v15

    if-gez v10, :cond_1

    .line 177
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v3, "Event playback_progress skipped: by STALL_SAMPLING_PERIOD"

    invoke-static {v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    .line 178
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 180
    :cond_1
    invoke-static/range {p5 .. p6}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v8

    .line 181
    invoke-static/range {p7 .. p8}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v10

    .line 182
    invoke-static/range {p9 .. p10}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v12

    .line 183
    invoke-static/range {p11 .. p12}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v14

    .line 184
    invoke-static/range {p13 .. p14}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v5

    move-wide/from16 p5, v8

    .line 185
    invoke-static/range {p16 .. p17}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v7

    move-wide/from16 p16, v7

    .line 186
    invoke-static/range {p18 .. p19}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v7

    .line 188
    iget-boolean v9, v0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-eqz v9, :cond_6

    move-wide/from16 p18, v7

    move-wide/from16 v7, p5

    .line 189
    iput-wide v7, v0, Lcom/verimatrix/vdc/StreamPlayback;->expectedPlayTime:J

    move-wide/from16 v17, v5

    .line 191
    iget-wide v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastPauseTimeMills:J

    move-wide/from16 v19, v14

    const-wide/16 v14, 0x0

    cmp-long v9, v5, v14

    if-nez v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamPlayback;->getLastPlaybackTime()J

    move-result-wide v5

    cmp-long v9, v5, v3

    if-nez v9, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 193
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->isStalled:Z

    if-nez v6, :cond_3

    iget-boolean v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    if-nez v6, :cond_3

    const/4 v6, 0x1

    .line 195
    iput-boolean v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->isStalled:Z

    .line 197
    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v5, v5, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iput-wide v1, v5, Lcom/verimatrix/vdc/StreamErrorHandler;->stallTime:J

    .line 199
    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v6, v6, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "time_ms="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v9, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "expected_play_time="

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v9, v8

    const-string v7, "Event add: playback_progress [stalled]"

    invoke-static {v5, v6, v7, v9}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v5

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v7, v7, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-array v8, v8, [J

    const/16 v16, 0x0

    aput-wide v3, v8, v16

    iget-object v9, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 203
    invoke-virtual {v9}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v9

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    const/16 v6, 0xbb

    move/from16 p7, v6

    move-wide/from16 p8, v14

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-wide/from16 p12, p20

    .line 201
    invoke-static/range {p5 .. p13}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto/16 :goto_1

    .line 204
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    iget-boolean v7, v0, Lcom/verimatrix/vdc/StreamPlayback;->isStalled:Z

    if-eqz v7, :cond_4

    iget-boolean v7, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    if-nez v7, :cond_4

    const/4 v6, 0x0

    .line 206
    iput-boolean v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->isStalled:Z

    .line 208
    iget-wide v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    iget-object v8, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v8, v8, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget-wide v8, v8, Lcom/verimatrix/vdc/StreamErrorHandler;->stallTime:J

    sub-long v8, v1, v8

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    .line 210
    sget-object v6, Lcom/verimatrix/vdc/StreamPlayback;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[pause] added to timeInPause "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v8, v8, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget-wide v8, v8, Lcom/verimatrix/vdc/StreamErrorHandler;->stallTime:J

    sub-long v8, v1, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v6

    iget-object v7, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v8, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v8, v8, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v9, 0xbc

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const/4 v5, 0x2

    new-array v5, v5, [J

    const/16 v16, 0x0

    aput-wide v3, v5, v16

    iget-object v14, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v14, v14, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget-wide v14, v14, Lcom/verimatrix/vdc/StreamErrorHandler;->stallTime:J

    sub-long v14, v1, v14

    const/16 v16, 0x1

    aput-wide v14, v5, v16

    iget-object v14, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 215
    invoke-virtual {v14}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v14

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    move/from16 p7, v9

    move-wide/from16 p8, v21

    move-object/from16 p10, v5

    move-object/from16 p11, v14

    move-wide/from16 p12, p20

    .line 213
    invoke-static/range {p5 .. p13}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 217
    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v5, v5, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/verimatrix/vdc/StreamErrorHandler;->stallTime:J

    .line 218
    iput-wide v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastKnownProgressPlayingTime:J

    goto :goto_1

    .line 219
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->isStalled:Z

    if-nez v5, :cond_5

    .line 220
    iput-wide v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastKnownProgressPlayingTime:J

    .line 223
    :cond_5
    :goto_1
    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->indicatedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v5, v10, v11}, Lcom/verimatrix/vdc/Rate;->addNewRate(J)V

    .line 224
    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->observedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v5, v12, v13}, Lcom/verimatrix/vdc/Rate;->addNewRate(J)V

    .line 225
    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->indicatedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    move-wide/from16 v6, v19

    invoke-virtual {v5, v6, v7}, Lcom/verimatrix/vdc/Rate;->addNewRate(J)V

    .line 226
    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->observedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    move-wide/from16 v6, v17

    invoke-virtual {v5, v6, v7}, Lcom/verimatrix/vdc/Rate;->addNewRate(J)V

    .line 227
    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->indicatedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    move-wide/from16 v6, p16

    invoke-virtual {v5, v6, v7}, Lcom/verimatrix/vdc/Rate;->addNewRate(J)V

    .line 228
    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->observedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    move-wide/from16 v6, p18

    invoke-virtual {v5, v6, v7}, Lcom/verimatrix/vdc/Rate;->addNewRate(J)V

    .line 230
    invoke-direct/range {p0 .. p4}, Lcom/verimatrix/vdc/StreamPlayback;->sendMediaOffsetEventIfDrift(JJ)V

    .line 231
    invoke-virtual {v0, v3, v4}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    .line 233
    iput-wide v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastPlaybackProgressCall:J

    .line 234
    iput-wide v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastTime:J

    .line 236
    :cond_6
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method playbackRequest(JLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "Lcom/verimatrix/vdc/Monitor$DeliveryType;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Lcom/verimatrix/vdc/Monitor$StreamType;",
            "Lcom/verimatrix/vdc/Monitor$StartCause;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-wide/from16 v6, p13

    .line 251
    invoke-static/range {p3 .. p12}, Lcom/verimatrix/vdc/InputValidator;->playbackRequest(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    const/4 v15, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "identifiedType:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "identifier:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mediaType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v15

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "streamType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCause:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0

    .line 260
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamPlayback;->isAssetisedSessionActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamPlayback;->getLastPlaybackTime()J

    move-result-wide v16

    sget-object v18, Lcom/verimatrix/vdc/Monitor$EndCause;->TERMINATED_BY_START:Lcom/verimatrix/vdc/Monitor$EndCause;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/4 v15, 0x1

    move-wide/from16 v3, v16

    move-object/from16 v5, v18

    move-wide v8, v6

    move-wide/from16 v6, p13

    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/StreamPlayback;->playbackStopped(JJLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;

    goto :goto_0

    :cond_1
    move-wide v8, v6

    const/4 v15, 0x1

    .line 264
    :goto_0
    invoke-virtual {v10, v15}, Lcom/verimatrix/vdc/StreamPlayback;->setAssetisedSessionActive(Z)V

    sub-long v0, p1, v8

    .line 265
    iput-wide v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->startRequestTime:J

    .line 267
    iget-boolean v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-nez v0, :cond_2

    .line 268
    iget-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->startSlowStartTimer()V

    :cond_2
    const-string v0, "UNKNOWN"

    .line 271
    iput-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->mediaUrl:Ljava/lang/String;

    .line 272
    iget-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    move-object/from16 v7, p9

    iput-object v7, v0, Lcom/verimatrix/vdc/StreamDataLoad;->recordingId:Ljava/lang/String;

    .line 273
    iget-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->noServiceErrorSent:Z

    const-wide/16 v2, -0x1

    .line 274
    iput-wide v2, v10, Lcom/verimatrix/vdc/StreamPlayback;->expectedPlayTime:J

    .line 275
    iget-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->frameErrorCount:J

    .line 276
    iget-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iput v1, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    .line 277
    iget-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iput v1, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->totalSecondsInError:I

    .line 278
    iget-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iput v1, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueErrorCount:I

    .line 279
    iget-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iput v1, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->continueSecondsInError:I

    .line 280
    iget-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v0, Lcom/verimatrix/vdc/StreamMetadata;->localMetadata:Ljava/util/Map;

    .line 281
    iget-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v0, Lcom/verimatrix/vdc/StreamMetadata;->serverMetadata:Ljava/util/Map;

    .line 283
    iget-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v2, v10, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v3, ""

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "Event add: playback_request"

    invoke-static {v0, v2, v4, v3}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 284
    iget-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iput-wide v8, v0, Lcom/verimatrix/vdc/Stream;->offset:J

    .line 285
    iput-object v14, v10, Lcom/verimatrix/vdc/StreamPlayback;->startCause:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 286
    iput-object v13, v10, Lcom/verimatrix/vdc/StreamPlayback;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    .line 287
    iput-object v12, v10, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 288
    iput-object v11, v10, Lcom/verimatrix/vdc/StreamPlayback;->method:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 290
    invoke-virtual {v10, v6, v5}, Lcom/verimatrix/vdc/StreamPlayback;->setIdentifier(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$IdentifiedType;)V

    .line 292
    sget-object v0, Lcom/verimatrix/vdc/StreamPlayback$2;->$SwitchMap$com$verimatrix$vdc$Monitor$StreamType:[I

    invoke-virtual/range {p7 .. p7}, Lcom/verimatrix/vdc/Monitor$StreamType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v15, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 302
    :cond_3
    iput-boolean v15, v10, Lcom/verimatrix/vdc/StreamPlayback;->audioExpected:Z

    .line 303
    iput-boolean v15, v10, Lcom/verimatrix/vdc/StreamPlayback;->videoExpected:Z

    goto :goto_1

    .line 298
    :cond_4
    iput-boolean v1, v10, Lcom/verimatrix/vdc/StreamPlayback;->audioExpected:Z

    .line 299
    iput-boolean v15, v10, Lcom/verimatrix/vdc/StreamPlayback;->videoExpected:Z

    goto :goto_1

    .line 294
    :cond_5
    iput-boolean v15, v10, Lcom/verimatrix/vdc/StreamPlayback;->audioExpected:Z

    .line 295
    iput-boolean v1, v10, Lcom/verimatrix/vdc/StreamPlayback;->videoExpected:Z

    :goto_1
    const/4 v0, 0x0

    .line 309
    iput-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->pendingPvrStartEvent:Lcom/verimatrix/vdc/SendEvent;

    .line 311
    iget-object v0, v10, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    move-object/from16 v1, p12

    invoke-virtual {v0, v1, v12}, Lcom/verimatrix/vdc/StreamMetadata;->updateMetadataRequest(Ljava/util/Map;Lcom/verimatrix/vdc/Monitor$MediaType;)Lcom/verimatrix/vdc/Monitor$Status;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p13

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    .line 313
    invoke-direct/range {v0 .. v9}, Lcom/verimatrix/vdc/StreamPlayback;->getPlaybackRequest(JJLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0
.end method

.method playbackResolutionChange(JJJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 22

    move-object/from16 v0, p0

    .line 882
    invoke-static/range {p1 .. p6}, Lcom/verimatrix/vdc/InputValidator;->playbackResolutionChange(JJJ)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-nez v1, :cond_0

    .line 883
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playbackWidth:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p3

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playbackHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p5

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 885
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    :cond_0
    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 887
    invoke-static/range {p3 .. p4}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v9

    .line 888
    invoke-static/range {p5 .. p6}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v11

    .line 890
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    .line 891
    iget-boolean v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-eqz v6, :cond_1

    .line 892
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v13, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v14, v6, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v15, 0x81

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    new-array v5, v5, [J

    const-wide/16 v18, 0x0

    aput-wide v18, v5, v4

    aput-wide v9, v5, v3

    aput-wide v11, v5, v2

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 893
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v19

    move-object/from16 v18, v5

    move-wide/from16 v20, p7

    .line 892
    invoke-static/range {v13 .. v21}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 894
    invoke-virtual/range {p0 .. p2}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    .line 895
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    :cond_1
    return-object v1
.end method

.method playbackResumed(JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 15

    move-object v0, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    .line 768
    iget-boolean v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->isPause:Z

    if-eqz v1, :cond_1

    .line 770
    iget-wide v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastPauseTimeMills:J

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    .line 771
    iget-wide v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    sub-long v1, v10, v1

    add-long/2addr v5, v1

    iput-wide v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    .line 772
    sget-object v1, Lcom/verimatrix/vdc/StreamPlayback;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[pause/seek] added to timeInPause "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastPauseTimeMills:J

    sub-long v5, v10, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_0
    iput-wide v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastPauseTimeMills:J

    .line 776
    iput-wide v10, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastTime:J

    const/4 v1, 0x0

    .line 777
    iput-boolean v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->isPause:Z

    .line 779
    iput-wide v10, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackResumedTime:J

    .line 780
    iput-boolean v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->audioResumed:Z

    .line 781
    iput-boolean v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->videoResumed:Z

    .line 783
    invoke-direct {p0}, Lcom/verimatrix/vdc/StreamPlayback;->startPlaybackSettleTimer()V

    .line 785
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v5, v5, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "time_ms="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v8, "Event add: playback_resumed"

    invoke-static {v2, v5, v8, v7}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 786
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v14

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v5, v5, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v7, 0x175

    const/4 v8, 0x2

    new-array v8, v8, [J

    aput-wide v3, v8, v1

    aput-wide v12, v8, v6

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 787
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v9

    move-object v1, v2

    move-object v2, v5

    move v3, v7

    move-wide/from16 v4, p1

    move-object v6, v8

    move-object v7, v9

    move-wide/from16 v8, p5

    .line 786
    invoke-static/range {v1 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 789
    invoke-direct/range {p0 .. p4}, Lcom/verimatrix/vdc/StreamPlayback;->sendMediaOffsetEvent(JJ)V

    .line 790
    invoke-virtual {p0, v12, v13}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    .line 792
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method playbackResumedAudio(JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 796
    iget-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 797
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioResumed:Z

    .line 798
    iget-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackResumedTime:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    .line 803
    :cond_0
    iget-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-eqz v3, :cond_3

    .line 804
    sget-object v3, Lcom/verimatrix/vdc/StreamPlayback$2;->$SwitchMap$com$verimatrix$vdc$Monitor$StreamType:[I

    iget-object v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    invoke-virtual {v4}, Lcom/verimatrix/vdc/Monitor$StreamType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v0, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    goto :goto_0

    .line 812
    :cond_1
    invoke-direct {p0, v1, v2, p5, p6}, Lcom/verimatrix/vdc/StreamPlayback;->sendRestoredAudioEvent(JJ)V

    .line 813
    iget-boolean p5, p0, Lcom/verimatrix/vdc/StreamPlayback;->videoResumed:Z

    if-eqz p5, :cond_3

    .line 814
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/verimatrix/vdc/StreamPlayback;->sendPlaybackRestoredEvent(JJ)V

    .line 815
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verimatrix/vdc/StreamPlayback;->sendMediaOffsetEvent(JJ)V

    .line 816
    invoke-virtual {p0, p3, p4}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    goto :goto_0

    .line 806
    :cond_2
    invoke-direct {p0, v1, v2, p5, p6}, Lcom/verimatrix/vdc/StreamPlayback;->sendRestoredAudioEvent(JJ)V

    .line 807
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/verimatrix/vdc/StreamPlayback;->sendPlaybackRestoredEvent(JJ)V

    .line 808
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verimatrix/vdc/StreamPlayback;->sendMediaOffsetEvent(JJ)V

    .line 809
    invoke-virtual {p0, p3, p4}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    .line 824
    :cond_3
    :goto_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method playbackResumedVideo(JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 5

    .line 828
    iget-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 829
    iput-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->videoResumed:Z

    .line 830
    iget-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackResumedTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 835
    :cond_0
    iget-object v2, p0, Lcom/verimatrix/vdc/StreamPlayback;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-eqz v2, :cond_3

    .line 836
    sget-object v2, Lcom/verimatrix/vdc/StreamPlayback$2;->$SwitchMap$com$verimatrix$vdc$Monitor$StreamType:[I

    iget-object v3, p0, Lcom/verimatrix/vdc/StreamPlayback;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Monitor$StreamType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 844
    :cond_1
    invoke-direct {p0, v0, v1, p5, p6}, Lcom/verimatrix/vdc/StreamPlayback;->sendRestoredVideoEvent(JJ)V

    .line 845
    iget-boolean p5, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioResumed:Z

    if-eqz p5, :cond_3

    .line 846
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/verimatrix/vdc/StreamPlayback;->sendPlaybackRestoredEvent(JJ)V

    .line 847
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verimatrix/vdc/StreamPlayback;->sendMediaOffsetEvent(JJ)V

    .line 848
    invoke-virtual {p0, p3, p4}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    goto :goto_0

    .line 838
    :cond_2
    invoke-direct {p0, v0, v1, p5, p6}, Lcom/verimatrix/vdc/StreamPlayback;->sendRestoredVideoEvent(JJ)V

    .line 839
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/verimatrix/vdc/StreamPlayback;->sendPlaybackRestoredEvent(JJ)V

    .line 840
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verimatrix/vdc/StreamPlayback;->sendMediaOffsetEvent(JJ)V

    .line 841
    invoke-virtual {p0, p3, p4}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    .line 856
    :cond_3
    :goto_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method playbackSeek(JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamPlayback;->getLastPlaybackTime()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    .line 861
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "skip duplicated call"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 863
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 865
    :cond_0
    sget-object v3, Lcom/verimatrix/vdc/StreamPlayback;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[pause/seek] seek "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v3, p1

    .line 867
    iput-wide v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastTime:J

    .line 869
    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamPlayback;->startPlaybackSettleTimer()V

    .line 871
    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v6, v6, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "time_ms="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string v9, "Event add: playback_seek"

    invoke-static {v5, v6, v9, v8}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 872
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v5

    iget-object v11, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v12, v6, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v13, 0x178

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v6, 0x2

    new-array v6, v6, [J

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v10

    aput-wide v1, v6, v7

    iget-object v7, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 873
    invoke-virtual {v7}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v17

    move-object/from16 v16, v6

    move-wide/from16 v18, p5

    .line 872
    invoke-static/range {v11 .. v19}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 875
    invoke-direct/range {p0 .. p4}, Lcom/verimatrix/vdc/StreamPlayback;->sendMediaOffsetEvent(JJ)V

    .line 876
    invoke-virtual {v0, v1, v2}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    .line 878
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method playbackStartRequested(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 11

    .line 348
    iget-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->startSlowStartTimer()V

    :cond_0
    const-wide/16 v4, 0x0

    .line 351
    sget-object v6, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->REFERENCE:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v7, ""

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/verimatrix/vdc/StreamPlayback;->getPlaybackRequest(JJLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackStarted(JJLcom/verimatrix/vdc/Monitor$StartCause;IILjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v1, p8

    .line 431
    invoke-static/range {p3 .. p8}, Lcom/verimatrix/vdc/InputValidator;->playbackStarted(JLcom/verimatrix/vdc/Monitor$StartCause;IILjava/lang/String;)Z

    move-result v2

    const/4 v15, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/16 v16, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    .line 432
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timeMs:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startCause:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playbackHeight:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playbackWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioLanguage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 435
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 438
    :cond_0
    invoke-virtual {v0, v5}, Lcom/verimatrix/vdc/StreamPlayback;->setAssetisedSessionActive(Z)V

    .line 440
    invoke-static/range {p8 .. p8}, Lcom/verimatrix/vdc/MonitorUtils;->parseLanguage(Ljava/lang/String;)[J

    move-result-object v2

    iput-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->audioLanguage:[J

    .line 442
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    new-array v7, v15, [Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time_ms="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "start_cause="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "playback_width="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "playback_height="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x3

    aput-object v6, v7, v15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "language="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x4

    aput-object v1, v7, v15

    const-string v1, "Event add: playback_started"

    invoke-static {v2, v3, v1, v7}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 446
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/StreamErrorHandler;->stopSlowStartTimer()V

    .line 448
    iget-wide v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->startRequestTime:J

    sub-long v18, v8, v1

    .line 450
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v7

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v3, 0x80

    const/4 v6, 0x3

    new-array v15, v6, [J

    aput-wide v18, v15, v16

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->audioLanguage:[J

    aget-wide v20, v6, v16

    aput-wide v20, v15, v5

    aget-wide v20, v6, v5

    aput-wide v20, v15, v4

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 452
    invoke-virtual {v6}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v20

    const/4 v6, 0x2

    move-wide/from16 v4, p1

    move-object v6, v15

    move-object v15, v7

    const/4 v12, 0x4

    move-object/from16 v7, v20

    .line 450
    invoke-static/range {v1 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 453
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v15

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v3, 0x7f

    const/4 v7, 0x3

    new-array v6, v7, [J

    aput-wide v18, v6, v16

    int-to-long v4, v13

    const/4 v13, 0x1

    aput-wide v4, v6, v13

    int-to-long v4, v14

    const/4 v14, 0x2

    aput-wide v4, v6, v14

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 455
    invoke-virtual {v4}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v17

    move-wide/from16 v4, p1

    const/4 v12, 0x3

    move-object/from16 v7, v17

    .line 453
    invoke-static/range {v1 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 457
    sget-object v1, Lcom/verimatrix/vdc/StreamPlayback$2;->$SwitchMap$com$verimatrix$vdc$Monitor$MediaType:[I

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v6, 0x0

    if-eq v1, v13, :cond_5

    if-eq v1, v14, :cond_4

    if-eq v1, v12, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    .line 485
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v15

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v4, 0xa2

    new-array v5, v2, [J

    aput-wide v18, v5, v16

    aput-wide v6, v5, v13

    aput-wide v6, v5, v14

    .line 487
    invoke-virtual/range {p5 .. p5}, Lcom/verimatrix/vdc/Monitor$StartCause;->getValue()I

    move-result v2

    int-to-long v6, v2

    aput-wide v6, v5, v12

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v7

    move-object v2, v3

    move v3, v4

    move-object v6, v5

    move-wide/from16 v4, p1

    const-wide/16 v12, 0x0

    .line 485
    invoke-static/range {v1 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto/16 :goto_0

    :cond_1
    move-wide v12, v6

    const/4 v1, 0x3

    .line 479
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v15

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v4, 0xa2

    const/4 v5, 0x4

    new-array v6, v5, [J

    aput-wide v18, v6, v16

    const/4 v5, 0x1

    aput-wide v12, v6, v5

    aput-wide v12, v6, v14

    .line 481
    invoke-virtual/range {p5 .. p5}, Lcom/verimatrix/vdc/Monitor$StartCause;->getValue()I

    move-result v5

    int-to-long v12, v5

    aput-wide v12, v6, v1

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v7

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-wide/from16 v4, p1

    .line 479
    invoke-static/range {v1 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x3

    .line 474
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v12

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v4, 0xa2

    const/4 v5, 0x4

    new-array v6, v5, [J

    aput-wide v18, v6, v16

    const/4 v5, 0x1

    const-wide/16 v15, 0x0

    aput-wide v15, v6, v5

    aput-wide v15, v6, v14

    .line 476
    invoke-virtual/range {p5 .. p5}, Lcom/verimatrix/vdc/Monitor$StartCause;->getValue()I

    move-result v5

    int-to-long v13, v5

    aput-wide v13, v6, v1

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v7

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-wide/from16 v4, p1

    .line 474
    invoke-static/range {v1 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x3

    .line 464
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v12

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v4, 0xfe

    const/4 v5, 0x4

    new-array v6, v5, [J

    aput-wide v18, v6, v16

    const/4 v5, 0x1

    const-wide/16 v15, 0x0

    aput-wide v15, v6, v5

    aput-wide v15, v6, v14

    .line 466
    invoke-virtual/range {p5 .. p5}, Lcom/verimatrix/vdc/Monitor$StartCause;->getValue()I

    move-result v5

    int-to-long v13, v5

    aput-wide v13, v6, v1

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v7

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-wide/from16 v4, p1

    .line 464
    invoke-static/range {v1 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    .line 469
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v12

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v4, 0x133

    const/4 v5, 0x4

    new-array v6, v5, [J

    aput-wide v18, v6, v16

    const/4 v5, 0x1

    const-wide/16 v15, 0x0

    aput-wide v15, v6, v5

    aput-wide v15, v6, v14

    .line 471
    invoke-virtual/range {p5 .. p5}, Lcom/verimatrix/vdc/Monitor$StartCause;->getValue()I

    move-result v5

    int-to-long v13, v5

    aput-wide v13, v6, v1

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v7

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-wide/from16 v4, p1

    .line 469
    invoke-static/range {v1 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    .line 459
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v12

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v4, 0x133

    const/4 v5, 0x4

    new-array v6, v5, [J

    aput-wide v18, v6, v16

    const/4 v5, 0x1

    const-wide/16 v15, 0x0

    aput-wide v15, v6, v5

    aput-wide v15, v6, v14

    .line 461
    invoke-virtual/range {p5 .. p5}, Lcom/verimatrix/vdc/Monitor$StartCause;->getValue()I

    move-result v5

    int-to-long v13, v5

    aput-wide v13, v6, v1

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v7

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-wide/from16 v4, p1

    .line 459
    invoke-static/range {v1 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    :goto_0
    const/4 v1, 0x1

    .line 491
    iput-boolean v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackWasStarted:Z

    .line 492
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/verimatrix/vdc/StreamErrorHandler;->stallTime:J

    .line 493
    invoke-virtual {v0, v10, v11}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    .line 494
    iput-wide v8, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastTime:J

    .line 495
    iput-wide v8, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackStartedTime:J

    .line 496
    iput-wide v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    .line 497
    iput-boolean v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    .line 498
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method playbackStartedAudio(JJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 21

    move-object/from16 v7, p0

    .line 366
    iget-object v0, v7, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v1, v7, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time_ms="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start_cause="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/verimatrix/vdc/StreamPlayback;->startCause:Lcom/verimatrix/vdc/Monitor$StartCause;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v3, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "language="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p5

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x2

    aput-object v4, v3, v11

    const-string v4, "Event add: playback_started_audio"

    invoke-static {v0, v1, v4, v3}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamPlayback;->isAssetisedSessionActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v7, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-nez v1, :cond_0

    sub-long v3, p1, p6

    .line 370
    iput-wide v3, v7, Lcom/verimatrix/vdc/StreamPlayback;->audioStartedTime:J

    .line 372
    invoke-static/range {p5 .. p5}, Lcom/verimatrix/vdc/MonitorUtils;->parseLanguage(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, v7, Lcom/verimatrix/vdc/StreamPlayback;->audioLanguage:[J

    .line 374
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v12, v7, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v7, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v13, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    new-array v2, v2, [J

    iget-wide v3, v7, Lcom/verimatrix/vdc/StreamPlayback;->audioStartedTime:J

    iget-wide v14, v7, Lcom/verimatrix/vdc/StreamPlayback;->startRequestTime:J

    sub-long/2addr v3, v14

    aput-wide v3, v2, v8

    iget-object v3, v7, Lcom/verimatrix/vdc/StreamPlayback;->audioLanguage:[J

    aget-wide v14, v3, v8

    aput-wide v14, v2, v9

    aget-wide v14, v3, v9

    aput-wide v14, v2, v11

    iget-object v3, v7, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 377
    invoke-virtual {v3}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v18

    const/16 v3, 0x80

    move v14, v3

    move-wide/from16 v15, p1

    move-object/from16 v17, v2

    move-wide/from16 v19, p6

    .line 374
    invoke-static/range {v12 .. v20}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 379
    iput-boolean v9, v7, Lcom/verimatrix/vdc/StreamPlayback;->audioStarted:Z

    .line 382
    invoke-direct {v7, v8}, Lcom/verimatrix/vdc/StreamPlayback;->needSendPlaybackStarted(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p6

    .line 383
    invoke-direct/range {v0 .. v6}, Lcom/verimatrix/vdc/StreamPlayback;->playbackStarted(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0

    .line 386
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    :cond_1
    return-object v0
.end method

.method playbackStartedVideo(JJJJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 17

    move-object/from16 v7, p0

    move-wide/from16 v3, p3

    .line 393
    invoke-static/range {p3 .. p8}, Lcom/verimatrix/vdc/InputValidator;->playbackStartedVideo(JJJ)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 394
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timeMs:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playbackWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p5

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playbackHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p7

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 396
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0

    :cond_0
    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    .line 398
    invoke-static/range {p5 .. p6}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v8

    .line 399
    invoke-static/range {p7 .. p8}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v10

    .line 401
    iget-object v0, v7, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v12, v7, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v12, v12, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "time_ms="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "start_cause="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Lcom/verimatrix/vdc/StreamPlayback;->startCause:Lcom/verimatrix/vdc/Monitor$StartCause;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "playback_width="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "playback_height="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v1

    const-string v14, "Event add: playback_started_video"

    invoke-static {v0, v12, v14, v13}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 405
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamPlayback;->isAssetisedSessionActive()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-boolean v12, v7, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-nez v12, :cond_1

    sub-long v12, p1, p9

    .line 407
    iput-wide v12, v7, Lcom/verimatrix/vdc/StreamPlayback;->videoStartedTime:J

    .line 409
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v15

    iget-object v12, v7, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v13, v7, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v13, v13, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    new-array v1, v1, [J

    move-object/from16 p5, v15

    iget-wide v14, v7, Lcom/verimatrix/vdc/StreamPlayback;->startRequestTime:J

    sub-long v14, p1, v14

    sub-long v14, v14, p9

    aput-wide v14, v1, v5

    aput-wide v8, v1, v6

    aput-wide v10, v1, v2

    iget-object v2, v7, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 411
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v14

    move-object v8, v12

    move-object v9, v13

    const/16 v2, 0x7f

    move v10, v2

    move-wide/from16 v11, p1

    move-object v13, v1

    move-object/from16 v1, p5

    move-wide/from16 v15, p9

    .line 409
    invoke-static/range {v8 .. v16}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 414
    iput-boolean v6, v7, Lcom/verimatrix/vdc/StreamPlayback;->videoStarted:Z

    .line 418
    invoke-direct {v7, v6}, Lcom/verimatrix/vdc/StreamPlayback;->needSendPlaybackStarted(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p9

    .line 419
    invoke-direct/range {v0 .. v6}, Lcom/verimatrix/vdc/StreamPlayback;->playbackStarted(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0

    .line 422
    :cond_1
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    :cond_2
    return-object v0
.end method

.method playbackStopRequested(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 2

    .line 545
    iget-object p1, p0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object p2, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object p2, p2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "playback_stop_requested (not currently supported)"

    invoke-static {p1, p2, v1, v0}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 547
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method playbackStopped(JJLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 27

    move-object/from16 v0, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-object/from16 v1, p5

    .line 551
    invoke-static/range {p3 .. p5}, Lcom/verimatrix/vdc/InputValidator;->playbackStopped(JLcom/verimatrix/vdc/Monitor$EndCause;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v2, :cond_0

    .line 552
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endCause:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v14

    invoke-static {v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 553
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    :cond_0
    sub-long v4, v10, p6

    .line 557
    iput-boolean v15, v0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    .line 558
    iput-boolean v15, v0, Lcom/verimatrix/vdc/StreamPlayback;->isPause:Z

    .line 559
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/StreamErrorHandler;->checkTotalAndContinueCounters()V

    .line 560
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget v8, v2, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    .line 561
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget v9, v2, Lcom/verimatrix/vdc/StreamErrorHandler;->totalSecondsInError:I

    .line 563
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget-boolean v2, v2, Lcom/verimatrix/vdc/StreamErrorHandler;->isInErrorPersist:Z

    if-eqz v2, :cond_1

    .line 566
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/StreamErrorHandler;->cancelExitErrorTimer()V

    .line 567
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/StreamErrorHandler;->stopErrorPersist()V

    .line 569
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamPlayback;->startPlaybackSettleTimer()V

    .line 570
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/StreamErrorHandler;->stopSlowStartTimer()V

    .line 571
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/Stream;->removeBatteryAndVolumeListeners()V

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamPlayback;->isAssetisedSessionActive()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-eqz v2, :cond_8

    .line 574
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v6, v6, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    new-array v7, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "time_ms="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "end_cause="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x1

    aput-object v3, v7, v14

    const-string v3, "Event add: playback_stopped"

    invoke-static {v2, v6, v3, v7}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 578
    iget-boolean v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackWasStarted:Z

    if-eqz v2, :cond_4

    .line 580
    iget-wide v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastPauseTimeMills:J

    const-wide/16 v6, 0x0

    cmp-long v14, v6, v2

    if-gez v14, :cond_2

    .line 581
    iget-wide v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    sub-long v2, v4, v2

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    .line 584
    :cond_2
    iget-boolean v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->isStalled:Z

    if-eqz v2, :cond_3

    iget-wide v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastKnownProgressPlayingTime:J

    const-wide/16 v6, 0x0

    cmp-long v14, v2, v6

    if-eqz v14, :cond_3

    .line 585
    iget-wide v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    sub-long v2, v4, v2

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    .line 587
    :cond_3
    iget-wide v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackStartedTime:J

    sub-long/2addr v4, v2

    iget-wide v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    sub-long v2, v4, v2

    move-wide v6, v2

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    .line 589
    :goto_0
    iput-wide v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastPauseTimeMills:J

    .line 591
    sget-object v2, Lcom/verimatrix/vdc/StreamPlayback;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[pause/seek] Time in pause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    sget-object v2, Lcom/verimatrix/vdc/StreamPlayback$2;->$SwitchMap$com$verimatrix$vdc$Monitor$MediaType:[I

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Monitor$MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-wide/16 v25, 0x2

    const-wide/16 v19, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v5, :cond_6

    const/4 v14, 0x2

    if-eq v2, v14, :cond_6

    if-eq v2, v4, :cond_5

    .line 650
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v2

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v14, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v14, v14, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v22, 0xa1

    new-array v3, v3, [J

    .line 653
    invoke-static {v6, v7}, Lcom/verimatrix/vdc/MonitorUtils;->millisecondsToSeconds(J)J

    move-result-wide v6

    aput-wide v6, v3, v15

    const-wide/16 v6, 0x0

    aput-wide v6, v3, v5

    const/4 v5, 0x2

    aput-wide v6, v3, v5

    .line 655
    invoke-virtual/range {p5 .. p5}, Lcom/verimatrix/vdc/Monitor$EndCause;->getValue()I

    move-result v1

    int-to-long v6, v1

    const/4 v1, 0x3

    aput-wide v6, v3, v1

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 657
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v7

    move-object v1, v4

    move-object v6, v2

    move-object v2, v14

    move-object v14, v3

    move/from16 v3, v22

    move-wide/from16 v4, p1

    move-object v15, v6

    move-object v6, v14

    move v14, v8

    move v12, v9

    move-wide/from16 v8, p6

    .line 650
    invoke-static/range {v1 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 659
    iget-boolean v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackWasStarted:Z

    if-eqz v1, :cond_7

    .line 660
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v18, 0xa4

    add-long v19, v10, v19

    const/4 v4, 0x1

    new-array v5, v4, [J

    int-to-long v6, v12

    const/4 v4, 0x0

    aput-wide v6, v5, v4

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 665
    invoke-virtual {v4}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v22

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v21, v5

    move-wide/from16 v23, p6

    .line 660
    invoke-static/range {v16 .. v24}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 667
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v18, 0xa5

    add-long v19, v10, v25

    const/4 v4, 0x1

    new-array v4, v4, [J

    int-to-long v5, v14

    const/4 v7, 0x0

    aput-wide v5, v4, v7

    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 670
    invoke-virtual {v5}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v22

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v21, v4

    .line 667
    invoke-static/range {v16 .. v24}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto/16 :goto_1

    :cond_5
    move v14, v8

    move v12, v9

    .line 622
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v13

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v5, 0xfc

    new-array v8, v3, [J

    .line 625
    invoke-static {v6, v7}, Lcom/verimatrix/vdc/MonitorUtils;->millisecondsToSeconds(J)J

    move-result-wide v6

    const/4 v3, 0x0

    aput-wide v6, v8, v3

    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v8, v3

    const/4 v3, 0x2

    aput-wide v6, v8, v3

    .line 628
    invoke-virtual/range {p5 .. p5}, Lcom/verimatrix/vdc/Monitor$EndCause;->getValue()I

    move-result v1

    int-to-long v6, v1

    const/4 v1, 0x3

    aput-wide v6, v8, v1

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 630
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v7

    move-object v1, v2

    move-object v2, v4

    move v3, v5

    move-wide/from16 v4, p1

    move-object v6, v8

    move-wide/from16 v8, p6

    .line 622
    invoke-static/range {v1 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 632
    iget-boolean v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackWasStarted:Z

    if-eqz v1, :cond_7

    .line 633
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v18, 0xff

    add-long v19, v10, v19

    const/4 v4, 0x1

    new-array v5, v4, [J

    int-to-long v6, v12

    const/4 v4, 0x0

    aput-wide v6, v5, v4

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 638
    invoke-virtual {v4}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v22

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v21, v5

    move-wide/from16 v23, p6

    .line 633
    invoke-static/range {v16 .. v24}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 640
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v18, 0x100

    add-long v19, v10, v25

    const/4 v4, 0x1

    new-array v4, v4, [J

    int-to-long v5, v14

    const/4 v7, 0x0

    aput-wide v5, v4, v7

    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 643
    invoke-virtual {v5}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v22

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v21, v4

    .line 640
    invoke-static/range {v16 .. v24}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto/16 :goto_1

    :cond_6
    move v14, v8

    move v12, v9

    .line 596
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v13

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v4, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v5, 0x190

    new-array v8, v3, [J

    .line 599
    invoke-static {v6, v7}, Lcom/verimatrix/vdc/MonitorUtils;->millisecondsToSeconds(J)J

    move-result-wide v6

    const/4 v3, 0x0

    aput-wide v6, v8, v3

    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v8, v3

    const/4 v3, 0x2

    aput-wide v6, v8, v3

    .line 602
    invoke-virtual/range {p5 .. p5}, Lcom/verimatrix/vdc/Monitor$EndCause;->getValue()I

    move-result v1

    int-to-long v6, v1

    const/4 v1, 0x3

    aput-wide v6, v8, v1

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 604
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v7

    move-object v1, v2

    move-object v2, v4

    move v3, v5

    move-wide/from16 v4, p1

    move-object v6, v8

    move-wide/from16 v8, p6

    .line 596
    invoke-static/range {v1 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 606
    iget-boolean v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackWasStarted:Z

    if-eqz v1, :cond_7

    .line 607
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v18, 0x191

    add-long v19, v10, v19

    const/4 v4, 0x1

    new-array v5, v4, [J

    int-to-long v6, v12

    const/4 v4, 0x0

    aput-wide v6, v5, v4

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 612
    invoke-virtual {v4}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v22

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v21, v5

    move-wide/from16 v23, p6

    .line 607
    invoke-static/range {v16 .. v24}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 614
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v18, 0x192

    add-long v19, v10, v25

    const/4 v4, 0x1

    new-array v4, v4, [J

    int-to-long v5, v14

    const/4 v7, 0x0

    aput-wide v5, v4, v7

    iget-object v5, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    .line 617
    invoke-virtual {v5}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v22

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v21, v4

    .line 614
    invoke-static/range {v16 .. v24}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 676
    :cond_7
    :goto_1
    invoke-direct/range {p0 .. p4}, Lcom/verimatrix/vdc/StreamPlayback;->sendMediaOffsetEventIfDrift(JJ)V

    move-wide/from16 v1, p3

    .line 677
    invoke-virtual {v0, v1, v2}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    goto :goto_2

    .line 680
    :cond_8
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v3, "Event playback_stopped skipped: playback request was not called"

    invoke-static {v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    :goto_2
    const/4 v1, 0x0

    .line 683
    iput-boolean v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->isStalled:Z

    .line 684
    iput-boolean v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackWasStarted:Z

    .line 685
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/verimatrix/vdc/StreamErrorHandler;->stallTime:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 686
    iput v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastReplayRate:F

    .line 687
    iput-wide v10, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastTime:J

    .line 688
    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/StreamPlayback;->setAssetisedSessionActive(Z)V

    .line 689
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iput-wide v3, v2, Lcom/verimatrix/vdc/StreamErrorHandler;->lastErrorStart:J

    .line 690
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iput v1, v2, Lcom/verimatrix/vdc/StreamErrorHandler;->totalSecondsInError:I

    .line 691
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iput v1, v2, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    .line 692
    iput-wide v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastKnownProgressPlayingTime:J

    const/4 v1, 0x0

    .line 693
    iput-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->mediaUrl:Ljava/lang/String;

    .line 694
    iput-wide v3, v0, Lcom/verimatrix/vdc/StreamPlayback;->lastMediaOffsetCheckTime:J

    .line 696
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->indicatedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->clear()V

    .line 697
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->observedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->clear()V

    .line 698
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->indicatedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->clear()V

    .line 699
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->observedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->clear()V

    .line 700
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->indicatedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->clear()V

    .line 701
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->observedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->clear()V

    .line 703
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->freeStream()V

    .line 705
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method resetVariables()V
    .locals 6

    .line 1211
    sget-object v0, Lcom/verimatrix/vdc/Monitor$MediaType;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$MediaType;

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 1212
    sget-object v0, Lcom/verimatrix/vdc/Monitor$StartCause;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$StartCause;

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->startCause:Lcom/verimatrix/vdc/Monitor$StartCause;

    .line 1213
    sget-object v0, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO:Lcom/verimatrix/vdc/Monitor$StreamType;

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    const-wide/16 v0, -0x2

    .line 1214
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->contentId:J

    const-string v0, "UNKNOWN"

    .line 1215
    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->identifier:Ljava/lang/String;

    .line 1216
    sget-object v1, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    iput-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->identifiedType:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    .line 1217
    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->mediaUrl:Ljava/lang/String;

    .line 1218
    sget-object v0, Lcom/verimatrix/vdc/Monitor$DeliveryType;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->method:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    const-wide/16 v0, 0x0

    .line 1219
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->startRequestTime:J

    const-wide/16 v2, -0x1

    .line 1220
    iput-wide v2, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastPlaybackTime:J

    .line 1221
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackResumedTime:J

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1222
    iput v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastReplayRate:F

    .line 1223
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastTime:J

    .line 1224
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastPlaybackProgressCall:J

    .line 1225
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastPauseTimeMills:J

    .line 1226
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->timeInPause:J

    const/4 v4, 0x2

    new-array v4, v4, [J

    .line 1227
    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioLanguage:[J

    const/4 v4, 0x0

    .line 1228
    iput-boolean v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    .line 1229
    iput-boolean v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->isStalled:Z

    .line 1230
    iput-boolean v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->isPause:Z

    const/4 v5, 0x1

    .line 1231
    iput-boolean v5, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioExpected:Z

    .line 1232
    iput-boolean v5, p0, Lcom/verimatrix/vdc/StreamPlayback;->videoExpected:Z

    .line 1233
    iput-boolean v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioStarted:Z

    .line 1234
    iput-boolean v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->videoStarted:Z

    .line 1235
    iput-boolean v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioResumed:Z

    .line 1236
    iput-boolean v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->videoResumed:Z

    .line 1237
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->audioStartedTime:J

    .line 1238
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->videoStartedTime:J

    .line 1239
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackStartedTime:J

    .line 1240
    iput v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->indicated:I

    .line 1241
    iput-wide v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastKnownProgressPlayingTime:J

    .line 1242
    iput v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->observed:I

    .line 1243
    new-instance v0, Lcom/verimatrix/vdc/Rate;

    invoke-direct {v0}, Lcom/verimatrix/vdc/Rate;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->indicatedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    .line 1244
    new-instance v0, Lcom/verimatrix/vdc/Rate;

    invoke-direct {v0}, Lcom/verimatrix/vdc/Rate;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->observedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    .line 1245
    new-instance v0, Lcom/verimatrix/vdc/Rate;

    invoke-direct {v0}, Lcom/verimatrix/vdc/Rate;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->indicatedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    .line 1246
    new-instance v0, Lcom/verimatrix/vdc/Rate;

    invoke-direct {v0}, Lcom/verimatrix/vdc/Rate;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->observedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    .line 1247
    new-instance v0, Lcom/verimatrix/vdc/Rate;

    invoke-direct {v0}, Lcom/verimatrix/vdc/Rate;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->indicatedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    .line 1248
    new-instance v0, Lcom/verimatrix/vdc/Rate;

    invoke-direct {v0}, Lcom/verimatrix/vdc/Rate;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->observedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    const/4 v0, 0x0

    .line 1249
    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->referenceCode:Ljava/lang/String;

    .line 1250
    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->pendingPvrStartEvent:Lcom/verimatrix/vdc/SendEvent;

    .line 1251
    iput-boolean v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackWasStarted:Z

    .line 1252
    invoke-virtual {p0, v4}, Lcom/verimatrix/vdc/StreamPlayback;->setAssetisedSessionActive(Z)V

    .line 1253
    iput-boolean v4, p0, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    .line 1254
    invoke-direct {p0}, Lcom/verimatrix/vdc/StreamPlayback;->cancelPlaybackSettleTimer()V

    .line 1255
    iput-wide v2, p0, Lcom/verimatrix/vdc/StreamPlayback;->expectedPlayTime:J

    .line 1256
    iput-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastStreamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method sendPendingPvrEvent()V
    .locals 3

    .line 1199
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v0, v0, Lcom/verimatrix/vdc/StreamPlayback;->pendingPvrStartEvent:Lcom/verimatrix/vdc/SendEvent;

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/verimatrix/vdc/StreamPlayback;->setContentId(J)V

    .line 1201
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->pendingPvrStartEvent:Lcom/verimatrix/vdc/SendEvent;

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 1202
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/verimatrix/vdc/StreamPlayback;->pendingPvrStartEvent:Lcom/verimatrix/vdc/SendEvent;

    :cond_0
    return-void
.end method

.method setAssetisedSessionActive(Z)V
    .locals 1

    .line 1071
    iget-boolean v0, p0, Lcom/verimatrix/vdc/StreamPlayback;->assetisedSessionActive:Z

    if-eq v0, p1, :cond_0

    .line 1072
    iput-boolean p1, p0, Lcom/verimatrix/vdc/StreamPlayback;->assetisedSessionActive:Z

    :cond_0
    return-void
.end method

.method setContentId(J)V
    .locals 3

    .line 1165
    sget-object v0, Lcom/verimatrix/vdc/StreamPlayback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[content_id] setContentId(long) called with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iput-wide p1, p0, Lcom/verimatrix/vdc/StreamPlayback;->contentId:J

    return-void
.end method

.method setIdentifier(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$IdentifiedType;)V
    .locals 11

    .line 317
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamPlayback;->identifier:Ljava/lang/String;

    .line 318
    iput-object p2, p0, Lcom/verimatrix/vdc/StreamPlayback;->identifiedType:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    .line 321
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamPlayback;->referenceCode:Ljava/lang/String;

    .line 322
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorUtils;->getFNVHashByModule(Ljava/lang/String;)J

    move-result-wide v0

    .line 323
    iget-object v2, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v3, "assets_user_id"

    invoke-virtual {v2, v3}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 325
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/verimatrix/vdc/StreamPlayback;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v4, v2, Lcom/verimatrix/vdc/Stream;->profile:Lcom/verimatrix/vdc/Profile;

    .line 327
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/verimatrix/vdc/Monitor$ProfileSetType;->WRITE_ONCE:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    sget-object v8, Lcom/verimatrix/vdc/Monitor$ProfileDataType;->STRING:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    sget-object v9, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;->PRIVATE:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    move-object v6, p1

    .line 326
    invoke-virtual/range {v4 .. v10}, Lcom/verimatrix/vdc/Profile;->set(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileSetType;Lcom/verimatrix/vdc/Monitor$ProfileDataType;Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;

    .line 335
    :cond_0
    sget-object v2, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->URL:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    if-ne p2, v2, :cond_2

    .line 336
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamPlayback;->mediaUrl:Ljava/lang/String;

    .line 337
    sget-object p1, Lcom/verimatrix/vdc/Monitor$DeliveryType;->FILE:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    iget-object p2, p0, Lcom/verimatrix/vdc/StreamPlayback;->method:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    if-ne p1, p2, :cond_1

    .line 338
    iget-object p1, p0, Lcom/verimatrix/vdc/StreamPlayback;->mediaUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/verimatrix/vdc/StreamPlayback;->detectIdByUrl(Ljava/lang/String;J)V

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/StreamPlayback;->setContentId(J)V

    goto :goto_0

    .line 342
    :cond_2
    sget-object p1, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->REFERENCE:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    if-ne p2, p1, :cond_3

    .line 343
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/StreamPlayback;->setContentId(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method setLastPlaybackTime(J)V
    .locals 0

    .line 1067
    iput-wide p1, p0, Lcom/verimatrix/vdc/StreamPlayback;->lastPlaybackTime:J

    return-void
.end method
