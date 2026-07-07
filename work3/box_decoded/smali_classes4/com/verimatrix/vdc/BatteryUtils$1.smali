.class Lcom/verimatrix/vdc/BatteryUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/BatteryUtils;->getBatteryLevelChanges(Landroid/content/Context;Lcom/verimatrix/vdc/BatteryUtils$OnChangeBatteryLevelListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/BatteryUtils;

.field final synthetic val$batteryLevelListener:Lcom/verimatrix/vdc/BatteryUtils$OnChangeBatteryLevelListener;

.field final synthetic val$once:Z


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/BatteryUtils;Lcom/verimatrix/vdc/BatteryUtils$OnChangeBatteryLevelListener;Z)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/verimatrix/vdc/BatteryUtils$1;->this$0:Lcom/verimatrix/vdc/BatteryUtils;

    iput-object p2, p0, Lcom/verimatrix/vdc/BatteryUtils$1;->val$batteryLevelListener:Lcom/verimatrix/vdc/BatteryUtils$OnChangeBatteryLevelListener;

    iput-boolean p3, p0, Lcom/verimatrix/vdc/BatteryUtils$1;->val$once:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 34
    invoke-static {p2}, Lcom/verimatrix/vdc/BatteryUtils;->getBatteryLevelInPercent(Landroid/content/Intent;)I

    move-result p2

    .line 35
    iget-object v0, p0, Lcom/verimatrix/vdc/BatteryUtils$1;->this$0:Lcom/verimatrix/vdc/BatteryUtils;

    invoke-static {v0}, Lcom/verimatrix/vdc/BatteryUtils;->access$000(Lcom/verimatrix/vdc/BatteryUtils;)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 36
    iget-object v0, p0, Lcom/verimatrix/vdc/BatteryUtils$1;->this$0:Lcom/verimatrix/vdc/BatteryUtils;

    invoke-static {v0, p2}, Lcom/verimatrix/vdc/BatteryUtils;->access$002(Lcom/verimatrix/vdc/BatteryUtils;I)I

    .line 37
    iget-object v0, p0, Lcom/verimatrix/vdc/BatteryUtils$1;->val$batteryLevelListener:Lcom/verimatrix/vdc/BatteryUtils$OnChangeBatteryLevelListener;

    invoke-interface {v0, p2}, Lcom/verimatrix/vdc/BatteryUtils$OnChangeBatteryLevelListener;->onLevelChanged(I)V

    .line 39
    iget-boolean p2, p0, Lcom/verimatrix/vdc/BatteryUtils$1;->val$once:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 40
    iget-object p2, p0, Lcom/verimatrix/vdc/BatteryUtils$1;->this$0:Lcom/verimatrix/vdc/BatteryUtils;

    invoke-virtual {p2, p1}, Lcom/verimatrix/vdc/BatteryUtils;->unregisterListener(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
