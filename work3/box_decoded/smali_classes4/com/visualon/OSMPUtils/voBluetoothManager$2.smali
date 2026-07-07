.class Lcom/visualon/OSMPUtils/voBluetoothManager$2;
.super Ljava/lang/Object;
.source "voBluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPUtils/voBluetoothManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPUtils/voBluetoothManager;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 9

    const/4 v0, 0x1

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "@@@voBluetoothManager.java"

    const-string v5, "onServiceConnected, %d"

    invoke-static {v3, v5, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x1026

    const/16 v2, 0xe

    const/4 v7, 0x2

    if-ne p1, v0, :cond_1

    .line 120
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$000(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$100(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iget-object v8, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {v8}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$000(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v8

    invoke-virtual {p1, v0, v8}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$002(Lcom/visualon/OSMPUtils/voBluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 124
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_3

    .line 125
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$100(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p1

    new-array p2, v0, [Ljava/lang/Object;

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    const-string v0, "getProfileConnectionState: HEADSET, %d"

    invoke-static {v3, v0, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v7, :cond_3

    .line 128
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    iget-object p1, p1, Lcom/visualon/OSMPUtils/voBluetoothManager;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;

    invoke-interface {p1, v5, v6, v1}, Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;->SetParam(JLjava/lang/Object;)I

    goto :goto_0

    :cond_1
    if-ne p1, v7, :cond_3

    .line 132
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$400(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$100(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iget-object v8, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {v8}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$400(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p1, p2}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$402(Lcom/visualon/OSMPUtils/voBluetoothManager;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 136
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_3

    .line 137
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$100(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p1

    new-array p2, v0, [Ljava/lang/Object;

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v4

    const-string v0, "getProfileConnectionState: A2DP, %d"

    invoke-static {v3, v0, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v7, :cond_3

    .line 140
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    iget-object p1, p1, Lcom/visualon/OSMPUtils/voBluetoothManager;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;

    invoke-interface {p1, v5, v6, v1}, Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;->SetParam(JLjava/lang/Object;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "@@@voBluetoothManager.java"

    const-string v4, "onServiceDisconnected, %d"

    invoke-static {v2, v4, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    iget-object p1, p1, Lcom/visualon/OSMPUtils/voBluetoothManager;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;

    const-wide/16 v0, 0x1026

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;->SetParam(JLjava/lang/Object;)I

    :cond_1
    return-void
.end method
