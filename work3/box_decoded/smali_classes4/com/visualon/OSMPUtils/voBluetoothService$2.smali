.class Lcom/visualon/OSMPUtils/voBluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "voBluetoothService.java"


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

    .line 89
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voBluetoothService$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    .line 95
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 97
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voBluetoothService$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/voBluetoothService;->access$000(Lcom/visualon/OSMPUtils/voBluetoothService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p2

    if-nez p2, :cond_0

    .line 98
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voBluetoothService$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/voBluetoothService;->access$200(Lcom/visualon/OSMPUtils/voBluetoothService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 99
    iget-object p2, p0, Lcom/visualon/OSMPUtils/voBluetoothService$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    invoke-static {p2}, Lcom/visualon/OSMPUtils/voBluetoothService;->access$200(Lcom/visualon/OSMPUtils/voBluetoothService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iget-object v0, p0, Lcom/visualon/OSMPUtils/voBluetoothService$2;->this$0:Lcom/visualon/OSMPUtils/voBluetoothService;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voBluetoothService;->access$300(Lcom/visualon/OSMPUtils/voBluetoothService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method
