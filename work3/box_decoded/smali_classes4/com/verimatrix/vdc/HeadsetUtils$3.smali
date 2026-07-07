.class final Lcom/verimatrix/vdc/HeadsetUtils$3;
.super Ljava/lang/Object;
.source "HeadsetUtils.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/HeadsetUtils;->isHeadsetBluetoothOn(Landroid/content/Context;Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$onChangeHeadsetStatusListener:Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/verimatrix/vdc/HeadsetUtils$3;->val$onChangeHeadsetStatusListener:Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;

    iput-object p2, p0, Lcom/verimatrix/vdc/HeadsetUtils$3;->val$mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 117
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .line 119
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 122
    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 124
    iget-object p1, p0, Lcom/verimatrix/vdc/HeadsetUtils$3;->val$onChangeHeadsetStatusListener:Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;

    invoke-static {v0, p1}, Lcom/verimatrix/vdc/HeadsetUtils;->access$500(ZLcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/verimatrix/vdc/HeadsetUtils$3;->val$mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    if-nez p1, :cond_2

    .line 131
    iget-object p1, p0, Lcom/verimatrix/vdc/HeadsetUtils$3;->val$onChangeHeadsetStatusListener:Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;

    invoke-static {v2, p1}, Lcom/verimatrix/vdc/HeadsetUtils;->access$500(ZLcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;)V

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 138
    iget-object v0, p0, Lcom/verimatrix/vdc/HeadsetUtils$3;->val$onChangeHeadsetStatusListener:Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;

    invoke-static {p1, v0}, Lcom/verimatrix/vdc/HeadsetUtils;->access$500(ZLcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;)V

    :cond_0
    return-void
.end method
