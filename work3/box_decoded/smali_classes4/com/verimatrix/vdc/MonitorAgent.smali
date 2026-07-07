.class public final Lcom/verimatrix/vdc/MonitorAgent;
.super Ljava/lang/Object;
.source "MonitorAgent.java"

# interfaces
.implements Lcom/verimatrix/vdc/Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/MonitorAgent$MonitorHolder;
    }
.end annotation


# static fields
.field static final DEFAULT_STREAM_HANDLE:I = -0x1

.field public static final EXTERNAL_CHANNEL_REF:Ljava/lang/String; = "external_channel_ref"

.field public static final EXTERNAL_PROGRAMME_REF:Ljava/lang/String; = "external_programme_ref"

.field static final MIN_SECONDARY_STREAM_HANDLE:I = 0x1

.field static final PRIMARY_STREAM_HANDLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MonitorAgent"

.field static bindDeviceStatus:I = 0x0

.field public static storeFilePath:Ljava/lang/String; = ""


# instance fields
.field private c:Landroid/content/Context;

.field private configuration:Lcom/verimatrix/vdc/Configuration;

.field defaultStream:Lcom/verimatrix/vdc/Stream;

.field private deviceId:Ljava/lang/String;

.field private heartbeat:Lcom/verimatrix/vdc/Heartbeat;

.field private final lock:Ljava/lang/Object;

.field private loginManager:Lcom/verimatrix/vdc/MonitorLogin;

.field private mIsNetworkAvailable:Z

.field private profile:Lcom/verimatrix/vdc/Profile;

.field private regManager:Lcom/verimatrix/vdc/MonitorRegistration;

.field streams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/verimatrix/vdc/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field usedHandleStreamIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/verimatrix/vdc/Configuration;

    invoke-direct {v0}, Lcom/verimatrix/vdc/Configuration;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->lock:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->usedHandleStreamIds:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->defaultStream:Lcom/verimatrix/vdc/Stream;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->mIsNetworkAvailable:Z

    .line 60
    new-instance v0, Lcom/verimatrix/vdc/MonitorLogin;

    invoke-direct {v0, p0}, Lcom/verimatrix/vdc/MonitorLogin;-><init>(Lcom/verimatrix/vdc/MonitorAgent;)V

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->loginManager:Lcom/verimatrix/vdc/MonitorLogin;

    .line 61
    new-instance v0, Lcom/verimatrix/vdc/MonitorRegistration;

    invoke-direct {v0, p0}, Lcom/verimatrix/vdc/MonitorRegistration;-><init>(Lcom/verimatrix/vdc/MonitorAgent;)V

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->regManager:Lcom/verimatrix/vdc/MonitorRegistration;

    .line 62
    new-instance v0, Lcom/verimatrix/vdc/Profile;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-direct {v0, v1, v2}, Lcom/verimatrix/vdc/Profile;-><init>(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;)V

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->profile:Lcom/verimatrix/vdc/Profile;

    .line 63
    new-instance v0, Lcom/verimatrix/vdc/Heartbeat;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-direct {v0, v1, v2}, Lcom/verimatrix/vdc/Heartbeat;-><init>(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;)V

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->heartbeat:Lcom/verimatrix/vdc/Heartbeat;

    return-void
.end method

