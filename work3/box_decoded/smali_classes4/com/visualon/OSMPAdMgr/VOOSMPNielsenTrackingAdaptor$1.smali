.class Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$1;
.super Ljava/lang/Object;
.source "VOOSMPNielsenTrackingAdaptor.java"

# interfaces
.implements Lcom/nielsen/app/sdk/IAppNotifier;


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


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppSdkEvent(JILjava/lang/String;)V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timestamp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "), Code("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), Description("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Nielsen AppSdkEvent:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p4, p2, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPNielsenTrackingAdaptor"

    invoke-static {v0, p1, p4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;)Lcom/nielsen/app/sdk/AppSdk;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p1, 0x7d1

    if-ne p3, p1, :cond_1

    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

    .line 182
    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->access$100(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->access$100(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;)Lcom/nielsen/app/sdk/AppSdk;

    move-result-object p3

    invoke-virtual {p3}, Lcom/nielsen/app/sdk/AppSdk;->userOptOutURLString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->access$102(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NielsenSDK EVENT_STARTUP, OptOutUrl: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

    .line 185
    invoke-static {p3}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->access$100(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, p2, [Ljava/lang/Object;

    .line 184
    invoke-static {v0, p1, p3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->access$100(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "optOutURL"

    invoke-virtual {p1, p4, p3}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;)Lcom/nielsen/app/sdk/AppSdk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nielsen/app/sdk/AppSdk;->getOptOutStatus()Z

    move-result p1

    .line 188
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Opt-out status: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "isOptedOut"

    invoke-virtual {p2, p3, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPNielsenTrackingAdaptor;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
