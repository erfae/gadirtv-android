.class final Lcom/verimatrix/vdc/Stream;
.super Ljava/lang/Object;
.source "Stream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Stream"


# instance fields
.field private c:Landroid/content/Context;

.field protected configuration:Lcom/verimatrix/vdc/Configuration;

.field protected dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

.field private deviceId:Ljava/lang/String;

.field protected downloading:Ljava/lang/Boolean;

.field protected errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

.field protected heartbeat:Lcom/verimatrix/vdc/Heartbeat;

.field protected metadata:Lcom/verimatrix/vdc/StreamMetadata;

.field offset:J

.field protected playback:Lcom/verimatrix/vdc/StreamPlayback;

.field protected profile:Lcom/verimatrix/vdc/Profile;

.field protected streamFunction:Lcom/verimatrix/vdc/Monitor$StreamFunction;

.field protected final streamHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/verimatrix/vdc/Monitor$StreamFunction;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/Profile;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/verimatrix/vdc/Stream;->offset:J

    .line 37
    iput-object p1, p0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    .line 38
    iput p2, p0, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    const/4 p2, 0x0

    .line 39
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/verimatrix/vdc/Stream;->downloading:Ljava/lang/Boolean;

    .line 40
    iput-object p3, p0, Lcom/verimatrix/vdc/Stream;->streamFunction:Lcom/verimatrix/vdc/Monitor$StreamFunction;

    .line 41
    iput-object p4, p0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    .line 42
    iput-object p5, p0, Lcom/verimatrix/vdc/Stream;->profile:Lcom/verimatrix/vdc/Profile;

    .line 44
    new-instance p2, Lcom/verimatrix/vdc/StreamPlayback;

    invoke-direct {p2, p1, p0}, Lcom/verimatrix/vdc/StreamPlayback;-><init>(Landroid/content/Context;Lcom/verimatrix/vdc/Stream;)V

    iput-object p2, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    .line 45
    new-instance p2, Lcom/verimatrix/vdc/StreamDataLoad;

    invoke-direct {p2, p1, p0}, Lcom/verimatrix/vdc/StreamDataLoad;-><init>(Landroid/content/Context;Lcom/verimatrix/vdc/Stream;)V

    iput-object p2, p0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    .line 46
    new-instance p2, Lcom/verimatrix/vdc/StreamMetadata;

    invoke-direct {p2, p1, p0}, Lcom/verimatrix/vdc/StreamMetadata;-><init>(Landroid/content/Context;Lcom/verimatrix/vdc/Stream;)V

    iput-object p2, p0, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    .line 47
    new-instance p2, Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-direct {p2, p1, p0}, Lcom/verimatrix/vdc/StreamErrorHandler;-><init>(Landroid/content/Context;Lcom/verimatrix/vdc/Stream;)V

    iput-object p2, p0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    .line 49
    new-instance p2, Lcom/verimatrix/vdc/Heartbeat;

    invoke-direct {p2, p1, p0}, Lcom/verimatrix/vdc/Heartbeat;-><init>(Landroid/content/Context;Lcom/verimatrix/vdc/Stream;)V

    iput-object p2, p0, Lcom/verimatrix/vdc/Stream;->heartbeat:Lcom/verimatrix/vdc/Heartbeat;

    return-void
.end method

.method static synthetic access$000(Lcom/verimatrix/vdc/Stream;)Landroid/content/Context;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    return-object p0
.end method

