.class Lcom/verimatrix/vdc/HeadsetUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/HeadsetUtils;->getHeadsetBluetoothStatusChanges(Landroid/content/Context;Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/HeadsetUtils;

.field final synthetic val$headsetLevelListener:Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;

.field final synthetic val$once:Z


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/HeadsetUtils;Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;Z)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/verimatrix/vdc/HeadsetUtils$2;->this$0:Lcom/verimatrix/vdc/HeadsetUtils;

    iput-object p2, p0, Lcom/verimatrix/vdc/HeadsetUtils$2;->val$headsetLevelListener:Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;

    iput-boolean p3, p0, Lcom/verimatrix/vdc/HeadsetUtils$2;->val$once:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/verimatrix/vdc/HeadsetUtils;->access$300()Z

    move-result v1

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    const/4 v1, 0x1

    .line 77
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/HeadsetUtils;->access$300()Z

    move-result p2

    if-eq p2, v1, :cond_1

    .line 78
    invoke-static {v1}, Lcom/verimatrix/vdc/HeadsetUtils;->access$302(Z)Z

    .line 80
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/verimatrix/vdc/HeadsetUtils$2$1;

    invoke-direct {v0, p0, v1}, Lcom/verimatrix/vdc/HeadsetUtils$2$1;-><init>(Lcom/verimatrix/vdc/HeadsetUtils$2;Z)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 90
    :cond_1
    iget-boolean p2, p0, Lcom/verimatrix/vdc/HeadsetUtils$2;->val$once:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 91
    iget-object p2, p0, Lcom/verimatrix/vdc/HeadsetUtils$2;->this$0:Lcom/verimatrix/vdc/HeadsetUtils;

    invoke-static {p2, p1}, Lcom/verimatrix/vdc/HeadsetUtils;->access$400(Lcom/verimatrix/vdc/HeadsetUtils;Landroid/content/Context;)V

    :cond_2
    return-void
.end method
