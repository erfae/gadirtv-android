.class public Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;
.super Ljava/lang/Object;
.source "VOOSAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_MESSAGE_FORMAT;,
        Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;,
        Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;,
        Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voOSAnalytics"

.field public static final VOAC_PID_CONFIG_FILE:I = 0x77880000

.field public static final VOAC_PID_SERVER_NAME:I = 0x77880001

.field private static m_uuid:Ljava/lang/String; = null

.field private static s_maxCPUFreq:J = -0x1L


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

.field private m_battery:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;

.field private m_nInterval:I

.field private pid:I

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 85
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->timer:Ljava/util/Timer;

    .line 86
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->timerTask:Ljava/util/TimerTask;

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->pid:I

    .line 88
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;-><init>(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->m_battery:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;

    const/4 v0, 0x3

    .line 91
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->m_nInterval:I

    .line 94
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 96
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$1;-><init>(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private Report(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    .line 687
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->Report(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private Report(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 693
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;->reportAnalyticsData(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method static synthetic access$000(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->m_battery:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->reportDeviceInfo2()V

    return-void
.end method

.method private closeTimer()Z
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->timerTask:Ljava/util/TimerTask;

    .line 225
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 227
    :cond_1
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->timer:Ljava/util/Timer;

    const/4 v0, 0x1

    return v0
.end method

.method private static getCellInfoListIfHasPermission(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/telephony/TelephonyManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "@@@voOSAnalytics"

    if-nez p1, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "Fail to get telephony manager"

    .line 523
    invoke-static {v2, p1, p0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 528
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v4, v5, :cond_1

    .line 529
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Fail to get cell info list. API level too low: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 531
    :cond_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    .line 532
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 534
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Fail to get cell info list. Missing permission : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private getFreeMemory()I
    .locals 4

    .line 311
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 312
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 313
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 314
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static getMaxCPUFreq(I)J
    .locals 5

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 255
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-wide/16 v1, -0x1

    if-nez p0, :cond_0

    return-wide v1

    .line 260
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 261
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 262
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    move-exception p0

    .line 265
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-wide v1
.end method

.method private static getMaxCpuFreq()Ljava/lang/Long;
    .locals 8

    .line 234
    sget-wide v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->s_maxCPUFreq:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x0

    move-wide v4, v2

    .line 238
    :goto_0
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->getMaxCPUFreq(I)J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-nez v1, :cond_0

    .line 247
    sput-wide v4, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->s_maxCPUFreq:J

    goto :goto_1

    .line 244
    :cond_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    :goto_1
    sget-wide v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->s_maxCPUFreq:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static getMobileNetworkType(I)I
    .locals 1

    .line 450
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;->VOAC_NETWORK_WWAN:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 472
    :pswitch_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;->VOAC_NETWORK_4G:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;

    goto :goto_0

    .line 469
    :pswitch_1
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;->VOAC_NETWORK_3G:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;

    goto :goto_0

    .line 458
    :pswitch_2
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;->VOAC_NETWORK_2G:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;

    .line 477
    :goto_0
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;->access$100(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getNetworkInfoIfHasPermission(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 5

    const-string v0, "connectivity"

    .line 482
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "@@@voOSAnalytics"

    if-nez v0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "Fail to access connectivity manager"

    .line 485
    invoke-static {v3, v0, p0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    .line 490
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    .line 491
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0

    .line 493
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to get network info. Missing permission : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private static getNumCores()I
    .locals 2

    .line 414
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$1CpuFilter;

    invoke-direct {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$1CpuFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 418
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method private static getTotalMemory()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 273
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/meminfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 274
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ":"

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 277
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "k"

    .line 278
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    add-int/lit8 v2, v2, -0x1

    .line 280
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 1

    .line 683
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->m_uuid:Ljava/lang/String;

    return-object v0
.end method

.method private static getWifiInfoIfHasPermission(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;
    .locals 5

    .line 502
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "@@@voOSAnalytics"

    if-nez v0, :cond_0

    new-array p0, v2, [Ljava/lang/Object;

    const-string v0, "Fail to access wifi manager"

    .line 505
    invoke-static {v3, v0, p0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    .line 510
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    .line 511
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0

    .line 513
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to get wifi info. Missing permission : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private getmem_SELF()I
    .locals 6

    .line 291
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 293
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 295
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 296
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 298
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    aput v4, v1, v2

    .line 299
    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->pid:I

    .line 300
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 301
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v0

    return v0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "@@@voOSAnalytics"

    const-string v3, "there is no running process."

    .line 306
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v2
.end method

.method private reportDeviceInfo1()V
    .locals 7

    .line 429
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_Type:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->Report(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 434
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_CPU:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [J

    invoke-static {}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->getNumCores()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    invoke-static {}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->getMaxCpuFreq()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    invoke-direct {p0, v0, v1, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->Report(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 438
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_OS:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->Report(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 442
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 443
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 444
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 445
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 446
    sget-object v2, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_ScreenResolution:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->Report(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    return-void
.end method

.method private reportDeviceInfo2()V
    .locals 15

    .line 545
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->getmem_SELF()I

    move-result v0

    const/4 v1, 0x0

    .line 548
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->getTotalMemory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    .line 551
    :goto_0
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->getFreeMemory()I

    move-result v3

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    .line 554
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-string v6, "@@@voOSAnalytics"

    const-string v9, "MemoryUsage : Report memory usage Player Usage: %d, Total Usage: %d, Free Memory: %d"

    .line 553
    invoke-static {v6, v9, v5}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    sget-object v5, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_MemoryUsage:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v5, v0, v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->Report(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 575
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->getNetworkInfoIfHasPermission(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 577
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const-string v3, ""

    const/4 v5, 0x5

    if-eqz v0, :cond_b

    .line 580
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-ne v9, v7, :cond_0

    .line 581
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;->VOAC_NETWORK_WIFI:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;->access$100(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;)I

    move-result v0

    .line 582
    iget-object v9, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->getWifiInfoIfHasPermission(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 584
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    .line 585
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v9

    invoke-static {v9, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v9

    goto/16 :goto_4

    .line 587
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_9

    .line 588
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->getMobileNetworkType(I)I

    move-result v0

    .line 589
    iget-object v9, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->getCellInfoListIfHasPermission(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 591
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v10, v11, :cond_8

    .line 592
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v3

    const/4 v11, 0x0

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/CellInfo;

    .line 593
    invoke-virtual {v12}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_1

    .line 594
    :cond_2
    instance-of v13, v12, Landroid/telephony/CellInfoGsm;

    if-eqz v13, :cond_3

    .line 595
    check-cast v12, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v12}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v10

    .line 596
    invoke-virtual {v12}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v11

    .line 597
    invoke-virtual {v10}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 598
    invoke-virtual {v11}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result v11

    goto :goto_1

    .line 599
    :cond_3
    instance-of v13, v12, Landroid/telephony/CellInfoLte;

    if-eqz v13, :cond_4

    .line 600
    check-cast v12, Landroid/telephony/CellInfoLte;

    invoke-virtual {v12}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v10

    .line 601
    invoke-virtual {v12}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v11

    .line 602
    invoke-virtual {v10}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 603
    invoke-virtual {v11}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result v11

    goto :goto_1

    .line 604
    :cond_4
    instance-of v13, v12, Landroid/telephony/CellInfoCdma;

    if-eqz v13, :cond_5

    .line 605
    check-cast v12, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v12}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v10

    .line 606
    invoke-virtual {v12}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v11

    .line 607
    invoke-virtual {v10}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 608
    invoke-virtual {v11}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result v11

    goto :goto_1

    .line 609
    :cond_5
    instance-of v13, v12, Landroid/telephony/CellInfoWcdma;

    if-eqz v13, :cond_1

    .line 610
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x12

    if-lt v13, v14, :cond_6

    .line 611
    check-cast v12, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v12}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v10

    .line 612
    invoke-virtual {v12}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v11

    .line 613
    invoke-virtual {v10}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 614
    invoke-virtual {v11}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result v11

    goto/16 :goto_1

    .line 616
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fail to get cell identity for WCDMA. API level too low : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v1, [Ljava/lang/Object;

    invoke-static {v6, v12, v13}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    move v9, v11

    goto :goto_4

    .line 621
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fail to get cell identity. API level too low : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v6, v9, v10}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 624
    :cond_9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v9, 0x9

    if-ne v0, v9, :cond_b

    .line 625
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;->VOAC_NETWORK_ETHERNET:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;->access$100(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_NETWORK_SUBTYPE;)I

    move-result v0

    :cond_a
    :goto_2
    move-object v10, v3

    goto :goto_3

    :cond_b
    move-object v10, v3

    const/4 v0, 0x0

    :goto_3
    const/4 v9, 0x0

    :goto_4
    if-eqz v2, :cond_e

    .line 631
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 634
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v5, :cond_d

    new-array v6, v4, [Ljava/lang/Object;

    .line 635
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    const-string v3, "-"

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v8

    const-string v1, "%s-%s%s"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_5

    .line 636
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown format for network operator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Fail to get network operator for unable to access telephony manager"

    .line 640
    invoke-static {v6, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    :cond_f
    :goto_5
    sget-object v1, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_Connection:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v0, v10, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->Report(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 648
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 649
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Device_Power:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->m_battery:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->Report(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    return-void
.end method

.method private startTimer()Z
    .locals 7

    .line 654
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->closeTimer()Z

    .line 656
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$2;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$2;-><init>(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->timerTask:Ljava/util/TimerTask;

    .line 670
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 672
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->timer:Ljava/util/Timer;

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->m_nInterval:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voOSAnalytics"

    const-string v2, "Start Analyze!"

    .line 677
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public FirstReport()I
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_0

    .line 163
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-string v0, "(unknown)"

    :goto_1
    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 164
    sget-object v3, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;->VOAC_Player_AppName:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;

    invoke-direct {p0, v3, v0, v1}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->Report(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$VOAC_EVENT_SUBTYPE;Ljava/lang/Object;Ljava/lang/Object;)I

    .line 165
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "@@@voOSAnalytics"

    const-string v3, "voOSAnalytics appname is %s "

    .line 166
    invoke-static {v0, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->reportDeviceInfo1()V

    return v2
.end method

.method public Init(Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;Landroid/content/Context;)I
    .locals 3

    .line 130
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;

    .line 132
    new-instance p1, Lcom/visualon/OSMPPlayerImpl/VOOSUniqID;

    invoke-direct {p1, p2}, Lcom/visualon/OSMPPlayerImpl/VOOSUniqID;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayerImpl/VOOSUniqID;->getDeviceUUIDString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->m_uuid:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mContext:Landroid/content/Context;

    .line 136
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.BATTERY_CHANGED"

    .line 137
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 139
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "level"

    const/4 v0, -0x1

    .line 141
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "scale"

    .line 142
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "plugged"

    .line 143
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p2, :cond_0

    if-ltz v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->m_battery:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;

    mul-int/lit8 p2, p2, 0x64

    div-int/2addr p2, v1

    iput p2, v0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;->m_level:I

    :cond_0
    const/4 p2, 0x0

    if-gez p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->m_battery:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;

    iput p2, p1, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;->m_powerState:I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->m_battery:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;

    const/4 v0, 0x2

    iput v0, p1, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;->m_powerState:I

    goto :goto_0

    .line 151
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->m_battery:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;

    const/4 v0, 0x1

    iput v0, p1, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$BatteryInfo;->m_powerState:I

    :goto_0
    return p2
.end method

.method public Uninit()I
    .locals 4

    .line 200
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->closeTimer()Z

    .line 202
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->disableLocation()V

    const/4 v0, 0x0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@voOSAnalytics"

    const-string v3, "Receiver might be unregistered by OS itself."

    .line 209
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    .line 213
    :try_start_1
    iput-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mPlayer:Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerJNI;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public disableLocation()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voOSAnalytics"

    const-string v2, "Location listeners are currently removed"

    .line 181
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public enableLocation()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voOSAnalytics"

    const-string v2, "Location listeners are currently removed"

    .line 176
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public start()I
    .locals 1

    .line 186
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->startTimer()Z

    const/4 v0, 0x0

    return v0
.end method

.method public stop()I
    .locals 1

    .line 193
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->closeTimer()Z

    const/4 v0, 0x0

    return v0
.end method
