.class public Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;
.super Landroid/os/Handler;
.source "VOOSMPIMAPlayerWithAdPlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;Landroid/os/Looper;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    .line 76
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$EventHandler;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;I)V

    :cond_0
    return-void
.end method
