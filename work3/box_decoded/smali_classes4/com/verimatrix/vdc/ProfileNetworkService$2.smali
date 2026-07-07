.class Lcom/verimatrix/vdc/ProfileNetworkService$2;
.super Ljava/lang/Object;
.source "ProfileNetworkService.java"

# interfaces
.implements Lcom/verimatrix/vdc/HoldOffStrategy$RetryAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/ProfileNetworkService;->config(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;ZLandroid/os/Messenger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/verimatrix/vdc/HoldOffStrategy$RetryAction<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/ProfileNetworkService;

.field final synthetic val$configPath:Ljava/lang/String;

.field final synthetic val$configuration:Lcom/verimatrix/vdc/Configuration;

.field final synthetic val$isFirstLogin:Z

.field final synthetic val$serverIp:Ljava/lang/String;

.field final synthetic val$serverUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/ProfileNetworkService;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Z)V
    .locals 0

    .line 950
    iput-object p1, p0, Lcom/verimatrix/vdc/ProfileNetworkService$2;->this$0:Lcom/verimatrix/vdc/ProfileNetworkService;

    iput-object p2, p0, Lcom/verimatrix/vdc/ProfileNetworkService$2;->val$serverUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/verimatrix/vdc/ProfileNetworkService$2;->val$serverIp:Ljava/lang/String;

    iput-object p4, p0, Lcom/verimatrix/vdc/ProfileNetworkService$2;->val$configuration:Lcom/verimatrix/vdc/Configuration;

    iput-object p5, p0, Lcom/verimatrix/vdc/ProfileNetworkService$2;->val$configPath:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/verimatrix/vdc/ProfileNetworkService$2;->val$isFirstLogin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform()Ljava/lang/Integer;
    .locals 7

    .line 953
    iget-object v0, p0, Lcom/verimatrix/vdc/ProfileNetworkService$2;->this$0:Lcom/verimatrix/vdc/ProfileNetworkService;

    invoke-virtual {v0}, Lcom/verimatrix/vdc/ProfileNetworkService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/verimatrix/vdc/ProfileNetworkService$2;->val$serverUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/verimatrix/vdc/ProfileNetworkService$2;->val$serverIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/verimatrix/vdc/ProfileNetworkService$2;->val$configuration:Lcom/verimatrix/vdc/Configuration;

    iget-object v5, p0, Lcom/verimatrix/vdc/ProfileNetworkService$2;->val$configPath:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/verimatrix/vdc/ProfileNetworkService$2;->val$isFirstLogin:Z

    invoke-virtual/range {v0 .. v6}, Lcom/verimatrix/vdc/ProfileNetworkService;->configRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic perform()Ljava/lang/Object;
    .locals 1

    .line 950
    invoke-virtual {p0}, Lcom/verimatrix/vdc/ProfileNetworkService$2;->perform()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public shouldRetry(ILjava/lang/Integer;)Z
    .locals 0

    .line 959
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_0

    .line 960
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorAgent;->getLoginManager()Lcom/verimatrix/vdc/MonitorLogin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/verimatrix/vdc/MonitorLogin;->isLoginInProgress()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic shouldRetry(ILjava/lang/Object;)Z
    .locals 0

    .line 950
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/ProfileNetworkService$2;->shouldRetry(ILjava/lang/Integer;)Z

    move-result p1

    return p1
.end method
