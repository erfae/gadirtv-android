.class Lcom/verimatrix/vdc/HeadsetUtils$2$1;
.super Ljava/lang/Object;
.source "HeadsetUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/HeadsetUtils$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/verimatrix/vdc/HeadsetUtils$2;

.field final synthetic val$reportStatus:Z


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/HeadsetUtils$2;Z)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/verimatrix/vdc/HeadsetUtils$2$1;->this$1:Lcom/verimatrix/vdc/HeadsetUtils$2;

    iput-boolean p2, p0, Lcom/verimatrix/vdc/HeadsetUtils$2$1;->val$reportStatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xbb8

    .line 84
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 85
    iget-object v0, p0, Lcom/verimatrix/vdc/HeadsetUtils$2$1;->this$1:Lcom/verimatrix/vdc/HeadsetUtils$2;

    iget-object v0, v0, Lcom/verimatrix/vdc/HeadsetUtils$2;->val$headsetLevelListener:Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;

    iget-boolean v1, p0, Lcom/verimatrix/vdc/HeadsetUtils$2$1;->val$reportStatus:Z

    invoke-interface {v0, v1}, Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;->onStatusChanged(Z)V

    return-void
.end method
