.class public Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;
.super Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;
.source "VOOSMPComScoreTrackingAdaptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPComScoreTrackingAdaptor"

.field private static streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;


# instance fields
.field private mIsAd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->mIsAd:Z

    .line 46
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->isComScoreAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method private static isComScoreAvailable()Z
    .locals 4

    const-string v0, "comScore"

    const-string v1, "com.comscore.Analytics"

    .line 146
    invoke-static {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->isClassAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPComScoreTrackingAdaptor"

    invoke-static {v3, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private isDebug()Z
    .locals 4

    .line 135
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    .line 137
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debug is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPComScoreTrackingAdaptor"

    invoke-static {v3, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public actionNotify(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 5

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In actionNotify, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPComScoreTrackingAdaptor"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "eventPosition"

    .line 260
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getLongOrIntegerParam(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    const/4 v2, 0x1

    const-string v3, "eventLabels"

    const/4 v4, 0x0

    .line 263
    invoke-virtual {p0, v3, v4, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getLabelsFromParamAndParcel(Ljava/lang/String;Landroid/os/Parcel;Z)Ljava/util/HashMap;

    move-result-object v2

    .line 264
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    const/4 v2, 0x6

    .line 267
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p0, p1, v4, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->callSDKNotify(Ljava/lang/String;Ljava/util/HashMap;J)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object p1

    return-object p1
.end method

.method public actionNotifyInteger(Ljava/lang/String;)V
    .locals 9

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In actionNotifyInteger, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPComScoreTrackingAdaptor"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "eventInteger"

    .line 273
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getIntegerParam(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "eventInteger is not set to a number"

    .line 275
    invoke-static {v3, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 278
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "eventPosition"

    .line 279
    invoke-virtual {p0, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getLongOrIntegerParam(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 280
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide/16 v4, -0x1

    :goto_0
    const-string v2, "eventLabels"

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 282
    invoke-virtual {p0, v2, v6, v7}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getLabelsFromParamAndParcel(Ljava/lang/String;Landroid/os/Parcel;Z)Ljava/util/HashMap;

    move-result-object v2

    .line 283
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v2

    .line 286
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling StreamingAnalytics."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", eventLabels) with:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v8}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[StreamingAnalytics."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->dumpLabels(Ljava/lang/String;Ljava/util/Map;)V

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_2
    const/4 v7, -0x1

    goto :goto_3

    :sswitch_0
    const-string v7, "notifyChangeVolume"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x2

    goto :goto_3

    :sswitch_1
    const-string v8, "notifyChangeBitrate"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    :sswitch_2
    const-string v7, "notifyChangePlaybackRate"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :cond_5
    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_0
    if-ltz v0, :cond_7

    const/16 p1, 0x64

    if-le v0, p1, :cond_6

    goto :goto_4

    .line 300
    :cond_6
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/comscore/streaming/StreamingAnalytics;->notifyChangeVolume(IJLjava/util/Map;)Z

    goto :goto_5

    .line 296
    :cond_7
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new volume value ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is outside the range 0..100"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 291
    :pswitch_1
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/comscore/streaming/StreamingAnalytics;->notifyChangeBitrate(IJLjava/util/Map;)Z

    goto :goto_5

    .line 304
    :pswitch_2
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/comscore/streaming/StreamingAnalytics;->notifyChangePlaybackRate(IJLjava/util/Map;)Z

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c3a1b6c -> :sswitch_2
        0x2aaff0d4 -> :sswitch_1
        0x44daa8d3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public actionNotifyString(Ljava/lang/String;)V
    .locals 11

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In actionNotifyString, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPComScoreTrackingAdaptor"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "eventString"

    .line 315
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "eventString is not set"

    .line 317
    invoke-static {v3, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "eventPosition"

    .line 320
    invoke-virtual {p0, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getLongOrIntegerParam(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 321
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide/16 v4, -0x1

    :goto_0
    const-string v2, "eventLabels"

    const/4 v6, 0x0

    .line 323
    invoke-virtual {p0, v2, v6, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getLabelsFromParamAndParcel(Ljava/lang/String;Landroid/os/Parcel;Z)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 324
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v2

    .line 327
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling StreamingAnalytics."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", eventLabels) with:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v7}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[StreamingAnalytics."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->dumpLabels(Ljava/lang/String;Ljava/util/Map;)V

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_2
    const/4 v2, -0x1

    goto :goto_3

    :sswitch_0
    const-string v2, "notifyChangeWindowState"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x4

    goto :goto_3

    :sswitch_1
    const-string v2, "notifyChangeCDN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    goto :goto_3

    :sswitch_2
    const-string v2, "notifyChangeAudioTrack"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x2

    goto :goto_3

    :sswitch_3
    const-string v2, "notifyChangeSubtitleTrack"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    :sswitch_4
    const-string v2, "notifyChangeVideoTrack"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 332
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    :goto_4
    const/4 v7, -0x1

    goto :goto_5

    :sswitch_5
    const-string p1, "norm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_4

    :sswitch_6
    const-string p1, "full"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v7, 0x2

    goto :goto_5

    :sswitch_7
    const-string p1, "min"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v7, 0x1

    goto :goto_5

    :sswitch_8
    const-string p1, "max"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    const/4 v7, 0x0

    :cond_b
    :goto_5
    packed-switch v7, :pswitch_data_1

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New window state ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "must be full, norm, min or max"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    :pswitch_1
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/comscore/streaming/StreamingAnalytics;->notifyChangeWindowState(Ljava/lang/String;JLjava/util/Map;)Z

    goto :goto_6

    .line 358
    :pswitch_2
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/comscore/streaming/StreamingAnalytics;->notifyChangeCDN(Ljava/lang/String;JLjava/util/Map;)Z

    goto :goto_6

    .line 346
    :pswitch_3
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/comscore/streaming/StreamingAnalytics;->notifyChangeAudioTrack(Ljava/lang/String;JLjava/util/Map;)Z

    goto :goto_6

    .line 354
    :pswitch_4
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/comscore/streaming/StreamingAnalytics;->notifyChangeSubtitleTrack(Ljava/lang/String;JLjava/util/Map;)Z

    goto :goto_6

    .line 350
    :pswitch_5
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/comscore/streaming/StreamingAnalytics;->notifyChangeVideoTrack(Ljava/lang/String;JLjava/util/Map;)Z

    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71744137 -> :sswitch_4
        0x3ac8103a -> :sswitch_3
        0x4b53984e -> :sswitch_2
        0x5eb2bd14 -> :sswitch_1
        0x74a95868 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x1a564 -> :sswitch_8
        0x1a652 -> :sswitch_7
        0x30228f -> :sswitch_6
        0x33afbc -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public callAssetSetLabels()V
    .locals 4

    .line 440
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {v0}, Lcom/comscore/streaming/StreamingAnalytics;->getPlaybackSession()Lcom/comscore/streaming/PlaybackSession;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    .line 442
    invoke-virtual {v0}, Lcom/comscore/streaming/StreamingAnalytics;->getPlaybackSession()Lcom/comscore/streaming/PlaybackSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/streaming/PlaybackSession;->getAsset()Lcom/comscore/streaming/Asset;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 445
    :cond_0
    iget-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->mIsAd:Z

    if-eqz v0, :cond_1

    const-string v0, "adAssetLabels"

    goto :goto_0

    :cond_1
    const-string v0, "contentAssetLabels"

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "allAssetLabels"

    .line 447
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getLabelsFromParamsAndParcel(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcel;Z)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPComScoreTrackingAdaptor"

    const-string v3, "calling StreamingAnalytics.getPlaybackSession().getAsset().setLabels() with:"

    .line 448
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "[StreamingAnalytics.getPlaybackSession().getAsset().setLabels]"

    .line 450
    invoke-static {v1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->dumpLabels(Ljava/lang/String;Ljava/util/Map;)V

    .line 452
    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {v1}, Lcom/comscore/streaming/StreamingAnalytics;->getPlaybackSession()Lcom/comscore/streaming/PlaybackSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comscore/streaming/PlaybackSession;->getAsset()Lcom/comscore/streaming/Asset;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/comscore/streaming/Asset;->setLabels(Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public callCreatePlaybackSession(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPComScoreTrackingAdaptor"

    const-string v3, "In callCreatePlaybackSession"

    .line 152
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iput-boolean v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->mIsAd:Z

    const-string v1, "playbackSessionLabels"

    .line 155
    invoke-virtual {p0, v1, p1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getLabelsFromParamAndParcel(Ljava/lang/String;Landroid/os/Parcel;Z)Ljava/util/HashMap;

    move-result-object p1

    if-nez p1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Calling StreamingAnalytics.createPlaybackSession(null)"

    .line 157
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Calling StreamingAnalytics.createPlaybackSession(playbackSessionLabels) with:"

    .line 160
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "[StreamingAnalytics.createPlaybackSession]"

    .line 162
    invoke-static {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->dumpLabels(Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    :goto_0
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {v0, p1}, Lcom/comscore/streaming/StreamingAnalytics;->createPlaybackSession(Ljava/util/Map;)V

    return-void
.end method

.method public callNotify(Ljava/lang/String;Landroid/os/Parcel;J)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPComScoreTrackingAdaptor"

    const-string v2, "In callNotify"

    .line 188
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "eventLabels"

    const/4 v1, 0x1

    .line 190
    invoke-virtual {p0, v0, p2, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getLabelsFromParamAndParcel(Ljava/lang/String;Landroid/os/Parcel;Z)Ljava/util/HashMap;

    move-result-object p2

    .line 191
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 194
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->callSDKNotify(Ljava/lang/String;Ljava/util/HashMap;J)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-void
.end method

.method public callNotifyCustomEvent()V
    .locals 6

    const-string v0, "eventLabels"

    .line 368
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getHashStrStrParam(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "@@@VOOSMPComScoreTrackingAdaptor"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Tracking configuration parameter eventLabelsis not set or null! Must set at least ns_st_ev."

    .line 370
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v3, "ns_st_ev"

    .line 374
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Label ns_st_ev must be set in parameter eventLabels"

    .line 376
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 379
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "keep-alive"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x16

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x15

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "trans"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "start"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0x13

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "pause"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0x12

    goto/16 :goto_0

    :sswitch_5
    const-string v5, "error"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0x11

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "drmfa"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0x10

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "drmde"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "drmap"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0xe

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "bitrt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "audio"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "subs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "play"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "load"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "end"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_f
    const-string v5, "cta"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_0

    :cond_11
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_10
    const-string v5, "cdn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_0

    :cond_12
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_11
    const-string v5, "hb"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_0

    :cond_13
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_12
    const-string v5, "window"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_0

    :cond_14
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_13
    const-string v5, "volume"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_0

    :cond_15
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_14
    const-string v5, "playrt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_0

    :cond_16
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_15
    const-string v5, "custom"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto :goto_0

    :cond_17
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_16
    const-string v5, "buffer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    goto :goto_0

    :cond_18
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const-string v1, "eventPosition"

    .line 408
    invoke-virtual {p0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getLongOrIntegerParam(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_19

    .line 411
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_19
    const-string v1, "CustomEvent"

    .line 413
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->callSDKNotify(Ljava/lang/String;Ljava/util/HashMap;J)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-void

    .line 403
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set ns_st_ev to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x52246bc0 -> :sswitch_16
        -0x5069748f -> :sswitch_15
        -0x3ac1638a -> :sswitch_14
        -0x305518e6 -> :sswitch_13
        -0x2ef42410 -> :sswitch_12
        0xcfa -> :sswitch_11
        0x1802d -> :sswitch_10
        0x18210 -> :sswitch_f
        0x188db -> :sswitch_e
        0x32c4e6 -> :sswitch_d
        0x348b34 -> :sswitch_c
        0x360a33 -> :sswitch_b
        0x58d9bd6 -> :sswitch_a
        0x5967c0f -> :sswitch_9
        0x5b6a60e -> :sswitch_8
        0x5b6a660 -> :sswitch_7
        0x5b6a69a -> :sswitch_6
        0x5c4d208 -> :sswitch_5
        0x65825f6 -> :sswitch_4
        0x68ac462 -> :sswitch_3
        0x697f2a8 -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0xc966085 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public callPlaybackSessionSetLabels()V
    .locals 4

    .line 427
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {v0}, Lcom/comscore/streaming/StreamingAnalytics;->getPlaybackSession()Lcom/comscore/streaming/PlaybackSession;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "playbackSessionLabels"

    .line 431
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getHashStrStrParam(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPComScoreTrackingAdaptor"

    const-string v3, "calling StreamingAnalytics.getPlaybackSession().setLabels() with:"

    .line 432
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "[StreamingAnalytics.getPlaybackSession().setLabels]"

    .line 434
    invoke-static {v1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->dumpLabels(Ljava/lang/String;Ljava/util/Map;)V

    .line 436
    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {v1}, Lcom/comscore/streaming/StreamingAnalytics;->getPlaybackSession()Lcom/comscore/streaming/PlaybackSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/comscore/streaming/PlaybackSession;->setLabels(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public callSDKNotify(Ljava/lang/String;Ljava/util/HashMap;J)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling StreamingAnalytics.notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventLabels) with:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPComScoreTrackingAdaptor"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StreamingAnalytics.notify"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->dumpLabels(Ljava/lang/String;Ljava/util/Map;)V

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Engage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "BufferStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "Pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "Play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "Load"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "End"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "CustomEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "BufferStop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_9
    const-string v0, "DRMApprove"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_a
    const-string v0, "TransferPlayback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_b
    const-string v0, "SeekStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_c
    const-string v0, "DRMFail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_d
    const-string v0, "DRMDeny"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_e
    const-string v0, "SkipAd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_f
    const-string v0, "CallToAction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 252
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notify"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNKNOWN:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 225
    :pswitch_0
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyEngage(JLjava/util/Map;)Z

    goto :goto_1

    .line 213
    :pswitch_1
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyBufferStart(JLjava/util/Map;)Z

    goto :goto_1

    .line 207
    :pswitch_2
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyPause(JLjava/util/Map;)Z

    goto :goto_1

    .line 231
    :pswitch_3
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyError(JLjava/util/Map;)Z

    goto :goto_1

    .line 204
    :pswitch_4
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyPlay(JLjava/util/Map;)Z

    goto :goto_1

    .line 222
    :pswitch_5
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyLoad(JLjava/util/Map;)Z

    goto :goto_1

    .line 219
    :pswitch_6
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyEnd(JLjava/util/Map;)Z

    goto :goto_1

    .line 249
    :pswitch_7
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyCustomEvent(JLjava/util/Map;)Z

    goto :goto_1

    .line 216
    :pswitch_8
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyBufferStop(JLjava/util/Map;)Z

    goto :goto_1

    .line 243
    :pswitch_9
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyDRMApprove(JLjava/util/Map;)Z

    goto :goto_1

    .line 237
    :pswitch_a
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyTransferPlayback(JLjava/util/Map;)Z

    goto :goto_1

    .line 210
    :pswitch_b
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifySeekStart(JLjava/util/Map;)Z

    goto :goto_1

    .line 240
    :pswitch_c
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyDRMFail(JLjava/util/Map;)Z

    goto :goto_1

    .line 246
    :pswitch_d
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyDRMDeny(JLjava/util/Map;)Z

    goto :goto_1

    .line 228
    :pswitch_e
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifySkipAd(JLjava/util/Map;)Z

    goto :goto_1

    .line 234
    :pswitch_f
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p1, p3, p4, p2}, Lcom/comscore/streaming/StreamingAnalytics;->notifyCallToAction(JLjava/util/Map;)Z

    .line 255
    :goto_1
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7bb49ad1 -> :sswitch_f
        -0x6c4889de -> :sswitch_e
        -0x628d5bd5 -> :sswitch_d
        -0x628c82c3 -> :sswitch_c
        -0x57c58f56 -> :sswitch_b
        -0x43dbe4ba -> :sswitch_a
        -0x2be44b32 -> :sswitch_9
        -0x178f337e -> :sswitch_8
        -0x7f6e277 -> :sswitch_7
        0x110bb -> :sswitch_6
        0x243906 -> :sswitch_5
        0x25ff54 -> :sswitch_4
        0x401e1e8 -> :sswitch_3
        0x49535d6 -> :sswitch_2
        0x25a88fe2 -> :sswitch_1
        0x7bfcc781 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public callSetAsset(ZLandroid/os/Parcel;Z)V
    .locals 4

    .line 169
    iput-boolean p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->mIsAd:Z

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPComScoreTrackingAdaptor"

    const-string v3, "In callSetAsset"

    .line 170
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string p1, "adAssetLabels"

    goto :goto_0

    :cond_0
    const-string p1, "contentAssetLabels"

    :goto_0
    const-string v1, "allAssetLabels"

    const/4 v3, 0x1

    .line 174
    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getLabelsFromParamsAndParcel(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcel;Z)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "[StreamingAnalytics.setAsset]"

    if-eqz p3, :cond_1

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "Calling StreamingAnalytics.setAsset(assetLabels, true)"

    .line 176
    invoke-static {v2, v0, p3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-static {p2, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->dumpLabels(Ljava/lang/String;Ljava/util/Map;)V

    .line 178
    sget-object p2, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p2}, Lcom/comscore/streaming/StreamingAnalytics;->getPlaybackSession()Lcom/comscore/streaming/PlaybackSession;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Lcom/comscore/streaming/PlaybackSession;->setAsset(Ljava/util/Map;Z)V

    goto :goto_1

    :cond_1
    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "Calling StreamingAnalytics.setAsset(assetLabels)"

    .line 180
    invoke-static {v2, v0, p3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-static {p2, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->dumpLabels(Ljava/lang/String;Ljava/util/Map;)V

    .line 182
    sget-object p2, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {p2}, Lcom/comscore/streaming/StreamingAnalytics;->getPlaybackSession()Lcom/comscore/streaming/PlaybackSession;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/comscore/streaming/PlaybackSession;->setAsset(Ljava/util/Map;)V

    :goto_1
    return-void
.end method

.method public callStreamingAnalyticsSetLabels()V
    .locals 4

    .line 417
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "streamingAnalyticsLabels"

    .line 420
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getHashStrStrParam(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPComScoreTrackingAdaptor"

    const-string v3, "calling StreamingAnalytics.setLabels() with:"

    .line 421
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "[StreamingAnalytics.setLabels]"

    .line 422
    invoke-static {v1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->dumpLabels(Ljava/lang/String;Ljava/util/Map;)V

    .line 423
    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {v1, v0}, Lcom/comscore/streaming/StreamingAnalytics;->setLabels(Ljava/util/Map;)V

    return-void
.end method

.method public execSDKAction(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 4

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "notifyCustomEvent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "notifyChangeWindowState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "notifyChangeCDN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "notifyChangeAudioTrack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "notifyChangeVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "playbackSessionSetLabels"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "notifyChangeSubtitleTrack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "assetSetLabels"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "notifyChangeBitrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "notifyChangePlaybackRate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "notifyChangeVideoTrack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "streamingAnalyticsSetLabels"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 118
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 122
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->actionNotify(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    move-result-object p1

    return-object p1

    .line 124
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPComScoreTrackingAdaptor"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_UNKNOWN:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    .line 106
    :pswitch_0
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->callNotifyCustomEvent()V

    goto :goto_1

    .line 112
    :pswitch_1
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->callPlaybackSessionSetLabels()V

    goto :goto_1

    .line 115
    :pswitch_2
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->callAssetSetLabels()V

    goto :goto_1

    .line 94
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->actionNotifyInteger(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->actionNotifyString(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :pswitch_5
    invoke-virtual {p0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->callStreamingAnalyticsSetLabels()V

    .line 127
    :goto_1
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7b80ede3 -> :sswitch_b
        -0x71744137 -> :sswitch_a
        -0x4c3a1b6c -> :sswitch_9
        0x2aaff0d4 -> :sswitch_8
        0x2bc339f1 -> :sswitch_7
        0x3ac8103a -> :sswitch_6
        0x3cfd6146 -> :sswitch_5
        0x44daa8d3 -> :sswitch_4
        0x4b53984e -> :sswitch_3
        0x5eb2bd14 -> :sswitch_2
        0x74a95868 -> :sswitch_1
        0x75d54ea0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public initializeJavaSDK()Z
    .locals 4

    .line 60
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    const-string v1, "@@@VOOSMPComScoreTrackingAdaptor"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "streamingAnalytics is not null!"

    .line 61
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "calling new StreamingAnalytics()"

    .line 63
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance v0, Lcom/comscore/streaming/StreamingAnalytics;

    invoke-direct {v0}, Lcom/comscore/streaming/StreamingAnalytics;-><init>()V

    sput-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Failed to create StreamingAnalytics object"

    .line 66
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    const-string v3, "streamingAnalytics"

    .line 69
    invoke-virtual {p0, v3, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "streamingAnalyticsLabels"

    .line 72
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->getHashStrStrParam(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "calling StreamingAnalytics.setLabels() with:"

    .line 74
    invoke-static {v1, v3, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "[StreamingAnalytics.setLabels]"

    .line 75
    invoke-static {v1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->dumpLabels(Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    invoke-virtual {v1, v0}, Lcom/comscore/streaming/StreamingAnalytics;->setLabels(Ljava/util/Map;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isSDKAvailable()Z
    .locals 1

    .line 54
    invoke-static {}, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->isComScoreAvailable()Z

    move-result v0

    return v0
.end method

.method public unInitializeJavaSDK()Z
    .locals 1

    const/4 v0, 0x0

    .line 83
    sput-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPComScoreTrackingAdaptor;->streamingAnalytics:Lcom/comscore/streaming/StreamingAnalytics;

    const/4 v0, 0x1

    return v0
.end method
