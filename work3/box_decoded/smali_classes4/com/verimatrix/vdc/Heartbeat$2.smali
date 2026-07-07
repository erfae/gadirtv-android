.class Lcom/verimatrix/vdc/Heartbeat$2;
.super Ljava/lang/Object;
.source "Heartbeat.java"

# interfaces
.implements Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/Heartbeat;->addDeviceStatusEvent(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/Heartbeat;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$postAnyway:Z


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/Heartbeat;Landroid/content/Context;Z)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/verimatrix/vdc/Heartbeat$2;->this$0:Lcom/verimatrix/vdc/Heartbeat;

    iput-object p2, p0, Lcom/verimatrix/vdc/Heartbeat$2;->val$c:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/verimatrix/vdc/Heartbeat$2;->val$postAnyway:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Z)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/verimatrix/vdc/Heartbeat$2;->val$c:Landroid/content/Context;

    new-instance v1, Lcom/verimatrix/vdc/Heartbeat$2$1;

    invoke-direct {v1, p0, p1}, Lcom/verimatrix/vdc/Heartbeat$2$1;-><init>(Lcom/verimatrix/vdc/Heartbeat$2;Z)V

    invoke-static {v0, v1}, Lcom/verimatrix/vdc/VolumeUtils;->getCurrentVolumeLevel(Landroid/content/Context;Lcom/verimatrix/vdc/VolumeUtils$OnChangeVolumeLevelListener2;)V

    return-void
.end method
