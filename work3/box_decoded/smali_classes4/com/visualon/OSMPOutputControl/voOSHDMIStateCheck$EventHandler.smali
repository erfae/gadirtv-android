.class public Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;
.super Landroid/os/Handler;
.source "voOSHDMIStateCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;Landroid/os/Looper;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->this$0:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    .line 175
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->this$0:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    iget-object v0, v0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->this$0:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    iget-object v0, v0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;->onHDMIStateChangeEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$EventHandler;->this$0:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;

    iget-object v0, v0, Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck;->m_OnHDMIStateChangeListener:Lcom/visualon/OSMPOutputControl/voOSHDMIStateCheck$onHDMIStateChangeListener;

    const/4 v1, 0x0

    const-string v2, "HDMIStateCheck"

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "m_OnHDMIStateChangeListener should no be null"

    .line 187
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Message.obj field should not be null"

    .line 189
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
