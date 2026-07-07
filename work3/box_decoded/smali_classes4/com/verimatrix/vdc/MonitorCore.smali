.class final Lcom/verimatrix/vdc/MonitorCore;
.super Ljava/lang/Object;
.source "MonitorCore.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MonitorCore"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addEventToQueue(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Lcom/verimatrix/vdc/SendEvent;)V
    .locals 2

    const-string v0, "monitor_server_active"

    .line 23
    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/verimatrix/vdc/SendEvent;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not added to queue: monitor server is not active"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    return-void

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/verimatrix/vdc/DatabaseManager;->getInstance()Lcom/verimatrix/vdc/DatabaseManager;

    move-result-object v0

    const-string v1, "limit_value"

    invoke-virtual {p1, v1}, Lcom/verimatrix/vdc/Configuration;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/verimatrix/vdc/DatabaseManager;->addEvent(Lcom/verimatrix/vdc/SendEvent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    sget-object p2, Lcom/verimatrix/vdc/MonitorCore;->TAG:Ljava/lang/String;

    const-string v0, "Call MonitorAgent.init() method before use library"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :goto_0
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorAgent;->getLoginManager()Lcom/verimatrix/vdc/MonitorLogin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin;->isLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 35
    invoke-static {p0}, Lcom/verimatrix/vdc/NetworkManager;->sendCollectedData(Landroid/content/Context;)Z

    :cond_1
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 1

    .line 17
    sget-object p0, Lcom/verimatrix/vdc/MonitorCore;->TAG:Ljava/lang/String;

    const-string v0, "init() called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static startLocationService(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;)V
    .locals 5

    const-string v0, "location_interval"

    .line 62
    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Periodic location check ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    .line 66
    invoke-static {p0, v0, v1}, Lcom/verimatrix/vdc/LocationService;->start(Landroid/content/Context;J)V

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    const-string v0, "Single location check"

    .line 68
    invoke-static {p0, p1, v0}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/verimatrix/vdc/MonitorAgent;->locationUpdate(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static startMonitoringService(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;)V
    .locals 2

    const-string v0, "heartbeat_active"

    .line 41
    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Starting heartbeat"

    .line 42
    invoke-static {p0, p1, v0}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    :cond_0
    const-string v0, "cpu_active"

    .line 44
    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Starting load average check"

    .line 45
    invoke-static {p0, p1, v0}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    :cond_1
    const-string v0, "memory_active"

    .line 47
    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Starting memory usage check"

    .line 48
    invoke-static {p0, p1, v0}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    :cond_2
    const-string v0, "network_active"

    .line 50
    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Starting network stats check"

    .line 51
    invoke-static {p0, p1, v0}, Lcom/verimatrix/vdc/MonitorLog;->info(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;)V

    :cond_3
    const-string v0, "heartbeat_interval"

    .line 54
    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/verimatrix/vdc/MonitoringService;->start(Landroid/content/Context;J)V

    return-void
.end method

.method static stopLocationService(Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/verimatrix/vdc/LocationService;->cancel(Landroid/content/Context;)V

    return-void
.end method

.method static stopMonitoringService(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/verimatrix/vdc/MonitoringService;->cancel(Landroid/content/Context;)V

    return-void
.end method
