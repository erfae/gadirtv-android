.class Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$2;
.super Ljava/lang/Object;
.source "voOSOutputControlServer.java"

# interfaces
.implements Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$2;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExternalDisplayConnected(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;)V
    .locals 5

    .line 134
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 136
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    aput v0, p1, v0

    .line 137
    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$2;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-static {v2}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$2;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-static {v2}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    move-result-object v2

    const-wide/16 v3, 0x63

    invoke-interface {v2, v3, v4, p1}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;->onSetParam(JLjava/lang/Object;)I

    .line 139
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v2, v0, [Ljava/lang/Object;

    .line 140
    aget p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "@@@voOSOutputControlServer"

    const-string v0, "VOOSMP_PID_OUTPUT_CONTROL_UPDATE_CONNECT_STATUS, HDMIState param is %d"

    invoke-static {p1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onExternalDisplayDisconnected(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;)V
    .locals 5

    .line 150
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 152
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    aput v1, p1, v0

    .line 153
    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$2;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-static {v2}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$2;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-static {v2}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;->onHdmiDisconnect()V

    .line 156
    iget-object v2, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$2;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-static {v2}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    move-result-object v2

    const-wide/16 v3, 0x63

    invoke-interface {v2, v3, v4, p1}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;->onSetParam(JLjava/lang/Object;)I

    .line 158
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_1

    new-array v2, v0, [Ljava/lang/Object;

    .line 159
    aget p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "@@@voOSOutputControlServer"

    const-string v0, "VOOSMP_PID_OUTPUT_CONTROL_UPDATE_CONNECT_STATUS, HDMIState param is %d"

    invoke-static {p1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onMiracastClosed()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 121
    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 122
    iget-object v4, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$2;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-static {v4}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$2;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-static {v4}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    move-result-object v4

    const-wide/16 v5, 0x63

    invoke-interface {v4, v5, v6, v1}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;->onSetParam(JLjava/lang/Object;)I

    .line 124
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    .line 125
    sget-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    .line 126
    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "@@@voOSOutputControlServer"

    const-string v2, "VOOSMP_PID_OUTPUT_CONTROL_UPDATE_CONNECT_STATUS, type is %s, value is %d"

    .line 125
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onMiracastOpened()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 108
    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 109
    iget-object v4, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$2;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-static {v4}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$2;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-static {v4}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    move-result-object v4

    const-wide/16 v5, 0x63

    invoke-interface {v4, v5, v6, v1}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;->onSetParam(JLjava/lang/Object;)I

    .line 111
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    .line 112
    sget-object v4, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_ANTI_MIRRORING:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    .line 113
    invoke-virtual {v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "@@@voOSOutputControlServer"

    const-string v2, "VOOSMP_PID_OUTPUT_CONTROL_UPDATE_CONNECT_STATUS, type is %s, value is %d"

    .line 112
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
