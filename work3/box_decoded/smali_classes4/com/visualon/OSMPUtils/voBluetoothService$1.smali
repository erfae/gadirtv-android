.class Lcom/visualon/OSMPUtils/voBluetoothService$1;
.super Ljava/lang/Object;
.source "voBluetoothService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voBluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/voBluetoothService;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPUtils/voBluetoothService;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 68
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lcom/visualon/OSMPUtils/voBluetoothService;->access$002(Lcom/visualon/OSMPUtils/voBluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 69
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voBluetoothService;->access$000(Lcom/visualon/OSMPUtils/voBluetoothService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 73
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voBluetoothService$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p2, p1}, Lcom/visualon/OSMPUtils/voBluetoothService;->access$102(Lcom/visualon/OSMPUtils/voBluetoothService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    iget-object p1, p1, Lcom/visualon/OSMPUtils/voBluetoothService;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;

    if-eqz p1, :cond_1

    .line 76
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    iget-object p1, p1, Lcom/visualon/OSMPUtils/voBluetoothService;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;

    const-wide/16 v1, 0x1026

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v1, v2, p2}, Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;->SetParam(JLjava/lang/Object;)I

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 83
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    iget-object p1, p1, Lcom/visualon/OSMPUtils/voBluetoothService;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService$1;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    iget-object p1, p1, Lcom/visualon/OSMPUtils/voBluetoothService;->mStatusChangeListener:Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;

    const-wide/16 v0, 0x1026

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/visualon/OSMPUtils/voBluetoothService$onStatusChangeListener;->SetParam(JLjava/lang/Object;)I

    :cond_0
    return-void
.end method
