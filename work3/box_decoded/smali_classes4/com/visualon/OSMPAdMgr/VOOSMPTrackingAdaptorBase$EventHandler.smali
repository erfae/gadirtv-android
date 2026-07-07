.class public Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase$EventHandler;
.super Landroid/os/Handler;
.source "VOOSMPTrackingAdaptorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field private mAdaptor:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;

.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;Landroid/os/Looper;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase$EventHandler;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;

    .line 617
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 615
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase$EventHandler;->mAdaptor:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;

    .line 618
    iput-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase$EventHandler;->mAdaptor:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase$EventHandler;->mAdaptor:Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPTrackingAdaptorBase;->handleMessageOnMainThread(Landroid/os/Message;)V

    return-void
.end method
