.class final Lcom/verimatrix/vdc/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/Configuration$IpUpdateTask;,
        Lcom/verimatrix/vdc/Configuration$DefaultValues;,
        Lcom/verimatrix/vdc/Configuration$ConfigFields;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Configuration"


# instance fields
.field private appId:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private encodeSubscriberId:Ljava/lang/Boolean;

.field private encodeUserId:Ljava/lang/Boolean;

.field private loginProtocol:Ljava/lang/String;

.field private meId:Ljava/lang/String;

.field private final settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subscriberId:Ljava/lang/String;

.field private subscriberIdEncoded:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userIdEncoded:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-virtual {p0}, Lcom/verimatrix/vdc/Configuration;->resetIdentifiers()V

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    .line 397
    invoke-virtual {p0}, Lcom/verimatrix/vdc/Configuration;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/verimatrix/vdc/Configuration;)V
    .locals 1

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    .line 402
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->setConfiguration(Lcom/verimatrix/vdc/Configuration;)V

    return-void
.end method

.method private setIdentifiers(Lcom/verimatrix/vdc/Configuration;)V
    .locals 1

    .line 752
    iget-object v0, p1, Lcom/verimatrix/vdc/Configuration;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->userId:Ljava/lang/String;

    .line 753
    iget-object v0, p1, Lcom/verimatrix/vdc/Configuration;->userIdEncoded:Ljava/lang/String;

    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->userIdEncoded:Ljava/lang/String;

    .line 754
    iget-object v0, p1, Lcom/verimatrix/vdc/Configuration;->encodeUserId:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->encodeUserId:Ljava/lang/Boolean;

    .line 755
    iget-object v0, p1, Lcom/verimatrix/vdc/Configuration;->subscriberId:Ljava/lang/String;

    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->subscriberId:Ljava/lang/String;

    .line 756
    iget-object v0, p1, Lcom/verimatrix/vdc/Configuration;->subscriberIdEncoded:Ljava/lang/String;

    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->subscriberIdEncoded:Ljava/lang/String;

    .line 757
    iget-object v0, p1, Lcom/verimatrix/vdc/Configuration;->encodeSubscriberId:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->encodeSubscriberId:Ljava/lang/Boolean;

    .line 758
    iget-object v0, p1, Lcom/verimatrix/vdc/Configuration;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->appId:Ljava/lang/String;

    .line 759
    iget-object v0, p1, Lcom/verimatrix/vdc/Configuration;->meId:Ljava/lang/String;

    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->meId:Ljava/lang/String;

    .line 760
    iget-object v0, p1, Lcom/verimatrix/vdc/Configuration;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->appVersion:Ljava/lang/String;

    .line 761
    iget-object p1, p1, Lcom/verimatrix/vdc/Configuration;->loginProtocol:Ljava/lang/String;

    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration;->loginProtocol:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method convertToIp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 734
    new-instance v6, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;-><init>(Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v6, p1, p2}, Lcom/verimatrix/vdc/Configuration$IpUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    monitor-enter v0

    .line 604
    :try_start_0
    iget-object v1, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 608
    :cond_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 609
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodeSubscriberId()Ljava/lang/Boolean;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->encodeSubscriberId:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEncodeUserId()Ljava/lang/Boolean;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->encodeUserId:Ljava/lang/Boolean;

    return-object v0
.end method

.method getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .line 615
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 617
    sget-object v1, Lcom/verimatrix/vdc/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 619
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getLoginProtocol()Ljava/lang/String;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->loginProtocol:Ljava/lang/String;

    return-object v0
.end method

.method getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .line 625
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 627
    sget-object v1, Lcom/verimatrix/vdc/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    .line 629
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getMeId()Ljava/lang/String;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->meId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->encodeSubscriberId:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->subscriberIdEncoded:Ljava/lang/String;

    return-object v0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->subscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberIdEncoded()Ljava/lang/String;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->subscriberIdEncoded:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->encodeUserId:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->userIdEncoded:Ljava/lang/String;

    return-object v0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIdEncoded()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->userIdEncoded:Ljava/lang/String;

    return-object v0
.end method

