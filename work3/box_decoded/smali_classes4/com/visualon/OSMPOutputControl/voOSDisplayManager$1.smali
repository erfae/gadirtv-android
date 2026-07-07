.class Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;
.super Ljava/lang/Object;
.source "voOSDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPOutputControl/voOSDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 3

    .line 68
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Output Control, Display #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " added."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@voOSDisplayManager"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$000(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V

    .line 74
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$200(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;->onMiracastOpened()V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$300(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {p1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object p1

    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-interface {p1, v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;->onExternalDisplayConnected(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;)V

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {p1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$400(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 85
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Output Control, Display #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " changed."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@voOSDisplayManager"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 3

    .line 92
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Output Control, Display #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " removed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "@@@voOSDisplayManager"

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$200(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;->onMiracastClosed()V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$300(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 102
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {p1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$100(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;

    move-result-object p1

    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;->VOOSMP_OUTPUT_CONTROL_TYPE_HDMI:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;

    invoke-interface {p1, v0}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$voOSExternalDisplayListener;->onExternalDisplayDisconnected(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_OUTPUT_CONTROL_TYPE;)V

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSDisplayManager$1;->this$0:Lcom/visualon/OSMPOutputControl/voOSDisplayManager;

    invoke-static {p1}, Lcom/visualon/OSMPOutputControl/voOSDisplayManager;->access$000(Lcom/visualon/OSMPOutputControl/voOSDisplayManager;)V

    return-void
.end method
