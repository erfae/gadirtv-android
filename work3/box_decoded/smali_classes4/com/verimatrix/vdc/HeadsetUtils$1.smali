.class Lcom/verimatrix/vdc/HeadsetUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/HeadsetUtils;->getHeadsetStatusChanges(Landroid/content/Context;Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;Z)V
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

    .line 43
    iput-object p1, p0, Lcom/verimatrix/vdc/HeadsetUtils$1;->this$0:Lcom/verimatrix/vdc/HeadsetUtils;

    iput-object p2, p0, Lcom/verimatrix/vdc/HeadsetUtils$1;->val$headsetLevelListener:Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;

    iput-boolean p3, p0, Lcom/verimatrix/vdc/HeadsetUtils$1;->val$once:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 46
    invoke-static {p2}, Lcom/verimatrix/vdc/HeadsetUtils;->access$000(Landroid/content/Intent;)Z

    move-result p2

    .line 47
    iget-object v0, p0, Lcom/verimatrix/vdc/HeadsetUtils$1;->this$0:Lcom/verimatrix/vdc/HeadsetUtils;

    invoke-static {v0}, Lcom/verimatrix/vdc/HeadsetUtils;->access$100(Lcom/verimatrix/vdc/HeadsetUtils;)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/verimatrix/vdc/HeadsetUtils$1;->this$0:Lcom/verimatrix/vdc/HeadsetUtils;

    invoke-static {v0, p2}, Lcom/verimatrix/vdc/HeadsetUtils;->access$102(Lcom/verimatrix/vdc/HeadsetUtils;Z)Z

    .line 49
    iget-object v0, p0, Lcom/verimatrix/vdc/HeadsetUtils$1;->val$headsetLevelListener:Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;

    invoke-interface {v0, p2}, Lcom/verimatrix/vdc/HeadsetUtils$OnChangeHeadsetStatusListener;->onStatusChanged(Z)V

    .line 52
    :cond_0
    iget-boolean p2, p0, Lcom/verimatrix/vdc/HeadsetUtils$1;->val$once:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 53
    iget-object p2, p0, Lcom/verimatrix/vdc/HeadsetUtils$1;->this$0:Lcom/verimatrix/vdc/HeadsetUtils;

    invoke-static {p2, p1}, Lcom/verimatrix/vdc/HeadsetUtils;->access$200(Lcom/verimatrix/vdc/HeadsetUtils;Landroid/content/Context;)V

    :cond_1
    return-void
.end method
