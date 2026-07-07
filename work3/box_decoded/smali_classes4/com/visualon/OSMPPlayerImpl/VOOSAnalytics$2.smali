.class Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$2;
.super Ljava/util/TimerTask;
.source "VOOSAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->startTimer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$2;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$2;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->access$200(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$2;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->access$300(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$2;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->access$200(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics$2;->this$0:Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;

    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;->access$200(Lcom/visualon/OSMPPlayerImpl/VOOSAnalytics;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
