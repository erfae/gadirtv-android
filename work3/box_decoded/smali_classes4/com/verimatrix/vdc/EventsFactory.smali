.class public final Lcom/verimatrix/vdc/EventsFactory;
.super Ljava/lang/Object;
.source "EventsFactory.java"


# static fields
.field public static final APPLICATION_STATUS:I = 0x18

.field public static final AUDIO_LANGUAGE_CHANGE:I = 0x82

.field public static final AUDIO_RESTORED:I = 0x124

.field public static final AUDIO_STARTED:I = 0x80

.field public static final AV_RESUMED:I = 0xbc

.field public static final AV_STALLED:I = 0xbb

.field public static final CHANNEL_ERRORS:I = 0xa5

.field public static final CHANNEL_QUALITY:I = 0xa4

.field public static final CHANNEL_RESTORED:I = 0x125

.field public static final CHANNEL_START:I = 0xa0

.field public static final CHANNEL_STARTED:I = 0xa2

.field public static final CHANNEL_START_SLOW:I = 0xa3

.field public static final CHANNEL_STOP:I = 0xa1

.field public static final CHECKPOINT:I = 0x15

.field public static final CONFIG_LOADED:I = 0x53

.field public static final CONSUMPTION_METHOD:I = 0x7d

.field public static final CPU_LOAD:I = 0x50

.field public static final CRASH_RESET:I = 0x19

.field public static final DATA_COMPLETE:I = 0x8e

.field public static final DATA_ERROR:I = 0x91

.field public static final DATA_LOAD_COMPLETE:I = 0x93

.field public static final DATA_OVER:I = 0x90

.field public static final DATA_STARTED:I = 0x8d

.field public static final DATA_UNDERRUN:I = 0x8f

.field public static final DEVICE_STATUS1:I = 0x1a3

.field public static final DVB_REC_SER_SETUP:I = 0x188

.field public static final DVB_REC_STARTED:I = 0x189

.field public static final DVB_REC_STOP:I = 0x18a

.field public static final GENERIC_ATTRIBUTE:I = 0x1a4

.field public static final HEARTBEAT:I = 0x52

.field public static final HEARTBEAT_SECONDARY:I = 0x46

.field public static final LOCATION:I = 0x5a

.field public static final MCAST_REC_SER_SETUP:I = 0x135

.field public static final MCAST_REC_STARTED:I = 0x136

.field public static final MCAST_REC_STOP:I = 0x137

.field public static final MEDIA_OFFSET_UPDATE:I = 0x227

.field public static final MEMORY_USE:I = 0x74

.field public static final NETWORK_STATS_RX:I = 0xbe

.field public static final NETWORK_STATS_TX:I = 0xc2

.field public static final NIC_ACTIVE:I = 0x1a2

.field public static final NO_SERVICE:I = 0x126

.field public static final PLATFORM_SOFTWARE_VERSION:I = 0x179

.field public static final PVR_ERRORS:I = 0x192

.field public static final PVR_QUALITY:I = 0x191

.field public static final PVR_RESTORED:I = 0x134

.field public static final PVR_START:I = 0x130

.field public static final PVR_STARTED:I = 0x133

.field public static final PVR_START_SLOW:I = 0x187

.field public static final PVR_STOP:I = 0x190

.field public static final READY_TO_PLAY:I = 0x1e0

.field public static final STREAM_INFO:I = 0x145

.field public static final STREAM_INFO2:I = 0x146

.field public static final STREAM_INFO3:I = 0x147

.field public static final SVR_ERROR_CLEARED:I = 0x18e

.field public static final SVR_ERROR_PERSIST:I = 0x18d

.field public static final SVR_ERROR_SINGLE:I = 0x18c

.field public static final SVR_FASTBACK:I = 0x177

.field public static final SVR_FASTFORWARD:I = 0x176

.field public static final SVR_PAUSE:I = 0x171

.field public static final SVR_RESUME:I = 0x175

.field public static final SVR_SEEK:I = 0x178

.field public static final TEST:I = -0x1

.field public static final VIDEO_RESOLUTION:I = 0x81

.field public static final VIDEO_RESTORED:I = 0x123

.field public static final VIDEO_STARTED:I = 0x7f

.field public static final VOD_ERRORS:I = 0x100

.field public static final VOD_QUALITY:I = 0xff

.field public static final VOD_RESTORED:I = 0x127

.field public static final VOD_SERVER:I = 0x102

.field public static final VOD_START:I = 0xfb

.field public static final VOD_STARTED:I = 0xfe

.field public static final VOD_START_SLOW:I = 0xfd

