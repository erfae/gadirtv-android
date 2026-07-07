.class Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$2;
.super Ljava/lang/Thread;
.source "VOOSMPNielsenTrackingAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->initializeNielsenLibrary(Landroid/content/Context;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$appSdkConfig:Lorg/json/JSONObject;

.field final synthetic val$appSdkListener:Lcom/nielsen/app/sdk/IAppNotifier;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;Landroid/content/Context;Lorg/json/JSONObject;Lcom/nielsen/app/sdk/IAppNotifier;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$2;->val$appContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$2;->val$appSdkConfig:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$2;->val$appSdkListener:Lcom/nielsen/app/sdk/IAppNotifier;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "@@@VOOSMPNielsenTrackingAdaptor"

    const-string v3, "before initializing Nielsen SDK"

    .line 195
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

    new-instance v3, Lcom/nielsen/app/sdk/AppSdk;

    iget-object v4, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$2;->val$appContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$2;->val$appSdkConfig:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$2;->val$appSdkListener:Lcom/nielsen/app/sdk/IAppNotifier;

    invoke-direct {v3, v4, v5, v6}, Lcom/nielsen/app/sdk/AppSdk;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/nielsen/app/sdk/IAppNotifier;)V

    invoke-static {v1, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->access$002(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;Lcom/nielsen/app/sdk/AppSdk;)Lcom/nielsen/app/sdk/AppSdk;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "after initializing Nielsen SDK"

    .line 197
    invoke-static {v2, v3, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

    invoke-static {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;)Lcom/nielsen/app/sdk/AppSdk;

    move-result-object v3

    const-string v4, "appSdk"

    invoke-virtual {v1, v4, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "after setting parameter appSdk"

    .line 199
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