.method public hasLoginProtocol()Z
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->loginProtocol:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method init()V
    .locals 10

    .line 765
    sget-object v0, Lcom/verimatrix/vdc/Configuration;->TAG:Ljava/lang/String;

    const-string v1, "init called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    monitor-enter v0

    .line 767
    :try_start_0
    iget-object v1, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-string v1, "configuration_version"

    const-string v2, "0"

    .line 769
    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settings_configuration_version"

    const-string v2, "0"

    .line 770
    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "register"

    const-string v2, "999999999960000"

    .line 773
    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delay_communication"

    const-wide/32 v2, 0xea60

    .line 774
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "delay_slow_start"

    const-wide/16 v4, 0x2710

    .line 775
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "holdoff"

    const-wide/16 v4, 0x1388

    .line 776
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "holdoff_limit"

    const-wide/32 v6, 0x927c0

    .line 777
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0, v1, v8}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "attempts_max_login"

    const/4 v8, 0x5

    .line 778
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v1, v9}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "attempts_max_login"

    .line 779
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v1, v8}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "delay_error_entry"

    .line 780
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p0, v1, v8}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "delay_error_exit"

    .line 781
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "delay_playback_settle"

    const-wide/16 v4, 0x7d0

    .line 782
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "delay_error_continue"

    .line 783
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "stall_sampling_period"

    const-wide/16 v2, 0x1f4

    .line 784
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "offsetdrift"

    const-wide/16 v2, 0x3e8

    .line 785
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "mds_server"

    const-string v2, ""

    .line 788
    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "monitor_server"

    const-string v2, "vrt-home.myverspective.com"

    .line 789
    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "monitor_server"

    const-string v2, "monitor_server_ip"

    const-string v3, "vrt-home.myverspective.com"

    .line 790
    invoke-virtual {p0, v1, v2, v3}, Lcom/verimatrix/vdc/Configuration;->convertToIp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "monitor_server_active"

    const/4 v2, 0x1

    .line 791
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "metadata_server"

    const-string v3, ""

    .line 792
    invoke-virtual {p0, v1, v3}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "metadata_active"

    .line 793
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "debug_server"

    const-string v3, ""

    .line 794
    invoke-virtual {p0, v1, v3}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "debug_active"

    .line 795
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "set_get_server"

    const-string v3, ""

    .line 796
    invoke-virtual {p0, v1, v3}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "set_get_active"

    .line 797
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "heartbeat_interval"

    .line 798
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "heartbeat_active"

    .line 799
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "heartbeat_severity"

    const v3, 0x7fffffff

    .line 800
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "location_interval"

    const-wide/16 v4, 0x0

    .line 801
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "location_active"

    .line 802
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "location_severity"

    .line 803
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "ip_address_active"

    const/4 v6, 0x0

    .line 804
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "ip_address_severity"

    .line 805
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mac_address_active"

    .line 806
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "mac_address_severity"

    .line 807
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cpu_active"

    .line 808
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "cpu_severity"

    .line 809
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "memory_active"

    .line 810
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "memory_severity"

    .line 811
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "network_active"

    .line 812
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "network_severity"

    .line 813
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "session_active"

    .line 814
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "session_severity"

    .line 815
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "data_active"

    .line 816
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "data_severity"

    .line 817
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "app_active"

    .line 818
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "app_severity"

    .line 819
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "qos_active"

    .line 820
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "qos_severity"

    .line 821
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "none_active"

    .line 822
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "none_severity"

    .line 823
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "direct_active"

    .line 824
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "direct_severity"

    .line 825
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "direct_event_code_list"

    const-string v2, ""

    .line 826
    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "encrypt_key"

    const-string v2, "0000000000000000"

    .line 829
    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "encrypt_iv"

    const-string v2, "0000000000000000"

    .line 830
    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_id"

    .line 833
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "key_value"

    const-string v2, "0000000000000000"

    .line 834
    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "limit_id"

    const-string v2, "cache"

    .line 835
    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "limit_value"

    const-wide/16 v2, 0x200

    .line 836
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "assets_user_id"

    const/4 v2, 0x0

    .line 839
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method is(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 635
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 637
    sget-object v1, Lcom/verimatrix/vdc/Configuration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 639
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method parseConfig(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 15

    move-object v1, p0

    .line 844
    sget-object v2, Lcom/verimatrix/vdc/Configuration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse called with string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v2, v1, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    monitor-enter v2

    if-eqz p2, :cond_0

    .line 849
    :try_start_0
    invoke-virtual {p0}, Lcom/verimatrix/vdc/Configuration;->init()V

    .line 853
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    iget-object v5, v1, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x1

    .line 856
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/verimatrix/vdc/XmlParser;->createParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 859
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, v8

    :goto_0
    if-eq v7, v6, :cond_5c

    .line 861
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-wide/32 v11, 0x927c0

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eq v7, v14, :cond_10

    if-eq v7, v13, :cond_2

    const/4 v10, 0x4

    if-eq v7, v10, :cond_1

    goto/16 :goto_2c

    .line 1134
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2c

    .line 1138
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5b

    const-string v7, "register"

    .line 1139
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "register"

    .line 1140
    invoke-virtual {p0, v3, v7, v9}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c

    :cond_3
    const-string v7, "slowstart"

    .line 1141
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "delay_slow_start"

    const-wide/16 v10, 0x2710

    .line 1142
    invoke-static {v9, v10, v11}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p0, v3, v7, v10}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2c

    :cond_4
    const-string v7, "comms"

    .line 1143
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-wide/32 v13, 0xea60

    if-eqz v7, :cond_5

    const-string v7, "delay_communication"

    .line 1144
    invoke-static {v9, v13, v14}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p0, v3, v7, v10}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2c

    :cond_5
    const-string v7, "holdoff"

    .line 1145
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v5, 0x1388

    if-eqz v7, :cond_6

    const-string v7, "holdoff"

    .line 1146
    invoke-static {v9, v5, v6}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v3, v7, v5}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    :cond_6
    const-string v7, "holdoff_limit"

    .line 1155
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v5, "holdoff_limit"

    .line 1156
    invoke-static {v9, v11, v12}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v3, v5, v6}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    :cond_7
    const-string v7, "errorentry"

    .line 1157
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "delay_error_entry"

    .line 1158
    invoke-static {v9, v5, v6}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v3, v7, v5}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    :cond_8
    const-string v7, "errorexit"

    .line 1159
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "delay_error_exit"

    .line 1160
    invoke-static {v9, v5, v6}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v3, v7, v5}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    :cond_9
    const-string v5, "playbacksettle"

    .line 1161
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "delay_playback_settle"

    const-wide/16 v6, 0x7d0

    .line 1162
    invoke-static {v9, v6, v7}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v3, v5, v6}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    :cond_a
    const-string v5, "errorcontinue"

    .line 1163
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "delay_error_continue"

    .line 1164
    invoke-static {v9, v13, v14}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v3, v5, v6}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    :cond_b
    const-string v5, "key"

    .line 1165
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "key_value"

    .line 1166
    invoke-virtual {p0, v3, v5, v9}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    const-string v5, "limit"

    .line 1167
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "limit_value"

    const-wide/16 v6, 0x200

    .line 1168
    invoke-static {v9, v6, v7}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v3, v5, v6}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    :cond_d
    const-string v5, "direct"

    .line 1169
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "direct_event_code_list"

    .line 1170
    invoke-virtual {p0, v3, v5, v9}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    const-string v5, "stall_sampling_period"

    .line 1171
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "stall_sampling_period"

    const-wide/16 v6, 0x1f4

    .line 1172
    invoke-static {v9, v6, v7}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v3, v5, v6}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    :cond_f
    const-string v5, "offsetdrift"

    .line 1173
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "offsetdrift"

    const-wide/16 v6, 0x3e8

    .line 1174
    invoke-static {v9, v6, v7}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v3, v5, v6}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    :cond_10
    const-string v5, "configuration"

    .line 865
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x0

    .line 866
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 867
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "version"

    .line 868
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "configuration_version"

    .line 869
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    const-string v6, "settings"

    .line 870
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "settings_configuration_version"

    .line 871
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_13
    :goto_3
    const/4 v6, 0x1

    goto/16 :goto_2c

    :cond_14
    const-string v5, "monitor"

    .line 875
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object v6, v8

    move-object v7, v6

    const/4 v5, 0x0

    .line 878
    :goto_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-ge v5, v10, :cond_18

    .line 879
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_17

    const-string v10, "active"

    .line 880
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    const-string v10, "monitor_server_active"

    const-string v11, "yes"

    .line 881
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v3, v10, v11}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_5

    :cond_15
    const-string v10, "url"

    .line 882
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 883
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_16
    const-string v10, "server"

    .line 884
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 885
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    :cond_17
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 891
    :cond_18
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    goto :goto_6

    .line 893
    :cond_19
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    move-object v6, v7

    goto :goto_6

    :cond_1a
    move-object/from16 v6, p3

    :goto_6
    const-string v5, "monitor_server"

    .line 901
    invoke-virtual {p0, v3, v5, v6}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "monitor_server_ip"

    .line 905
    invoke-static {v6}, Lcom/verimatrix/vdc/NetworkUtils;->getIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v5, v6}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1b
    const-string v5, "heartbeat"

    .line 907
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x0

    .line 908
    :goto_7
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 909
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "active"

    .line 910
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    const-string v6, "heartbeat_active"

    const-string v7, "yes"

    .line 911
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_8

    :cond_1c
    const-string v6, "interval"

    .line 912
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string v6, "heartbeat_interval"

    .line 913
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11, v12}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_8

    :cond_1d
    const-string v6, "severity"

    .line 914
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const-string v6, "heartbeat_severity"

    .line 916
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v7

    .line 915
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1e
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_1f
    const-string v5, "location"

    .line 920
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_24

    const/4 v5, 0x0

    .line 921
    :goto_9
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-ge v5, v10, :cond_13

    .line 922
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_23

    const-string v10, "active"

    .line 923
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    const-string v10, "location_active"

    const-string v11, "yes"

    .line 924
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0, v3, v10, v11}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_a

    :cond_20
    const-string v10, "interval"

    .line 925
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_22

    const-string v10, "once"

    .line 926
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    const-string v10, "location_interval"

    .line 927
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v3, v10, v11}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a

    :cond_21
    const-string v10, "location_interval"

    .line 929
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6, v7}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v3, v10, v11}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a

    :cond_22
    const-string v10, "severity"

    .line 931
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_23

    const-string v10, "location_severity"

    .line 932
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/verimatrix/vdc/Monitor$Severity;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;

    move-result-object v11

    invoke-virtual {v11}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p0, v3, v10, v11}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_23
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    :cond_24
    const-string v5, "ipaddress"

    .line 936
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v5, 0x0

    .line 937
    :goto_b
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 938
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_26

    const-string v6, "active"

    .line 939
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    const-string v6, "ip_address_active"

    const-string v7, "yes"

    .line 941
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 940
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_c

    :cond_25
    const-string v6, "severity"

    .line 942
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    const-string v6, "ip_address_severity"

    .line 943
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_26
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_27
    const-string v5, "mac"

    .line 947
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v5, 0x0

    .line 948
    :goto_d
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 949
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_29

    const-string v6, "active"

    .line 950
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "mac_address_active"

    const-string v7, "yes"

    .line 951
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_e

    :cond_28
    const-string v6, "severity"

    .line 952
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    const-string v6, "mac_address_severity"

    .line 953
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_29
    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_2a
    const-string v5, "cpu"

    .line 957
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const/4 v5, 0x0

    .line 958
    :goto_f
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    const-string v6, "active"

    .line 959
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const-string v6, "cpu_active"

    const-string v7, "yes"

    .line 960
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_10

    :cond_2b
    const-string v6, "severity"

    .line 961
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const-string v6, "cpu_severity"

    .line 962
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2c
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_2d
    const-string v5, "memory"

    .line 965
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x0

    .line 966
    :goto_11
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    const-string v6, "active"

    .line 967
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const-string v6, "memory_active"

    const-string v7, "yes"

    .line 968
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_12

    :cond_2e
    const-string v6, "severity"

    .line 969
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    const-string v6, "memory_severity"

    .line 970
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2f
    :goto_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_30
    const-string v5, "network"

    .line 973
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    const/4 v5, 0x0

    .line 974
    :goto_13
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 975
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_32

    const-string v6, "active"

    .line 976
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    const-string v6, "network_active"

    const-string v7, "yes"

    .line 977
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_14

    :cond_31
    const-string v6, "severity"

    .line 978
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    const-string v6, "network_severity"

    .line 979
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_32
    :goto_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_33
    const-string v5, "session"

    .line 983
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    const/4 v5, 0x0

    .line 984
    :goto_15
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 985
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_35

    const-string v6, "active"

    .line 986
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    const-string v6, "session_active"

    const-string v7, "yes"

    .line 987
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_16

    :cond_34
    const-string v6, "severity"

    .line 988
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    const-string v6, "session_severity"

    .line 989
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_35
    :goto_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_36
    const-string v5, "data"

    .line 993
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    const/4 v5, 0x0

    .line 994
    :goto_17
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 995
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_38

    const-string v6, "active"

    .line 996
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    const-string v6, "data_active"

    const-string v7, "yes"

    .line 997
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_18

    :cond_37
    const-string v6, "severity"

    .line 998
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    const-string v6, "data_severity"

    .line 999
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_38
    :goto_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_39
    const-string v5, "app"

    .line 1003
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v5, 0x0

    .line 1004
    :goto_19
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 1005
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3b

    const-string v6, "active"

    .line 1006
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    const-string v6, "app_active"

    const-string v7, "yes"

    .line 1007
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1a

    :cond_3a
    const-string v6, "severity"

    .line 1008
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    const-string v6, "app_severity"

    .line 1009
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3b
    :goto_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_3c
    const-string v5, "qos"

    .line 1013
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v5, 0x0

    .line 1014
    :goto_1b
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 1015
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3e

    const-string v6, "active"

    .line 1016
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    const-string v6, "qos_active"

    const-string v7, "yes"

    .line 1017
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1c

    :cond_3d
    const-string v6, "severity"

    .line 1018
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    const-string v6, "qos_severity"

    .line 1019
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3e
    :goto_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_3f
    const-string v5, "none"

    .line 1023
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    const/4 v5, 0x0

    .line 1024
    :goto_1d
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 1025
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_41

    const-string v6, "active"

    .line 1026
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    const-string v6, "none_active"

    const-string v7, "yes"

    .line 1027
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1e

    :cond_40
    const-string v6, "severity"

    .line 1028
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    const-string v6, "none_severity"

    .line 1029
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_41
    :goto_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_42
    const-string v5, "direct"

    .line 1033
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v5, 0x0

    .line 1034
    :goto_1f
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 1035
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_44

    const-string v6, "active"

    .line 1036
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_43

    const-string v6, "direct_active"

    const-string v7, "yes"

    .line 1037
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_20

    :cond_43
    const-string v6, "severity"

    .line 1038
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    const-string v6, "direct_severity"

    .line 1039
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->valueOf(Ljava/lang/String;)Lcom/verimatrix/vdc/Monitor$Severity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/verimatrix/vdc/Monitor$Severity;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_44
    :goto_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_45
    const-string v5, "metadata"

    .line 1043
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    const/4 v5, 0x0

    .line 1044
    :goto_21
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 1045
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_47

    const-string v6, "active"

    .line 1046
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    const-string v6, "metadata_active"

    const-string v7, "yes"

    .line 1047
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_22

    :cond_46
    const-string v6, "url"

    .line 1048
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    const-string v6, "metadata_server"

    .line 1049
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    :goto_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_48
    const-string v5, "debug"

    .line 1053
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    const/4 v5, 0x0

    .line 1054
    :goto_23
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 1055
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4a

    const-string v6, "active"

    .line 1056
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_49

    const-string v6, "debug_active"

    const-string v7, "yes"

    .line 1057
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_24

    :cond_49
    const-string v6, "url"

    .line 1058
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    const-string v6, "debug_server"

    .line 1059
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    :goto_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_4b
    const-string v5, "set-get"

    .line 1063
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const/4 v5, 0x0

    .line 1064
    :goto_25
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 1065
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4d

    const-string v6, "active"

    .line 1066
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const-string v6, "set_get_active"

    const-string v7, "yes"

    .line 1067
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_26

    :cond_4c
    const-string v6, "url"

    .line 1068
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    const-string v6, "set_get_server"

    .line 1069
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    :goto_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_4e
    const-string v5, "key"

    .line 1073
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    const/4 v5, 0x0

    .line 1074
    :goto_27
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-ge v5, v10, :cond_13

    .line 1075
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4f

    const-string v10, "id"

    .line 1076
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4f

    const-string v10, "key_id"

    .line 1077
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6, v7}, Lcom/verimatrix/vdc/XmlParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p0, v3, v10, v11}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_50
    const-string v5, "limit"

    .line 1081
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    const/4 v5, 0x0

    .line 1082
    :goto_28
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 1083
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_51

    const-string v6, "id"

    .line 1084
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    const-string v6, "limit_id"

    .line 1085
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v6, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_52
    const-string v5, "encryption"

    .line 1089
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1090
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    :goto_29
    if-eq v5, v6, :cond_5b

    .line 1093
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eq v5, v14, :cond_54

    if-eq v5, v13, :cond_53

    goto :goto_2a

    :cond_53
    const-string v5, "encryption"

    .line 1109
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    goto/16 :goto_2c

    :cond_54
    const-string v5, "key"

    .line 1096
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1097
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1098
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    const-string v5, "encrypt_key"

    .line 1099
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v5, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    :cond_55
    const-string v5, "iv"

    .line 1101
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1102
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1103
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56

    const-string v5, "encrypt_iv"

    .line 1104
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v5, v7}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_56
    :goto_2a
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_29

    :cond_57
    const/4 v6, 0x1

    const-string v5, "asset-identification"

    .line 1116
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 1118
    :cond_58
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 1119
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eq v5, v14, :cond_59

    goto :goto_2b

    :cond_59
    const-string v10, "user_id"

    .line 1122
    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5a

    .line 1123
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1124
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5a

    const-string v10, "assets_user_id"

    .line 1125
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v3, v10, v11}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_2b
    if-eq v5, v13, :cond_5b

    const-string v5, "asset-identification"

    .line 1130
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 1182
    :cond_5b
    :goto_2c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto/16 :goto_0

    .line 1186
    :cond_5c
    iget-object v4, v1, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1187
    :try_start_2
    iget-object v5, v1, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 1188
    iget-object v5, v1, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1189
    monitor-exit v4

    const/4 v5, 0x1

    goto :goto_2d

    :catchall_0
    move-exception v0

    move-object v3, v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1193
    :try_start_4
    sget-object v4, Lcom/verimatrix/vdc/Configuration;->TAG:Ljava/lang/String;

    const-string v5, "parseConfig: Error while parsing XML"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    .line 1195
    :goto_2d
    monitor-exit v2

    return v5

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 1196
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method resetIdentifiers()V
    .locals 2

    .line 738
    sget-object v0, Lcom/verimatrix/vdc/Configuration;->TAG:Ljava/lang/String;

    const-string v1, "resetIdentifiers called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 739
    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->userId:Ljava/lang/String;

    .line 740
    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->userIdEncoded:Ljava/lang/String;

    const/4 v1, 0x0

    .line 741
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/verimatrix/vdc/Configuration;->encodeUserId:Ljava/lang/Boolean;

    .line 742
    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->subscriberId:Ljava/lang/String;

    .line 743
    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->subscriberIdEncoded:Ljava/lang/String;

    .line 744
    iput-object v1, p0, Lcom/verimatrix/vdc/Configuration;->encodeSubscriberId:Ljava/lang/Boolean;

    .line 745
    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->appId:Ljava/lang/String;

    const-string v0, "0"

    .line 746
    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->meId:Ljava/lang/String;

    .line 747
    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->appVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 748
    iput-object v0, p0, Lcom/verimatrix/vdc/Configuration;->loginProtocol:Ljava/lang/String;

    return-void
