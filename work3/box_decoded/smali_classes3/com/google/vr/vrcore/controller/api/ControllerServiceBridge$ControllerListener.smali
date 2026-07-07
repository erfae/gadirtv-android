.class Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerListener;
.super Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControllerListener"
.end annotation


# instance fields
.field private final listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/IControllerListener$Stub;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerListener;->listener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getApiVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x19

    return v0
.end method

.method public getOptions()Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    return-object v0
.end method

.method public onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    iget v1, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->controllerIndex:I

    invoke-virtual {p1, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->setEventsControllerIndex(I)V

    .line 16
    iget-object v0, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->onControllerEventPacket(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;)V

    .line 17
    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket;->recycle()V

    return-void
.end method

.method public onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    if-nez v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-static {p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->access$100(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V

    .line 23
    iget v1, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->controllerIndex:I

    invoke-virtual {p1, v1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->setEventsControllerIndex(I)V

    .line 24
    iget-object v0, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->onControllerEventPacket2(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V

    .line 25
    invoke-virtual {p1}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->recycle()V

    return-void
.end method

.method public onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    iget v1, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->controllerIndex:I

    iput v1, p1, Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;->controllerId:I

    .line 31
    iget-object v0, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    invoke-interface {v0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->onControllerRecentered(Lcom/google/vr/vrcore/controller/api/ControllerOrientationEvent;)V

    return-void
.end method

.method public onControllerStateChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerListener;->listener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->onControllerStateChanged(II)V

    return-void
.end method
