.class Lcom/verimatrix/vdc/MonitorLogin$1;
.super Ljava/lang/Object;
.source "MonitorLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/MonitorLogin;->login(Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/MonitorLogin;

.field final synthetic val$configuration:Lcom/verimatrix/vdc/Configuration;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/Configuration;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/verimatrix/vdc/MonitorLogin$1;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    iput-object p2, p0, Lcom/verimatrix/vdc/MonitorLogin$1;->val$configuration:Lcom/verimatrix/vdc/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/verimatrix/vdc/MonitorLogin$1;->this$0:Lcom/verimatrix/vdc/MonitorLogin;

    new-instance v1, Lcom/verimatrix/vdc/MonitorLogin$Server;

    iget-object v2, p0, Lcom/verimatrix/vdc/MonitorLogin$1;->val$configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v3, "monitor_server"

    invoke-virtual {v2, v3}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/verimatrix/vdc/MonitorLogin$1;->val$configuration:Lcom/verimatrix/vdc/Configuration;

    const-string v4, "monitor_server_ip"

    invoke-virtual {v3, v4}, Lcom/verimatrix/vdc/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/verimatrix/vdc/MonitorLogin$Server;-><init>(Lcom/verimatrix/vdc/MonitorLogin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/verimatrix/vdc/MonitorLogin;->access$000(Lcom/verimatrix/vdc/MonitorLogin;Lcom/verimatrix/vdc/MonitorLogin$Server;)V

    return-void
.end method
