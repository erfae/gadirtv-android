.class public Lcom/visualon/OSMPUtils/voBluetoothManager;
.super Ljava/lang/Object;
.source "voBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voBluetoothManager.java"

.field private static isPermissionGranted:Z


# instance fields
.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mIsConnected:Z

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mIsConnected:Z

    .line 35
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 36
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 37
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 38
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 40
    new-instance v0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPUtils/voBluetoothManager$1;-><init>(Lcom/visualon/OSMPUtils/voBluetoothManager;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method static synthetic access$002(Lcom/visualon/OSMPUtils/voBluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPUtils/voBluetoothManager;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mIsConnected:Z

    return p0
.end method

.method static synthetic access$400(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static synthetic access$402(Lcom/visualon/OSMPUtils/voBluetoothManager;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method public static isBluetoothConnected()Z
    .locals 6

    const-string v0, "@@@voBluetoothManager.java"

    const/4 v1, 0x0

    .line 213
    :try_start_0
    sget-boolean v2, Lcom/visualon/OSMPUtils/voBluetoothManager;->isPermissionGranted:Z

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 214
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 215
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_0

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    .line 217
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    .line 218
    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 223
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBluetoothConnected Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v5, 0x0

    .line 227
    :cond_1
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BT] Bluetooth connection state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v5
.end method


# virtual methods
.method public init()V
    .locals 9

    const-string v0, "@@@voBluetoothManager.java"

    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    .line 112
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 113
    sput-boolean v1, Lcom/visualon/OSMPUtils/voBluetoothManager;->isPermissionGranted:Z

    const/4 v2, 0x0

    .line 115
    :try_start_0
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-nez v3, :cond_2

    .line 116
    new-instance v3, Lcom/visualon/OSMPUtils/voBluetoothManager$2;

    invoke-direct {v3, p0}, Lcom/visualon/OSMPUtils/voBluetoothManager$2;-><init>(Lcom/visualon/OSMPUtils/voBluetoothManager;)V

    iput-object v3, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 153
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "GetProfileProxy"

    new-array v4, v2, [Ljava/lang/Object;

    .line 157
    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v3, v4, v5, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 159
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 161
    :cond_1
    :goto_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 163
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 167
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 169
    iget-object v7, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    .line 175
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s"

    invoke-static {v0, v2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_2
    :goto_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voBluetoothManager;->isBluetoothConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mIsConnected:Z

    :cond_3
    return-void
.end method

.method public uninit()V
    .locals 4

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_1

    .line 189
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 193
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "@@@voBluetoothManager.java"

    const-string v2, "%s"

    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateConnectionStatus()Z
    .locals 2

    .line 200
    invoke-static {}, Lcom/visualon/OSMPUtils/voBluetoothManager;->isBluetoothConnected()Z

    move-result v0

    .line 201
    iget-boolean v1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mIsConnected:Z

    if-eq v1, v0, :cond_0

    .line 202
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager;->mIsConnected:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
