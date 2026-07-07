.class Lcom/verimatrix/vdc/StreamPlayback$1;
.super Landroid/os/Handler;
.source "StreamPlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verimatrix/vdc/StreamPlayback;->sendVideoOnDemandEventWithIpAddress(JJLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/StreamPlayback;

.field final synthetic val$APICallTimeMs:J

.field final synthetic val$offset:J

.field final synthetic val$port:J


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/StreamPlayback;JJJ)V
    .locals 0

    .line 1121
    iput-object p1, p0, Lcom/verimatrix/vdc/StreamPlayback$1;->this$0:Lcom/verimatrix/vdc/StreamPlayback;

    iput-wide p2, p0, Lcom/verimatrix/vdc/StreamPlayback$1;->val$port:J

    iput-wide p4, p0, Lcom/verimatrix/vdc/StreamPlayback$1;->val$APICallTimeMs:J

    iput-wide p6, p0, Lcom/verimatrix/vdc/StreamPlayback$1;->val$offset:J

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1124
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1126
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    new-array v0, p1, [J

    const/4 p1, 0x0

    aput-wide v3, v0, p1

    const/4 p1, 0x1

    aput-wide v3, v0, p1

    const/4 p1, 0x2

    aput-wide v1, v0, p1

    const/4 p1, 0x3

    .line 1128
    iget-wide v1, p0, Lcom/verimatrix/vdc/StreamPlayback$1;->val$port:J

    aput-wide v1, v0, p1

    :cond_0
    move-object v8, v0

    .line 1130
    invoke-static {}, Lcom/verimatrix/vdc/EventQueue;->getInstance()Lcom/verimatrix/vdc/EventQueue;

    move-result-object p1

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback$1;->this$0:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-static {v0}, Lcom/verimatrix/vdc/StreamPlayback;->access$200(Lcom/verimatrix/vdc/StreamPlayback;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback$1;->this$0:Lcom/verimatrix/vdc/StreamPlayback;

    invoke-static {v0}, Lcom/verimatrix/vdc/StreamPlayback;->access$300(Lcom/verimatrix/vdc/StreamPlayback;)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    iget-object v4, v0, Lcom/verimatrix/vdc/Stream;->configuration:Lcom/verimatrix/vdc/Configuration;

    const/16 v5, 0x102

    iget-wide v6, p0, Lcom/verimatrix/vdc/StreamPlayback$1;->val$APICallTimeMs:J

    iget-object v0, p0, Lcom/verimatrix/vdc/StreamPlayback$1;->this$0:Lcom/verimatrix/vdc/StreamPlayback;

    .line 1132
    invoke-static {v0}, Lcom/verimatrix/vdc/StreamPlayback;->access$300(Lcom/verimatrix/vdc/StreamPlayback;)Lcom/verimatrix/vdc/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verimatrix/vdc/Stream;->getRegisters()[J

    move-result-object v9

    iget-wide v10, p0, Lcom/verimatrix/vdc/StreamPlayback$1;->val$offset:J

    .line 1130
    invoke-static/range {v3 .. v11}, Lcom/verimatrix/vdc/EventsFactory;->create(Landroid/content/Context;Lcom/verimatrix/vdc/Configuration;IJ[J[JJ)Lcom/verimatrix/vdc/SendEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/EventQueue;->add(Lcom/verimatrix/vdc/SendEvent;)V

    :cond_1
    return-void
.end method