.field public static final VOD_STOP:I = 0xfc


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;
    .locals 10

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    .line 910
    invoke-static/range {v0 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;
    .locals 10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v8, p7

    .line 915
    invoke-static/range {v0 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/SendEvent;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p8

    .line 920
    new-instance v8, Lcom/verimatrix/vdc/SendEvent;

    invoke-direct {v8, v0, v1}, Lcom/verimatrix/vdc/SendEvent;-><init>(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;)V

    int-to-long v9, v2

    .line 921
    invoke-virtual {v8, v9, v10}, Lcom/verimatrix/vdc/SendEvent;->setEventId(J)V

    .line 922
    invoke-virtual {v8, v3, v4}, Lcom/verimatrix/vdc/SendEvent;->setTimestamp(J)V

    if-eqz p7, :cond_0

    .line 925
    invoke-virtual/range {p7 .. p7}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v7

    int-to-long v9, v7

    invoke-virtual {v8, v9, v10}, Lcom/verimatrix/vdc/SendEvent;->setFlags(J)V

    :cond_0
    sub-long v9, v3, v5

    const-wide/16 v11, 0x3e8

    .line 929
    div-long v13, v9, v11

    const-wide/16 v15, 0x0

    const/4 v7, 0x0

    cmp-long v17, v5, v15

    if-lez v17, :cond_1

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/String;

    .line 932
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "eventId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v15, v7

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timestamp="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v11

    const/4 v7, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "offset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v7

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dt_millis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v5

    const-string v5, "offset"

    invoke-static {v0, v1, v5, v15}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 944
    :cond_1
    invoke-virtual {v8, v13, v14}, Lcom/verimatrix/vdc/SendEvent;->setDt(J)V

    const-wide/16 v5, 0x3e8

    .line 946
    rem-long/2addr v3, v5

    invoke-virtual {v8, v3, v4}, Lcom/verimatrix/vdc/SendEvent;->setDms(J)V

    move-object/from16 v3, p5

    .line 948
    invoke-static {v8, v3}, Lcom/verimatrix/vdc/EventsFactory;->setD(Lcom/verimatrix/vdc/SendEvent;[J)V

    const/16 v3, 0x18

    const/4 v9, 0x0

    if-eq v2, v3, :cond_96

    const/16 v3, 0x19

    const-string v10, "session"

    const-string v11, "session_active"

    if-eq v2, v3, :cond_93

    const/16 v3, 0x52

    const-string v12, "heartbeat_active"

    const-string v13, "heartbeat"

    if-eq v2, v3, :cond_90

    const/16 v3, 0x53

    const-string v14, "none"

    const-string v15, "none_active"

    if-eq v2, v3, :cond_8d

    const/16 v3, 0xbb

    const-string v7, "qos"

    if-eq v2, v3, :cond_8a

    const/16 v3, 0xbc

    if-eq v2, v3, :cond_87

    const-string v6, "network_active"

    const-string v5, "network"

    const-string v4, "data"

    const-string v3, "data_active"

    move-object/from16 p3, v7

    const-string v7, "qos_active"

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    .line 1958
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->DIRECT:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const-string v3, "direct_event"

    move-object/from16 v12, p6

    const/4 v4, 0x0

    invoke-static {v8, v3, v2, v12, v4}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Lcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1963
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1967
    :cond_2
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1964
    :cond_3
    :goto_0
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    const-string v3, "direct"

    invoke-static {v0, v1, v8, v3, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_0
    move-object/from16 v12, p6

    .line 1565
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1567
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "stream_info3"

    move-object v2, v8

    move-object/from16 v6, p6

    move-object/from16 v10, p3

    .line 1565
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1571
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 1575
    :cond_4
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1572
    :cond_5
    :goto_1
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_1
    move-object/from16 v10, p3

    move-object/from16 v12, p6

    .line 1551
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1553
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "stream_info2"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1551
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1557
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 1561
    :cond_6
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1558
    :cond_7
    :goto_2
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_2
    move-object/from16 v10, p3

    move-object/from16 v12, p6

    .line 1537
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1539
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "stream_info1"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1537
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1543
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    .line 1547
    :cond_8
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1544
    :cond_9
    :goto_3
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_3
    move-object/from16 v12, p6

    .line 1439
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1441
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "mcast_rec_stop"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1439
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1445
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    .line 1449
    :cond_a
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1446
    :cond_b
    :goto_4
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_4
    move-object/from16 v12, p6

    .line 1425
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1427
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "mcast_rec_started"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1425
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1431
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    .line 1435
    :cond_c
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1432
    :cond_d
    :goto_5
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_5
    move-object/from16 v12, p6

    .line 1411
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1413
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "mcast_rec_ser_setup"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1411
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1417
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_6

    .line 1421
    :cond_e
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1418
    :cond_f
    :goto_6
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_6
    move-object/from16 v12, p6

    .line 1244
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1246
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "pvr_restored"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1244
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1250
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_7

    .line 1254
    :cond_10
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1251
    :cond_11
    :goto_7
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_7
    move-object/from16 v12, p6

    .line 1231
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1233
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "pvr_started"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1231
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1237
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_8

    .line 1241
    :cond_12
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1238
    :cond_13
    :goto_8
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_8
    move-object/from16 v12, p6

    .line 1869
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1871
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "vod_restored"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1869
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1875
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_9

    .line 1879
    :cond_14
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1876
    :cond_15
    :goto_9
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_9
    move-object/from16 v12, p6

    .line 1856
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1858
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "no_service"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1856
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1862
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_a

    .line 1866
    :cond_16
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1863
    :cond_17
    :goto_a
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_a
    move-object/from16 v12, p6

    .line 1842
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1844
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "channel_restored"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1842
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1848
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_b

    .line 1852
    :cond_18
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1849
    :cond_19
    :goto_b
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_b
    move-object/from16 v12, p6

    .line 1829
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1831
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "audio_restored"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1829
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1835
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_c

    .line 1839
    :cond_1a
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1836
    :cond_1b
    :goto_c
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_c
    move-object/from16 v12, p6

    .line 1816
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1818
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "video_restored"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1816
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1822
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_d

    .line 1826
    :cond_1c
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1823
    :cond_1d
    :goto_d
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_d
    move-object/from16 v10, p3

    move-object/from16 v12, p6

    .line 1285
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1287
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v11, 0x1

    const-string v3, "vod_errors"

    move-object v2, v8

    move-object/from16 v6, p6

    move-object v13, v7

    move v7, v11

    .line 1285
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1291
    invoke-virtual {v1, v13}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_e

    .line 1295
    :cond_1e
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1292
    :cond_1f
    :goto_e
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_e
    move-object/from16 v10, p3

    move-object/from16 v12, p6

    move-object v13, v7

    .line 1775
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1777
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "vod_quality"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1775
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1781
    invoke-virtual {v1, v13}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_f

    .line 1785
    :cond_20
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1782
    :cond_21
    :goto_f
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_f
    move-object/from16 v12, p6

    .line 1258
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1260
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "vod_started"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1258
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1264
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_10

    .line 1268
    :cond_22
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1265
    :cond_23
    :goto_10
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_10
    move-object/from16 v12, p6

    .line 1218
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1220
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "vod_start_slow"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1218
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1224
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_11

    .line 1228
    :cond_24
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1225
    :cond_25
    :goto_11
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_11
    move-object/from16 v12, p6

    .line 1204
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1206
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "vod_stop"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1204
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1210
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_12

    .line 1214
    :cond_26
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1211
    :cond_27
    :goto_12
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_12
    move-object/from16 v12, p6

    .line 1190
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1192
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "vod_start"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1190
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1196
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_13

    .line 1200
    :cond_28
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1197
    :cond_29
    :goto_13
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_13
    move-object/from16 v12, p6

    .line 1092
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1094
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v5

    sget-object v6, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->DATA:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v10, "data_error"

    move-object v2, v8

    move-object v11, v3

    move-object v3, v10

    move-object v10, v4

    move v4, v5

    move-object v5, v6

    move-object/from16 v6, p6

    .line 1092
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1098
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_14

    .line 1102
    :cond_2a
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1099
    :cond_2b
    :goto_14
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_14
    move-object/from16 v12, p6

    move-object v11, v3

    move-object v10, v4

    .line 1078
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1080
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->DATA:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "data_overflow"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1078
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1084
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_15

    .line 1088
    :cond_2c
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1085
    :cond_2d
    :goto_15
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_15
    move-object/from16 v12, p6

    move-object v11, v3

    move-object v10, v4

    .line 1064
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1066
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->DATA:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "data_underrun"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1064
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1070
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_16

    .line 1074
    :cond_2e
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1071
    :cond_2f
    :goto_16
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_16
    move-object/from16 v12, p6

    move-object v11, v3

    move-object v10, v4

    .line 1036
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1038
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->DATA:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "data_complete"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1036
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1042
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_17

    .line 1046
    :cond_30
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1043
    :cond_31
    :goto_17
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_17
    move-object/from16 v12, p6

    move-object v11, v3

    move-object v10, v4

    .line 1022
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1024
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->DATA:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "data_started"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1022
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1028
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_18

    .line 1032
    :cond_32
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1029
    :cond_33
    :goto_18
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_18
    move-object/from16 v12, p6

    .line 1008
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1010
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "audio_language_change"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1008
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1014
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_19

    .line 1018
    :cond_34
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1015
    :cond_35
    :goto_19
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_19
    move-object/from16 v12, p6

    .line 994
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 996
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "video_resolution"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 994
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1000
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_1a

    .line 1004
    :cond_36
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1001
    :cond_37
    :goto_1a
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_1a
    move-object/from16 v12, p6

    .line 966
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 968
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "audio_started"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 966
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 972
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_1b

    .line 976
    :cond_38
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 973
    :cond_39
    :goto_1b
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :pswitch_1b
    move-object/from16 v12, p6

    .line 980
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 982
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "video_started"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 980
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 986
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_1c

    .line 990
    :cond_3a
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 987
    :cond_3b
    :goto_1c
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_0
    move-object/from16 v12, p6

    .line 1923
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1925
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "media_offset_update"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1923
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1929
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto :goto_1d

    .line 1933
    :cond_3c
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1930
    :cond_3d
    :goto_1d
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_1
    move-object/from16 v12, p6

    move-object v11, v3

    move-object v10, v4

    .line 1691
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1693
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->DATA:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "content_ready_to_play"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1691
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1697
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_1e

    .line 1701
    :cond_3e
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1698
    :cond_3f
    :goto_1e
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_2
    move-object/from16 v12, p6

    .line 1937
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1939
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "generic_attribute"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1937
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1943
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_1f

    .line 1947
    :cond_40
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1944
    :cond_41
    :goto_1f
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_3
    move-object/from16 v12, p6

    .line 1883
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1885
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x0

    const-string v3, "device_status1"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1883
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1889
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_20

    .line 1893
    :cond_42
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1890
    :cond_43
    :goto_20
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_4
    move-object/from16 v12, p6

    .line 1897
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1899
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v6, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->NETWORK:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x0

    const-string v3, "nic_active"

    move-object v2, v8

    move-object v10, v5

    move-object v5, v6

    move-object/from16 v6, p6

    .line 1897
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1903
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_44

    goto :goto_21

    .line 1907
    :cond_44
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1904
    :cond_45
    :goto_21
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_5
    move-object/from16 v10, p3

    move-object/from16 v12, p6

    move-object v13, v7

    .line 1313
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1315
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "pvr_errors"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1313
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1319
    invoke-virtual {v1, v13}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_46

    goto :goto_22

    .line 1323
    :cond_46
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1320
    :cond_47
    :goto_22
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_6
    move-object/from16 v10, p3

    move-object/from16 v12, p6

    move-object v13, v7

    .line 1789
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1791
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "pvr_quality"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1789
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1795
    invoke-virtual {v1, v13}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_48

    goto :goto_23

    .line 1799
    :cond_48
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1796
    :cond_49
    :goto_23
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_7
    move-object/from16 v12, p6

    .line 1523
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1525
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "pvr_stop"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1523
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1529
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_24

    .line 1533
    :cond_4a
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1530
    :cond_4b
    :goto_24
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_8
    move-object/from16 v10, p3

    move-object/from16 v12, p6

    move-object v13, v7

    .line 1677
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1679
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "svr_error_cleared"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1677
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1683
    invoke-virtual {v1, v13}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_25

    .line 1687
    :cond_4c
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1684
    :cond_4d
    :goto_25
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_9
    move-object/from16 v10, p3

    move-object/from16 v12, p6

    move-object v13, v7

    .line 1663
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1665
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "svr_error_persists"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1663
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1669
    invoke-virtual {v1, v13}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_26

    .line 1673
    :cond_4e
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1670
    :cond_4f
    :goto_26
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_a
    move-object/from16 v10, p3

    move-object/from16 v12, p6

    move-object v13, v7

    .line 1649
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1651
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "svc_error_single"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1649
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1655
    invoke-virtual {v1, v13}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_50

    goto :goto_27

    .line 1659
    :cond_50
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1656
    :cond_51
    :goto_27
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_b
    move-object/from16 v12, p6

    .line 1509
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1511
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "dvb_rec_stop"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1509
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1515
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_28

    .line 1519
    :cond_52
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1516
    :cond_53
    :goto_28
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_c
    move-object/from16 v12, p6

    .line 1495
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1497
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "dvb_rec_started"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1495
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1501
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_29

    .line 1505
    :cond_54
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1502
    :cond_55
    :goto_29
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_d
    move-object/from16 v12, p6

    .line 1481
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1483
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "dvb_rec_ser_setup"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1481
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1487
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_56

    goto :goto_2a

    .line 1491
    :cond_56
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1488
    :cond_57
    :goto_2a
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_e
    move-object/from16 v12, p6

    .line 1467
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1469
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "pvr_start_slow"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1467
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1473
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_2b

    .line 1477
    :cond_58
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1474
    :cond_59
    :goto_2b
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_f
    move-object/from16 v12, p6

    .line 1453
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1455
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->NONE:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x0

    const-string v3, "plat_software_ver"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1453
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1459
    invoke-virtual {v1, v15}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_5a

    goto :goto_2c

    .line 1463
    :cond_5a
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1460
    :cond_5b
    :goto_2c
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v14, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_10
    move-object/from16 v12, p6

    .line 1635
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1637
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "svr_skip_absolute"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1635
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1641
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_2d

    .line 1645
    :cond_5c
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1642
    :cond_5d
    :goto_2d
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_11
    move-object/from16 v12, p6

    .line 1621
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1623
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "svr_fastback"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1621
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1627
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_5e

    goto :goto_2e

    .line 1631
    :cond_5e
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1628
    :cond_5f
    :goto_2e
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_12
    move-object/from16 v12, p6

    .line 1607
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1609
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "svr_fastforward"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1607
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1613
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_60

    goto :goto_2f

    .line 1617
    :cond_60
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1614
    :cond_61
    :goto_2f
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_13
    move-object/from16 v12, p6

    .line 1593
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1595
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "svr_resume"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1593
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1599
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_62

    goto :goto_30

    .line 1603
    :cond_62
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1600
    :cond_63
    :goto_30
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_14
    move-object/from16 v12, p6

    .line 1579
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1581
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "svr_pause"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1579
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1585
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_64

    goto :goto_31

    .line 1589
    :cond_64
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1586
    :cond_65
    :goto_31
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_15
    move-object/from16 v12, p6

    .line 1397
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1399
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "pvr_start"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1397
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1403
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_66

    .line 1404
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    .line 1407
    :cond_66
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    :sswitch_16
    move-object/from16 v12, p6

    move-object v11, v3

    move-object v10, v4

    .line 1106
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1108
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->DATA:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "vod_server"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1106
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1112
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_67

    goto :goto_32

    .line 1116
    :cond_67
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1113
    :cond_68
    :goto_32
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_17
    move-object/from16 v12, p6

    move-object v10, v5

    .line 1747
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1749
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->NETWORK:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x0

    const-string v3, "net_tx_traffic"

    move-object v2, v8

    move-object v11, v6

    move-object/from16 v6, p6

    .line 1747
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1753
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_69

    goto :goto_33

    .line 1757
    :cond_69
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1754
    :cond_6a
    :goto_33
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_18
    move-object/from16 v12, p6

    move-object v10, v5

    move-object v11, v6

    .line 1733
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1735
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->NETWORK:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x0

    const-string v3, "net_traffic"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1733
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1739
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_6b

    goto :goto_34

    .line 1743
    :cond_6b
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1740
    :cond_6c
    :goto_34
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_19
    move-object/from16 v10, p3

    move-object/from16 v12, p6

    move-object v13, v7

    .line 1299
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1301
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "channel_errors"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1299
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1305
    invoke-virtual {v1, v13}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_6d

    goto :goto_35

    .line 1309
    :cond_6d
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1306
    :cond_6e
    :goto_35
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_1a
    move-object/from16 v10, p3

    move-object/from16 v12, p6

    move-object v13, v7

    .line 1803
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1805
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "channel_quality"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1803
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1809
    invoke-virtual {v1, v13}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_6f

    goto :goto_36

    .line 1813
    :cond_6f
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1810
    :cond_70
    :goto_36
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_1b
    move-object/from16 v12, p6

    .line 1148
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1150
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "channel_start_slow"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1148
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1154
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_71

    goto :goto_37

    .line 1158
    :cond_71
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1155
    :cond_72
    :goto_37
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_1c
    move-object/from16 v12, p6

    .line 1271
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1273
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "channel_started"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1271
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1277
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_73

    goto :goto_38

    .line 1281
    :cond_73
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1278
    :cond_74
    :goto_38
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_1d
    move-object/from16 v12, p6

    .line 1134
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1136
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "channel_stop"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1134
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1140
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_75

    goto :goto_39

    .line 1144
    :cond_75
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1141
    :cond_76
    :goto_39
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_1e
    move-object/from16 v12, p6

    .line 1120
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1122
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "channel_start"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1120
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1126
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_77

    goto :goto_3a

    .line 1130
    :cond_77
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1127
    :cond_78
    :goto_3a
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_1f
    move-object/from16 v12, p6

    move-object v11, v3

    move-object v10, v4

    .line 1050
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1052
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->DATA:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "data_load_complete"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1050
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1056
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_79

    goto :goto_3b

    .line 1060
    :cond_79
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1057
    :cond_7a
    :goto_3b
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_20
    move-object/from16 v12, p6

    .line 952
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 954
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "consumption_method"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 952
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 958
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_7b

    goto :goto_3c

    .line 962
    :cond_7b
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 959
    :cond_7c
    :goto_3c
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_21
    move-object/from16 v12, p6

    move-object v10, v5

    .line 1719
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1721
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->MEMORY:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x0

    const-string v3, "dev_mem_util"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1719
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    const-string v2, "memory_active"

    .line 1725
    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_7d

    goto :goto_3d

    .line 1729
    :cond_7d
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1726
    :cond_7e
    :goto_3d
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_22
    move-object/from16 v12, p6

    .line 1761
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1763
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->LOCATION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x0

    const-string v3, "location_info"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1761
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    const-string v2, "location_active"

    .line 1767
    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_7f

    goto :goto_3e

    .line 1771
    :cond_7f
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1768
    :cond_80
    :goto_3e
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    const-string v3, "location"

    invoke-static {v0, v1, v8, v3, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_23
    move-object/from16 v12, p6

    .line 1705
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1707
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->CPU:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x0

    const-string v3, "load_average"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1705
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    const-string v2, "cpu_active"

    .line 1711
    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_81

    goto :goto_3f

    .line 1715
    :cond_81
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1712
    :cond_82
    :goto_3f
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v13, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    .line 1341
    :sswitch_24
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1343
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->HEARTBEAT:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "secondary_heartbeat"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1341
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1347
    invoke-virtual {v1, v12}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_83

    goto :goto_40

    .line 1351
    :cond_83
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1348
    :cond_84
    :goto_40
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v13, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    .line 1369
    :sswitch_25
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1371
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->NONE:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x0

    const-string v3, "checkpoint"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1369
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1375
    invoke-virtual {v1, v15}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_85

    goto :goto_41

    .line 1379
    :cond_85
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1376
    :cond_86
    :goto_41
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v14, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    .line 1950
    :sswitch_26
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1952
    invoke-virtual {v0}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v0

    sget-object v1, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->NONE:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v2, 0x1

    const-string v3, "test"

    move-object/from16 p0, v8

    move-object/from16 p1, v3

    move/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p4, p6

    move/from16 p5, v2

    .line 1950
    invoke-static/range {p0 .. p5}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    goto/16 :goto_47

    :cond_87
    move-object v10, v7

    .line 1176
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1178
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "av_resume"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1176
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1182
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_88

    goto :goto_42

    .line 1186
    :cond_88
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1183
    :cond_89
    :goto_42
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :cond_8a
    move-object v10, v7

    .line 1162
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->ERROR:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1164
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "av_stalled"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1162
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1168
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_8b

    goto :goto_43

    .line 1172
    :cond_8b
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1169
    :cond_8c
    :goto_43
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    .line 1383
    :cond_8d
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->NOTICE:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1385
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->NONE:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x0

    const-string v3, "config_loaded"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1383
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1389
    invoke-virtual {v1, v15}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_8e

    goto :goto_44

    .line 1393
    :cond_8e
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto/16 :goto_47

    .line 1390
    :cond_8f
    :goto_44
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v14, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    .line 1327
    :cond_90
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1329
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->HEARTBEAT:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x1

    const-string v3, "heartbeat"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1327
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1333
    invoke-virtual {v1, v12}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_91

    goto :goto_45

    .line 1337
    :cond_91
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto :goto_47

    .line 1334
    :cond_92
    :goto_45
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v13, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    .line 1910
    :cond_93
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->CRITICAL:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1912
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->NONE:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x0

    const-string v3, "crash_reset"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1910
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    .line 1916
    invoke-virtual {v1, v11}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_94

    goto :goto_46

    .line 1920
    :cond_94
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    goto :goto_47

    .line 1917
    :cond_95
    :goto_46
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v10, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    .line 1355
    :cond_96
    sget-object v2, Lcom/verimatrix/vdc/Monitor$Severity;->INFO:Lcom/verimatrix/vdc/Monitor$Severity;

    .line 1357
    invoke-virtual {v2}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v4

    sget-object v5, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->APP:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    const/4 v7, 0x0

    const-string v3, "application_status"

    move-object v2, v8

    move-object/from16 v6, p6

    .line 1355
    invoke-static/range {v2 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    const-string v2, "app_active"

    .line 1361
    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-static {v1, v8}, Lcom/verimatrix/vdc/EventsFactory;->skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z

    move-result v2

    if-eqz v2, :cond_97

    goto :goto_48

    .line 1365
    :cond_97
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    invoke-static {v0, v1, v8, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V

    :goto_47
    return-object v8

    .line 1362
    :cond_98
    :goto_48
    invoke-virtual {v8}, Lcom/verimatrix/vdc/SendEvent;->isAssetised()Z

    move-result v2

    const-string v3, "app"

    invoke-static {v0, v1, v8, v3, v2}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-object v9

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_26
        0x15 -> :sswitch_25
        0x46 -> :sswitch_24
        0x50 -> :sswitch_23
        0x5a -> :sswitch_22
        0x74 -> :sswitch_21
        0x7d -> :sswitch_20
        0x93 -> :sswitch_1f
        0xa0 -> :sswitch_1e
        0xa1 -> :sswitch_1d
        0xa2 -> :sswitch_1c
        0xa3 -> :sswitch_1b
        0xa4 -> :sswitch_1a
        0xa5 -> :sswitch_19
        0xbe -> :sswitch_18
        0xc2 -> :sswitch_17
        0x102 -> :sswitch_16
        0x130 -> :sswitch_15
        0x171 -> :sswitch_14
        0x175 -> :sswitch_13
        0x176 -> :sswitch_12
        0x177 -> :sswitch_11
        0x178 -> :sswitch_10
        0x179 -> :sswitch_f
        0x187 -> :sswitch_e
        0x188 -> :sswitch_d
        0x189 -> :sswitch_c
        0x18a -> :sswitch_b
        0x18c -> :sswitch_a
        0x18d -> :sswitch_9
        0x18e -> :sswitch_8
        0x190 -> :sswitch_7
        0x191 -> :sswitch_6
        0x192 -> :sswitch_5
        0x1a2 -> :sswitch_4
        0x1a3 -> :sswitch_3
        0x1a4 -> :sswitch_2
        0x1e0 -> :sswitch_1
        0x227 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8d
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xfb
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x123
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x133
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x145
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;ILcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V
    .locals 2

    int-to-long v0, p2

    .line 2044
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/SendEvent;->setFlags(J)V

    .line 2045
    invoke-static {p0, p1, p3, p4, p5}, Lcom/verimatrix/vdc/EventsFactory;->fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Lcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V

    return-void
.end method

.method private static fillEventData(Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Lcom/verimatrix/vdc/SendEvent$FilterFlag;[JZ)V
    .locals 0

    .line 2037
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/SendEvent;->setName(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/SendEvent;->setFilterFlag(Ljava/lang/String;)V

    .line 2039
    invoke-static {p0, p4, p3}, Lcom/verimatrix/vdc/EventsFactory;->setR(Lcom/verimatrix/vdc/SendEvent;Z[J)V

    return-void
.end method

.method private static logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p4, :cond_0

    const-string p4, " (a)"

    goto :goto_0

    :cond_0
    const-string p4, ""

    :goto_0
    const-string v0, " [id:"

    if-eqz p3, :cond_1

    .line 2128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent;->getEventId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "] (skip: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 2130
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent;->getEventId()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1
    const/16 p4, 0x8

    new-array p4, p4, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 2132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "d0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent;->getD0()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "d1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2134
    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent;->getD1()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "d2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2135
    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent;->getD2()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "d3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2136
    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent;->getD3()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent;->getR0()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2138
    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent;->getR1()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2139
    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent;->getR2()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent;->getR3()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, v0

    .line 2132
    invoke-static {p0, p1, p3, p4}, Lcom/verimatrix/vdc/MonitorLog;->event(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2117
    invoke-static {p0, p1, p2, v0, p3}, Lcom/verimatrix/vdc/EventsFactory;->logEvent(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;Ljava/lang/String;Z)V

    return-void
.end method

.method private static setD(Lcom/verimatrix/vdc/SendEvent;[J)V
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_4

    .line 2050
    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 2051
    aget-wide v4, p1, v2

    invoke-virtual {p0, v4, v5}, Lcom/verimatrix/vdc/SendEvent;->setD0(J)V

    goto :goto_0

    .line 2053
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/SendEvent;->setD0(J)V

    .line 2055
    :goto_0
    array-length v2, p1

    const/4 v4, 0x2

    if-lt v2, v4, :cond_1

    .line 2056
    aget-wide v2, p1, v3

    invoke-virtual {p0, v2, v3}, Lcom/verimatrix/vdc/SendEvent;->setD1(J)V

    goto :goto_1

    .line 2058
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/SendEvent;->setD1(J)V

    .line 2060
    :goto_1
    array-length v2, p1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 2061
    aget-wide v4, p1, v4

    invoke-virtual {p0, v4, v5}, Lcom/verimatrix/vdc/SendEvent;->setD2(J)V

    goto :goto_2

    .line 2063
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/SendEvent;->setD2(J)V

    .line 2065
    :goto_2
    array-length v2, p1

    const/4 v4, 0x4

    if-lt v2, v4, :cond_3

    .line 2066
    aget-wide v0, p1, v3

    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/SendEvent;->setD3(J)V

    goto :goto_3

    .line 2068
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/SendEvent;->setD3(J)V

    goto :goto_3

    .line 2071
    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/SendEvent;->setD0(J)V

    .line 2072
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/SendEvent;->setD1(J)V

    .line 2073
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/SendEvent;->setD2(J)V

    .line 2074
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/SendEvent;->setD3(J)V

    :goto_3
    return-void
.end method

.method private static setDefaultR(Lcom/verimatrix/vdc/SendEvent;)V
    .locals 4

    const-wide/16 v0, -0x1

    .line 2110
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/SendEvent;->setR0(J)V

    .line 2111
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/SendEvent;->setR1(J)V

    const-wide/16 v2, 0x4

    .line 2112
    invoke-virtual {p0, v2, v3}, Lcom/verimatrix/vdc/SendEvent;->setR2(J)V

    .line 2113
    invoke-virtual {p0, v0, v1}, Lcom/verimatrix/vdc/SendEvent;->setR3(J)V

    return-void
.end method

.method private static setR(Lcom/verimatrix/vdc/SendEvent;Z[J)V
    .locals 6

    .line 2079
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/SendEvent;->setAssetised(Z)V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 2081
    array-length p1, p2

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2082
    aget-wide v3, p2, p1

    invoke-virtual {p0, v3, v4}, Lcom/verimatrix/vdc/SendEvent;->setR0(J)V

    goto :goto_0

    .line 2084
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/SendEvent;->setR0(J)V

    .line 2087
    :goto_0
    array-length p1, p2

    const/4 v3, 0x2

    if-lt p1, v3, :cond_1

    .line 2088
    aget-wide v4, p2, v0

    invoke-virtual {p0, v4, v5}, Lcom/verimatrix/vdc/SendEvent;->setR1(J)V

    goto :goto_1

    .line 2090
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/SendEvent;->setR1(J)V

    .line 2093
    :goto_1
    array-length p1, p2

    const/4 v0, 0x3

    if-lt p1, v0, :cond_2

    .line 2094
    aget-wide v3, p2, v3

    invoke-virtual {p0, v3, v4}, Lcom/verimatrix/vdc/SendEvent;->setR2(J)V

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x4

    .line 2096
    invoke-virtual {p0, v3, v4}, Lcom/verimatrix/vdc/SendEvent;->setR2(J)V

    .line 2099
    :goto_2
    array-length p1, p2

    const/4 v3, 0x4

    if-lt p1, v3, :cond_3

    .line 2100
    aget-wide p1, p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/SendEvent;->setR3(J)V

    goto :goto_3

    .line 2102
    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/SendEvent;->setR3(J)V

    goto :goto_3

    .line 2105
    :cond_4
    invoke-static {p0}, Lcom/verimatrix/vdc/EventsFactory;->setDefaultR(Lcom/verimatrix/vdc/SendEvent;)V

    :goto_3
    return-void
.end method

.method public static skipEventBySeverityFilter(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)Z
    .locals 12

    .line 1978
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFlags()J

    move-result-wide v0

    .line 1980
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->SESSION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFilterFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string p1, "session_severity"

    .line 1981
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v4, v3

    goto/16 :goto_4

    .line 1982
    :cond_1
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->DATA:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFilterFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "data_severity"

    .line 1983
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto :goto_0

    .line 1984
    :cond_2
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->LOCATION:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFilterFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "location_severity"

    .line 1985
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto :goto_0

    .line 1986
    :cond_3
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->HEARTBEAT:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFilterFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p1, "heartbeat_severity"

    .line 1987
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto :goto_0

    .line 1988
    :cond_4
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->APP:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFilterFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "app_severity"

    .line 1989
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto :goto_0

    .line 1990
    :cond_5
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->DIRECT:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFilterFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "direct_event_code_list"

    .line 1992
    invoke-virtual {p0, v0}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1993
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_1
    if-ge v1, v0, :cond_8

    aget-object v5, p0, v1

    .line 1994
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1996
    :try_start_0
    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1998
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1999
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getEventId()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_7

    :goto_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    const-string v6, "-"

    .line 2004
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2005
    aget-object v6, v5, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2006
    array-length v8, v5

    sub-int/2addr v8, v3

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2007
    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getEventId()J

    move-result-wide v10

    cmp-long v5, v10, v6

    if-ltz v5, :cond_7

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getEventId()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v7, v5, v8

    if-gtz v7, :cond_7

    goto :goto_2

    :catch_0
    move-exception v5

    const-string v6, "skipEventByFilter"

    const-string v7, "Error while parsing DIRECT_EVENT_CODE_LIST"

    .line 2012
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    move v4, v2

    goto/16 :goto_4

    .line 2016
    :cond_9
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->NETWORK:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFilterFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string p1, "network_severity"

    .line 2017
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto/16 :goto_0

    .line 2018
    :cond_a
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->NONE:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFilterFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string p1, "none_severity"

    .line 2019
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto/16 :goto_0

    .line 2020
    :cond_b
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->QOS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFilterFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string p1, "qos_severity"

    .line 2021
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto/16 :goto_0

    .line 2022
    :cond_c
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->IP_ADDRESS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFilterFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string p1, "ip_address_severity"

    .line 2023
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto/16 :goto_0

    .line 2024
    :cond_d
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->CPU:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFilterFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string p1, "cpu_severity"

    .line 2025
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto/16 :goto_0

    .line 2026
    :cond_e
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->MAC_ADDRESS:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFilterFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string p1, "mac_address_severity"

    .line 2027
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto/16 :goto_0

    .line 2028
    :cond_f
    sget-object v2, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->MEMORY:Lcom/verimatrix/vdc/SendEvent$FilterFlag;

    invoke-virtual {v2}, Lcom/verimatrix/vdc/SendEvent$FilterFlag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/verimatrix/vdc/SendEvent;->getFilterFlag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "memory_severity"

    .line 2029
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    goto/16 :goto_0

    :cond_10
    :goto_4
    return v4
.end method
