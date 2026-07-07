.class public Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;
.super Landroid/os/Handler;
.source "voVideoViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voVideoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/voVideoViewController;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPUtils/voVideoViewController;Landroid/os/Looper;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    .line 577
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$800(Lcom/visualon/OSMPUtils/voVideoViewController;)Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "@@@voVideoViewController"

    if-nez v0, :cond_1

    .line 582
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "voID3ContainerImpl went away with unhandled events"

    .line 583
    invoke-static {v2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 588
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 602
    :pswitch_1
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    const-wide/32 v1, 0x10023

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->SetParam(JLjava/lang/Object;)I

    goto :goto_0

    .line 597
    :pswitch_2
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$1100(Lcom/visualon/OSMPUtils/voVideoViewController;)V

    .line 599
    :pswitch_3
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$1200(Lcom/visualon/OSMPUtils/voVideoViewController;II)V

    goto :goto_0

    .line 590
    :pswitch_4
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "#VideoDes  messageUpdateDisplaySize:%d"

    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$900(Lcom/visualon/OSMPUtils/voVideoViewController;I)V

    return-void

    .line 605
    :pswitch_5
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$1300(Lcom/visualon/OSMPUtils/voVideoViewController;I)V

    goto :goto_0

    .line 594
    :pswitch_6
    iget-object p1, p0, Lcom/visualon/OSMPUtils/voVideoViewController$EventHandler;->this$0:Lcom/visualon/OSMPUtils/voVideoViewController;

    invoke-static {p1}, Lcom/visualon/OSMPUtils/voVideoViewController;->access$1000(Lcom/visualon/OSMPUtils/voVideoViewController;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0xf0ffff8
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
