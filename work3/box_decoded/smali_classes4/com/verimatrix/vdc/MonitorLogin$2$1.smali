.class Lcom/verimatrix/vdc/MonitorLogin$2$1;
.super Lcom/verimatrix/vdc/MonitorLogin$ResponseHandler;
.source "MonitorLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/MonitorLogin$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/verimatrix/vdc/MonitorLogin$2;

.field final synthetic val$currentServer:Lcom/verimatrix/vdc/MonitorLogin$Server;

.field final synthetic val$previousConfiguration:Lcom/verimatrix/vdc/Configuration;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/MonitorLogin$2;Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin$Server;Lcom/verimatrix/vdc/Configuration;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin$2$1;->this$1:Lcom/verimatrix/vdc/MonitorLogin$2;

    iput-object p3, p0, Lcom/verimatrix/vdc/MonitorLogin$2$1;->val$currentServer:Lcom/verimatrix/vdc/MonitorLogin$Server;

    iput-object p4, p0, Lcom/verimatrix/vdc/MonitorLogin$2$1;->val$previousConfiguration:Lcom/verimatrix/vdc/Configuration;

    invoke-direct {p0, p2}, Lcom/verimatrix/vdc/MonitorLogin$ResponseHandler;-><init>(Lcom/verimatrix/vdc/MonitorLogin;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin$2$1;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin$2$1;->this$1:Lcom/verimatrix/vdc/MonitorLogin$2;

    iget-object v0, v0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/MonitorLogin;->isLoginInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin$2$1;->this$1:Lcom/verimatrix/vdc/MonitorLogin$2;

    iget-object v0, v0, Lcom/verimatrix/vdc/MonitorLogin$2;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    iget-object v1, p0, Lcom/verimatrix/vdc/MonitorLogin$2$1;->val$currentServer:Lcom/verimatrix/vdc/MonitorLogin$Server;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorLogin$2$1;->val$previousConfiguration:Lcom/verimatrix/vdc/Configuration;

    invoke-static {v0, p1, v1, v2}, Lcom/verimatrix/vdc/MonitorLogin;->access$400(Lcom/verimatrix/vdc/MonitorLogin;Landroid/os/Message;Lcom/verimatrix/vdc/MonitorLogin$Server;Lcom/verimatrix/vdc/Configuration;)V

    goto :goto_0

    .line 327
    :cond_1
    invoke-static {}, Lcom/verimatrix/vdc/MonitorLogin;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'config response ignored because logout was requested: skip\'"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