.method private callHeartbeat(Z)V
    .locals 22

    move-object/from16 v0, p0

    .line 67
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->heartbeat:Lcom/verimatrix/vdc/Heartbeat;

    iget-object v2, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    move/from16 v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/verimatrix/vdc/Heartbeat;->heartbeatUpdate(Landroid/content/Context;Z)V

    .line 68
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-boolean v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-eqz v1, :cond_7

    .line 71
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget v1, v1, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v1, :cond_5

    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-eqz v1, :cond_5

    .line 72
    sget-object v1, Lcom/verimatrix/vdc/Stream$5;->$SwitchMap$com$verimatrix$vdc$Monitor$MediaType:[I

    iget-object v7, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v7, v7, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$MediaType;->ordinal()I

    move-result v7

    aget v1, v1, v7

    if-eq v1, v6, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v7, 0x5

    if-eq v1, v7, :cond_0

    .line 95
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v7, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v8, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v9, 0xa5

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-array v12, v6, [J

    iget-object v13, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget v13, v13, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    int-to-long v13, v13

    aput-wide v13, v12, v5

    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v13

    .line 95
    invoke-static/range {v7 .. v13}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto/16 :goto_0

    .line 90
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v7, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v8, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v9, 0xa5

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-array v12, v6, [J

    iget-object v13, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget v13, v13, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    int-to-long v13, v13

    aput-wide v13, v12, v5

    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v13

    .line 90
    invoke-static/range {v7 .. v13}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto/16 :goto_0

    .line 86
    :cond_1
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v7, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v8, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v9, 0xa5

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-array v12, v6, [J

    iget-object v13, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget v13, v13, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    int-to-long v13, v13

    aput-wide v13, v12, v5

    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v13

    .line 86
    invoke-static/range {v7 .. v13}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v7, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v8, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v9, 0x100

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-array v12, v6, [J

    iget-object v13, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget v13, v13, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    int-to-long v13, v13

    aput-wide v13, v12, v5

    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v13

    .line 82
    invoke-static/range {v7 .. v13}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 78
    :cond_3
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v7, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v8, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v9, 0x100

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-array v12, v6, [J

    iget-object v13, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget v13, v13, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    int-to-long v13, v13

    aput-wide v13, v12, v5

    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v13

    .line 78
    invoke-static/range {v7 .. v13}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 74
    :cond_4
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v7, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v8, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v9, 0x192

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-array v12, v6, [J

    iget-object v13, v0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget v13, v13, Lcom/verimatrix/vdc/StreamErrorHandler;->totalErrorCount:I

    int-to-long v13, v13

    aput-wide v13, v12, v5

    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v13

    .line 74
    invoke-static/range {v7 .. v13}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    :cond_5
    :goto_0
    new-array v1, v3, [Lcom/verimatrix/vdc/Rate;

    .line 102
    iget-object v7, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v7, v7, Lcom/verimatrix/vdc/StreamPlayback;->indicatedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    aput-object v7, v1, v5

    iget-object v7, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v7, v7, Lcom/verimatrix/vdc/StreamPlayback;->observedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    aput-object v7, v1, v6

    iget-object v7, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v7, v7, Lcom/verimatrix/vdc/StreamPlayback;->indicatedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    aput-object v7, v1, v4

    iget-object v7, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v7, v7, Lcom/verimatrix/vdc/StreamPlayback;->observedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    aput-object v7, v1, v2

    invoke-static {v1}, Lcom/verimatrix/vdc/Rate;->isEmpty([Lcom/verimatrix/vdc/Rate;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 104
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->indicatedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->getAverageTimesThou()J

    move-result-wide v7

    .line 105
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->observedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->getAverageTimesThou()J

    move-result-wide v9

    .line 106
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->indicatedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->getAverageTimesThou()J

    move-result-wide v11

    .line 107
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->observedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->getAverageTimesThou()J

    move-result-wide v13

    .line 109
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->indicatedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->clear()V

    .line 110
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->observedAudioBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->clear()V

    .line 111
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->indicatedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->clear()V

    .line 112
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->observedVideoBitAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->clear()V

    .line 114
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v15, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v17, 0x146

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    new-array v3, v3, [J

    aput-wide v7, v3, v5

    aput-wide v9, v3, v6

    aput-wide v11, v3, v4

    const/4 v7, 0x3

    aput-wide v13, v3, v7

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v21

    move-object/from16 v16, v2

    move-object/from16 v20, v3

    .line 114
    invoke-static/range {v15 .. v21}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    :cond_6
    new-array v1, v4, [Lcom/verimatrix/vdc/Rate;

    .line 120
    iget-object v2, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v2, v2, Lcom/verimatrix/vdc/StreamPlayback;->indicatedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    aput-object v2, v1, v5

    iget-object v2, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v2, v2, Lcom/verimatrix/vdc/StreamPlayback;->observedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/verimatrix/vdc/Rate;->isEmpty([Lcom/verimatrix/vdc/Rate;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 121
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->indicatedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Rate;->getAverage()J

    move-result-wide v1

    .line 122
    iget-object v3, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v3, v3, Lcom/verimatrix/vdc/StreamPlayback;->observedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Rate;->getAverage()J

    move-result-wide v7

    .line 124
    iget-object v3, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v3, v3, Lcom/verimatrix/vdc/StreamPlayback;->indicatedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Rate;->clear()V

    .line 125
    iget-object v3, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v3, v3, Lcom/verimatrix/vdc/StreamPlayback;->observedFrameAverageRate:Lcom/verimatrix/vdc/Rate;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Rate;->clear()V

    .line 127
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v3

    iget-object v9, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v10, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v11, 0x147

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-array v14, v4, [J

    aput-wide v7, v14, v5

    aput-wide v1, v14, v6

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v15

    .line 127
    invoke-static/range {v9 .. v15}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    :cond_7
    return-void
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addBatteryHeadsetAndVolumeListeners()V
    .locals 4

    .line 515
    invoke-static {}, Lcom/verimatrix/vdc/BatteryUtils;->getInstance()Lcom/verimatrix/vdc/BatteryUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    new-instance v2, Lcom/verimatrix/vdc/Stream$1;

    invoke-direct {v2, p0}, Lcom/verimatrix/vdc/Stream$1;-><init>(Lcom/verimatrix/vdc/Stream;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/verimatrix/vdc/BatteryUtils;->getBatteryLevelChanges(Landroid/content/Context;Lcom/verimatrix/vdc/BatteryUtils$OnChangeBatteryLevelListener;Z)V

    .line 522
    invoke-static {}, Lcom/verimatrix/vdc/HeadsetUtils;->getInstance()Lcom/verimatrix/vdc/HeadsetUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    new-instance v2, Lcom/verimatrix/vdc/Stream$2;

    invoke-direct {v2, p0}, Lcom/verimatrix/vdc/Stream$2;-><init>(Lcom/verimatrix/vdc/Stream;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/verimatrix/vdc/HeadsetUtils;->getHeadsetStatusChanges(Landroid/content/Context;Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;Z)V

    .line 529
    invoke-static {}, Lcom/verimatrix/vdc/HeadsetUtils;->getInstance()Lcom/verimatrix/vdc/HeadsetUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    new-instance v2, Lcom/verimatrix/vdc/Stream$3;

    invoke-direct {v2, p0}, Lcom/verimatrix/vdc/Stream$3;-><init>(Lcom/verimatrix/vdc/Stream;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/verimatrix/vdc/HeadsetUtils;->getHeadsetBluetoothStatusChanges(Landroid/content/Context;Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;Z)V

    .line 537
    invoke-static {}, Lcom/verimatrix/vdc/VolumeUtils;->getInstance()Lcom/verimatrix/vdc/VolumeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    new-instance v2, Lcom/verimatrix/vdc/Stream$4;

    invoke-direct {v2, p0}, Lcom/verimatrix/vdc/Stream$4;-><init>(Lcom/verimatrix/vdc/Stream;)V

    invoke-virtual {v0, v1, v2}, Lcom/verimatrix/vdc/VolumeUtils;->getVolumeLevelChanges(Landroid/content/Context;Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener;)V

    return-void
.end method

.method contentReadyToPlay(JJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 15

    move-object v0, p0

    .line 296
    invoke-static/range {p1 .. p2}, Lcom/verimatrix/vdc/InputValidator;->contentReadyToPlay(J)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 297
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expiryTimeSecs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 298
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    :cond_0
    move-wide/from16 v5, p1

    .line 300
    invoke-static/range {p1 .. p2}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v4

    .line 301
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v1, v3}, Lcom/verimatrix/vdc/StreamPlayback;->setAssetisedSessionActive(Z)V

    .line 302
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-boolean v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-nez v1, :cond_1

    .line 303
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    new-array v7, v3, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expiry_time_secs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "Event add: content_ready_to_play"

    invoke-static {v1, v6, v8, v7}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v6, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v8, 0x1e0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x3

    new-array v11, v11, [J

    iget-object v12, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    .line 306
    invoke-virtual {v12}, Lcom/verimatrix/vdc/StreamPlayback;->getLastPlaybackTime()J

    move-result-wide v12

    aput-wide v12, v11, v2

    aput-wide v4, v11, v3

    const/4 v2, 0x2

    iget-object v3, v0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/StreamDataLoad;->getRecordingIdHash()J

    move-result-wide v3

    aput-wide v3, v11, v2

    .line 307
    invoke-virtual {p0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v12

    move-wide/from16 v13, p3

    .line 305
    invoke-static/range {v6 .. v14}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 310
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method dataComplete(Lcom/verimatrix/vdc/Monitor$DeliveryType;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/StreamDataLoad;->dataComplete(Lcom/verimatrix/vdc/Monitor$DeliveryType;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method public dataError(I)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/StreamDataLoad;->dataError(I)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method dataLoadComplete(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/StreamDataLoad;->dataLoadComplete(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method dataLoadError(Lcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/verimatrix/vdc/StreamDataLoad;->dataLoadError(Lcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method dataLoadServer(Ljava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/verimatrix/vdc/StreamDataLoad;->dataLoadServer(Ljava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method dataLoadStarting(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    iget-object v1, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->mediaUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v2, v2, Lcom/verimatrix/vdc/StreamPlayback;->method:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/verimatrix/vdc/StreamDataLoad;->dataLoadStarting(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method dataLoadStarting(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/StreamDataLoad;->dataLoadStarting(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method dataLoadStarting(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/verimatrix/vdc/StreamDataLoad;->dataLoadStarting(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method public dataOverrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    invoke-virtual {v0, p1, p2, p3}, Lcom/verimatrix/vdc/StreamDataLoad;->dataOverrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method public dataUnderrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    invoke-virtual {v0, p1, p2, p3}, Lcom/verimatrix/vdc/StreamDataLoad;->dataUnderrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method directEvent(IJJJJLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    .line 362
    invoke-static/range {p1 .. p10}, Lcom/verimatrix/vdc/InputValidator;->directEvent(IJJJJLcom/verimatrix/vdc/Monitor$Severity;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_0

    .line 363
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "code:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data0:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p2

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p4

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data3:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, p8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "severity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    invoke-static {v2, v8}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 366
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    :cond_0
    move/from16 v10, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    .line 368
    invoke-static/range {p2 .. p3}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v8

    .line 369
    invoke-static/range {p4 .. p5}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v11

    .line 370
    invoke-static/range {p6 .. p7}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v13

    .line 371
    invoke-static/range {p8 .. p9}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v15

    if-nez v1, :cond_1

    .line 373
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Severity;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$Severity;

    :cond_1
    move-object/from16 v18, v1

    .line 375
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v2, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    new-array v3, v3, [J

    aput-wide v8, v3, v7

    aput-wide v11, v3, v6

    aput-wide v13, v3, v5

    const/4 v5, 0x3

    aput-wide v15, v3, v5

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v17

    move-object v11, v2

    move-object v12, v4

    move/from16 v13, p1

    move-wide/from16 v14, v19

    move-object/from16 v16, v3

    move-wide/from16 v19, p11

    .line 375
    invoke-static/range {v11 .. v20}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 377
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v2, "encrypt_key"

    invoke-virtual {v0, v2}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/AESCryptoUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 413
    iget-object v2, p0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v3, "encrypt_iv"

    invoke-virtual {v2, v3}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/verimatrix/vdc/AESCryptoUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 415
    :try_start_0
    new-instance v3, Lcom/verimatrix/vdc/AESCryptoUtils;

    invoke-direct {v3, v0, v2}, Lcom/verimatrix/vdc/AESCryptoUtils;-><init>([B[B)V

    .line 416
    invoke-virtual {v3, p1}, Lcom/verimatrix/vdc/AESCryptoUtils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    .line 419
    :catch_0
    sget-object v0, Lcom/verimatrix/vdc/Stream;->TAG:Ljava/lang/String;

    const-string v2, "Error constructing AESCryptoUtils"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoded_string="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    const-string p1, "encode"

    invoke-static {v0, v2, p1, v3}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method freeStream()V
    .locals 2

    .line 552
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    iget v1, p0, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->freeStreamHandle(I)V

    return-void
.end method

.method genericAttributesChange(Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 381
    invoke-static/range {p1 .. p1}, Lcom/verimatrix/vdc/InputValidator;->genericAttributesChange(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "genericAttributes: null or has wrong key"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 383
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 386
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->values()[Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v2, v5

    .line 387
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 388
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v20, v5

    goto :goto_3

    .line 390
    :cond_2
    :goto_1
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 391
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 393
    :cond_3
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 396
    :goto_2
    :try_start_0
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->getValue()I

    move-result v7

    .line 397
    invoke-static {v6}, Lcom/verimatrix/vdc/MonitorUtils;->getFNVHashByModule(Ljava/lang/String;)J

    move-result-wide v8

    .line 398
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v10

    iget-object v11, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v12, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v13, 0x2

    new-array v13, v13, [J

    aput-wide v8, v13, v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v20, v5

    int-to-long v4, v7

    const/4 v7, 0x1

    :try_start_1
    aput-wide v4, v13, v7

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v17

    iget-wide v4, v0, Lcom/verimatrix/vdc/Stream;->offset:J

    move-object/from16 v16, v13

    const/16 v13, 0x1a4

    move-wide/from16 v18, v4

    .line 398
    invoke-static/range {v11 .. v19}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 400
    iget-object v4, v0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    invoke-static {v4, v7, v8, v9, v6}, Lcom/verimatrix/vdc/NetworkManager;->sendContent(Landroid/content/Context;IJLjava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move/from16 v20, v5

    .line 402
    :catch_1
    sget-object v4, Lcom/verimatrix/vdc/Stream;->TAG:Ljava/lang/String;

    const-string v5, "genericAttribute has unsupported key"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v5, v20, 0x1

    const/4 v4, 0x0

    goto :goto_0

    .line 406
    :cond_4
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method getRegisters()[J
    .locals 10

    .line 453
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamPlayback;->isAssetisedSessionActive()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-wide/16 v6, -0x1

    if-nez v0, :cond_0

    new-array v0, v5, [J

    aput-wide v6, v0, v4

    aput-wide v6, v0, v3

    .line 454
    sget-object v3, Lcom/verimatrix/vdc/Monitor$MediaType;->IDLE:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Monitor$MediaType;->getValue()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v2

    aput-wide v6, v0, v1

    goto/16 :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v0, v0, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-eqz v0, :cond_1

    .line 456
    sget-object v0, Lcom/verimatrix/vdc/Stream$5;->$SwitchMap$com$verimatrix$vdc$Monitor$MediaType:[I

    iget-object v8, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v8, v8, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v8}, Lcom/verimatrix/vdc/Monitor$MediaType;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    new-array v0, v5, [J

    aput-wide v6, v0, v4

    aput-wide v6, v0, v3

    .line 504
    sget-object v3, Lcom/verimatrix/vdc/Monitor$MediaType;->IDLE:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Monitor$MediaType;->getValue()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v2

    iget v2, p0, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    goto/16 :goto_0

    :pswitch_0
    new-array v0, v5, [J

    aput-wide v6, v0, v4

    aput-wide v6, v0, v3

    .line 483
    iget-object v3, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v3, v3, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Monitor$MediaType;->getValue()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v2

    iget v2, p0, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v5, [J

    .line 497
    iget-object v5, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v5}, Lcom/verimatrix/vdc/StreamPlayback;->getContentId()J

    move-result-wide v5

    aput-wide v5, v0, v4

    iget-object v4, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v4}, Lcom/verimatrix/vdc/StreamPlayback;->getContentId()J

    move-result-wide v4

    aput-wide v4, v0, v3

    iget-object v3, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v3, v3, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Monitor$MediaType;->getValue()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v2

    iget v2, p0, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v5, [J

    .line 462
    iget-object v5, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v5}, Lcom/verimatrix/vdc/StreamPlayback;->getContentId()J

    move-result-wide v8

    aput-wide v8, v0, v4

    aput-wide v6, v0, v3

    iget-object v3, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v3, v3, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Monitor$MediaType;->getValue()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v2

    iget v2, p0, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v5, [J

    .line 490
    iget-object v5, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v5}, Lcom/verimatrix/vdc/StreamPlayback;->getContentId()J

    move-result-wide v8

    aput-wide v8, v0, v4

    aput-wide v6, v0, v3

    iget-object v3, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v3, v3, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Monitor$MediaType;->getValue()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v2

    iget v2, p0, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    goto :goto_0

    :pswitch_4
    new-array v0, v5, [J

    aput-wide v6, v0, v4

    .line 469
    iget-object v4, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v4}, Lcom/verimatrix/vdc/StreamPlayback;->getContentId()J

    move-result-wide v4

    aput-wide v4, v0, v3

    iget-object v3, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v3, v3, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Monitor$MediaType;->getValue()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v2

    iget v2, p0, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    goto :goto_0

    :pswitch_5
    new-array v0, v5, [J

    .line 476
    iget-object v5, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v5}, Lcom/verimatrix/vdc/StreamPlayback;->getContentId()J

    move-result-wide v8

    aput-wide v8, v0, v4

    aput-wide v6, v0, v3

    iget-object v3, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v3, v3, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Monitor$MediaType;->getValue()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v2

    iget v2, p0, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    goto :goto_0

    :cond_1
    new-array v0, v5, [J

    .line 509
    iget-object v5, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v5}, Lcom/verimatrix/vdc/StreamPlayback;->getContentId()J

    move-result-wide v5

    aput-wide v5, v0, v4

    iget-object v4, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v4}, Lcom/verimatrix/vdc/StreamPlayback;->getContentId()J

    move-result-wide v4

    aput-wide v4, v0, v3

    sget-object v3, Lcom/verimatrix/vdc/Monitor$MediaType;->IDLE:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/Monitor$MediaType;->getValue()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v2

    iget v2, p0, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getSentMetadataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamMetadata;->getSentMetadataMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method heartbeatUpdate()Z
    .locals 4

    .line 54
    iget v0, p0, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamPlayback;->isAssetisedSessionActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-direct {p0, v1}, Lcom/verimatrix/vdc/Stream;->callHeartbeat(Z)V

    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcom/verimatrix/vdc/Stream;->callHeartbeat(Z)V

    :goto_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method metadataDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 336
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/verimatrix/vdc/StreamMetadata;->metadataDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1
.end method

.method metadataDimensions(II)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/StreamMetadata;->metadataDimensions(II)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method metadataDuration(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/StreamMetadata;->metadataDuration(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method metadataIdentity(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;ZZ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/verimatrix/vdc/StreamMetadata;->metadataIdentity(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;ZZ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method metadataInitialise()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamMetadata;->metadataInitialise()V

    return-void
.end method

.method playbackAccelerated(JJFJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 264
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/StreamPlayback;->playbackAccelerated(JJFJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method public playbackConsumptionMethodChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/verimatrix/vdc/StreamPlayback;->playbackConsumptionMethodChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    .line 260
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/StreamPlayback;->playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackLanguageChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 292
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/verimatrix/vdc/StreamPlayback;->playbackLanguageChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackMetadataChange(JLjava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1
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

    .line 242
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/verimatrix/vdc/StreamPlayback;->playbackMetadataChange(JLjava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackPaused(JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    .line 268
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/StreamPlayback;->playbackPaused(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackProgress(JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    .line 192
    iget-object v8, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-object v1, v8

    iget-object v8, v8, Lcom/verimatrix/vdc/StreamPlayback;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    move-object/from16 v16, v8

    iget-object v8, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget v8, v8, Lcom/verimatrix/vdc/StreamPlayback;->observed:I

    int-to-long v8, v8

    move-wide/from16 v19, v8

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v21, 0x0

    invoke-virtual/range {v1 .. v22}, Lcom/verimatrix/vdc/StreamPlayback;->playbackProgress(JJJJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1
.end method

.method playbackProgress(JJJJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 22

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-object/from16 v15, p15

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move-wide/from16 v20, p20

    move-object/from16 v0, p0

    .line 200
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-object v0, v1

    move-wide/from16 v1, p1

    invoke-virtual/range {v0 .. v21}, Lcom/verimatrix/vdc/StreamPlayback;->playbackProgress(JJJJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0
.end method

.method playbackRequest(JLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 16
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

    move-object/from16 v0, p0

    .line 215
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-wide/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, Lcom/verimatrix/vdc/StreamPlayback;->playbackRequest(JLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1
.end method

.method playbackResolutionChange(JIIJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    .line 288
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    int-to-long v3, p3

    int-to-long v5, p4

    move-wide v1, p1

    move-wide v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/verimatrix/vdc/StreamPlayback;->playbackResolutionChange(JJJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackResumed(JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    .line 272
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/StreamPlayback;->playbackResumed(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackResumedAudio(JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    .line 276
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/StreamPlayback;->playbackResumedAudio(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackResumedVideo(JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    .line 280
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/StreamPlayback;->playbackResumedVideo(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackSeek(JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    .line 284
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/StreamPlayback;->playbackSeek(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method public playbackStartRequested(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/StreamPlayback;->playbackStartRequested(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackStarted(JJLcom/verimatrix/vdc/Monitor$StartCause;IILjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    .line 238
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/verimatrix/vdc/StreamPlayback;->playbackStarted(JJLcom/verimatrix/vdc/Monitor$StartCause;IILjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1
.end method

.method playbackStartedAudio(JJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 228
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/StreamPlayback;->playbackStartedAudio(JJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackStartedVideo(JJIIJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 12

    move-object v0, p0

    .line 232
    iget-object v1, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move/from16 v2, p5

    int-to-long v6, v2

    move/from16 v2, p6

    int-to-long v8, v2

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Lcom/verimatrix/vdc/StreamPlayback;->playbackStartedVideo(JJJJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1
.end method

.method playbackStopRequested(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/StreamPlayback;->playbackStopRequested(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method playbackStopped(JJLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 254
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/StreamPlayback;->playbackStopped(JJLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method removeBatteryAndVolumeListeners()V
    .locals 2

    .line 546
    invoke-static {}, Lcom/verimatrix/vdc/BatteryUtils;->getInstance()Lcom/verimatrix/vdc/BatteryUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/BatteryUtils;->unregisterListener(Landroid/content/Context;)V

    .line 547
    invoke-static {}, Lcom/verimatrix/vdc/HeadsetUtils;->getInstance()Lcom/verimatrix/vdc/HeadsetUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/HeadsetUtils;->unregisterListeners(Landroid/content/Context;)V

    .line 548
    invoke-static {}, Lcom/verimatrix/vdc/VolumeUtils;->getInstance()Lcom/verimatrix/vdc/VolumeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/VolumeUtils;->unregisterListener(Landroid/content/Context;)V

    return-void
.end method

.method setAgentDefaultValues()V
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamPlayback;->resetVariables()V

    .line 438
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamErrorHandler;->resetVariables()V

    .line 439
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamMetadata;->resetVariables()V

    .line 440
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->dataLoad:Lcom/verimatrix/vdc/StreamDataLoad;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamDataLoad;->resetVariables()V

    const/4 v0, 0x0

    .line 442
    iput-object v0, p0, Lcom/verimatrix/vdc/Stream;->streamFunction:Lcom/verimatrix/vdc/Monitor$StreamFunction;

    const-wide/16 v1, 0x0

    .line 443
    iput-wide v1, p0, Lcom/verimatrix/vdc/Stream;->offset:J

    .line 444
    iput-object v0, p0, Lcom/verimatrix/vdc/Stream;->deviceId:Ljava/lang/String;

    return-void
.end method

.method statisticsBitrate(II)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iput p1, v0, Lcom/verimatrix/vdc/StreamPlayback;->indicated:I

    .line 316
    iget-object p1, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iput p2, p1, Lcom/verimatrix/vdc/StreamPlayback;->observed:I

    .line 318
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method statisticsFrameErrors(I)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 323
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    .line 324
    iget-object v1, p0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-boolean v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->playing:Z

    if-eqz v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number_of_frames="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "statistics_frame_errors (local)"

    invoke-static {v0, v1, v3, v2}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iget-wide v1, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->frameErrorCount:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/verimatrix/vdc/StreamErrorHandler;->frameErrorCount:J

    .line 328
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    :cond_0
    return-object v0
.end method
