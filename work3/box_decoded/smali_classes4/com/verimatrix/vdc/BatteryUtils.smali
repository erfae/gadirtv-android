.class public Lcom/verimatrix/vdc/BatteryUtils;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/BatteryUtils$OnChangeBatteryLevelListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BatteryUtils"

.field private static instance:Lcom/verimatrix/vdc/BatteryUtils;


# instance fields
.field private lastLevel:I

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/verimatrix/vdc/BatteryUtils;->lastLevel:I

    return-void
.end method

.method static synthetic access$000(Lcom/verimatrix/vdc/BatteryUtils;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/verimatrix/vdc/BatteryUtils;->lastLevel:I

    return p0
.end method

.method static synthetic access$002(Lcom/verimatrix/vdc/BatteryUtils;I)I
    .locals 0

    .line 10
    iput p1, p0, Lcom/verimatrix/vdc/BatteryUtils;->lastLevel:I

    return p1
.end method

.method public static getBatteryLevelInPercent(Landroid/content/Intent;)I
    .locals 3

    const-string v0, "level"

    const/4 v1, -0x1

    .line 57
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    .line 58
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x64

    .line 60
    div-int/2addr v0, p0

    return v0
.end method

.method public static getCurrentBatteryLevel(Landroid/content/Context;)I
    .locals 2

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    .line 53
    invoke-static {p0}, Lcom/verimatrix/vdc/BatteryUtils;->getBatteryLevelInPercent(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/verimatrix/vdc/BatteryUtils;
    .locals 1

    .line 17
    sget-object v0, Lcom/verimatrix/vdc/BatteryUtils;->instance:Lcom/verimatrix/vdc/BatteryUtils;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/verimatrix/vdc/BatteryUtils;

    invoke-direct {v0}, Lcom/verimatrix/vdc/BatteryUtils;-><init>()V

    sput-object v0, Lcom/verimatrix/vdc/BatteryUtils;->instance:Lcom/verimatrix/vdc/BatteryUtils;

    .line 20
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/BatteryUtils;->instance:Lcom/verimatrix/vdc/BatteryUtils;

    return-object v0
.end method


# virtual methods
.method public getBatteryLevelChanges(Landroid/content/Context;Lcom/verimatrix/vdc/BatteryUtils$OnChangeBatteryLevelListener;Z)V
    .locals 1

    .line 30
    invoke-static {p1}, Lcom/verimatrix/vdc/BatteryUtils;->getCurrentBatteryLevel(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/verimatrix/vdc/BatteryUtils;->lastLevel:I

    .line 31
    new-instance v0, Lcom/verimatrix/vdc/BatteryUtils$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/verimatrix/vdc/BatteryUtils$1;-><init>(Lcom/verimatrix/vdc/BatteryUtils;Lcom/verimatrix/vdc/BatteryUtils$OnChangeBatteryLevelListener;Z)V

    iput-object v0, p0, Lcom/verimatrix/vdc/BatteryUtils;->receiver:Landroid/content/BroadcastReceiver;

    .line 46
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object p3, p0, Lcom/verimatrix/vdc/BatteryUtils;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterListener(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/verimatrix/vdc/BatteryUtils;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    sget-object p1, Lcom/verimatrix/vdc/BatteryUtils;->TAG:Ljava/lang/String;

    const-string v0, "Unregister error. Battery Receiver not registered"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lcom/verimatrix/vdc/BatteryUtils;->lastLevel:I

    return-void
.end method
