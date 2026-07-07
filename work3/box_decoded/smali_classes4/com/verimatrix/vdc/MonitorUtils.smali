.class public Lcom/verimatrix/vdc/MonitorUtils;
.super Ljava/lang/Object;
.source "MonitorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/MonitorUtils$MemoryInfoNewApiWrapper;,
        Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;
    }
.end annotation


# static fields
.field private static final BYTES_IN_KBYTE:I = 0x400

.field static final DEFAULT_IP_ADDRESS:Ljava/lang/String; = "0.0.0.0"

.field static final DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static final IP_ADDRESS_PATTERN:Ljava/lang/String; = "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

.field static final LOG_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd:kk:mm:ss.SSS z"

.field static final MAX_UINT32:J = 0xfffffffeL

.field static final MILLISECONDS_IN_SECOND:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MonitorUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateLRC(Ljava/lang/String;)J
    .locals 18

    move-object/from16 v0, p0

    .line 814
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_6

    .line 816
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    const/4 v5, 0x0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/2addr v1, v4

    int-to-long v6, v1

    :goto_1
    int-to-long v8, v5

    cmp-long v1, v8, v6

    if-gez v1, :cond_5

    .line 823
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v5, v1, :cond_1

    .line 824
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-long v12, v1

    goto :goto_2

    :cond_1
    const-wide/16 v12, 0x0

    :goto_2
    add-int/lit8 v1, v5, 0x1

    .line 828
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 829
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-long v14, v1

    goto :goto_3

    :cond_2
    const-wide/16 v14, 0x0

    :goto_3
    add-int/lit8 v1, v5, 0x2

    .line 833
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 834
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-long v8, v1

    goto :goto_4

    :cond_3
    const-wide/16 v8, 0x0

    :goto_4
    add-int/lit8 v1, v5, 0x3

    .line 838
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 839
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-long v10, v1

    move-wide/from16 v16, v10

    goto :goto_5

    :cond_4
    const-wide/16 v16, 0x0

    :goto_5
    const/16 v1, 0x18

    shl-long v10, v12, v1

    const/16 v1, 0x10

    shl-long v12, v14, v1

    or-long/2addr v10, v12

    const/16 v1, 0x8

    shl-long/2addr v8, v1

    or-long/2addr v8, v10

    or-long v8, v8, v16

    add-long/2addr v8, v2

    const-wide v10, 0xffffffffL

    and-long v2, v8, v10

    add-int/lit8 v5, v5, 0x4

    goto :goto_1

    :cond_5
    const-wide v10, 0xffffffffL

    xor-long v0, v2, v10

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    and-long v2, v0, v10

    :cond_6
    return-wide v2
.end method

.method static configurationVersionToLong(Ljava/lang/String;)J
    .locals 2

    .line 433
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;->CONFIGURATION:Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

    invoke-static {p0, v0}, Lcom/verimatrix/vdc/MonitorUtils;->versionToLong(Ljava/lang/String;Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;)J

    move-result-wide v0

    return-wide v0
.end method

