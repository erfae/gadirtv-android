.class public Lcom/visualon/OSMPUtils/voBluetoothService;
.super Landroid/app/Service;
.source "voBluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voBluetoothService$LocalBinder;,
        Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voBluetoothService.java"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedHeadset:Landroid/bluetooth/BluetoothDevice;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    new-instance v0, Lcom/visualon/OSMPUtils/voBluetoothService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPUtils/voBluetoothService$LocalBinder;-><init>(Lcom/visualon/OSMPUtils/voBluetoothService;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;

    .line 61
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 63
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 65
    new-instance v0, Lcom/visualon/OSMPUtils/voBluetoothService$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPUtils/voBluetoothService$1;-><init>(Lcom/visualon/OSMPUtils/voBluetoothService;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 89
    new-instance v0, Lcom/visualon/OSMPUtils/voBluetoothService$2;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPUtils/voBluetoothService$2;-><init>(Lcom/visualon/OSMPUtils/voBluetoothService;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPUtils/voBluetoothService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$002(Lcom/visualon/OSMPUtils/voBluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$102(Lcom/visualon/OSMPUtils/voBluetoothService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mConnectedHeadset:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/visualon/OSMPUtils/voBluetoothService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPUtils/voBluetoothService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 108
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@voBluetoothService.java"

    const-string v1, "onBind"

    .line 109
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 117
    :cond_2
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/visualon/OSMPUtils/voBluetoothService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 48
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 147
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5

    .line 124
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "@@@voBluetoothService.java"

    const-string v3, "onUnbind"

    .line 125
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 129
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 130
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;

    if-eqz v2, :cond_1

    const-wide/16 v3, 0x1026

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v4, v1}, Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;->SetParam(JLjava/lang/Object;)I

    .line 132
    :cond_1
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;

    .line 133
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPUtils/voBluetoothService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public setStatusChangeListener(Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;

    return-void
.end method
