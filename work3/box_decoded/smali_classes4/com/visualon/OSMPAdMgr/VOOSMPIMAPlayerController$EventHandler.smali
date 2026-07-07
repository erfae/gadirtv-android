.class public Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;
.super Landroid/os/Handler;
.source "VOOSMPIMAPlayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Landroid/os/Looper;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    .line 116
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 121
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 122
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$100(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 124
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 126
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_3

    .line 127
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$300(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    .line 128
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_4

    .line 129
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$EventHandler;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    :cond_4
    :goto_0
    return-void
.end method
