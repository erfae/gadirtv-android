.class Lcom/verimatrix/vdc/Stream$1;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Lcom/verimatrix/vdc/BatteryUtils$OnChangeBatteryLevelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/Stream;->addBatteryHeadsetAndVolumeListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/Stream;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/Stream;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/verimatrix/vdc/Stream$1;->this$0:Lcom/verimatrix/vdc/Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLevelChanged(I)V
    .locals 2

    .line 518
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/verimatrix/vdc/Stream$1;->this$0:Lcom/verimatrix/vdc/Stream;

    invoke-static {v0}, Lcom/verimatrix/vdc/Stream;->access$000(Lcom/verimatrix/vdc/Stream;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/verimatrix/vdc/MonitorAgent;->addDeviceStatusEvent(Landroid/content/Context;Z)V

    return-void
.end method
