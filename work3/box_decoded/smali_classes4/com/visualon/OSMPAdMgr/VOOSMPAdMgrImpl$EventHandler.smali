.class public Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;
.super Landroid/os/Handler;
.source "VOOSMPAdMgrImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Landroid/os/Looper;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    .line 153
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 157
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    const/4 v0, 0x0

    invoke-static {p1, v1, v1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;ZZLjava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    .line 158
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    .line 159
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl$EventHandler;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->access$100(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Z)V

    :cond_2
    :goto_1
    return-void
.end method
