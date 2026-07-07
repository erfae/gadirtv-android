.class Lcom/verimatrix/vdc/MonitorAgent$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MonitorAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/MonitorAgent;->setNetworkCallback(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/MonitorAgent;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/MonitorAgent;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorAgent$1;->this$0:Lcom/verimatrix/vdc/MonitorAgent;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 95
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Network is available"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorAgent$1;->this$0:Lcom/verimatrix/vdc/MonitorAgent;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/verimatrix/vdc/MonitorAgent;->access$302(Lcom/verimatrix/vdc/MonitorAgent;Z)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 105
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Network is not available"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcom/verimatrix/vdc/MonitorAgent$1;->this$0:Lcom/verimatrix/vdc/MonitorAgent;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/verimatrix/vdc/MonitorAgent;->access$302(Lcom/verimatrix/vdc/MonitorAgent;Z)Z

    return-void
.end method
