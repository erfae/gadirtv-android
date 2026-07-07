.class public Lcom/verimatrix/vdc/HeadsetUtils;
.super Ljava/lang/Object;
.source "HeadsetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HeadsetUtils"

.field private static executor:Ljava/util/concurrent/ExecutorService;

.field private static headsetBluetoothOn:Z

.field private static instance:Lcom/verimatrix/vdc/HeadsetUtils;


# instance fields
.field private headsetBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private headsetOn:Z

.field private headsetReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/verimatrix/vdc/HeadsetUtils;->headsetOn:Z

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Z
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/verimatrix/vdc/HeadsetUtils;->isHeadsetOn(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/verimatrix/vdc/HeadsetUtils;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/verimatrix/vdc/HeadsetUtils;->headsetOn:Z

    return p0
.end method

.method static synthetic access$102(Lcom/verimatrix/vdc/HeadsetUtils;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/verimatrix/vdc/HeadsetUtils;->headsetOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/verimatrix/vdc/HeadsetUtils;Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/HeadsetUtils;->unregisterListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 17
    sget-boolean v0, Lcom/verimatrix/vdc/HeadsetUtils;->headsetBluetoothOn:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 17
    sput-boolean p0, Lcom/verimatrix/vdc/HeadsetUtils;->headsetBluetoothOn:Z

    return p0
.end method

.method static synthetic access$400(Lcom/verimatrix/vdc/HeadsetUtils;Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/HeadsetUtils;->unregisterBluetoothListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(ZLcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;)V
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lcom/verimatrix/vdc/HeadsetUtils;->reportHeadsetConnectStatus(ZLcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;)V

    return-void
.end method

.method public static getInstance()Lcom/verimatrix/vdc/HeadsetUtils;
    .locals 1

    .line 29
    sget-object v0, Lcom/verimatrix/vdc/HeadsetUtils;->instance:Lcom/verimatrix/vdc/HeadsetUtils;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/verimatrix/vdc/HeadsetUtils;

    invoke-direct {v0}, Lcom/verimatrix/vdc/HeadsetUtils;-><init>()V

    sput-object v0, Lcom/verimatrix/vdc/HeadsetUtils;->instance:Lcom/verimatrix/vdc/HeadsetUtils;

    .line 32
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/HeadsetUtils;->instance:Lcom/verimatrix/vdc/HeadsetUtils;

    return-object v0
.end method

.method public static isHeadsetBluetoothOn(Landroid/content/Context;Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;)V
    .locals 4

    const/4 v0, 0x0

    .line 112
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 114
    new-instance v2, Lcom/verimatrix/vdc/HeadsetUtils$3;

    invoke-direct {v2, p1, v1}, Lcom/verimatrix/vdc/HeadsetUtils$3;-><init>(Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;Landroid/bluetooth/BluetoothAdapter;)V

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {v0, p1}, Lcom/verimatrix/vdc/HeadsetUtils;->reportHeadsetConnectStatus(ZLcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 147
    sget-object v1, Lcom/verimatrix/vdc/HeadsetUtils;->TAG:Ljava/lang/String;

    const-string v2, "Please add permission \'android.permission.BLUETOOTH\'"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_1

    .line 149
    invoke-interface {p1, v0}, Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;->onStatusChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isHeadsetOn(Landroid/content/Context;)Z
    .locals 2

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    .line 103
    invoke-static {p0}, Lcom/verimatrix/vdc/HeadsetUtils;->isHeadsetOn(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private static isHeadsetOn(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, "state"

    .line 107
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static reportHeadsetConnectStatus(ZLcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;)V
    .locals 0

    .line 155
    sput-boolean p0, Lcom/verimatrix/vdc/HeadsetUtils;->headsetBluetoothOn:Z

    if-eqz p1, :cond_0

    .line 157
    invoke-interface {p1, p0}, Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;->onStatusChanged(Z)V

    :cond_0
    return-void
.end method

.method private unregisterBluetoothListener(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/verimatrix/vdc/HeadsetUtils;->headsetBluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    sget-object p1, Lcom/verimatrix/vdc/HeadsetUtils;->TAG:Ljava/lang/String;

    const-string v0, "Unregister error. Headset Bluetooth Receiver not registered"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 185
    sput-boolean p1, Lcom/verimatrix/vdc/HeadsetUtils;->headsetBluetoothOn:Z

    return-void
.end method

.method private unregisterListener(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/verimatrix/vdc/HeadsetUtils;->headsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 169
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    sget-object p1, Lcom/verimatrix/vdc/HeadsetUtils;->TAG:Ljava/lang/String;

    const-string v0, "Unregister error. Headset Receiver not registered"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lcom/verimatrix/vdc/HeadsetUtils;->headsetOn:Z

    return-void
.end method


# virtual methods
.method public getHeadsetBluetoothStatusChanges(Landroid/content/Context;Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;Z)V
    .locals 1

    .line 65
    new-instance v0, Lcom/verimatrix/vdc/HeadsetUtils$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/verimatrix/vdc/HeadsetUtils$2;-><init>(Lcom/verimatrix/vdc/HeadsetUtils;Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;Z)V

    iput-object v0, p0, Lcom/verimatrix/vdc/HeadsetUtils;->headsetBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public getHeadsetStatusChanges(Landroid/content/Context;Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;Z)V
    .locals 1

    .line 42
    invoke-static {p1}, Lcom/verimatrix/vdc/HeadsetUtils;->isHeadsetOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/verimatrix/vdc/HeadsetUtils;->headsetOn:Z

    .line 43
    new-instance v0, Lcom/verimatrix/vdc/HeadsetUtils$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/verimatrix/vdc/HeadsetUtils$1;-><init>(Lcom/verimatrix/vdc/HeadsetUtils;Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;Z)V

    iput-object v0, p0, Lcom/verimatrix/vdc/HeadsetUtils;->headsetReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object p3, p0, Lcom/verimatrix/vdc/HeadsetUtils;->headsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterListeners(Landroid/content/Context;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/HeadsetUtils;->unregisterListener(Landroid/content/Context;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/verimatrix/vdc/HeadsetUtils;->unregisterBluetoothListener(Landroid/content/Context;)V

    return-void
.end method
