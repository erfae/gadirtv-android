.class Lcom/visualon/OSMPUtils/voBluetoothManager$1;
.super Landroid/content/BroadcastReceiver;
.source "voBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voBluetoothManager;
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

    .line 40
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x1026

    const/4 v4, 0x1

    const-string v5, "@@@voBluetoothManager.java"

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    .line 46
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothAdapter.ACTION_STATE_CHANGED, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$000(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$100(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    new-array p2, v6, [Ljava/lang/Object;

    const-string v0, "GetProfileProxy"

    .line 51
    invoke-static {v5, v0, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$100(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$200(Lcom/visualon/OSMPUtils/voBluetoothManager;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    invoke-virtual {p2, p1, v0, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto/16 :goto_0

    :cond_0
    const/16 p1, 0xa

    if-eq p2, p1, :cond_1

    const/16 p1, 0xd

    if-ne p2, p1, :cond_5

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    iget-object p1, p1, Lcom/visualon/OSMPUtils/voBluetoothManager;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v2, v3, p2}, Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;->SetParam(JLjava/lang/Object;)I

    goto/16 :goto_0

    :cond_2
    const-string p1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v6, [Ljava/lang/Object;

    const-string p2, "Receive BluetoothAdapter.ACTION_CONNECTION_STATE_CHANGED"

    .line 65
    invoke-static {v5, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voBluetoothManager;->updateConnectionStatus()Z

    move-result p1

    if-ne p1, v4, :cond_5

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BluetoothAdapter.ACTION_CONNECTION_STATE_CHANGED causes connection status changed. mIsConnected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$300(Lcom/visualon/OSMPUtils/voBluetoothManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v5, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    iget-object p1, p1, Lcom/visualon/OSMPUtils/voBluetoothManager;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;

    const-wide/16 v0, 0x102d

    iget-object p2, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$300(Lcom/visualon/OSMPUtils/voBluetoothManager;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;->SetParam(JLjava/lang/Object;)I

    goto/16 :goto_0

    :cond_3
    const-string p1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v6, [Ljava/lang/Object;

    const-string p2, "Receive BluetoothHeadset.ACTION_CONNECTION_STATE_CHANGED"

    .line 78
    invoke-static {v5, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voBluetoothManager;->updateConnectionStatus()Z

    move-result p1

    if-ne p1, v4, :cond_5

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BluetoothHeadset.ACTION_CONNECTION_STATE_CHANGED causes connection status changed. mIsConnected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$300(Lcom/visualon/OSMPUtils/voBluetoothManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v5, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    iget-object p1, p1, Lcom/visualon/OSMPUtils/voBluetoothManager;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;

    iget-object p2, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$300(Lcom/visualon/OSMPUtils/voBluetoothManager;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v2, v3, p2}, Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;->SetParam(JLjava/lang/Object;)I

    goto :goto_0

    :cond_4
    const-string p1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v6, [Ljava/lang/Object;

    const-string p2, "Receive BluetoothA2dp.ACTION_CONNECTION_STATE_CHANGED"

    .line 91
    invoke-static {v5, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-virtual {p1}, Lcom/visualon/OSMPUtils/voBluetoothManager;->updateConnectionStatus()Z

    move-result p1

    if-ne p1, v4, :cond_5

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BluetoothA2dp.ACTION_CONNECTION_STATE_CHANGED causes connection status changed. mIsConnected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$300(Lcom/visualon/OSMPUtils/voBluetoothManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v5, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    iget-object p1, p1, Lcom/visualon/OSMPUtils/voBluetoothManager;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;

    const-wide/16 v0, 0x102e

    iget-object p2, p0, Lcom/visualon/OSMPUtils/voBluetoothManager$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothManager;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/voBluetoothManager;->access$300(Lcom/visualon/OSMPUtils/voBluetoothManager;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/visualon/OSMPUtils/voBluetoothManager$onStatusChangeListener;->SetParam(JLjava/lang/Object;)I

    :cond_5
    :goto_0
    return-void
.end method
