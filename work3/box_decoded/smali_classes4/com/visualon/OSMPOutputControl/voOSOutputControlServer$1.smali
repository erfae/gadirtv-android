.class Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$1;
.super Ljava/lang/Object;
.source "voOSOutputControlServer.java"

# interfaces
.implements Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;


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

    .line 48
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHDMIStateChangeEvent(ILjava/lang/Object;)V
    .locals 5

    .line 54
    invoke-static {}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$000()Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    move-result-object v0

    const-string v1, "@@@voOSOutputControlServer"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 56
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "m_HDMIStateCheck is null, do not use onHDMIStateChangeEvent "

    .line 57
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/16 v3, 0x800

    if-eq p1, v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 68
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 70
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    .line 82
    :cond_5
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-static {p1}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 83
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-static {p1}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;->onHdmiDisconnect()V

    goto :goto_0

    :goto_2
    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 91
    sget-object v3, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDCP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-virtual {v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->getValue()I

    move-result v3

    aput v3, p2, v2

    aput p1, p2, v0

    .line 93
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-static {p1}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 94
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;

    invoke-static {p1}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;->access$100(Lcom/visualon/OSMPOutputControl/voOSOutputControlServer;)Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;

    move-result-object p1

    const-wide/16 v3, 0x63

    invoke-interface {p1, v3, v4, p2}, Lcom/visualon/OSMPOutputControl/voOSOutputControlServer$onOutputControlListener;->onSetParam(JLjava/lang/Object;)I

    .line 95
    :cond_6
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_7

    new-array p1, v0, [Ljava/lang/Object;

    .line 96
    aget p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "VOOSMP_PID_OUTPUT_CONTROL_UPDATE_CONNECT_STATUS, HDMIState param is %d"

    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