.method static convertToLong([J)J
    .locals 6

    if-eqz p0, :cond_2

    .line 497
    array-length v0, p0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 499
    aget-wide v0, p0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    .line 501
    array-length v2, p0

    const/4 v3, 0x2

    if-gt v3, v2, :cond_0

    const/4 v2, 0x1

    .line 502
    aget-wide v4, p0, v2

    const/16 v2, 0x10

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 505
    :cond_0
    array-length v2, p0

    const/4 v4, 0x3

    if-gt v4, v2, :cond_1

    .line 506
    aget-wide v2, p0, v3

    const/16 v5, 0x8

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    :cond_1
    const/4 v2, 0x4

    .line 509
    array-length v3, p0

    if-gt v2, v3, :cond_3

    .line 510
    aget-wide v2, p0, v4

    or-long/2addr v0, v2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :cond_3
    :goto_0
    return-wide v0
.end method

.method public static getAgentVersion()Ljava/lang/String;
    .locals 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2.7.0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/verimatrix/vdc/BuildConfig;->JENKINS_BUILD_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AgentVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static getAgentVersionLong()J
    .locals 2

    .line 96
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getAgentVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->getVersionLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 175
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1

    long-to-int p0, v1

    and-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 178
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t detect parent app version"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "0"

    .line 180
    :goto_0
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method static getAppVersionLong(Landroid/content/Context;)J
    .locals 2

    .line 106
    invoke-static {p0}, Lcom/verimatrix/vdc/MonitorUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/verimatrix/vdc/MonitorUtils;->getVersionLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 157
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v1, "getAppVersion() Error get app version"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method static getBestLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 6

    const-string v0, "location"

    .line 767
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 769
    invoke-static {p0, v0}, Lcom/verimatrix/vdc/MonitorUtils;->getLocationByProvider(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    const-string v1, "network"

    .line 770
    invoke-static {p0, v1}, Lcom/verimatrix/vdc/MonitorUtils;->getLocationByProvider(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    if-nez v0, :cond_0

    .line 774
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v1, "No GPS Location available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 778
    sget-object p0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v1, "No Network Location available"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 783
    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 784
    sget-object p0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v1, "Both are old, returning gps(newer)"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 787
    :cond_2
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v1, "Both are old, returning network(newer)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getBuildVersion()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcom/verimatrix/vdc/BuildConfig;->JENKINS_BUILD_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method static getConnectionSubType(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "connectivity"

    .line 892
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 893
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static getConnectionSystemType(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    .line 886
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/verimatrix/vdc/MonitorUtils;->getConnectionSystemTypeLegacy(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/verimatrix/vdc/MonitorUtils;->getConnectionSystemTypeV23(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getConnectionSystemTypeLegacy(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "connectivity"

    .line 859
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 860
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getConnectionSystemTypeV23(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    const-string v0, "connectivity"

    .line 868
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 869
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 873
    :goto_0
    sget-object v1, Lcom/verimatrix/vdc/Heartbeat;->ConnectionTypeV23:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 876
    sget-object v1, Lcom/verimatrix/vdc/Heartbeat;->ConnectionTypeV23:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    sget-object p0, Lcom/verimatrix/vdc/Heartbeat;->ConnectionTypeV23:[I

    aget p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "null"

    return-object p0

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/verimatrix/vdc/AESCryptoUtils;->sha256Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 70
    sget-object v1, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to generate Hashed device Id error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method static getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .line 240
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method static getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 251
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method static getDeviceUptime()J
    .locals 2

    .line 557
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static getFNVHashByModule(Ljava/lang/String;)J
    .locals 8

    .line 518
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-wide v1, 0x811c9dc5L

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 520
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v1, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v1, v4

    const-wide/32 v6, 0x1000193

    mul-long v1, v1, v6

    and-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 525
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getFreeMemory(Landroid/content/Context;)J
    .locals 4

    .line 534
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v1, "activity"

    .line 535
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 536
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 537
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method static getIpAddress(Ljava/lang/String;)J
    .locals 2

    .line 388
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 389
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    .line 390
    invoke-static {p0}, Lcom/verimatrix/vdc/MonitorUtils;->ipAddressToLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    sget-object p0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v0, "Can not get domain from ip address"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static getIpAddress()Ljava/lang/String;
    .locals 4

    .line 336
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 338
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 341
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    .line 342
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 348
    sget-object v1, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v2, "IP Address detection error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const-string v0, "0.0.0.0"

    return-object v0
.end method

.method static getIpAddressOld(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string p0, "0.0.0.0"

    .line 306
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 308
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 309
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 310
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 311
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 312
    instance-of v2, v2, Ljava/net/Inet4Address;

    if-nez v2, :cond_1

    const/16 v2, 0x25

    .line 314
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 315
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 321
    sget-object v1, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t detect ip address"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-object p0
.end method

.method private static getLocationByProvider(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
    .locals 4

    const/4 v0, 0x0

    .line 795
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 796
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 799
    :goto_0
    sget-object v1, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot access Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-object v0
.end method

.method static getMacAddr()Ljava/lang/String;
    .locals 9

    const-string v0, "00:00:00:00:00:00"

    .line 268
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 269
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 270
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dummy0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v3, "NIF is up"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 278
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v3, :cond_3

    aget-byte v7, v1, v5

    const-string v8, "%02X:"

    new-array v6, v6, [Ljava/lang/Object;

    .line 280
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 283
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 284
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 286
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 289
    sget-object v2, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get MAC address"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-object v0
.end method

.method static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 261
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getMacAddr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getNetMask(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "wifi"

    .line 360
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 361
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p0

    .line 362
    iget v0, p0, Landroid/net/DhcpInfo;->netmask:I

    and-int/lit16 v0, v0, 0xff

    .line 363
    iget v1, p0, Landroid/net/DhcpInfo;->netmask:I

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 364
    iget v2, p0, Landroid/net/DhcpInfo;->netmask:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 365
    iget p0, p0, Landroid/net/DhcpInfo;->netmask:I

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    .line 366
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x3

    aput-object p0, v4, v0

    const-string p0, "%d.%d.%d.%d"

    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getNetMaskLongSum(J)J
    .locals 8

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    cmp-long v4, v0, p0

    if-gez v4, :cond_0

    const-wide/16 v4, 0x1

    sub-long v6, p0, v4

    and-long/2addr p0, v6

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method static getNetStat()Lcom/verimatrix/vdc/NetStat;
    .locals 5

    .line 747
    new-instance v0, Lcom/verimatrix/vdc/NetStat;

    invoke-direct {v0}, Lcom/verimatrix/vdc/NetStat;-><init>()V

    .line 749
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxPackets()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/verimatrix/vdc/NetStat;->wifiUnicastPacketsTx:J

    const-wide/16 v1, 0x0

    .line 750
    iput-wide v1, v0, Lcom/verimatrix/vdc/NetStat;->wifiMulticastPacketsTx:J

    .line 751
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/verimatrix/vdc/NetStat;->wifiBytesTx:J

    .line 752
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxPackets()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/verimatrix/vdc/NetStat;->wifiUnicastPacketsRx:J

    .line 753
    iput-wide v1, v0, Lcom/verimatrix/vdc/NetStat;->wifiMulticastPacketsRx:J

    .line 754
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/verimatrix/vdc/NetStat;->wifiBytesRx:J

    .line 756
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/verimatrix/vdc/NetStat;->wwanUnicastPacketsTx:J

    .line 757
    iput-wide v1, v0, Lcom/verimatrix/vdc/NetStat;->wwanMulticastPacketsTx:J

    .line 758
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/verimatrix/vdc/NetStat;->wwanBytesTx:J

    .line 759
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/verimatrix/vdc/NetStat;->wwanUnicastPacketsRx:J

    .line 760
    iput-wide v1, v0, Lcom/verimatrix/vdc/NetStat;->wwanMulticastPacketsRx:J

    .line 761
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/verimatrix/vdc/NetStat;->wwanBytesRx:J

    return-object v0
.end method

.method static getOsVersion()Ljava/lang/String;
    .locals 1

    .line 561
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method static getUsedMemory(Landroid/content/Context;)J
    .locals 5

    .line 546
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v1, "activity"

    .line 547
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 548
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 549
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p0, v1, :cond_0

    .line 550
    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils$MemoryInfoNewApiWrapper;->getTotalMemory(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v1

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    return-wide v1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static getVersionLong(Ljava/lang/String;)J
    .locals 17

    .line 117
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "\\."

    move-object/from16 v3, p0

    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 120
    :try_start_0
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v3, v5, :cond_0

    .line 121
    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v1

    .line 125
    :goto_0
    array-length v3, v0

    const/4 v8, 0x2

    if-lt v3, v8, :cond_1

    .line 126
    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_1

    :cond_1
    move-wide v9, v1

    .line 130
    :goto_1
    array-length v3, v0

    const/4 v11, 0x3

    if-lt v3, v11, :cond_2

    .line 131
    aget-object v3, v0, v8

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_2

    :cond_2
    move-wide v12, v1

    .line 135
    :goto_2
    array-length v3, v0

    const/4 v14, 0x4

    if-lt v3, v14, :cond_3

    .line 136
    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    goto :goto_3

    :cond_3
    move-wide v15, v1

    :goto_3
    new-array v0, v14, [J

    aput-wide v6, v0, v4

    aput-wide v9, v0, v5

    aput-wide v12, v0, v8

    aput-wide v15, v0, v11

    .line 140
    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->convertToLong([J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 142
    sget-object v3, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t detect numeric parent agent version - wrong format"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_4
    return-wide v1
.end method

.method static getWiFiConnectionSpeed(Landroid/content/Context;)I
    .locals 1

    const-string v0, "wifi"

    .line 909
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 910
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    return p0
.end method

.method static ipAddressToLong(Ljava/lang/String;)J
    .locals 4

    .line 371
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\."

    .line 372
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 373
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    :try_start_0
    new-array v0, v1, [J

    const/4 v1, 0x0

    .line 375
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    aget-object v2, p0, v1

    .line 376
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 375
    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->convertToLong([J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 378
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v1, "Error while converting ip address to int"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method static isBluetoothEnable()Z
    .locals 1

    .line 901
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isIpAddress(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 972
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$"

    .line 973
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 974
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 975
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isLocalFile(Ljava/lang/String;)Z
    .locals 3

    .line 805
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 806
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 807
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.resource"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static isOnline(Landroid/content/Context;)Z
    .locals 2

    .line 963
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/verimatrix/vdc/MonitorUtils;->isOnlineLegacy(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->isOnlineV21()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static isOnlineLegacy(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 952
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 953
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 954
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isOnlineV21()Z
    .locals 1

    .line 959
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorAgent;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static isWiFi(Landroid/content/Context;)Z
    .locals 2

    .line 946
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/verimatrix/vdc/MonitorUtils;->isWiFiLegacy(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/verimatrix/vdc/MonitorUtils;->isWiFiV23(Landroid/content/Context;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static isWiFiLegacy(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    .line 933
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 934
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 935
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isWiFiV23(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 940
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 941
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 942
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static millisecondsToSeconds(J)J
    .locals 2

    long-to-double p0, p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    .line 1000
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method static parseLanguage(Ljava/lang/String;)[J
    .locals 7

    .line 193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    new-array v0, v1, [J

    .line 213
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 214
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v1

    int-to-long v4, p0

    aput-wide v4, v0, v2

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v3

    goto :goto_1

    :cond_1
    new-array v0, v1, [J

    .line 222
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 223
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-long v4, v4

    aput-wide v4, v0, v2

    .line 224
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 225
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    .line 226
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v2

    int-to-long v1, p0

    aput-wide v1, v0, v3

    goto :goto_1

    .line 197
    :cond_2
    :goto_0
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audioLanguage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v0, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p0, "un"

    const-string v0, "und"

    new-array v4, v1, [J

    .line 203
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 204
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v5

    int-to-long v5, p0

    aput-wide v5, v4, v2

    .line 205
    invoke-static {v0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    .line 206
    invoke-static {v0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr p0, v2

    .line 207
    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    int-to-long v0, p0

    aput-wide v0, v4, v3

    move-object v0, v4

    :goto_1
    return-object v0
.end method

.method static portToLong(Ljava/lang/String;)J
    .locals 2

    .line 399
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 403
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v1, "Error while converting ip address to int"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method static readCpuIdle()J
    .locals 8

    const-string v0, "failed to close file "

    const/4 v1, 0x0

    .line 697
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/4 v4, 0x4

    if-lt v2, v3, :cond_3

    .line 699
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "top -n 1"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 700
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v5, "%idle"

    .line 703
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "%"

    .line 705
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 708
    aget-object v1, v1, v4

    const-string v4, "[^0-9]"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 736
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    if-eqz v2, :cond_1

    .line 738
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 740
    sget-object v2, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-wide v4

    .line 736
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    if-eqz v2, :cond_5

    .line 738
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_5

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v3

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto/16 :goto_6

    :catch_2
    move-exception v3

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_2

    .line 714
    :cond_3
    :try_start_5
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/proc/stat"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 715
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v5, " "

    .line 717
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 728
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 736
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    .line 740
    sget-object v2, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-wide v3

    :catchall_1
    move-exception v3

    move-object v7, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v7

    goto :goto_6

    :catch_4
    move-exception v3

    move-object v7, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v7

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_6

    :catch_5
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    .line 731
    :goto_2
    :try_start_8
    sget-object v4, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t get CPU idle"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_4

    .line 736
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 738
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    .line 740
    :goto_4
    sget-object v2, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_3
    move-exception v1

    :goto_6
    if-eqz v3, :cond_6

    .line 736
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    :catch_7
    move-exception v2

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    .line 738
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_9

    .line 740
    :goto_8
    sget-object v3, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    :cond_7
    :goto_9
    throw v1
.end method

.method static readCpuLoadAverage()[D
    .locals 10

    const-string v0, "failed to close file "

    const/4 v1, 0x3

    new-array v1, v1, [D

    .line 635
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    .line 642
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const/4 v5, 0x2

    if-lt v3, v4, :cond_2

    .line 644
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "uptime"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 645
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v6, 0x3a

    .line 648
    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, ","

    .line 649
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    .line 677
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    if-eqz v3, :cond_1

    .line 679
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 681
    sget-object v3, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v1

    :catch_1
    move-exception v2

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    goto/16 :goto_6

    :catch_2
    move-exception v4

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    goto :goto_2

    .line 656
    :cond_2
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v6, "/proc/loadavg"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 657
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const-string v6, " "

    .line 658
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v9, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v9

    :goto_1
    const/4 v6, 0x0

    .line 667
    :try_start_6
    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aput-wide v7, v1, v6

    const/4 v6, 0x1

    .line 668
    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aput-wide v7, v1, v6

    .line 669
    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v1, v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_3

    .line 677
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v3, :cond_5

    .line 679
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_6

    :catch_3
    move-exception v4

    move-object v9, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v9

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v3, v2

    goto :goto_6

    :catch_4
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    .line 672
    :goto_2
    :try_start_8
    sget-object v5, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v6, "Can\'t get CPU load average (1/5/10 min)"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v4, :cond_4

    .line 677
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    .line 679
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    .line 681
    :goto_4
    sget-object v3, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    return-object v1

    :catchall_3
    move-exception v1

    move-object v2, v4

    :goto_6
    if-eqz v2, :cond_6

    .line 677
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_7

    :catch_6
    move-exception v2

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    .line 679
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_9

    .line 681
    :goto_8
    sget-object v3, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 682
    :cond_7
    :goto_9
    throw v1

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static readCpuUsage()F
    .locals 21

    const-string v0, " "

    const-string v1, "failed to close file "

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 575
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_0

    return v2

    .line 579
    :cond_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "/proc/stat"

    const-string v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 580
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 582
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    .line 593
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x2

    .line 594
    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v11, 0x3

    aget-object v12, v3, v11

    .line 595
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v9, v12

    const/4 v12, 0x5

    aget-object v13, v3, v12

    .line 596
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    add-long/2addr v9, v13

    const/4 v13, 0x6

    aget-object v14, v3, v13

    .line 597
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v9, v14

    const/4 v14, 0x7

    aget-object v15, v3, v14

    .line 598
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    add-long/2addr v9, v15

    const/16 v15, 0x8

    aget-object v3, v3, v15

    .line 599
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v9, v9, v16

    const-wide/16 v16, 0x168

    .line 601
    invoke-static/range {v16 .. v17}, Landroid/os/SystemClock;->sleep(J)V

    const-wide/16 v2, 0x0

    .line 603
    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 604
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 606
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 608
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 609
    aget-object v5, v0, v8

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    aget-object v5, v0, v11

    .line 610
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    add-long v17, v17, v19

    aget-object v5, v0, v12

    .line 611
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long v17, v17, v11

    aget-object v5, v0, v13

    .line 612
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long v17, v17, v11

    aget-object v5, v0, v14

    .line 613
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long v17, v17, v11

    aget-object v0, v0, v15

    .line 614
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long v17, v17, v11

    sub-long v11, v17, v9

    long-to-float v0, v11

    add-long v17, v17, v2

    add-long/2addr v9, v6

    sub-long v2, v17, v9

    long-to-float v2, v2

    div-float v2, v0, v2

    .line 623
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 625
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 618
    :goto_1
    :try_start_3
    sget-object v2, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get CPU load"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    .line 623
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 625
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    const/4 v1, 0x0

    return v1

    :goto_3
    if-eqz v3, :cond_2

    .line 623
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 625
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    :cond_2
    :goto_4
    throw v2
.end method

.method static subscribeMobileSignalStrength(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V
    .locals 1

    const-string v0, "phone"

    .line 922
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/16 v0, 0x100

    .line 923
    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method static toUnsignedInteger(J)J
    .locals 5

    const-wide v0, 0xfffffffeL

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method static unsubscribeMobileSignalStrength(Landroid/content/Context;Landroid/telephony/PhoneStateListener;)V
    .locals 1

    const-string v0, "phone"

    .line 927
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    .line 928
    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 983
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    .line 985
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\+"

    const-string v1, "%20"

    .line 987
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, "%2D"

    .line 989
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    const-string v1, "%5F"

    .line 990
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\."

    const-string v1, "%2E"

    .line 991
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\*"

    const-string v1, "%2A"

    .line 992
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static versionToLong(Ljava/lang/String;)J
    .locals 2

    .line 444
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;->APPLICATION:Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

    invoke-static {p0, v0}, Lcom/verimatrix/vdc/MonitorUtils;->versionToLong(Ljava/lang/String;Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static versionToLong(Ljava/lang/String;Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;)J
    .locals 7

    .line 449
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "\\."

    .line 450
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 451
    array-length v0, p0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 454
    :try_start_0
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x18

    shl-long v1, v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 456
    sget-object v3, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get version major"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    :goto_0
    array-length v0, p0

    const/4 v3, 0x2

    if-gt v3, v0, :cond_0

    const/4 v0, 0x1

    .line 461
    :try_start_1
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v0, 0x10

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    goto :goto_1

    :catch_1
    move-exception v0

    .line 463
    sget-object v4, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t get version minor"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    :cond_0
    :goto_1
    array-length v0, p0

    const/4 v4, 0x3

    if-gt v4, v0, :cond_2

    .line 469
    :try_start_2
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;->APPLICATION:Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;

    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/MonitorUtils$LongEncoding;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    aget-object p1, p0, v3

    .line 470
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/16 p1, 0x8

    shl-long/2addr v5, p1

    goto :goto_2

    :cond_1
    aget-object p1, p0, v3

    .line 471
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    or-long v0, v1, v5

    move-wide v1, v0

    goto :goto_3

    :catch_2
    move-exception p1

    .line 473
    sget-object v0, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t get version build_number"

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    const/4 p1, 0x4

    .line 477
    array-length v0, p0

    if-gt p1, v0, :cond_3

    .line 479
    :try_start_3
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    or-long/2addr v1, p0

    goto :goto_4

    :catch_3
    move-exception p0

    .line 481
    sget-object p1, Lcom/verimatrix/vdc/MonitorUtils;->TAG:Ljava/lang/String;

    const-string v0, "Can\'t get version patch"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    return-wide v1
.end method