.method synthetic constructor <init>(Lcom/verimatrix/vdc/MonitorAgent$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorAgent;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/verimatrix/vdc/MonitorAgent;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/verimatrix/vdc/MonitorAgent;->mIsNetworkAvailable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/verimatrix/vdc/MonitorAgent;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/verimatrix/vdc/MonitorAgent;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method private callStreamHeartbeat(I)Z
    .locals 0

    .line 2708
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2710
    invoke-virtual {p1}, Lcom/verimatrix/vdc/Stream;->heartbeatUpdate()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private createDefaultStream()V
    .locals 7

    .line 469
    new-instance v6, Lcom/verimatrix/vdc/Stream;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    sget-object v3, Lcom/verimatrix/vdc/Monitor$StreamFunction;->DOWNLOAD_AND_PLAYBACK:Lcom/verimatrix/vdc/Monitor$StreamFunction;

    iget-object v4, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    iget-object v5, p0, Lcom/verimatrix/vdc/MonitorAgent;->profile:Lcom/verimatrix/vdc/Profile;

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/verimatrix/vdc/Stream;-><init>(Landroid/content/Context;ILcom/verimatrix/vdc/Monitor$StreamFunction;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/Profile;)V

    iput-object v6, p0, Lcom/verimatrix/vdc/MonitorAgent;->defaultStream:Lcom/verimatrix/vdc/Stream;

    return-void
.end method

.method private getAvailableStreamIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/verimatrix/vdc/MonitorAgent;
    .locals 1

    .line 75
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent$MonitorHolder;->access$100()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    return-object v0
.end method

.method private getRegisters()[J
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    .line 2805
    sget-object v1, Lcom/verimatrix/vdc/Monitor$MediaType;->IDLE:Lcom/verimatrix/vdc/Monitor$MediaType;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/Monitor$MediaType;->getValue()I

    move-result v1

    int-to-long v4, v1

    const/4 v1, 0x2

    aput-wide v4, v0, v1

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    return-object v0
.end method

.method private getStream(I)Lcom/verimatrix/vdc/Stream;
    .locals 2

    .line 449
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->isDefaultStreamHandle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 452
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorAgent;->hasDefaultStream()Z

    move-result p1

    if-nez p1, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorAgent;->createDefaultStream()V

    .line 455
    :cond_0
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorAgent;->defaultStream:Lcom/verimatrix/vdc/Stream;

    goto :goto_0

    .line 459
    :cond_1
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorAgent;->hasDefaultStream()Z

    move-result v0

    if-nez v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verimatrix/vdc/Stream;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private declared-synchronized getStreamHandleId(Lcom/verimatrix/vdc/Monitor$StreamFunction;)I
    .locals 2

    monitor-enter p0

    .line 499
    :try_start_0
    sget-object v0, Lcom/verimatrix/vdc/MonitorAgent$3;->$SwitchMap$com$verimatrix$vdc$Monitor$StreamFunction:[I

    invoke-virtual {p1}, Lcom/verimatrix/vdc/Monitor$StreamFunction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    .line 507
    :cond_0
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorAgent;->usedHandleStreamIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 508
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_1
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorAgent;->usedHandleStreamIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private hasDefaultStream()Z
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->defaultStream:Lcom/verimatrix/vdc/Stream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasPrimaryStream()Z
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private hasStream(I)Z
    .locals 1

    .line 482
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->isDefaultStreamHandle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorAgent;->hasDefaultStream()Z

    move-result p1

    return p1

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private hasStreams()Z
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isDefaultStreamHandle(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private declared-synchronized removeStreamHandleId(Ljava/lang/Integer;)V
    .locals 1

    monitor-enter p0

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->usedHandleStreamIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private sendSoftwareVersion(Landroid/content/Context;)V
    .locals 20

    .line 2766
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2772
    array-length v1, v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-lez v1, :cond_0

    .line 2774
    :try_start_0
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-wide v5, v3

    .line 2779
    :goto_0
    array-length v1, v0

    const/4 v7, 0x1

    if-le v1, v7, :cond_1

    .line 2781
    :try_start_1
    aget-object v1, v0, v7

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_1
    move-wide v8, v3

    .line 2786
    :goto_1
    array-length v1, v0

    const/4 v10, 0x2

    if-le v1, v10, :cond_2

    .line 2788
    :try_start_2
    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2793
    :catch_2
    :cond_2
    invoke-static {}, Lcom/verimatrix/vdc/MonitorUtils;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->versionToLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2795
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v11

    move-object/from16 v12, p0

    iget-object v14, v12, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v15, 0x179

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/4 v13, 0x4

    new-array v13, v13, [J

    aput-wide v5, v13, v2

    aput-wide v8, v13, v7

    aput-wide v3, v13, v10

    const/4 v2, 0x3

    aput-wide v0, v13, v2

    .line 2796
    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/MonitorAgent;->getRegisters()[J

    move-result-object v19

    move-object v0, v13

    move-object/from16 v13, p1

    move-object/from16 v18, v0

    .line 2795
    invoke-static/range {v13 .. v19}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    return-void
.end method

.method private setNetworkCallback(Landroid/content/Context;)V
    .locals 2

    const-string v0, "connectivity"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 86
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v1, Lcom/verimatrix/vdc/MonitorAgent$1;

    invoke-direct {v1, p0}, Lcom/verimatrix/vdc/MonitorAgent$1;-><init>(Lcom/verimatrix/vdc/MonitorAgent;)V

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method


# virtual methods
.method public GetDeviceIdHashedValue()Ljava/lang/String;
    .locals 4

    .line 2850
    :try_start_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/AESCryptoUtils;->sha256Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2854
    sget-object v1, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to generate Hashed device Id error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public SetGuid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2816
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->regManager:Lcom/verimatrix/vdc/MonitorRegistration;

    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/MonitorRegistration;->SetGuid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method addDeviceStatusEvent(Landroid/content/Context;Z)V
    .locals 1

    .line 2716
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->heartbeat:Lcom/verimatrix/vdc/Heartbeat;

    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/Heartbeat;->addDeviceStatusEvent(Landroid/content/Context;Z)V

    return-void
.end method

.method addNetworkInfoEvent(Landroid/content/Context;)V
    .locals 1

    .line 2720
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->heartbeat:Lcom/verimatrix/vdc/Heartbeat;

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/Heartbeat;->addNetworkInfoEvent(Landroid/content/Context;)V

    return-void
.end method

.method public applicationLogPoint(III)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 555
    iget-object v4, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v5, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "code1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "code2:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "code3:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    invoke-static {v4, v5, v6, v8}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v4

    iget-object v13, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v14, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    new-array v5, v7, [J

    int-to-long v6, v1

    aput-wide v6, v5, v10

    int-to-long v1, v2

    aput-wide v1, v5, v11

    int-to-long v1, v3

    aput-wide v1, v5, v12

    .line 558
    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/MonitorAgent;->getRegisters()[J

    move-result-object v19

    const/16 v15, 0x15

    move-object/from16 v18, v5

    .line 557
    invoke-static/range {v13 .. v19}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[J)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 559
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public applicationStatus(Lcom/verimatrix/vdc/Monitor$AreaType;Lcom/verimatrix/vdc/Monitor$AppStatus;I)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 532
    invoke-virtual/range {v0 .. v5}, Lcom/verimatrix/vdc/MonitorAgent;->applicationStatus(Lcom/verimatrix/vdc/Monitor$AreaType;Lcom/verimatrix/vdc/Monitor$AppStatus;IJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method

.method public applicationStatus(Lcom/verimatrix/vdc/Monitor$AreaType;Lcom/verimatrix/vdc/Monitor$AppStatus;IJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 537
    iget-object v4, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v5, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "areaType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    aput-object v9, v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appStatus:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    aput-object v9, v8, v13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reportCode:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x2

    aput-object v9, v8, v15

    invoke-static {v4, v5, v6, v8}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 539
    invoke-static/range {p1 .. p3}, Lcom/verimatrix/vdc/InputValidator;->applicationStatus(Lcom/verimatrix/vdc/Monitor$AreaType;Lcom/verimatrix/vdc/Monitor$AppStatus;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 540
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v15

    invoke-static {v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    .line 542
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 544
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object v4

    iget-object v5, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v18, 0x18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    new-array v7, v7, [J

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/verimatrix/vdc/Monitor$AreaType;->getValue()I

    move-result v1

    int-to-long v8, v1

    aput-wide v8, v7, v11

    invoke-virtual/range {p2 .. p2}, Lcom/verimatrix/vdc/Monitor$AppStatus;->getValue()I

    move-result v1

    int-to-long v1, v1

    aput-wide v1, v7, v13

    int-to-long v1, v3

    aput-wide v1, v7, v15

    invoke-direct/range {p0 .. p0}, Lcom/verimatrix/vdc/MonitorAgent;->getRegisters()[J

    move-result-object v22

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v21, v7

    move-wide/from16 v23, p4

    .line 544
    invoke-static/range {v16 .. v24}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    .line 546
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public cleanAllStreamsSentMetadataMap()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 437
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verimatrix/vdc/Stream;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, v1, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    invoke-virtual {v1}, Lcom/verimatrix/vdc/StreamMetadata;->cleanSentMetadataMap()V

    goto :goto_0

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->defaultStream:Lcom/verimatrix/vdc/Stream;

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, v0, Lcom/verimatrix/vdc/Stream;->metadata:Lcom/verimatrix/vdc/StreamMetadata;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/StreamMetadata;->cleanSentMetadataMap()V

    :cond_2
    return-void
.end method

.method public contentReadyToPlay(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1101
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1103
    :cond_0
    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expiryTimeSecs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 1105
    invoke-direct {p0, v2}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1107
    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/verimatrix/vdc/Stream;->contentReadyToPlay(JJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1109
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public contentReadyToPlay(JJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1116
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expiryTimeSecs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1121
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1123
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/verimatrix/vdc/Stream;->contentReadyToPlay(JJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1125
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public contentReadyToPlayWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 1132
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1134
    :cond_0
    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expiryTimeSecs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1137
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1139
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/verimatrix/vdc/Stream;->contentReadyToPlay(JJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1141
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public contentReadyToPlayWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 1148
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "streamHandle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expiryTimeSecs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1154
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1156
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/verimatrix/vdc/Stream;->contentReadyToPlay(JJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1158
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method cpuLoadUpdate(Landroid/content/Context;)V
    .locals 1

    .line 2728
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->heartbeat:Lcom/verimatrix/vdc/Heartbeat;

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/Heartbeat;->cpuLoadUpdate(Landroid/content/Context;)V

    return-void
.end method

.method public dataComplete(Lcom/verimatrix/vdc/Monitor$DeliveryType;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 914
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 916
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/Stream;->dataComplete(Lcom/verimatrix/vdc/Monitor$DeliveryType;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 920
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataError(I)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1088
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1090
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/Stream;->dataError(I)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1094
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataLoadComplete()Lcom/verimatrix/vdc/Monitor$Status;
    .locals 3

    .line 862
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 863
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 865
    invoke-virtual {v0, v1, v2}, Lcom/verimatrix/vdc/Stream;->dataLoadComplete(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0

    .line 867
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0
.end method

.method public dataLoadComplete(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 873
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 875
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/Stream;->dataLoadComplete(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 879
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataLoadCompleteWithStreamHandle(I)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 885
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streamHandle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 887
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 889
    invoke-virtual {p1, v0, v1}, Lcom/verimatrix/vdc/Stream;->dataLoadComplete(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 891
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataLoadCompleteWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 897
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streamHandle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 900
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 902
    invoke-virtual {p1, p2, p3}, Lcom/verimatrix/vdc/Stream;->dataLoadComplete(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 904
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataLoadError(Lcom/verimatrix/vdc/Monitor$LoadErrorType;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    if-nez p1, :cond_0

    .line 1016
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1021
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide/16 v5, 0x0

    move-object v2, p1

    move-wide v3, p2

    .line 1023
    invoke-virtual/range {v1 .. v6}, Lcom/verimatrix/vdc/Stream;->dataLoadError(Lcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1025
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataLoadError(Lcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    if-nez p1, :cond_0

    .line 1032
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1039
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 1041
    invoke-virtual/range {v1 .. v6}, Lcom/verimatrix/vdc/Stream;->dataLoadError(Lcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1043
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataLoadErrorWithStreamHandle(ILcom/verimatrix/vdc/Monitor$LoadErrorType;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    if-nez p2, :cond_0

    .line 1050
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "streamHandle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reason:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1056
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v4, 0x0

    move-object v1, p2

    move-wide v2, p3

    .line 1058
    invoke-virtual/range {v0 .. v5}, Lcom/verimatrix/vdc/Stream;->dataLoadError(Lcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0

    .line 1060
    :cond_1
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0
.end method

.method public dataLoadErrorWithStreamHandle(ILcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 13

    move-object v0, p0

    move-object v2, p2

    if-nez v2, :cond_0

    .line 1067
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 1069
    :cond_0
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reason:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p3

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "offset:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p5

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1074
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    .line 1076
    invoke-virtual/range {v1 .. v6}, Lcom/verimatrix/vdc/Stream;->dataLoadError(Lcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 1078
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public dataLoadServer(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 959
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gateway:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streaming:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 962
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 964
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/verimatrix/vdc/Stream;->dataLoadServer(Ljava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 966
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataLoadServer(Ljava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 972
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gateway:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streaming:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 976
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/verimatrix/vdc/Stream;->dataLoadServer(Ljava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 980
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataLoadServerWithStreamHandle(ILjava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 986
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streamHandle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gateway:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streaming:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 990
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 992
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/verimatrix/vdc/Stream;->dataLoadServer(Ljava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 994
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataLoadServerWithStreamHandle(ILjava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 1000
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streamHandle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gateway:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streaming:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1005
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1007
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/verimatrix/vdc/Stream;->dataLoadServer(Ljava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1009
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataLoadStarting()Lcom/verimatrix/vdc/Monitor$Status;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 695
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 697
    invoke-virtual {v0, v1, v2}, Lcom/verimatrix/vdc/Stream;->dataLoadStarting(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0

    .line 699
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0
.end method

.method public dataLoadStarting(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 711
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/Stream;->dataLoadStarting(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 715
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataLoadStarting(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9
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
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "identifiedType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "identifier:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordingId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "genericAttributes:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-static {p5}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v6

    const-string v7, ", "

    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 725
    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 731
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide/16 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 733
    invoke-virtual/range {v1 .. v8}, Lcom/verimatrix/vdc/Stream;->dataLoadStarting(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 735
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 723
    :cond_2
    :goto_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataLoadStarting(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 13
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

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    if-eqz v2, :cond_2

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 746
    :cond_0
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "identifiedType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "identifier:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mediaType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recordingId:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p4

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "genericAttributes:["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-static/range {p5 .. p5}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v11

    const-string v12, ", "

    invoke-static {v12, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "offset:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p6

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 746
    invoke-static {v1, v4, v5, v6}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 753
    invoke-direct {p0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    .line 755
    invoke-virtual/range {v1 .. v8}, Lcom/verimatrix/vdc/Stream;->dataLoadStarting(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 758
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 744
    :cond_2
    :goto_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public dataLoadStartingWithStreamHandle(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;ILcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "I",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v1, p3

    if-eqz v2, :cond_2

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 770
    :cond_0
    iget-object v4, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v5, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "identifiedType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "identifier:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "streamHandle:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mediaType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recordingId:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "genericAttributes:["

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    invoke-static/range {p6 .. p6}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v12

    const-string v13, ", "

    invoke-static {v13, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 770
    invoke-static {v4, v5, v6, v7}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 777
    invoke-direct {p0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide/16 v7, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 779
    invoke-virtual/range {v1 .. v8}, Lcom/verimatrix/vdc/Stream;->dataLoadStarting(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 781
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 768
    :cond_2
    :goto_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public dataLoadStartingWithStreamHandle(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;ILcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "I",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v1, p3

    if-eqz v2, :cond_2

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 792
    :cond_0
    iget-object v4, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v5, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "identifiedType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "identifier:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "streamHandle:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mediaType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recordingId:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "genericAttributes:["

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-static/range {p6 .. p6}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v12

    const-string v13, ", "

    invoke-static {v13, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "offset:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p7

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 792
    invoke-static {v4, v5, v6, v7}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 800
    invoke-direct {p0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    .line 802
    invoke-virtual/range {v1 .. v8}, Lcom/verimatrix/vdc/Stream;->dataLoadStarting(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 805
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 790
    :cond_2
    :goto_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public dataOverrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 930
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 932
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 934
    invoke-virtual {v0, p1, v1, v2}, Lcom/verimatrix/vdc/Stream;->dataOverrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 936
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataOverrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 946
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 949
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {v0, p1, p2, p3}, Lcom/verimatrix/vdc/Stream;->dataOverrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 953
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataStarting(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 815
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "method:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    new-array v2, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "Event add: data_starting"

    invoke-static {v0, v1, v3, v2}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 819
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 821
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/verimatrix/vdc/Stream;->dataLoadStarting(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 823
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataUnderrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 833
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 835
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 837
    invoke-virtual {v0, p1, v1, v2}, Lcom/verimatrix/vdc/Stream;->dataUnderrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 839
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public dataUnderrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 849
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 852
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {v0, p1, p2, p3}, Lcom/verimatrix/vdc/Stream;->dataUnderrun(Lcom/verimatrix/vdc/Monitor$DeliveryType;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 856
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public directEvent(IJJJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    .line 2464
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data0:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data1:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p4

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data2:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p6

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data3:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p8

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x4

    aput-object v5, v4, v15

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 2470
    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move-object v7, v1

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move-wide/from16 v15, p8

    .line 2472
    invoke-virtual/range {v7 .. v19}, Lcom/verimatrix/vdc/Stream;->directEvent(IJJJJLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 2474
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public directEvent(IJJJJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    .line 2484
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data0:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data1:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p4

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data2:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p6

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data3:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p8

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x4

    aput-object v5, v4, v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "offset:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p10

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x5

    aput-object v5, v4, v15

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 2491
    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v17, 0x0

    move-object v7, v1

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move-wide/from16 v15, p8

    move-wide/from16 v18, p10

    .line 2493
    invoke-virtual/range {v7 .. v19}, Lcom/verimatrix/vdc/Stream;->directEvent(IJJJJLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 2495
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public directEvent(IJJJJLcom/verimatrix/vdc/Monitor$Severity;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 20

    move-object/from16 v0, p0

    .line 2501
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data0:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data1:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p4

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data2:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p6

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data3:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p8

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x4

    aput-object v5, v4, v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "severity:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p10

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x5

    aput-object v5, v4, v16

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 2508
    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/16 v18, 0x0

    move-object v7, v1

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move-wide/from16 v15, p8

    move-object/from16 v17, p10

    .line 2510
    invoke-virtual/range {v7 .. v19}, Lcom/verimatrix/vdc/Stream;->directEvent(IJJJJLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 2512
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public directEvent(IJJJJLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 20

    move-object/from16 v0, p0

    .line 2519
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data0:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data1:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p4

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data2:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p6

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data3:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, p8

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x4

    aput-object v5, v4, v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "severity:"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p10

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x5

    aput-object v5, v4, v16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p11

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 2527
    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v7, v1

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move-wide/from16 v15, p8

    move-object/from16 v17, p10

    move-wide/from16 v18, p11

    .line 2529
    invoke-virtual/range {v7 .. v19}, Lcom/verimatrix/vdc/Stream;->directEvent(IJJJJLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 2531
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public directEventWithStreamHandle(IIJJJJLcom/verimatrix/vdc/Monitor$Severity;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 21

    move-object/from16 v0, p0

    .line 2538
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "streamHandle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "code:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data0:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p3

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data1:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data2:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p7

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data3:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p9

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x5

    aput-object v5, v4, v16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "severity:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x6

    aput-object v5, v4, v16

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2546
    invoke-direct/range {p0 .. p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/16 v19, 0x0

    move-object v8, v1

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    move-wide/from16 v16, p9

    move-object/from16 v18, p11

    .line 2548
    invoke-virtual/range {v8 .. v20}, Lcom/verimatrix/vdc/Stream;->directEvent(IJJJJLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0

    .line 2550
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0
.end method

.method public directEventWithStreamHandle(IIJJJJLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 21

    move-object/from16 v0, p0

    .line 2557
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "streamHandle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "code:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data0:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p3

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data1:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data2:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p7

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data3:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p9

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x5

    aput-object v5, v4, v16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "severity:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x6

    aput-object v5, v4, v16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "offset:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p12

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x7

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2566
    invoke-direct/range {p0 .. p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v8, v0

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    move-wide/from16 v16, p9

    move-object/from16 v18, p11

    move-wide/from16 v19, p12

    .line 2568
    invoke-virtual/range {v8 .. v20}, Lcom/verimatrix/vdc/Stream;->directEvent(IJJJJLcom/verimatrix/vdc/Monitor$Severity;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0

    .line 2570
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2642
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2644
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2646
    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/Stream;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public freeAllStreamHandles()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 429
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->freeStreamHandle(I)V

    goto :goto_0

    .line 431
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->defaultStream:Lcom/verimatrix/vdc/Stream;

    return-void
.end method

.method public freeStreamHandle(I)V
    .locals 6

    .line 418
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streamHandle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verimatrix/vdc/Stream;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/Stream;->setAgentDefaultValues()V

    .line 422
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->removeStreamHandleId(Ljava/lang/Integer;)V

    return-void
.end method

.method public genericAttributesChange(Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7
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

    .line 2616
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "genericAttributes:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2617
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, ", "

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2616
    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2618
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2620
    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/Stream;->genericAttributesChange(Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2622
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public genericAttributesChangeWithStreamHandle(ILjava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    .line 2629
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streamHandle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "genericAttributes:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    invoke-static {p2}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, ", "

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 2629
    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2632
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2634
    invoke-virtual {p1, p2}, Lcom/verimatrix/vdc/Stream;->genericAttributesChange(Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2636
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public getBindDeviceStatus()I
    .locals 2

    .line 2821
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2822
    :try_start_0
    sget v1, Lcom/verimatrix/vdc/MonitorAgent;->bindDeviceStatus:I

    .line 2823
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentConfig()Lcom/verimatrix/vdc/Configuration;
    .locals 1

    .line 2800
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    return-object v0
.end method

.method public getGeneratedUid()Ljava/lang/String;
    .locals 1

    .line 2654
    sget-object v0, Lcom/verimatrix/vdc/DynamicConfiguration;->LEGACY_VRT_SERVER_FLAG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2655
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->deviceId:Ljava/lang/String;

    return-object v0

    .line 2657
    :cond_0
    invoke-virtual {p0}, Lcom/verimatrix/vdc/MonitorAgent;->getIUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getIUID()Ljava/lang/String;
    .locals 4

    .line 2662
    new-instance v0, Lcom/verimatrix/vdc/StoreFile;

    sget-object v1, Lcom/verimatrix/vdc/MonitorAgent;->storeFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/StoreFile;-><init>(Ljava/lang/String;)V

    .line 2663
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "iuid"

    .line 2664
    invoke-virtual {v0, v3, v1}, Lcom/verimatrix/vdc/StoreFile;->readField(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v0

    .line 2665
    sget-object v3, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v0, v3, :cond_0

    .line 2667
    sget-object v0, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    const-string v1, "Reading IUID from storefile failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 2670
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginManager()Lcom/verimatrix/vdc/MonitorLogin;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->loginManager:Lcom/verimatrix/vdc/MonitorLogin;

    return-object v0
.end method

.method getSentMetadataMap(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2675
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2677
    invoke-virtual {p1}, Lcom/verimatrix/vdc/Stream;->getSentMetadataMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStreamHandle(Lcom/verimatrix/vdc/Monitor$StreamFunction;)I
    .locals 11

    .line 400
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "streamFunction:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 403
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorAgent;->hasDefaultStream()Z

    move-result v0

    const-string v1, "STEAM_HANDLE = "

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-static {v0, v2}, Lcom/verimatrix/vdc/MonitorLog;->methodErrorCall(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, -0x1

    goto :goto_0

    .line 406
    :cond_0
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStreamHandleId(Lcom/verimatrix/vdc/Monitor$StreamFunction;)I

    move-result v0

    .line 407
    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    iget-object v8, p0, Lcom/verimatrix/vdc/MonitorAgent;->streams:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcom/verimatrix/vdc/Stream;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    iget-object v7, p0, Lcom/verimatrix/vdc/MonitorAgent;->profile:Lcom/verimatrix/vdc/Profile;

    move-object v2, v10

    move v4, v0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/verimatrix/vdc/Stream;-><init>(Landroid/content/Context;ILcom/verimatrix/vdc/Monitor$StreamFunction;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/Profile;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_1
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    move p1, v0

    .line 412
    :goto_0
    sget-object v0, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method heartbeatUpdate(Landroid/content/Context;)V
    .locals 2

    .line 2686
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorAgent;->hasDefaultStream()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 2688
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->callStreamHeartbeat(I)Z

    goto :goto_0

    .line 2689
    :cond_0
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorAgent;->hasPrimaryStream()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 2691
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->callStreamHeartbeat(I)Z

    goto :goto_0

    .line 2694
    :cond_1
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->heartbeat:Lcom/verimatrix/vdc/Heartbeat;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/verimatrix/vdc/Heartbeat;->heartbeatUpdate(Landroid/content/Context;Z)V

    .line 2698
    :goto_0
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorAgent;->hasStreams()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2699
    invoke-direct {p0}, Lcom/verimatrix/vdc/MonitorAgent;->getAvailableStreamIds()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2700
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2701
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->callStreamHeartbeat(I)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 8

    if-eqz p1, :cond_5

    .line 120
    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    .line 121
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->loginManager:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/MonitorLogin;->setContext(Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->regManager:Lcom/verimatrix/vdc/MonitorRegistration;

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/MonitorRegistration;->setContext(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->profile:Lcom/verimatrix/vdc/Profile;

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/Profile;->setContext(Landroid/content/Context;)V

    .line 124
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->heartbeat:Lcom/verimatrix/vdc/Heartbeat;

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/Heartbeat;->setContext(Landroid/content/Context;)V

    .line 126
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verimatrix/vdc/MonitorAgent;->storeFilePath:Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/verimatrix/vdc/StoreFile;

    sget-object v1, Lcom/verimatrix/vdc/MonitorAgent;->storeFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/StoreFile;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Lcom/verimatrix/vdc/StoreFile;->createStore()Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/StoreFile;->readPrivacyKey(Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v2

    .line 139
    sget-object v3, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v2, :cond_1

    .line 140
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/verimatrix/vdc/DynamicConfiguration;->LEGACY_VRT_SERVER_FLAG:Ljava/lang/Boolean;

    .line 141
    invoke-static {}, Lcom/verimatrix/vdc/AESCryptoUtils;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v0, v3, v2}, Lcom/verimatrix/vdc/StoreFile;->writeField(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v2

    sget-object v3, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-eq v2, v3, :cond_3

    .line 143
    sget-object v3, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in storing spk in store file"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/verimatrix/vdc/AESCryptoUtils;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/verimatrix/vdc/DynamicConfiguration;->LEGACY_VRT_SERVER_FLAG:Ljava/lang/Boolean;

    goto :goto_0

    .line 151
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/verimatrix/vdc/DynamicConfiguration;->LEGACY_VRT_SERVER_FLAG:Ljava/lang/Boolean;

    :cond_3
    :goto_0
    const-string v2, "consentLevel"

    .line 156
    invoke-virtual {v0, v2, v1}, Lcom/verimatrix/vdc/StoreFile;->readField(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;->Success:Lcom/verimatrix/vdc/StoreFile$StoreFileErrorCode;

    if-ne v0, v1, :cond_4

    .line 158
    sput v6, Lcom/verimatrix/vdc/MonitorAgent;->bindDeviceStatus:I

    goto :goto_1

    .line 161
    :cond_4
    sput v5, Lcom/verimatrix/vdc/MonitorAgent;->bindDeviceStatus:I

    .line 164
    :goto_1
    invoke-static {p1}, Lcom/verimatrix/vdc/Foreground;->init(Landroid/app/Application;)Lcom/verimatrix/vdc/Foreground;

    .line 172
    new-instance v0, Lcom/verimatrix/vdc/MonitorAgent$2;

    invoke-direct {v0, p0, p1}, Lcom/verimatrix/vdc/MonitorAgent$2;-><init>(Lcom/verimatrix/vdc/MonitorAgent;Landroid/app/Application;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 180
    invoke-static {p1}, Lcom/verimatrix/vdc/Preferences;->getInstance(Landroid/content/Context;)Lcom/verimatrix/vdc/Preferences;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/verimatrix/vdc/Preferences;->setSendingInProgress(Z)V

    .line 181
    invoke-static {p1}, Lcom/verimatrix/vdc/DatabaseManager;->init(Landroid/content/Context;)V

    .line 182
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorCore;->init(Landroid/content/Context;)V

    .line 184
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->deviceId:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6

    .line 190
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->setNetworkCallback(Landroid/content/Context;)V

    goto :goto_2

    .line 193
    :cond_5
    sget-object p1, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    const-string v0, "Provided context is null, please init SDK again before use"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->mIsNetworkAvailable:Z

    return v0
.end method

.method locationUpdate(Landroid/content/Context;)V
    .locals 1

    .line 2724
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->heartbeat:Lcom/verimatrix/vdc/Heartbeat;

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/Heartbeat;->locationUpdate(Landroid/content/Context;)V

    return-void
.end method

.method public login()Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->login(Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$LoginAttribute;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 204
    iget-object v0, v1, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/verimatrix/vdc/MonitorLog;->getLoginProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 206
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 207
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/MonitorAgent;->cleanAllStreamsSentMetadataMap()V

    .line 221
    iget-object v4, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v4}, Lcom/verimatrix/vdc/Configuration;->resetIdentifiers()V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_16

    .line 225
    sget-object v7, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->ENCODE_USER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 226
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->ENCODE_USER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    move-object v7, v0

    .line 228
    iget-object v0, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v0, v7}, Lcom/verimatrix/vdc/Configuration;->setEncodeUserId(Ljava/lang/Boolean;)V

    .line 230
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->ENCODE_SUBSCRIBER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->ENCODE_SUBSCRIBER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 234
    :cond_1
    iget-object v0, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v0, v3}, Lcom/verimatrix/vdc/Configuration;->setEncodeSubscriberId(Ljava/lang/Boolean;)V

    .line 236
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->SUBSCRIBER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->SUBSCRIBER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 239
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 241
    :goto_0
    iget-object v8, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v8, v0}, Lcom/verimatrix/vdc/Configuration;->setSubscriberId(Ljava/lang/String;)V

    move-object v8, v0

    goto :goto_1

    :cond_3
    move-object v8, v4

    .line 244
    :goto_1
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->PLAYER_TYPE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->PLAYER_TYPE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 247
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_2

    :cond_4
    move-object v9, v4

    .line 251
    :goto_2
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->PLAYER_VERSION:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->PLAYER_VERSION:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 254
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_3

    :cond_5
    move-object v10, v4

    .line 258
    :goto_3
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->APP_VERSION:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 259
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->APP_VERSION:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 261
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v4

    .line 263
    :goto_4
    iget-object v11, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v11, v0}, Lcom/verimatrix/vdc/Configuration;->setAppVersion(Ljava/lang/String;)V

    move-object v11, v0

    goto :goto_5

    :cond_7
    move-object v11, v4

    .line 266
    :goto_5
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->GD_OPERATOR_CODE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 268
    :try_start_0
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->GD_OPERATOR_CODE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 270
    sget-object v12, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    const-string v13, "Provided GD_OPERATOR_CODE has wrong format"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    :cond_8
    :goto_6
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->MIRIMON_URL:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/verimatrix/vdc/NetworkUtils;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 274
    sget-object v0, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    const-string v2, "Invalid server url"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0

    .line 278
    :cond_9
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->MIRIMON_URL:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->MIRIMON_URL:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 279
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->MIRIMON_URL:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 280
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 281
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->MIRIMON_URL:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v12, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v13, "monitor_server"

    invoke-virtual {v12, v13, v0}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v12, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v14, "monitor_server_ip"

    const-string v15, ""

    invoke-virtual {v12, v14, v15}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v12, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v12, v13, v14, v0}, Lcom/verimatrix/vdc/Configuration;->convertToIp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_a
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->MDS_SERVER:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->MDS_SERVER:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 288
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->MDS_SERVER:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 289
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 290
    iget-object v0, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    sget-object v12, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->MDS_SERVER:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "mds_server"

    invoke-virtual {v0, v13, v12}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_b
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->USER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 294
    sget-object v0, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->USER_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 296
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_c
    move-object v0, v4

    .line 298
    :goto_7
    iget-object v12, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v12, v0}, Lcom/verimatrix/vdc/Configuration;->setUserId(Ljava/lang/String;)V

    goto :goto_8

    :cond_d
    move-object v0, v4

    .line 301
    :goto_8
    sget-object v12, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->APP_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 302
    sget-object v12, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->APP_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 304
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    :cond_e
    move-object v12, v4

    .line 306
    :goto_9
    iget-object v13, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v13, v12}, Lcom/verimatrix/vdc/Configuration;->setAppId(Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    move-object v12, v4

    .line 309
    :goto_a
    sget-object v13, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->USER_TYPE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 310
    sget-object v13, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->USER_TYPE:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 311
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_b

    :cond_10
    move-object v13, v4

    .line 314
    :goto_b
    sget-object v14, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->GDPR_CONSENT:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 315
    sget-object v4, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->GDPR_CONSENT:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 316
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 319
    :cond_11
    sget-object v14, Lcom/verimatrix/vdc/DynamicConfiguration;->LEGACY_VRT_SERVER_FLAG:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_14

    .line 320
    sget-object v14, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->DEVICE_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    sget-object v14, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->DEVICE_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    .line 321
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_12

    .line 323
    :try_start_1
    sget-object v14, Lcom/verimatrix/vdc/Monitor$LoginAttribute;->DEVICE_ID:Lcom/verimatrix/vdc/Monitor$LoginAttribute;

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/verimatrix/vdc/AESCryptoUtils;->md5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 330
    iput-object v14, v1, Lcom/verimatrix/vdc/MonitorAgent;->deviceId:Ljava/lang/String;

    .line 331
    sget-object v15, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v0, " App provided device ID : now hashed"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    move-object v15, v14

    goto :goto_d

    :catch_1
    move-exception v0

    .line 327
    sget-object v2, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to generate Hashed device Id error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0

    :cond_12
    move-object/from16 v16, v0

    .line 333
    iget-object v0, v1, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 335
    iget-object v0, v1, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 337
    iput-object v0, v1, Lcom/verimatrix/vdc/MonitorAgent;->deviceId:Ljava/lang/String;

    .line 338
    sget-object v14, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    const-string v15, " Using platform device ID : now hashed"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 340
    :cond_13
    sget-object v0, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    const-string v2, " No device ID or IUID provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0

    :cond_14
    move-object/from16 v16, v0

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/verimatrix/vdc/MonitorAgent;->getIUID()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_15

    .line 347
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " IUID : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    move-object v15, v0

    move-object v0, v3

    :goto_d
    move-object v14, v4

    move-object v4, v8

    move-object/from16 v8, v16

    move-object/from16 v18, v9

    move-object v9, v7

    move-wide v6, v5

    move-object/from16 v5, v18

    goto :goto_e

    .line 350
    :cond_15
    sget-object v0, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    const-string v2, " No IUID provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0

    :cond_16
    move-object v9, v0

    move-object v0, v3

    move-object v8, v4

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-wide v6, v5

    move-object v5, v15

    .line 356
    :goto_e
    sget-object v3, Lcom/verimatrix/vdc/MonitorAgent;->TAG:Ljava/lang/String;

    move-object/from16 v16, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v14

    const-string v14, "event login("

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v2, v1, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v14, "Attempting login..."

    invoke-static {v2, v3, v14}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    .line 359
    iget-object v2, v1, Lcom/verimatrix/vdc/MonitorAgent;->loginManager:Lcom/verimatrix/vdc/MonitorLogin;

    iget-object v3, v1, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    .line 372
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object v6, v10

    move-object v7, v11

    move-object v10, v0

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v16

    .line 359
    invoke-virtual/range {v2 .. v15}, Lcom/verimatrix/vdc/MonitorLogin;->login(Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0
.end method

.method public logout()Lcom/verimatrix/vdc/Monitor$Status;
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorCore;->stopMonitoringService(Landroid/content/Context;)V

    .line 382
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/verimatrix/vdc/MonitorCore;->stopLocationService(Landroid/content/Context;)V

    .line 383
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/verimatrix/vdc/Preferences;->getInstance(Landroid/content/Context;)Lcom/verimatrix/vdc/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/Preferences;->setSendingInProgress(Z)V

    .line 384
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/verimatrix/vdc/NetworkManager;->sendCollectedData(Landroid/content/Context;)Z

    .line 386
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->loginManager:Lcom/verimatrix/vdc/MonitorLogin;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/MonitorLogin;->logout(Lcom/verimatrix/vdc/Configuration;)Lcom/verimatrix/vdc/Monitor$Status;

    .line 389
    invoke-virtual {p0}, Lcom/verimatrix/vdc/MonitorAgent;->freeAllStreamHandles()V

    .line 391
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0
.end method

.method memoryUsageUpdate(Landroid/content/Context;)V
    .locals 1

    .line 2732
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->heartbeat:Lcom/verimatrix/vdc/Heartbeat;

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/Heartbeat;->memoryUsageUpdate(Landroid/content/Context;)V

    return-void
.end method

.method public metadataDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    .line 2367
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reference:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p2

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "description:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p3

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "title:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "episode:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "season:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p6

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x5

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "category:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p7

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x6

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "language:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p8

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x7

    aput-object v5, v4, v7

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 2376
    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    .line 2378
    invoke-virtual/range {v7 .. v15}, Lcom/verimatrix/vdc/Stream;->metadataDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 2380
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public metadataDimensions(II)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2393
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2396
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2398
    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/Stream;->metadataDimensions(II)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2400
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public metadataDuration(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2412
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2414
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2416
    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/Stream;->metadataDuration(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2418
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public metadataIdentity(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;ZZ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2445
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "referenceCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioExpected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videoExpected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2450
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2452
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/verimatrix/vdc/Stream;->metadataIdentity(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$MediaType;ZZ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2454
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public metadataInitialise()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2430
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2431
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2433
    invoke-virtual {v0}, Lcom/verimatrix/vdc/Stream;->metadataInitialise()V

    :cond_0
    return-void
.end method

.method networkStatsUpdate(Landroid/content/Context;)V
    .locals 1

    .line 2736
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->heartbeat:Lcom/verimatrix/vdc/Heartbeat;

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/Heartbeat;->networkStatsUpdate(Landroid/content/Context;)V

    return-void
.end method

.method public playbackAccelerated(JF)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1791
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replayRate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1794
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v6, 0x0

    move-wide v3, p1

    move v5, p3

    .line 1796
    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackAccelerated(JJFJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1798
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackAccelerated(JFJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1805
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replayRate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1809
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v3, p1

    move v5, p3

    move-wide v6, p4

    .line 1811
    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackAccelerated(JJFJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1813
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackAcceleratedWithStreamHandle(IJF)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1819
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1820
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "streamHandle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replayRate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1824
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v6, 0x0

    move-wide v3, p2

    move v5, p4

    .line 1826
    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackAccelerated(JJFJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1828
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackAcceleratedWithStreamHandle(IJFJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1835
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "streamHandle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "replayRate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1840
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    .line 1842
    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackAccelerated(JJFJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1844
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackConsumptionMethodChange(JLjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    .line 1368
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consumptionMethod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1371
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/16 v5, 0x0

    move-wide v2, p1

    move-object v4, p3

    .line 1373
    invoke-virtual/range {v1 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackConsumptionMethodChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1375
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackConsumptionMethodChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    .line 1381
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consumptionMethod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1385
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    .line 1387
    invoke-virtual/range {v1 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackConsumptionMethodChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1389
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackConsumptionMethodChangeWithStreamHandle(IJLjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 14

    move-object v0, p0

    .line 1396
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "streamHandle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "consumptionMethod:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1400
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v8

    if-eqz v8, :cond_0

    const-wide/16 v12, 0x0

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    .line 1402
    invoke-virtual/range {v8 .. v13}, Lcom/verimatrix/vdc/Stream;->playbackConsumptionMethodChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 1404
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackConsumptionMethodChangeWithStreamHandle(IJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 14

    move-object v0, p0

    .line 1411
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "streamHandle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "consumptionMethod:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offset:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1416
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v8

    if-eqz v8, :cond_0

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    move-wide/from16 v12, p5

    .line 1418
    invoke-virtual/range {v8 .. v13}, Lcom/verimatrix/vdc/Stream;->playbackConsumptionMethodChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 1420
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackError(I)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1778
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1780
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v2, p1

    .line 1782
    invoke-virtual/range {v1 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1784
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;I)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1706
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streamType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playbackErrorType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1711
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/16 v6, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1713
    invoke-virtual/range {v1 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1715
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1722
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streamType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playbackErrorType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1728
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    .line 1730
    invoke-virtual/range {v1 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1732
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackErrorReportWithStreamHandle(IILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;I)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 15

    move-object v0, p0

    .line 1739
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "streamHandle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reason:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamType:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p3

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playbackErrorType:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "count:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    aput-object v5, v4, v8

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1745
    invoke-direct/range {p0 .. p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v8

    if-eqz v8, :cond_0

    const-wide/16 v13, 0x0

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    .line 1747
    invoke-virtual/range {v8 .. v14}, Lcom/verimatrix/vdc/Stream;->playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 1749
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackErrorReportWithStreamHandle(IILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 15

    move-object v0, p0

    .line 1756
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "streamHandle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reason:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamType:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p3

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playbackErrorType:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p4

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "count:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offset:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p6

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x5

    aput-object v5, v4, v8

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1763
    invoke-direct/range {p0 .. p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v8

    if-eqz v8, :cond_0

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-wide/from16 v13, p6

    .line 1765
    invoke-virtual/range {v8 .. v14}, Lcom/verimatrix/vdc/Stream;->playbackErrorReport(ILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;IJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 1767
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackLanguageChange(JLjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 2263
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeMs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audioLanguage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2266
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide/16 v5, 0x0

    move-wide v2, p1

    move-object v4, p3

    .line 2268
    invoke-virtual/range {v1 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackLanguageChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2270
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2261
    :cond_2
    :goto_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackLanguageChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7

    .line 2276
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioLanguage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2280
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    .line 2282
    invoke-virtual/range {v1 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackLanguageChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2284
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackLanguageChangeWithStreamHandle(IJLjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 14

    move-object v0, p0

    .line 2290
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "streamHandle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audioLanguage:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-static {v1, v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2294
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v8

    if-eqz v8, :cond_0

    const-wide/16 v12, 0x0

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    .line 2296
    invoke-virtual/range {v8 .. v13}, Lcom/verimatrix/vdc/Stream;->playbackLanguageChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 2298
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackLanguageChangeWithStreamHandle(IJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 13

    move-object v0, p0

    move-wide v2, p2

    move-object/from16 v4, p4

    const-wide/16 v5, 0x0

    cmp-long v1, v2, v5

    if-ltz v1, :cond_2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2308
    :cond_0
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v5, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "streamHandle:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, p1

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "timeMs:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "audioLanguage:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "offset:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p5

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v5, v6, v7}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2313
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    .line 2315
    invoke-virtual/range {v1 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackLanguageChange(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 2317
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 2306
    :cond_2
    :goto_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackMetadataChange(JLjava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7
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

    .line 1571
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "metadata:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    invoke-static {p3}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, ", "

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 1571
    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1574
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1576
    invoke-virtual {v0, p1, p2, p3}, Lcom/verimatrix/vdc/Stream;->playbackMetadataChange(JLjava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1578
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackMetadataChangeWithStreamHandle(IJLjava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    .line 1584
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "metadata:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    invoke-static {p4}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, ", "

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 1584
    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1587
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1589
    invoke-virtual {p1, p2, p3, p4}, Lcom/verimatrix/vdc/Stream;->playbackMetadataChange(JLjava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1591
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackPaused(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1851
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1853
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1854
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1856
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    move-wide v3, p1

    .line 1858
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackPaused(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1860
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackPaused(JJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1867
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1869
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1870
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1873
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    move-wide v3, p1

    move-wide v5, p3

    .line 1875
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackPaused(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1877
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackPausedWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 1884
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1886
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1887
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1890
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    move-wide v3, p2

    .line 1892
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackPaused(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1894
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackPausedWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 1901
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1903
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1904
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1908
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    move-wide v3, p2

    move-wide v5, p4

    .line 1910
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackPaused(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1912
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackProgress(JJZ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 571
    iget-object p5, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeMs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expectedPlayTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p5, v0, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p5, -0x1

    .line 574
    invoke-direct {p0, p5}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v3, p1

    move-wide v5, p3

    .line 576
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackProgress(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 578
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackProgress(JJZJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 23

    move-object/from16 v0, p0

    .line 587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 588
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expectedPlayTime:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p3

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    aput-object v7, v6, v12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "indicatedAudioRate:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p6

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x2

    aput-object v7, v6, v14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "observedAudioRate:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p8

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x3

    aput-object v7, v6, v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "indicatedVideoRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x4

    aput-object v7, v6, v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "observedVideoRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p12

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x5

    aput-object v7, v6, v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p14

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x6

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nominal:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p15

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x7

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "observed:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p17

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x8

    aput-object v7, v6, v9

    invoke-static {v1, v4, v5, v6}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 598
    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/16 v21, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-object/from16 v16, p14

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    .line 600
    invoke-virtual/range {v1 .. v22}, Lcom/verimatrix/vdc/Stream;->playbackProgress(JJJJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 603
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackProgress(JJZJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 23

    move-object/from16 v0, p0

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 614
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expectedPlayTime:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p3

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    aput-object v7, v6, v12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "indicatedAudioRate:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p6

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x2

    aput-object v7, v6, v14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "observedAudioRate:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p8

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x3

    aput-object v7, v6, v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "indicatedVideoRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x4

    aput-object v7, v6, v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "observedVideoRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p12

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x5

    aput-object v7, v6, v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p14

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x6

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nominal:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p15

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x7

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "observed:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p17

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x8

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "offset:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p19

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x9

    aput-object v7, v6, v9

    invoke-static {v1, v4, v5, v6}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 625
    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-object/from16 v16, p14

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    move-wide/from16 v21, p19

    .line 627
    invoke-virtual/range {v1 .. v22}, Lcom/verimatrix/vdc/Stream;->playbackProgress(JJJJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 630
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackProgressWithStreamHandle(IJJZJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 23

    move-object/from16 v0, p0

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 640
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timeMs:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    aput-object v7, v6, v11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "expectedPlayTime:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p4

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v6, v13

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "indicatedAudioRate:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x3

    aput-object v7, v6, v15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "observedAudioRate:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p9

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "indicatedVideoRate:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p11

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x5

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "observedVideoRate:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p13

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x6

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "streamType:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p15

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x7

    aput-object v7, v6, v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nominal:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p16

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x8

    aput-object v0, v6, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "observed:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x9

    aput-object v0, v6, v7

    invoke-static {v1, v4, v5, v6}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 651
    invoke-direct/range {p0 .. p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/16 v21, 0x0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-object/from16 v16, p15

    move-wide/from16 v17, p16

    move-wide/from16 v19, p18

    .line 653
    invoke-virtual/range {v1 .. v22}, Lcom/verimatrix/vdc/Stream;->playbackProgress(JJJJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0

    .line 657
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0
.end method

.method public playbackProgressWithStreamHandle(IJJZJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 23

    move-object/from16 v0, p0

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 667
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timeMs:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    aput-object v7, v6, v11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "expectedPlayTime:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p4

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v6, v13

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "indicatedAudioRate:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x3

    aput-object v7, v6, v15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "observedAudioRate:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p9

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "indicatedVideoRate:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p11

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x5

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "observedVideoRate:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p13

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x6

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "streamType:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p15

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x7

    aput-object v7, v6, v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nominal:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p16

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x8

    aput-object v0, v6, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "observed:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x9

    aput-object v0, v6, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0xa

    aput-object v0, v6, v7

    invoke-static {v1, v4, v5, v6}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 679
    invoke-direct/range {p0 .. p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-object/from16 v16, p15

    move-wide/from16 v17, p16

    move-wide/from16 v19, p18

    move-wide/from16 v21, p20

    .line 681
    invoke-virtual/range {v1 .. v22}, Lcom/verimatrix/vdc/Stream;->playbackProgress(JJJJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0

    .line 684
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0
.end method

.method public playbackRequest(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    if-eqz v4, :cond_2

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 1234
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1235
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "identifiedType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "identifier:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "method:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mediaType:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "streamType:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p5

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startCause:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p6

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "recordingId:"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p7

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "consumptionMethod:"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p8

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x7

    aput-object v10, v8, v16

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genericAttributes:["

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    invoke-static/range {p9 .. p9}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, ", "

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x8

    aput-object v10, v8, v16

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "metadata:["

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    invoke-static/range {p10 .. p10}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v8, v5

    .line 1235
    invoke-static {v1, v6, v7, v8}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 1246
    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide/16 v16, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-wide/from16 v14, v16

    .line 1248
    invoke-virtual/range {v1 .. v15}, Lcom/verimatrix/vdc/Stream;->playbackRequest(JLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 1251
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 1232
    :cond_2
    :goto_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackRequest(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    if-eqz v4, :cond_2

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 1264
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1265
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xb

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "identifiedType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "identifier:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "method:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mediaType:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "streamType:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p5

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startCause:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p6

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "recordingId:"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p7

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "consumptionMethod:"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p8

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x7

    aput-object v10, v8, v16

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genericAttributes:["

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    invoke-static/range {p9 .. p9}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, ", "

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x8

    aput-object v10, v8, v16

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "metadata:["

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    invoke-static/range {p10 .. p10}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v8, v5

    const/16 v4, 0xa

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "offset:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p11

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 1265
    invoke-static {v1, v6, v7, v8}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 1277
    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-wide/from16 v14, p11

    .line 1279
    invoke-virtual/range {v1 .. v15}, Lcom/verimatrix/vdc/Stream;->playbackRequest(JLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 1282
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 1262
    :cond_2
    :goto_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackRequest(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "Lcom/verimatrix/vdc/Monitor$DeliveryType;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Lcom/verimatrix/vdc/Monitor$StreamType;",
            "Lcom/verimatrix/vdc/Monitor$StartCause;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    if-eqz v4, :cond_2

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 1175
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1176
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "identifiedType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "identifier:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "method:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mediaType:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "streamType:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p5

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startCause:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p6

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "metadata:["

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    invoke-static/range {p7 .. p7}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v15

    const-string v9, ", "

    invoke-static {v9, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v8, v10

    .line 1176
    invoke-static {v1, v6, v7, v8}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 1184
    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v13, p7

    move-wide/from16 v14, v17

    .line 1186
    invoke-virtual/range {v1 .. v15}, Lcom/verimatrix/vdc/Stream;->playbackRequest(JLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 1189
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 1173
    :cond_2
    :goto_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackRequest(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "Lcom/verimatrix/vdc/Monitor$DeliveryType;",
            "Lcom/verimatrix/vdc/Monitor$MediaType;",
            "Lcom/verimatrix/vdc/Monitor$StreamType;",
            "Lcom/verimatrix/vdc/Monitor$StartCause;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    if-eqz v4, :cond_2

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 1206
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1207
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v6, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "identifiedType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "identifier:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "method:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mediaType:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "streamType:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p5

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startCause:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p6

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "metadata:["

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    invoke-static/range {p7 .. p7}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v15

    const-string v9, ", "

    invoke-static {v9, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v8, v10

    const/4 v9, 0x7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "offset:"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p8

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 1207
    invoke-static {v1, v6, v7, v8}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 1216
    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v13, p7

    move-wide/from16 v14, p8

    .line 1218
    invoke-virtual/range {v1 .. v15}, Lcom/verimatrix/vdc/Stream;->playbackRequest(JLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 1221
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 1204
    :cond_2
    :goto_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackRequestWithStreamHandle(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;ILcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "I",
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
            ">;)",
            "Lcom/verimatrix/vdc/Monitor$Status;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v1, p3

    if-eqz v4, :cond_2

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 1295
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1296
    iget-object v6, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "identifiedType:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "identifier:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "streamHandle:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "method:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mediaType:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p5

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "streamType:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p6

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "startCause:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p7

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recordingId:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p8

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x7

    aput-object v11, v9, v16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumptionMethod:"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p9

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x8

    aput-object v11, v9, v16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genericAttributes:["

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    invoke-static/range {p10 .. p10}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, ", "

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x9

    aput-object v11, v9, v16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "metadata:["

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    invoke-static/range {p11 .. p11}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v9, v5

    .line 1296
    invoke-static {v6, v7, v8, v9}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1308
    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide/16 v16, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-wide/from16 v14, v16

    .line 1310
    invoke-virtual/range {v1 .. v15}, Lcom/verimatrix/vdc/Stream;->playbackRequest(JLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 1313
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 1293
    :cond_2
    :goto_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackRequestWithStreamHandle(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;ILcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verimatrix/vdc/Monitor$IdentifiedType;",
            "Ljava/lang/String;",
            "I",
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

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v1, p3

    if-eqz v4, :cond_2

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 1326
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1327
    iget-object v6, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "identifiedType:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "identifier:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "streamHandle:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "method:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mediaType:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p5

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "streamType:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p6

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "startCause:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p7

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recordingId:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p8

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x7

    aput-object v11, v9, v16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumptionMethod:"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p9

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x8

    aput-object v11, v9, v16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genericAttributes:["

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    invoke-static/range {p10 .. p10}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, ", "

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x9

    aput-object v11, v9, v16

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "metadata:["

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    invoke-static/range {p11 .. p11}, Lcom/verimatrix/vdc/MonitorLog;->getProperties(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v9, v5

    const/16 v4, 0xb

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "offset:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p12

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    .line 1327
    invoke-static {v6, v7, v8, v9}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1340
    invoke-direct {v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-wide/from16 v14, p12

    .line 1342
    invoke-virtual/range {v1 .. v15}, Lcom/verimatrix/vdc/Stream;->playbackRequest(JLcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 1345
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 1324
    :cond_2
    :goto_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackResolutionChange(JII)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 2187
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2189
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeMs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playbackWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playbackHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2193
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide/16 v6, 0x0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    .line 2195
    invoke-virtual/range {v1 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackResolutionChange(JIIJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2197
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackResolutionChange(JIILjava/lang/Long;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 2204
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2206
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timeMs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playbackWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playbackHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2211
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2213
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackResolutionChange(JIIJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2215
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackResolutionChangeWithStreamHandle(IJII)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 12

    move-object v0, p0

    move-wide v2, p2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 2223
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 2225
    :cond_0
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "streamHandle:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "timeMs:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playbackWidth:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playbackHeight:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v4, v5, v6}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2230
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide/16 v6, 0x0

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    .line 2232
    invoke-virtual/range {v1 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackResolutionChange(JIIJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 2234
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackResolutionChangeWithStreamHandle(IJIILjava/lang/Long;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 13

    move-object v0, p0

    move-wide v2, p2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 2242
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1

    .line 2244
    :cond_0
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "streamHandle:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "timeMs:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playbackWidth:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playbackHeight:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "offset:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p6

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v4, v5, v6}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2250
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2252
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackResolutionChange(JIIJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 2254
    :cond_1
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackResumed(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1919
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1921
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1922
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1924
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    move-wide v3, p1

    .line 1926
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackResumed(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1928
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackResumed(JJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1935
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1937
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1938
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1941
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    move-wide v3, p1

    move-wide v5, p3

    .line 1943
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackResumed(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1945
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackResumedAudio(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1987
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1989
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1990
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1992
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    move-wide v3, p1

    .line 1994
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackResumedAudio(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1996
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackResumedAudio(JJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 2003
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2005
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2006
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2008
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    move-wide v3, p1

    move-wide v5, p3

    .line 2010
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackResumedAudio(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2012
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackResumedAudioWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 2019
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2021
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2022
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2025
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    move-wide v3, p2

    .line 2027
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackResumedAudio(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2029
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackResumedAudioWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 2036
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2038
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2039
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2042
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    move-wide v3, p2

    move-wide v5, p4

    .line 2044
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackResumedAudio(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2046
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackResumedVideo(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 2053
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2055
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2056
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2058
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    move-wide v3, p1

    .line 2060
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackResumedVideo(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2062
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackResumedVideo(JJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 2069
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2071
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2072
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2074
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    move-wide v3, p1

    move-wide v5, p3

    .line 2076
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackResumedVideo(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2078
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackResumedVideoWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 2085
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2087
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2088
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2091
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    move-wide v3, p2

    .line 2093
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackResumedVideo(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2095
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackResumedVideoWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 2102
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2104
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2105
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2108
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    move-wide v3, p2

    move-wide v5, p4

    .line 2110
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackResumedVideo(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2112
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackResumedWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 1952
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1954
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1955
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1958
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    move-wide v3, p2

    .line 1960
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackResumed(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1962
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackResumedWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 1969
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1971
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1972
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1976
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    move-wide v3, p2

    move-wide v5, p4

    .line 1978
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackResumed(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1980
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackSeek(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 2119
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2121
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2122
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2124
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    move-wide v3, p1

    .line 2126
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackSeek(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2128
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackSeek(JJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 2135
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2137
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2138
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2141
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    move-wide v3, p1

    move-wide v5, p3

    .line 2143
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackSeek(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2145
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackSeekWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 2152
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2154
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2155
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2158
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    move-wide v3, p2

    .line 2160
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackSeek(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2162
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackSeekWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 2169
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2171
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2172
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2176
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    move-wide v3, p2

    move-wide v5, p4

    .line 2178
    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/Stream;->playbackSeek(JJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2180
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStartRequested()Lcom/verimatrix/vdc/Monitor$Status;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1357
    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 1358
    invoke-direct {p0, v2}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1360
    invoke-virtual {v2, v0, v1}, Lcom/verimatrix/vdc/Stream;->playbackStartRequested(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0

    .line 1362
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0
.end method

.method public playbackStarted(JLcom/verimatrix/vdc/Monitor$StartCause;IILjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 1554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1555
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeMs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startCause:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v3, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "playbackWidth:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "playbackHeight:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v3, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "audioLanguage:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 1561
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1563
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 1565
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStartedAudio(JLjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1427
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audioLanguage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1430
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v6, 0x0

    move-wide v3, p1

    move-object v5, p3

    .line 1432
    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackStartedAudio(JJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1434
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStartedAudio(JLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1441
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audioLanguage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1445
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    .line 1447
    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackStartedAudio(JJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1449
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStartedAudioWithStreamHandle(IJLjava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1456
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "streamHandle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audioLanguage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1460
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v6, 0x0

    move-wide v3, p2

    move-object v5, p4

    .line 1462
    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackStartedAudio(JJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1464
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStartedAudioWithStreamHandle(IJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1472
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "streamHandle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audioLanguage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1477
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v3, p2

    move-object v5, p4

    move-wide v6, p5

    .line 1479
    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackStartedAudio(JJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1481
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStartedVideo(JII)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    .line 1487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1488
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playbackWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playbackHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1492
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v7, 0x0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    .line 1494
    invoke-virtual/range {v0 .. v8}, Lcom/verimatrix/vdc/Stream;->playbackStartedVideo(JJIIJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1496
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStartedVideo(JIIJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    .line 1502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1503
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playbackWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playbackHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1508
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move-wide v7, p5

    .line 1510
    invoke-virtual/range {v0 .. v8}, Lcom/verimatrix/vdc/Stream;->playbackStartedVideo(JJIIJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1512
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStartedVideoWithStreamHandle(IJII)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    .line 1519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1520
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "streamHandle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playbackWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playbackHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1525
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v7, 0x0

    move-wide v3, p2

    move v5, p4

    move v6, p5

    .line 1527
    invoke-virtual/range {v0 .. v8}, Lcom/verimatrix/vdc/Stream;->playbackStartedVideo(JJIIJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1529
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStartedVideoWithStreamHandle(IJIIJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 16

    move-object/from16 v0, p0

    .line 1536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1537
    iget-object v1, v0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v4, v0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "streamHandle:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timeMs:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p2

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    aput-object v7, v6, v11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playbackWidth:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x2

    aput-object v7, v6, v12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "playbackHeight:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p5

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x3

    aput-object v7, v6, v13

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "offset:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p6

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x4

    aput-object v7, v6, v15

    invoke-static {v1, v4, v5, v6}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1543
    invoke-direct/range {p0 .. p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v1

    if-eqz v1, :cond_0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    .line 1545
    invoke-virtual/range {v1 .. v9}, Lcom/verimatrix/vdc/Stream;->playbackStartedVideo(JJIIJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    return-object v1

    .line 1547
    :cond_0
    sget-object v1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v1
.end method

.method public playbackStopRequested()Lcom/verimatrix/vdc/Monitor$Status;
    .locals 3

    .line 1597
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1598
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 1600
    invoke-virtual {v0, v1, v2}, Lcom/verimatrix/vdc/Stream;->playbackStopRequested(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v0

    return-object v0

    .line 1602
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object v0
.end method

.method public playbackStopRequested(J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 1608
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1610
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1612
    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/Stream;->playbackStopRequested(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1614
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStopRequestedWithStreamHandle(I)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 1620
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streamHandle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1622
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 1624
    invoke-virtual {p1, v0, v1}, Lcom/verimatrix/vdc/Stream;->playbackStopRequested(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1626
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStopRequestedWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6

    .line 1632
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streamHandle:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1635
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1637
    invoke-virtual {p1, p2, p3}, Lcom/verimatrix/vdc/Stream;->playbackStopRequested(J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1639
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStopped(JLcom/verimatrix/vdc/Monitor$EndCause;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1645
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1646
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endCause:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1649
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v6, 0x0

    move-wide v3, p1

    move-object v5, p3

    .line 1651
    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackStopped(JJLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1653
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStopped(JLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1660
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endCause:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1664
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    .line 1666
    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackStopped(JJLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1668
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStoppedWithStreamHandle(IJLcom/verimatrix/vdc/Monitor$EndCause;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1675
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "streamHandle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endCause:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1679
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v6, 0x0

    move-wide v3, p2

    move-object v5, p4

    .line 1681
    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackStopped(JJLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1683
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public playbackStoppedWithStreamHandle(IJLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 8

    .line 1689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1690
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "streamHandle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMs:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endCause:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-static {v0, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1695
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v3, p2

    move-object v5, p4

    move-wide v6, p5

    .line 1697
    invoke-virtual/range {v0 .. v7}, Lcom/verimatrix/vdc/Stream;->playbackStopped(JJLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 1699
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public profileGet(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 3

    .line 2604
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->loginManager:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorLogin;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2605
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->profile:Lcom/verimatrix/vdc/Profile;

    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/Profile;->get(Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2606
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->loginManager:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorLogin;->isLoginInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2607
    invoke-static {}, Lcom/verimatrix/vdc/RequestQueue;->getInstance()Lcom/verimatrix/vdc/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/verimatrix/vdc/RequestQueue$ProfileGetRequest;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorAgent;->profile:Lcom/verimatrix/vdc/Profile;

    invoke-direct {v1, v2, p1, p2}, Lcom/verimatrix/vdc/RequestQueue$ProfileGetRequest;-><init>(Lcom/verimatrix/vdc/Profile;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$OnProfileGetListener;)V

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/RequestQueue;->add(Lcom/verimatrix/vdc/RequestQueue$Request;)V

    .line 2608
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2610
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public profileSet(Ljava/lang/String;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    .line 2576
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->loginManager:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorLogin;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2577
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->profile:Lcom/verimatrix/vdc/Profile;

    sget-object v4, Lcom/verimatrix/vdc/Monitor$ProfileSetType;->KEEP_HISTORY:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    sget-object v5, Lcom/verimatrix/vdc/Monitor$ProfileDataType;->STRING:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    sget-object v6, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;->PRIVATE:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/verimatrix/vdc/Profile;->set(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileSetType;Lcom/verimatrix/vdc/Monitor$ProfileDataType;Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2579
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->loginManager:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorLogin;->isLoginInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2580
    invoke-static {}, Lcom/verimatrix/vdc/RequestQueue;->getInstance()Lcom/verimatrix/vdc/RequestQueue;

    move-result-object v0

    new-instance v8, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorAgent;->profile:Lcom/verimatrix/vdc/Profile;

    sget-object v5, Lcom/verimatrix/vdc/Monitor$ProfileSetType;->KEEP_HISTORY:Lcom/verimatrix/vdc/Monitor$ProfileSetType;

    sget-object v6, Lcom/verimatrix/vdc/Monitor$ProfileDataType;->STRING:Lcom/verimatrix/vdc/Monitor$ProfileDataType;

    sget-object v7, Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;->PRIVATE:Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;-><init>(Lcom/verimatrix/vdc/Profile;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileSetType;Lcom/verimatrix/vdc/Monitor$ProfileDataType;Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;)V

    invoke-virtual {v0, v8}, Lcom/verimatrix/vdc/RequestQueue;->add(Lcom/verimatrix/vdc/RequestQueue$Request;)V

    .line 2582
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2584
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public profileSet(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileSetType;Lcom/verimatrix/vdc/Monitor$ProfileDataType;Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 9

    .line 2591
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->loginManager:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorLogin;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2592
    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->profile:Lcom/verimatrix/vdc/Profile;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/verimatrix/vdc/Profile;->set(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileSetType;Lcom/verimatrix/vdc/Monitor$ProfileDataType;Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2593
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->loginManager:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorLogin;->isLoginInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2594
    invoke-static {}, Lcom/verimatrix/vdc/RequestQueue;->getInstance()Lcom/verimatrix/vdc/RequestQueue;

    move-result-object v0

    new-instance v8, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorAgent;->profile:Lcom/verimatrix/vdc/Profile;

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/verimatrix/vdc/RequestQueue$ProfileSetRequest;-><init>(Lcom/verimatrix/vdc/Profile;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Monitor$ProfileSetType;Lcom/verimatrix/vdc/Monitor$ProfileDataType;Lcom/verimatrix/vdc/Monitor$ProfilePrivacyType;)V

    invoke-virtual {v0, v8}, Lcom/verimatrix/vdc/RequestQueue;->add(Lcom/verimatrix/vdc/RequestQueue$Request;)V

    .line 2596
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1

    .line 2598
    :cond_1
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public register(Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 2842
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->regManager:Lcom/verimatrix/vdc/MonitorRegistration;

    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/MonitorRegistration;->registration(Lcom/verimatrix/vdc/RSAKeyGenUtils$KeySize;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public resetBindDeviceStatus()V
    .locals 2

    .line 2835
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2836
    :try_start_0
    sput v1, Lcom/verimatrix/vdc/MonitorAgent;->bindDeviceStatus:I

    .line 2837
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBindDeviceStatus(I)V
    .locals 1

    .line 2828
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2829
    :try_start_0
    sput p1, Lcom/verimatrix/vdc/MonitorAgent;->bindDeviceStatus:I

    .line 2830
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startMonitoringServices(Landroid/content/Context;)V
    .locals 2

    .line 2744
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v1, "monitor_server_active"

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2747
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {p1, v0}, Lcom/verimatrix/vdc/MonitorCore;->startMonitoringService(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;)V

    .line 2750
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v1, "location_active"

    invoke-virtual {v0, v1}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2751
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {p1, v0}, Lcom/verimatrix/vdc/MonitorCore;->startLocationService(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;)V

    goto :goto_0

    .line 2754
    :cond_0
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorCore;->stopMonitoringService(Landroid/content/Context;)V

    .line 2755
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorCore;->stopLocationService(Landroid/content/Context;)V

    .line 2759
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->sendSoftwareVersion(Landroid/content/Context;)V

    .line 2762
    invoke-static {}, Lcom/verimatrix/vdc/RequestQueue;->getInstance()Lcom/verimatrix/vdc/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/RequestQueue;->proceed(Landroid/content/Context;)V

    return-void
.end method

.method public statisticsBitrate(II)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2329
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "indicated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "observed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2332
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2334
    invoke-virtual {v0, p1, p2}, Lcom/verimatrix/vdc/Stream;->statisticsBitrate(II)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2336
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method

.method public statisticsFrameErrors(I)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2348
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorAgent;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorAgent;->configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorLog;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numberOfFrames:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/verimatrix/vdc/MonitorLog;->methodCall(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2350
    invoke-direct {p0, v0}, Lcom/verimatrix/vdc/MonitorAgent;->getStream(I)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2352
    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/Stream;->statisticsFrameErrors(I)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1

    .line 2354
    :cond_0
    sget-object p1, Lcom/verimatrix/vdc/Monitor$Status;->ERROR:Lcom/verimatrix/vdc/Monitor$Status;

    return-object p1
.end method
