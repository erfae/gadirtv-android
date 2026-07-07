.class Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;
.super Landroid/os/Handler;
.source "voID3ContainerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voID3ContainerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPUtils/voID3ContainerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    .line 62
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->access$000(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 69
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@voID3ContainerImpl"

    const-string v1, "voID3ContainerImpl went away with unhandled events"

    .line 70
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 74
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, -0xf0ffffc

    if-ne p1, v0, :cond_3

    .line 76
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->access$100(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 77
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->access$200(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->access$200(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;->onGetPos()J

    move-result-wide v0

    long-to-int p1, v0

    .line 79
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->check(J)V

    .line 81
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->access$100(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    return-void
.end method
