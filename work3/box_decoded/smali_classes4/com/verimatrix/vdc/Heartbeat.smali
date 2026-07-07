.class final Lcom/verimatrix/vdc/Heartbeat;
.super Ljava/lang/Object;
.source "Heartbeat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/Heartbeat$SignalType;,
        Lcom/verimatrix/vdc/Heartbeat$ConnectionType;
    }
.end annotation


# static fields
.field public static ConnectionTypeV23:[I = null

.field private static final MAX_LATITUDE:J = 0xd693a400L

.field private static final MAX_LONGITUDE:J = 0xd693a400L

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field private static final TAG:Ljava/lang/String; = "Heartbeat"


# instance fields
.field private c:Landroid/content/Context;

.field private configuration:Lcom/verimatrix/vdc/Configuration;

.field private lastBatteryLevel:I

.field private lastHeadsetPluggedStatus:I

.field private lastNetStat:Lcom/verimatrix/vdc/NetStat;

.field private lastVolumeLevel:I

.field private stream:Lcom/verimatrix/vdc/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 73
    fill-array-data v0, :array_0

    sput-object v0, Lcom/verimatrix/vdc/Heartbeat;->ConnectionTypeV23:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/verimatrix/vdc/Heartbeat;->stream:Lcom/verimatrix/vdc/Stream;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/verimatrix/vdc/Heartbeat;->lastHeadsetPluggedStatus:I

    .line 31
    iput v0, p0, Lcom/verimatrix/vdc/Heartbeat;->lastBatteryLevel:I

    .line 32
    iput v0, p0, Lcom/verimatrix/vdc/Heartbeat;->lastVolumeLevel:I

    .line 142
    iput-object p1, p0, Lcom/verimatrix/vdc/Heartbeat;->c:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/verimatrix/vdc/Stream;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/verimatrix/vdc/Heartbeat;->stream:Lcom/verimatrix/vdc/Stream;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/verimatrix/vdc/Heartbeat;->lastHeadsetPluggedStatus:I

    .line 31
    iput v0, p0, Lcom/verimatrix/vdc/Heartbeat;->lastBatteryLevel:I

    .line 32
    iput v0, p0, Lcom/verimatrix/vdc/Heartbeat;->lastVolumeLevel:I

    .line 136
    iput-object p1, p0, Lcom/verimatrix/vdc/Heartbeat;->c:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/verimatrix/vdc/Heartbeat;->stream:Lcom/verimatrix/vdc/Stream;

    .line 138
    iget-object p1, p2, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    iput-object p1, p0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    return-void
.end method

.method static synthetic access$000(Lcom/verimatrix/vdc/Heartbeat;)Lcom/verimatrix/vdc/Configuration;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    return-object p0
.end method

.method static synthetic access$100(Lcom/verimatrix/vdc/Heartbeat;)[J
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/verimatrix/vdc/Heartbeat;->getRegisters()[J

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/verimatrix/vdc/Heartbeat;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/verimatrix/vdc/Heartbeat;->lastHeadsetPluggedStatus:I

    return p0
.end method

.method static synthetic access$202(Lcom/verimatrix/vdc/Heartbeat;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/verimatrix/vdc/Heartbeat;->lastHeadsetPluggedStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/verimatrix/vdc/Heartbeat;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/verimatrix/vdc/Heartbeat;->lastBatteryLevel:I

    return p0
.end method

.method static synthetic access$302(Lcom/verimatrix/vdc/Heartbeat;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/verimatrix/vdc/Heartbeat;->lastBatteryLevel:I

    return p1
.end method

.method static synthetic access$400(Lcom/verimatrix/vdc/Heartbeat;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/verimatrix/vdc/Heartbeat;->lastVolumeLevel:I

    return p0
.end method

.method static synthetic access$402(Lcom/verimatrix/vdc/Heartbeat;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/verimatrix/vdc/Heartbeat;->lastVolumeLevel:I

    return p1
.end method

.method private getRegisters()[J
    .locals 6

    .line 363
    iget-object v0, p0, Lcom/verimatrix/vdc/Heartbeat;->stream:Lcom/verimatrix/vdc/Stream;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    .line 366
    sget-object v4, Lcom/verimatrix/vdc/Monitor$MediaType;->IDLE:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v4}, Lcom/verimatrix/vdc/Monitor$MediaType;->getValue()I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, v0, v1

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    return-object v0
.end method


# virtual methods
.method addDeviceStatusEvent(Landroid/content/Context;Z)V
    .locals 1

    .line 229
    new-instance v0, Lcom/verimatrix/vdc/Heartbeat$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/verimatrix/vdc/Heartbeat$2;-><init>(Lcom/verimatrix/vdc/Heartbeat;Landroid/content/Context;Z)V

    invoke-static {p1, v0}, Lcom/verimatrix/vdc/HeadsetUtils;->isHeadsetBluetoothOn(Landroid/content/Context;Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;)V

    return-void
.end method

.method addNetworkInfoEvent(Landroid/content/Context;)V
    .locals 11

    .line 184
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorUtils;->getConnectionSystemType(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 186
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v2, :cond_0

    invoke-static {v0}, Lcom/verimatrix/vdc/Heartbeat$ConnectionType;->getConnectionTypeId(I)I

    move-result v0

    .line 187
    :cond_0
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorUtils;->isWiFi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorUtils;->getWiFiConnectionSpeed(Landroid/content/Context;)I

    move-result v1

    .line 189
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v2

    iget-object v4, p0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v5, 0x1a2

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v3, 0x3

    new-array v8, v3, [J

    const/4 v3, 0x0

    int-to-long v9, v0

    aput-wide v9, v8, v3

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v9, v1

    aput-wide v9, v8, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/verimatrix/vdc/Heartbeat$SignalType;->WIFI:Lcom/verimatrix/vdc/Heartbeat$SignalType;

    .line 191
    invoke-virtual {v1}, Lcom/verimatrix/vdc/Heartbeat$SignalType;->getAppId()I

    move-result v1

    int-to-long v9, v1

    aput-wide v9, v8, v0

    invoke-direct {p0}, Lcom/verimatrix/vdc/Heartbeat;->getRegisters()[J

    move-result-object v9

    move-object v3, p1

    .line 189
    invoke-static/range {v3 .. v9}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 193
    :cond_1
    new-instance v1, Lcom/verimatrix/vdc/Heartbeat$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/verimatrix/vdc/Heartbeat$1;-><init>(Lcom/verimatrix/vdc/Heartbeat;Landroid/content/Context;I)V

    invoke-static {p1, v1}, Lcom/verimatrix/vdc/MonitorUtils;->subscribeMobileSignalStrength(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method cpuLoadUpdate(Landroid/content/Context;)V
    .locals 27

    move-object/from16 v0, p0

    .line 262
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->readCpuLoadAverage()[D

    move-result-object v1

    const/4 v2, 0x0

    .line 265
    aget-wide v3, v1, v2

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    double-to-long v3, v3

    const/4 v7, 0x1

    .line 267
    aget-wide v8, v1, v7

    mul-double v8, v8, v5

    double-to-long v8, v8

    const/4 v10, 0x2

    .line 269
    aget-wide v11, v1, v10

    mul-double v11, v11, v5

    double-to-long v5, v11

    .line 271
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->readCpuIdle()J

    move-result-wide v11

    const-wide/16 v13, 0x64

    mul-long v11, v11, v13

    .line 274
    iget-object v15, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "load_avg(1m)="

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v16, v8

    aget-wide v7, v1, v2

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load_avg(5m)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-wide v9, v1, v8

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load_avg(10m)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v18, v3

    const/4 v8, 0x2

    aget-wide v2, v1, v8

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x64

    div-long v2, v11, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v14, v2

    const-string v1, "Cpu load"

    move-object/from16 v3, p1

    invoke-static {v3, v15, v1, v14}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v1

    iget-object v4, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const/4 v7, 0x4

    new-array v7, v7, [J

    const/4 v8, 0x0

    aput-wide v18, v7, v8

    const/4 v8, 0x1

    aput-wide v16, v7, v8

    const/4 v8, 0x2

    aput-wide v5, v7, v8

    aput-wide v11, v7, v2

    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/Heartbeat;->getRegisters()[J

    move-result-object v26

    const/16 v22, 0x50

    move-object/from16 v20, p1

    move-object/from16 v21, v4

    move-object/from16 v25, v7

    .line 278
    invoke-static/range {v20 .. v26}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    return-void
.end method

.method heartbeatUpdate(Landroid/content/Context;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 151
    iget-object v1, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v2, "start heartbeat"

    invoke-static {v8, v1, v2}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getDeviceUptime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 159
    iget-object v3, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v4, "ip_address_active"

    invoke-virtual {v3, v4}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "0.0.0.0"

    .line 162
    :goto_0
    invoke-static {v3}, Lcom/verimatrix/vdc/MonitorUtils;->ipAddressToLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 164
    invoke-static/range {p1 .. p1}, Lcom/verimatrix/vdc/MonitorUtils;->getNetMask(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/verimatrix/vdc/MonitorUtils;->ipAddressToLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 166
    invoke-static {v5, v6}, Lcom/verimatrix/vdc/MonitorUtils;->getNetMaskLongSum(J)J

    move-result-wide v9

    if-eqz p2, :cond_1

    .line 169
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v11

    iget-object v7, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v12, 0x52

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x4

    new-array v15, v15, [J

    const/16 v16, 0x0

    aput-wide v1, v15, v16

    const/4 v2, 0x1

    aput-wide v3, v15, v2

    const/4 v1, 0x2

    aput-wide v5, v15, v1

    const/4 v1, 0x3

    aput-wide v9, v15, v1

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/Heartbeat;->getRegisters()[J

    move-result-object v9

    move-object/from16 v1, p1

    const/4 v10, 0x1

    move-object v2, v7

    move v3, v12

    move-wide v4, v13

    move-object v6, v15

    move-object v7, v9

    .line 169
    invoke-static/range {v1 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 173
    invoke-virtual {v0, v8, v10}, Lcom/verimatrix/vdc/Heartbeat;->addDeviceStatusEvent(Landroid/content/Context;Z)V

    .line 176
    invoke-virtual/range {p0 .. p1}, Lcom/verimatrix/vdc/Heartbeat;->addNetworkInfoEvent(Landroid/content/Context;)V

    goto :goto_1

    .line 178
    :cond_1
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v9

    iget-object v2, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v3, 0x46

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/Heartbeat;->getRegisters()[J

    move-result-object v7

    move-object/from16 v1, p1

    .line 178
    invoke-static/range {v1 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    :goto_1
    return-void
.end method

.method locationUpdate(Landroid/content/Context;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 337
    invoke-static/range {p1 .. p1}, Lcom/verimatrix/vdc/MonitorUtils;->getBestLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v2

    const-string v3, "Location"

    if-eqz v2, :cond_2

    .line 338
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_2

    .line 339
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 338
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_2

    .line 340
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide v6, 0x416312d000000000L    # 1.0E7

    mul-double v4, v4, v6

    double-to-long v4, v4

    const-wide v8, 0xd693a400L

    const-wide/16 v10, 0x0

    cmp-long v12, v4, v10

    if-gez v12, :cond_0

    add-long/2addr v4, v8

    .line 344
    :cond_0
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    mul-double v12, v12, v6

    double-to-long v6, v12

    cmp-long v12, v6, v10

    if-gez v12, :cond_1

    add-long/2addr v6, v8

    .line 350
    :cond_1
    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    mul-float v8, v8, v9

    float-to-long v10, v8

    .line 351
    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v8

    mul-float v8, v8, v9

    float-to-long v8, v8

    .line 352
    iget-object v12, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lat="

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v16, v8

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v14, v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lon="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v18, v10

    .line 353
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v14, v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "speed="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v14, v10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bearing="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v14, v8

    .line 352
    invoke-static {v1, v12, v3, v14}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v12

    iget-object v2, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v3, 0x5a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x4

    new-array v15, v15, [J

    const/4 v11, 0x0

    aput-wide v4, v15, v11

    aput-wide v6, v15, v9

    aput-wide v18, v15, v10

    aput-wide v16, v15, v8

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/Heartbeat;->getRegisters()[J

    move-result-object v7

    move-object/from16 v1, p1

    move-wide v4, v13

    move-object v6, v15

    .line 355
    invoke-static/range {v1 .. v7}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v2, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v4, "unavailable"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method memoryUsageUpdate(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    .line 284
    invoke-static/range {p1 .. p1}, Lcom/verimatrix/vdc/MonitorUtils;->getUsedMemory(Landroid/content/Context;)J

    move-result-wide v1

    .line 286
    invoke-static/range {p1 .. p1}, Lcom/verimatrix/vdc/MonitorUtils;->getFreeMemory(Landroid/content/Context;)J

    move-result-wide v3

    .line 288
    iget-object v5, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "used="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "free="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-string v8, "Memory usage"

    move-object/from16 v11, p1

    invoke-static {v11, v5, v8, v7}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v5

    iget-object v12, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-array v6, v6, [J

    aput-wide v1, v6, v9

    aput-wide v3, v6, v10

    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/Heartbeat;->getRegisters()[J

    move-result-object v17

    const/16 v13, 0x74

    move-object/from16 v16, v6

    .line 290
    invoke-static/range {v11 .. v17}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    return-void
.end method

.method networkStatsUpdate(Landroid/content/Context;)V
    .locals 29

    move-object/from16 v0, p0

    .line 295
    iget-object v1, v0, Lcom/verimatrix/vdc/Heartbeat;->lastNetStat:Lcom/verimatrix/vdc/NetStat;

    if-eqz v1, :cond_0

    .line 297
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getNetStat()Lcom/verimatrix/vdc/NetStat;

    move-result-object v1

    .line 300
    iget-wide v2, v1, Lcom/verimatrix/vdc/NetStat;->wifiUnicastPacketsTx:J

    iget-object v4, v0, Lcom/verimatrix/vdc/Heartbeat;->lastNetStat:Lcom/verimatrix/vdc/NetStat;

    iget-wide v4, v4, Lcom/verimatrix/vdc/NetStat;->wifiUnicastPacketsTx:J

    sub-long/2addr v2, v4

    iget-wide v4, v1, Lcom/verimatrix/vdc/NetStat;->wifiUnicastPacketsTx:J

    iget-object v6, v0, Lcom/verimatrix/vdc/Heartbeat;->lastNetStat:Lcom/verimatrix/vdc/NetStat;

    iget-wide v6, v6, Lcom/verimatrix/vdc/NetStat;->wifiUnicastPacketsTx:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 303
    iget-wide v4, v1, Lcom/verimatrix/vdc/NetStat;->wifiBytesTx:J

    iget-object v6, v0, Lcom/verimatrix/vdc/Heartbeat;->lastNetStat:Lcom/verimatrix/vdc/NetStat;

    iget-wide v6, v6, Lcom/verimatrix/vdc/NetStat;->wifiBytesTx:J

    sub-long/2addr v4, v6

    iget-wide v6, v1, Lcom/verimatrix/vdc/NetStat;->wwanBytesTx:J

    iget-object v8, v0, Lcom/verimatrix/vdc/Heartbeat;->lastNetStat:Lcom/verimatrix/vdc/NetStat;

    iget-wide v8, v8, Lcom/verimatrix/vdc/NetStat;->wwanBytesTx:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 308
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v6

    iget-object v8, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v9, 0xc2

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v14, 0x3

    new-array v12, v14, [J

    const/4 v15, 0x0

    aput-wide v2, v12, v15

    const/16 v16, 0x1

    aput-wide v4, v12, v16

    const/16 v17, 0x2

    const-wide/16 v18, 0x0

    aput-wide v18, v12, v17

    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/Heartbeat;->getRegisters()[J

    move-result-object v13

    move-object/from16 v7, p1

    .line 308
    invoke-static/range {v7 .. v13}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 312
    iget-wide v6, v1, Lcom/verimatrix/vdc/NetStat;->wifiUnicastPacketsRx:J

    iget-object v8, v0, Lcom/verimatrix/vdc/Heartbeat;->lastNetStat:Lcom/verimatrix/vdc/NetStat;

    iget-wide v8, v8, Lcom/verimatrix/vdc/NetStat;->wifiUnicastPacketsRx:J

    sub-long/2addr v6, v8

    iget-wide v8, v1, Lcom/verimatrix/vdc/NetStat;->wwanUnicastPacketsRx:J

    iget-object v10, v0, Lcom/verimatrix/vdc/Heartbeat;->lastNetStat:Lcom/verimatrix/vdc/NetStat;

    iget-wide v10, v10, Lcom/verimatrix/vdc/NetStat;->wwanUnicastPacketsRx:J

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 315
    iget-wide v8, v1, Lcom/verimatrix/vdc/NetStat;->wifiBytesRx:J

    iget-object v10, v0, Lcom/verimatrix/vdc/Heartbeat;->lastNetStat:Lcom/verimatrix/vdc/NetStat;

    iget-wide v10, v10, Lcom/verimatrix/vdc/NetStat;->wifiBytesRx:J

    sub-long/2addr v8, v10

    iget-wide v10, v1, Lcom/verimatrix/vdc/NetStat;->wwanBytesRx:J

    iget-object v12, v0, Lcom/verimatrix/vdc/Heartbeat;->lastNetStat:Lcom/verimatrix/vdc/NetStat;

    iget-wide v12, v12, Lcom/verimatrix/vdc/NetStat;->wwanBytesRx:J

    sub-long/2addr v10, v12

    add-long/2addr v8, v10

    .line 320
    iget-wide v10, v1, Lcom/verimatrix/vdc/NetStat;->wifiMulticastPacketsRx:J

    iget-object v12, v0, Lcom/verimatrix/vdc/Heartbeat;->lastNetStat:Lcom/verimatrix/vdc/NetStat;

    iget-wide v12, v12, Lcom/verimatrix/vdc/NetStat;->wifiMulticastPacketsRx:J

    sub-long/2addr v10, v12

    iget-wide v12, v1, Lcom/verimatrix/vdc/NetStat;->wwanMulticastPacketsRx:J

    iget-object v14, v0, Lcom/verimatrix/vdc/Heartbeat;->lastNetStat:Lcom/verimatrix/vdc/NetStat;

    move-wide/from16 v20, v4

    iget-wide v4, v14, Lcom/verimatrix/vdc/NetStat;->wwanMulticastPacketsRx:J

    sub-long/2addr v12, v4

    add-long/2addr v10, v12

    .line 323
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v4

    iget-object v5, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v24, 0xbe

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    const/4 v12, 0x4

    new-array v13, v12, [J

    aput-wide v6, v13, v15

    aput-wide v8, v13, v16

    aput-wide v18, v13, v17

    const/4 v14, 0x3

    aput-wide v10, v13, v14

    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/Heartbeat;->getRegisters()[J

    move-result-object v28

    move-object/from16 v22, p1

    move-object/from16 v23, v5

    move-object/from16 v27, v13

    .line 323
    invoke-static/range {v22 .. v28}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 326
    iget-object v4, v0, Lcom/verimatrix/vdc/Heartbeat;->configuration:Lcom/verimatrix/vdc/Configuration;

    new-array v5, v12, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packets(tx)="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes(tx)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v20

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packets(rx)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes(rx)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v5, v3

    const-string v2, "Network statistics"

    move-object/from16 v3, p1

    invoke-static {v3, v4, v2, v5}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 329
    iput-object v1, v0, Lcom/verimatrix/vdc/Heartbeat;->lastNetStat:Lcom/verimatrix/vdc/NetStat;

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getNetStat()Lcom/verimatrix/vdc/NetStat;

    move-result-object v1

    iput-object v1, v0, Lcom/verimatrix/vdc/Heartbeat;->lastNetStat:Lcom/verimatrix/vdc/NetStat;

    :goto_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/verimatrix/vdc/Heartbeat;->c:Landroid/content/Context;

    return-void
.end method
