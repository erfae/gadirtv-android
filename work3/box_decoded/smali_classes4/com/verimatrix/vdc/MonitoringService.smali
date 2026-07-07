.class public Lcom/verimatrix/vdc/MonitoringService;
.super Landroid/content/BroadcastReceiver;
.source "MonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/MonitoringService$AlarmManagerStartNewApiWrapper;
    }
.end annotation


# static fields
.field private static final SERVICE_REQUEST_CODE:I = 0x26fd5e12

.field public static final TAG:Ljava/lang/String; = "MonitoringService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static cancel(Landroid/content/Context;)V
    .locals 3

    .line 74
    sget-object v0, Lcom/verimatrix/vdc/MonitoringService;->TAG:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/verimatrix/vdc/MonitoringService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x26fd5e12

    const/high16 v2, 0x10000000

    .line 77
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "alarm"

    .line 82
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 83
    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method static start(Landroid/content/Context;J)V
    .locals 4

    .line 50
    sget-object v0, Lcom/verimatrix/vdc/MonitoringService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduled (interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    const-string v0, "alarm"

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 54
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/verimatrix/vdc/MonitoringService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x26fd5e12

    const/high16 v3, 0x10000000

    .line 55
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 62
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 63
    invoke-static {v0, p1, p2, p0}, Lcom/verimatrix/vdc/MonitoringService$AlarmManagerStartNewApiWrapper;->start(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 68
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong update interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ". Service will be stopped"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p0}, Lcom/verimatrix/vdc/MonitoringService;->cancel(Landroid/content/Context;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 27
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/verimatrix/vdc/MonitorAgent;->getCurrentConfig()Lcom/verimatrix/vdc/Configuration;

    move-result-object p2

    const-string v0, "heartbeat_interval"

    .line 30
    invoke-virtual {p2, v0}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/verimatrix/vdc/MonitoringService;->start(Landroid/content/Context;J)V

    const-string v0, "heartbeat_active"

    .line 32
    invoke-virtual {p2, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->heartbeatUpdate(Landroid/content/Context;)V

    :cond_0
    const-string v0, "cpu_active"

    .line 35
    invoke-virtual {p2, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->cpuLoadUpdate(Landroid/content/Context;)V

    :cond_1
    const-string v0, "memory_active"

    .line 38
    invoke-virtual {p2, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/verimatrix/vdc/MonitorAgent;->memoryUsageUpdate(Landroid/content/Context;)V

    :cond_2
    const-string v0, "network_active"

    .line 41
    invoke-virtual {p2, v0}, Lcom/verimatrix/vdc/Configuration;->is(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 42
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/verimatrix/vdc/MonitorAgent;->networkStatsUpdate(Landroid/content/Context;)V

    :cond_3
    return-void
.end method
