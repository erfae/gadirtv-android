.class public Lcom/verimatrix/vdc/ConnectivityChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/ConnectivityChangeReceiver$AlarmManagerStartNewApiWrapper;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE:I = 0x3816b674

.field public static final TAG:Ljava/lang/String; = "ConnectivityChangeReceiver"

.field private static firstConnect:Z = true

.field private static timerWasStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static cancel(Landroid/content/Context;)V
    .locals 3

    .line 65
    sget-object v0, Lcom/verimatrix/vdc/ConnectivityChangeReceiver;->TAG:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/verimatrix/vdc/ConnectivityChangeReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x3816b674

    const/high16 v2, 0x10000000

    .line 68
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "alarm"

    .line 73
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 74
    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private scheduleAlarm(Landroid/content/Context;J)V
    .locals 4

    const-string v0, "alarm"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/verimatrix/vdc/ConnectivityChangeReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x3816b674

    const/high16 v3, 0x10000000

    .line 54
    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 58
    invoke-static {v0, p2, p3, p1}, Lcom/verimatrix/vdc/ConnectivityChangeReceiver$AlarmManagerStartNewApiWrapper;->start(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 25
    sget-object p2, Lcom/verimatrix/vdc/ConnectivityChangeReceiver;->TAG:Ljava/lang/String;

    const-string v0, "CONNECTIVITY_CHANGE"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p1}, Lcom/verimatrix/vdc/MonitorUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 27
    sget-boolean v0, Lcom/verimatrix/vdc/ConnectivityChangeReceiver;->firstConnect:Z

    if-eqz v0, :cond_3

    .line 28
    sget-boolean v0, Lcom/verimatrix/vdc/ConnectivityChangeReceiver;->timerWasStarted:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTIVITY_CHANGE start send cached events"

    .line 29
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/verimatrix/vdc/MonitorAgent;->getLoginManager()Lcom/verimatrix/vdc/MonitorLogin;

    move-result-object p2

    invoke-virtual {p2}, Lcom/verimatrix/vdc/MonitorLogin;->isLoggedIn()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 32
    invoke-static {p1}, Lcom/verimatrix/vdc/NetworkManager;->sendCollectedData(Landroid/content/Context;)Z

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/verimatrix/vdc/ConnectivityChangeReceiver;->cancel(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    sput-boolean p1, Lcom/verimatrix/vdc/ConnectivityChangeReceiver;->firstConnect:Z

    .line 39
    sput-boolean p1, Lcom/verimatrix/vdc/ConnectivityChangeReceiver;->timerWasStarted:Z

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/verimatrix/vdc/MonitorAgent;->getCurrentConfig()Lcom/verimatrix/vdc/Configuration;

    move-result-object p2

    const-string v0, "delay_playback_settle"

    invoke-virtual {p2, v0}, Lcom/verimatrix/vdc/Configuration;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/verimatrix/vdc/ConnectivityChangeReceiver;->scheduleAlarm(Landroid/content/Context;J)V

    .line 42
    sput-boolean v1, Lcom/verimatrix/vdc/ConnectivityChangeReceiver;->timerWasStarted:Z

    goto :goto_0

    .line 46
    :cond_2
    sput-boolean v1, Lcom/verimatrix/vdc/ConnectivityChangeReceiver;->firstConnect:Z

    .line 47
    invoke-static {p1}, Lcom/verimatrix/vdc/ConnectivityChangeReceiver;->cancel(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method
