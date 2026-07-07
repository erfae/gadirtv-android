.class Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerServiceListener;
.super Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControllerServiceListener"
.end annotation


# instance fields
.field private final serviceBridge:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/IControllerServiceListener$Stub;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerServiceListener;->serviceBridge:Ljava/lang/ref/WeakReference;

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

.method public onControllerServiceEvent(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerServiceListener;->serviceBridge:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {v0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->access$000(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;I)V

    return-void
.end method
