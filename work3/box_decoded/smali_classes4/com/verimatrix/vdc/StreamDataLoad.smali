.class final Lcom/verimatrix/vdc/StreamDataLoad;
.super Ljava/lang/Object;
.source "StreamDataLoad.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamDataLoad"


# instance fields
.field private c:Landroid/content/Context;

.field recordingId:Ljava/lang/String;

.field private stream:Lcom/verimatrix/vdc/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/verimatrix/vdc/Stream;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/verimatrix/vdc/StreamDataLoad;->recordingId:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    return-void
.end method


# virtual methods
.method dataComplete(Lcom/verimatrix/vdc/Monitor$DeliveryType;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/verimatrix/vdc/Monitor$DeliveryType;->getValue()I

    move-result p1

    int-to-long v2, p1

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 167
    :goto_0
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object p1

    iget-object v4, p0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v5, v5, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v6, 0x8e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x3

    new-array v9, v9, [J

    const/4 v11, 0x0

    aput-wide v2, v9, v11

    const/4 v2, 0x1

    aput-wide v0, v9, v2

    const/4 v0, 0x2

    .line 168
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StreamDataLoad;->getRecordingIdHash()J

    move-result-wide v1

    aput-wide v1, v9, v0

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v10

    .line 167
    invoke-static/range {v4 .. v10}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 169
    iget-object p1, p0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/verimatrix/vdc/Stream;->downloading:Ljava/lang/Boolean;

    .line 170
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method dataError(I)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-boolean v0, v0, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Event add: data_error"

    invoke-static {v0, v1, v4, v3}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v0

    iget-object v6, p0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v7, v1, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v8, 0x91

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v1, 0x3

    new-array v11, v1, [J

    int-to-long v3, p1

    aput-wide v3, v11, v5

    const-wide/16 v3, 0x0

    aput-wide v3, v11, v2

    const/4 p1, 0x2

    .line 247
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StreamDataLoad;->getRecordingIdHash()J

    move-result-wide v1

    aput-wide v1, v11, p1

    iget-object p1, p0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {p1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v12

    .line 246
    invoke-static/range {v6 .. v12}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 249
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method dataLoadComplete(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 21

    move-object/from16 v0, p0

    .line 126
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->downloading:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 129
    :cond_0
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "method="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v6, v6, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v6, v6, Lcom/verimatrix/vdc/StreamPlayback;->method:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "data_complete"

    invoke-static {v1, v2, v5, v4}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->method:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->method:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Monitor$DeliveryType;->getValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    move-wide v1, v4

    .line 135
    :goto_0
    iget-object v7, v0, Lcom/verimatrix/vdc/StreamDataLoad;->recordingId:Ljava/lang/String;

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v7, :cond_4

    .line 136
    sget-object v7, Lcom/verimatrix/vdc/StreamDataLoad$1;->$SwitchMap$com$verimatrix$vdc$Monitor$MediaType:[I

    iget-object v10, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v10, v10, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v10, v10, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v10}, Lcom/verimatrix/vdc/Monitor$MediaType;->ordinal()I

    move-result v10

    aget v7, v7, v10

    const/4 v10, 0x4

    if-eq v7, v3, :cond_3

    if-eq v7, v9, :cond_2

    goto/16 :goto_1

    .line 144
    :cond_2
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v7

    iget-object v11, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v12, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v12, v12, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-array v10, v10, [J

    iget-object v13, v0, Lcom/verimatrix/vdc/StreamDataLoad;->recordingId:Ljava/lang/String;

    .line 146
    invoke-static {v13}, Lcom/verimatrix/vdc/MonitorUtils;->getFNVHashByModule(Ljava/lang/String;)J

    move-result-wide v17

    aput-wide v17, v10, v6

    iget-object v13, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget v13, v13, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    move-object/from16 v20, v7

    int-to-long v6, v13

    aput-wide v6, v10, v3

    aput-wide v4, v10, v9

    aput-wide v4, v10, v8

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    .line 147
    invoke-virtual {v6}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v17

    const/16 v6, 0x18a

    move v13, v6

    move-object/from16 v16, v10

    move-wide/from16 v18, p1

    .line 144
    invoke-static/range {v11 .. v19}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v6

    move-object/from16 v7, v20

    invoke-virtual {v7, v6}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_1

    .line 138
    :cond_3
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v6

    iget-object v11, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v12, v7, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-array v7, v10, [J

    iget-object v10, v0, Lcom/verimatrix/vdc/StreamDataLoad;->recordingId:Ljava/lang/String;

    .line 140
    invoke-static {v10}, Lcom/verimatrix/vdc/MonitorUtils;->getFNVHashByModule(Ljava/lang/String;)J

    move-result-wide v16

    const/4 v10, 0x0

    aput-wide v16, v7, v10

    iget-object v10, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget v10, v10, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    move-wide/from16 v17, v14

    int-to-long v13, v10

    aput-wide v13, v7, v3

    aput-wide v4, v7, v9

    aput-wide v4, v7, v8

    iget-object v10, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    .line 141
    invoke-virtual {v10}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v10

    const/16 v13, 0x137

    move-wide/from16 v14, v17

    move-object/from16 v16, v7

    move-object/from16 v17, v10

    move-wide/from16 v18, p1

    .line 138
    invoke-static/range {v11 .. v19}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 154
    :cond_4
    :goto_1
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v6

    iget-object v10, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v11, v7, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v12, 0x8e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    new-array v15, v8, [J

    const/4 v7, 0x0

    aput-wide v1, v15, v7

    aput-wide v4, v15, v3

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamDataLoad;->getRecordingIdHash()J

    move-result-wide v1

    aput-wide v1, v15, v9

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v16

    move-wide/from16 v17, p1

    .line 154
    invoke-static/range {v10 .. v18}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    const/4 v1, 0x0

    .line 156
    iput-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->recordingId:Ljava/lang/String;

    .line 157
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/verimatrix/vdc/Stream;->downloading:Ljava/lang/Boolean;

    .line 158
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method dataLoadError(Lcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v8, p4

    .line 214
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->downloading:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 218
    :cond_0
    invoke-static/range {p1 .. p3}, Lcom/verimatrix/vdc/InputValidator;->dataLoadError(Lcom/verimatrix/vdc/Monitor$LoadErrorType;J)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 219
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reason:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p2

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 220
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    :cond_1
    move-wide/from16 v6, p2

    .line 222
    invoke-static/range {p2 .. p3}, Lcom/verimatrix/vdc/MonitorUtils;->toUnsignedInteger(J)J

    move-result-wide v6

    .line 223
    sget-object v2, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->SERVER_RESPONSE:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->NO_CONNECTION:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->USER_ABORT:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->SYSTEM_RESOURCE:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->OTHER:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 233
    :cond_2
    sget-object v2, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->DATA_OVERRUN:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    if-ne v1, v2, :cond_3

    .line 234
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->method:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    invoke-virtual {v0, v1, v8, v9}, Lcom/verimatrix/vdc/StreamDataLoad;->dataOverrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;

    goto/16 :goto_1

    .line 235
    :cond_3
    sget-object v2, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->DATA_UNDERRUN:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    if-ne v1, v2, :cond_5

    .line 236
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->method:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    invoke-virtual {v0, v1, v8, v9}, Lcom/verimatrix/vdc/StreamDataLoad;->dataUnderrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;

    goto :goto_1

    .line 226
    :cond_4
    :goto_0
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-boolean v2, v2, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    if-nez v2, :cond_5

    .line 227
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v10, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v10, v10, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    new-array v11, v4, [Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "type="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "reason="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    const-string v12, "Event add: data_load_error"

    invoke-static {v2, v10, v12, v11}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v10

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v11, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v11, v11, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v12, 0x91

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x3

    new-array v15, v15, [J

    aput-wide v6, v15, v5

    invoke-virtual/range {p1 .. p1}, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->getValue()I

    move-result v1

    int-to-long v5, v1

    aput-wide v5, v15, v4

    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamDataLoad;->getRecordingIdHash()J

    move-result-wide v4

    aput-wide v4, v15, v3

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    .line 231
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v7

    move-object v1, v2

    move-object v2, v11

    move v3, v12

    move-wide v4, v13

    move-object v6, v15

    move-wide/from16 v8, p4

    .line 229
    invoke-static/range {v1 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 239
    :cond_5
    :goto_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method dataLoadServer(Ljava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 21

    move-object/from16 v0, p0

    .line 190
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ":"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-nez v1, :cond_0

    move-object/from16 v1, p1

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 192
    aget-object v7, v1, v4

    .line 193
    aget-object v1, v1, v3

    .line 195
    invoke-static {v7}, Lcom/verimatrix/vdc/MonitorUtils;->ipAddressToLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 196
    invoke-static {v1}, Lcom/verimatrix/vdc/MonitorUtils;->portToLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_0

    :cond_0
    move-wide v7, v5

    move-wide v9, v7

    .line 199
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v1, p2

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 201
    aget-object v2, v1, v4

    .line 202
    aget-object v1, v1, v3

    .line 204
    invoke-static {v2}, Lcom/verimatrix/vdc/MonitorUtils;->ipAddressToLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 205
    invoke-static {v1}, Lcom/verimatrix/vdc/MonitorUtils;->portToLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_1

    :cond_1
    move-wide v1, v5

    .line 208
    :goto_1
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v11

    iget-object v12, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v13, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v13, v13, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const/4 v14, 0x4

    new-array v14, v14, [J

    aput-wide v7, v14, v4

    aput-wide v9, v14, v3

    const/4 v3, 0x2

    aput-wide v5, v14, v3

    const/4 v3, 0x3

    aput-wide v1, v14, v3

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    .line 209
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v18

    move-object v2, v14

    const/16 v1, 0x102

    move v14, v1

    move-object/from16 v17, v2

    move-wide/from16 v19, p3

    .line 208
    invoke-static/range {v12 .. v20}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 210
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method dataLoadStarting(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 20
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v13, p6

    .line 64
    invoke-static/range {p1 .. p5}, Lcom/verimatrix/vdc/InputValidator;->dataLoadStarting(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v6

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    if-nez v6, :cond_0

    .line 65
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "identifiedType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "identifier:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordingId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v15

    invoke-static {v5, v6}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 71
    :cond_0
    iget-object v6, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v6, v6, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iput-object v3, v6, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 72
    iget-object v6, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v6, v6, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    invoke-virtual {v6, v3}, Lcom/verimatrix/vdc/StreamMetadata;->updateMetadataRequest(Lcom/verimatrix/vdc/Monitor$MediaType;)Lcom/verimatrix/vdc/Monitor$Status;

    .line 74
    iget-object v6, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v6, v6, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v6, v2, v1}, Lcom/verimatrix/vdc/StreamPlayback;->setIdentifier(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$IdentifiedType;)V

    .line 76
    iput-object v4, v0, Lcom/verimatrix/vdc/StreamDataLoad;->recordingId:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 78
    sget-object v1, Lcom/verimatrix/vdc/StreamDataLoad$1;->$SwitchMap$com$verimatrix$vdc$Monitor$MediaType:[I

    invoke-virtual/range {p3 .. p3}, Lcom/verimatrix/vdc/Monitor$MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x0

    if-eq v1, v11, :cond_2

    if-eq v1, v12, :cond_1

    goto/16 :goto_0

    .line 90
    :cond_1
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v7, v7, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-array v8, v15, [J

    .line 92
    invoke-static/range {p4 .. p4}, Lcom/verimatrix/vdc/MonitorUtils;->getFNVHashByModule(Ljava/lang/String;)J

    move-result-wide v18

    aput-wide v18, v8, v17

    iget-object v15, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget v15, v15, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    int-to-long v13, v15

    aput-wide v13, v8, v11

    aput-wide v2, v8, v12

    aput-wide v2, v8, v16

    iget-object v13, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    .line 93
    invoke-virtual {v13}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v13

    move-object v14, v8

    const/16 v8, 0x188

    const/4 v15, 0x1

    move-object v11, v14

    const/16 v19, 0x2

    move-object v12, v13

    move-wide/from16 v13, p6

    .line 90
    invoke-static/range {v6 .. v14}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 94
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v7, v7, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v8, 0x189

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x4

    new-array v11, v11, [J

    .line 96
    invoke-static/range {p4 .. p4}, Lcom/verimatrix/vdc/MonitorUtils;->getFNVHashByModule(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v11, v17

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget v4, v4, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    int-to-long v12, v4

    aput-wide v12, v11, v15

    aput-wide v2, v11, v19

    aput-wide v2, v11, v16

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    .line 97
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v12

    move-wide/from16 v13, p6

    .line 94
    invoke-static/range {v6 .. v14}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_1

    :cond_2
    const/4 v15, 0x1

    const/16 v19, 0x2

    .line 80
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v7, v7, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v8, 0x135

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x4

    new-array v12, v11, [J

    .line 82
    invoke-static/range {p4 .. p4}, Lcom/verimatrix/vdc/MonitorUtils;->getFNVHashByModule(Ljava/lang/String;)J

    move-result-wide v13

    aput-wide v13, v12, v17

    iget-object v11, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget v11, v11, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    int-to-long v13, v11

    aput-wide v13, v12, v15

    aput-wide v2, v12, v19

    aput-wide v2, v12, v16

    iget-object v11, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    .line 83
    invoke-virtual {v11}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v13

    move-object v11, v12

    move-object v12, v13

    move-wide/from16 v13, p6

    .line 80
    invoke-static/range {v6 .. v14}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 84
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v7, v7, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v8, 0x136

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x4

    new-array v11, v11, [J

    .line 86
    invoke-static/range {p4 .. p4}, Lcom/verimatrix/vdc/MonitorUtils;->getFNVHashByModule(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v11, v17

    iget-object v4, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget v4, v4, Lcom/verimatrix/vdc/Stream;->streamHandle:I

    int-to-long v12, v4

    aput-wide v12, v11, v15

    aput-wide v2, v11, v19

    aput-wide v2, v11, v16

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    .line 87
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v12

    move-wide/from16 v13, p6

    .line 84
    invoke-static/range {v6 .. v14}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v15, 0x1

    :goto_1
    if-eqz v5, :cond_4

    .line 105
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v1, v5}, Lcom/verimatrix/vdc/Stream;->genericAttributesChange(Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;

    .line 107
    :cond_4
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/verimatrix/vdc/Stream;->downloading:Ljava/lang/Boolean;

    .line 108
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->mediaUrl:Ljava/lang/String;

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v2, v2, Lcom/verimatrix/vdc/StreamPlayback;->method:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    move-wide/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/verimatrix/vdc/StreamDataLoad;->dataLoadStarting(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1
.end method

.method dataLoadStarting(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 23
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/StreamPlayback;->isAssetisedSessionActive()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    invoke-static/range {p1 .. p2}, Lcom/verimatrix/vdc/InputValidator;->dataStarting(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 27
    :cond_0
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iput-object v1, v3, Lcom/verimatrix/vdc/StreamPlayback;->mediaUrl:Ljava/lang/String;

    .line 30
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v3}, Lcom/verimatrix/vdc/StreamPlayback;->sendPendingPvrEvent()V

    .line 32
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/verimatrix/vdc/StreamPlayback;->setLastPlaybackTime(J)V

    .line 33
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iput-object v2, v3, Lcom/verimatrix/vdc/StreamPlayback;->method:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    .line 34
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->errorHandler:Lcom/verimatrix/vdc/StreamErrorHandler;

    iput-wide v7, v3, Lcom/verimatrix/vdc/StreamErrorHandler;->stallTime:J

    .line 35
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v3, Lcom/verimatrix/vdc/StreamPlayback;->lastReplayRate:F

    .line 36
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v3, Lcom/verimatrix/vdc/StreamPlayback;->lastTime:J

    .line 37
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iput-wide v7, v3, Lcom/verimatrix/vdc/StreamPlayback;->lastMediaOffsetCheckTime:J

    .line 40
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v3, v3, Lcom/verimatrix/vdc/StreamPlayback;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    sget-object v9, Lcom/verimatrix/vdc/Monitor$MediaType;->PVR:Lcom/verimatrix/vdc/Monitor$MediaType;

    const-wide/16 v10, -0x1

    if-eq v3, v9, :cond_2

    .line 41
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v3, v3, Lcom/verimatrix/vdc/StreamPlayback;->referenceCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 42
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-object v1, v1, Lcom/verimatrix/vdc/StreamPlayback;->referenceCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/verimatrix/vdc/MonitorUtils;->getFNVHashByModule(Ljava/lang/String;)J

    move-result-wide v9

    .line 43
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v1, v9, v10}, Lcom/verimatrix/vdc/StreamPlayback;->setContentId(J)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v3, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v3, v1, v10, v11}, Lcom/verimatrix/vdc/StreamPlayback;->detectIdByUrl(Ljava/lang/String;J)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-virtual {v1, v10, v11}, Lcom/verimatrix/vdc/StreamPlayback;->setContentId(J)V

    .line 53
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/verimatrix/vdc/Monitor$DeliveryType;->getValue()I

    move-result v1

    int-to-long v1, v1

    .line 55
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v3

    iget-object v9, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v10, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v10, v10, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v11, 0x8d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x3

    new-array v14, v14, [J

    aput-wide v1, v14, v4

    aput-wide v7, v14, v6

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamDataLoad;->getRecordingIdHash()J

    move-result-wide v1

    aput-wide v1, v14, v5

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v15

    move-wide/from16 v16, p3

    .line 55
    invoke-static/range {v9 .. v17}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 57
    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/verimatrix/vdc/Stream;->downloading:Ljava/lang/Boolean;

    .line 58
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 24
    :cond_3
    :goto_1
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v3, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 25
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method dataOverrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/verimatrix/vdc/Monitor$DeliveryType;->getValue()I

    move-result v3

    int-to-long v3, v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 179
    :goto_0
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v5

    iget-object v6, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v7, v7, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v8, 0x90

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x3

    new-array v11, v11, [J

    const/4 v12, 0x0

    aput-wide v3, v11, v12

    const/4 v3, 0x1

    aput-wide v1, v11, v3

    const/4 v1, 0x2

    .line 180
    invoke-virtual {p0}, Lcom/verimatrix/vdc/StreamDataLoad;->getRecordingIdHash()J

    move-result-wide v2

    aput-wide v2, v11, v1

    iget-object v1, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v12

    move-wide/from16 v13, p2

    .line 179
    invoke-static/range {v6 .. v14}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 181
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method dataUnderrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 113
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v2, v2, Lcom/verimatrix/vdc/Stream;->playback:Lcom/verimatrix/vdc/StreamPlayback;

    iget-boolean v2, v2, Lcom/verimatrix/vdc/StreamPlayback;->playbackSettleTimerStarted:Z

    if-nez v2, :cond_1

    .line 114
    iget-object v2, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v3, v3, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "method="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "Event add: data_underrun"

    invoke-static {v2, v3, v6, v5}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/verimatrix/vdc/Monitor$DeliveryType;->getValue()I

    move-result v1

    int-to-long v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v2

    .line 119
    :goto_0
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v8, v0, Lcom/verimatrix/vdc/StreamDataLoad;->c:Landroid/content/Context;

    iget-object v9, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    iget-object v9, v9, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v10, 0x8f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v13, 0x3

    new-array v13, v13, [J

    aput-wide v5, v13, v7

    aput-wide v2, v13, v4

    const/4 v2, 0x2

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/StreamDataLoad;->getRecordingIdHash()J

    move-result-wide v3

    aput-wide v3, v13, v2

    iget-object v2, v0, Lcom/verimatrix/vdc/StreamDataLoad;->stream:Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v14

    move-wide/from16 v15, p2

    .line 119
    invoke-static/range {v8 .. v16}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 122
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method getRecordingIdHash()J
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/verimatrix/vdc/StreamDataLoad;->recordingId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->getFNVHashByModule(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method resetVariables()V
    .locals 1

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/verimatrix/vdc/StreamDataLoad;->recordingId:Ljava/lang/String;

    return-void
.end method
