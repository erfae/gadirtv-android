.class public Lcom/visualon/OSMPUtils/voOSUniqID;
.super Ljava/lang/Object;
.source "voOSUniqID.java"


# static fields
.field private static final PREFS_DEVICE_ID:Ljava/lang/String; = "review_policy"

.field private static final PREFS_FILE:Ljava/lang/String; = "voosmp_data.xml"

.field private static prefix:Ljava/lang/String;

.field private static uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-class v0, Lcom/visualon/OSMPUtils/voOSUniqID;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "Fatal error, context is null, please check init code at app side."

    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    invoke-static {p1, v1}, Lcom/visualon/OSMPUtils/voLog;->e2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    monitor-exit v0

    return-void

    .line 46
    :cond_0
    sget-object v2, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    if-nez v2, :cond_4

    const-string v2, "voosmp_data.xml"

    .line 47
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "review_policy"

    const/4 v3, 0x0

    .line 48
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 50
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    sput-object p1, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "9774d56d682e549c"

    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p1, "utf8"

    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p1

    sput-object p1, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    goto :goto_0

    :cond_2
    const-string v2, "phone"

    .line 57
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, "utf8"

    .line 59
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p1

    sput-object p1, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    goto :goto_0

    .line 61
    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    sput-object p1, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    :try_start_2
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 66
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    sput-object p1, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    .line 69
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "review_policy"

    sget-object v2, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static setDrmUUIDPrefix(Ljava/lang/String;)V
    .locals 2

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/visualon/OSMPUtils/voOSUniqID;->prefix:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_0
    sput-object p0, Lcom/visualon/OSMPUtils/voOSUniqID;->prefix:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getDeviceUUID()Ljava/util/UUID;
    .locals 1

    .line 76
    sget-object v0, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getDeviceUUIDString()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 81
    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrmUUIDString()Ljava/lang/String;
    .locals 3

    .line 94
    sget-object v0, Lcom/visualon/OSMPUtils/voOSUniqID;->uuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    sget-object v1, Lcom/visualon/OSMPUtils/voOSUniqID;->prefix:Ljava/lang/String;

    if-nez v1, :cond_1

    return-object v0

    .line 99
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/visualon/OSMPUtils/voOSUniqID;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
