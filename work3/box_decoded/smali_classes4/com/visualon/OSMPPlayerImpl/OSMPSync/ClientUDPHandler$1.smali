.class Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;
.super Ljava/lang/Thread;
.source "ClientUDPHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->initRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;

    iget-boolean v0, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->startRequest:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->access$000(Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;

    iget-boolean v0, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->warmup:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1f4

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0xa

    .line 76
    :goto_1
    :try_start_0
    invoke-static {v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 80
    :goto_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;

    iget-boolean v0, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->startRequest:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->access$100(Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;)Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;

    iget-object v2, v1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->serverIp:Ljava/lang/String;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;

    iget v3, v3, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->serverPort:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->send(Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->access$200(Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->access$000(Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setAudioPlaybackSpeed(F)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;->this$0:Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->startRequest:Z

    return-void
.end method