.end method

.method set(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 726
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 728
    :cond_0
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->setNull(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method set(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 710
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_0
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->setNull(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method set(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 718
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/Configuration;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {p0, p1}, Lcom/verimatrix/vdc/Configuration;->setNull(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    monitor-enter v0

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration;->appVersion:Ljava/lang/String;

    return-void
.end method

.method setConfiguration(Lcom/verimatrix/vdc/Configuration;)V
    .locals 2

    .line 406
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/Configuration;->setIdentifiers(Lcom/verimatrix/vdc/Configuration;)V

    .line 407
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 409
    iget-object v1, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    iget-object p1, p1, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 410
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setEncodeSubscriberId(Ljava/lang/Boolean;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration;->encodeSubscriberId:Ljava/lang/Boolean;

    return-void
.end method

.method public setEncodeUserId(Ljava/lang/Boolean;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration;->encodeUserId:Ljava/lang/Boolean;

    return-void
.end method

.method public setLoginProtocol(Ljava/lang/String;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration;->loginProtocol:Ljava/lang/String;

    return-void
.end method

.method public setMeId(Ljava/lang/String;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration;->meId:Ljava/lang/String;

    return-void
.end method

.method setNull(Ljava/lang/String;)V
    .locals 3

    .line 703
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    monitor-enter v0

    .line 704
    :try_start_0
    iget-object v1, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSubscriberId(Ljava/lang/String;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->encodeSubscriberId:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration;->subscriberId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 491
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration;->subscriberId:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setSubscriberIdEncoded(Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration;->subscriberIdEncoded:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->encodeUserId:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration;->userId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 435
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration;->userId:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setUserIdEncoded(Ljava/lang/String;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration;->userIdEncoded:Ljava/lang/String;

    return-void
.end method

.method update(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 684
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method update(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 660
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method update(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 672
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 645
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    monitor-enter v0

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/verimatrix/vdc/Configuration;->settings:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 690
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 666
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 678
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/verimatrix/vdc/Configuration;->update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method update(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 653
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
