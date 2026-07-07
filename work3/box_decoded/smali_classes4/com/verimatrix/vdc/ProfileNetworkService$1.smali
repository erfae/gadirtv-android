.class Lcom/verimatrix/vdc/ProfileNetworkService$1;
.super Ljava/lang/Object;
.source "ProfileNetworkService.java"

# interfaces
.implements Lcom/verimatrix/vdc/HoldOffStrategy$RetryAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/ProfileNetworkService;->login(Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLandroid/os/Messenger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/verimatrix/vdc/HoldOffStrategy$RetryAction<",
        "Lcom/verimatrix/vdc/XmlParser$LoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/ProfileNetworkService;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appVersion:Ljava/lang/String;

.field final synthetic val$configuration:Lcom/verimatrix/vdc/Configuration;

.field final synthetic val$deviceId:Ljava/lang/String;

.field final synthetic val$encodeSubscriberId:Z

.field final synthetic val$encodeUserId:Z

.field final synthetic val$gdOperatorCode:J

.field final synthetic val$gdprConsent:Ljava/lang/String;

.field final synthetic val$playerType:Ljava/lang/String;

.field final synthetic val$playerVersion:Ljava/lang/String;

.field final synthetic val$serverIp:Ljava/lang/String;

.field final synthetic val$serverUrl:Ljava/lang/String;

.field final synthetic val$subscriberId:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$userType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/ProfileNetworkService;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    .line 184
    iput-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->this$0:Lcom/verimatrix/vdc/ProfileNetworkService;

    move-object v1, p2

    iput-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$serverUrl:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$serverIp:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$configuration:Lcom/verimatrix/vdc/Configuration;

    move-object v1, p5

    iput-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$subscriberId:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$playerType:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$playerVersion:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$appVersion:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$userId:Ljava/lang/String;

    move v1, p10

    iput-boolean v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$encodeUserId:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$encodeSubscriberId:Z

    move-object v1, p12

    iput-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$appId:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$userType:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$gdprConsent:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$deviceId:Ljava/lang/String;

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$gdOperatorCode:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform()Lcom/verimatrix/vdc/XmlParser$LoginResponse;
    .locals 21

    move-object/from16 v0, p0

    .line 187
    iget-object v2, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->this$0:Lcom/verimatrix/vdc/ProfileNetworkService;

    move-object v1, v2

    invoke-virtual {v2}, Lcom/verimatrix/vdc/ProfileNetworkService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$serverUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$serverIp:Ljava/lang/String;

    iget-object v5, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$configuration:Lcom/verimatrix/vdc/Configuration;

    iget-object v6, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$subscriberId:Ljava/lang/String;

    iget-object v7, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$playerType:Ljava/lang/String;

    iget-object v8, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$playerVersion:Ljava/lang/String;

    iget-object v9, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$appVersion:Ljava/lang/String;

    iget-object v10, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$userId:Ljava/lang/String;

    iget-boolean v11, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$encodeUserId:Z

    iget-boolean v12, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$encodeSubscriberId:Z

    iget-object v13, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$appId:Ljava/lang/String;

    iget-object v14, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$userType:Ljava/lang/String;

    iget-object v15, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$gdprConsent:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$deviceId:Ljava/lang/String;

    move-object/from16 v16, v1

    move-object/from16 v20, v2

    iget-wide v1, v0, Lcom/verimatrix/vdc/ProfileNetworkService$1;->val$gdOperatorCode:J

    move-wide/from16 v17, v1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual/range {v1 .. v18}, Lcom/verimatrix/vdc/ProfileNetworkService;->loginRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/verimatrix/vdc/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/XmlParser$LoginResponse;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic perform()Ljava/lang/Object;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/verimatrix/vdc/ProfileNetworkService$1;->perform()Lcom/verimatrix/vdc/XmlParser$LoginResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldRetry(ILcom/verimatrix/vdc/XmlParser$LoginResponse;)Z
    .locals 0

    .line 194
    iget-boolean p1, p2, Lcom/verimatrix/vdc/XmlParser$LoginResponse;->success:Z

    if-nez p1, :cond_0

    .line 195
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

    .line 184
    check-cast p2, Lcom/verimatrix/vdc/XmlParser$LoginResponse;

    invoke-virtual {p0, p1, p2}, Lcom/verimatrix/vdc/ProfileNetworkService$1;->shouldRetry(ILcom/verimatrix/vdc/XmlParser$LoginResponse;)Z

    move-result p1

    return p1
.end method
