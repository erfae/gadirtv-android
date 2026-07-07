.class final synthetic Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;

.field private final arg$2:I

.field private final arg$3:Lcom/google/vr/vrcore/controller/api/ControllerRequest;


# direct methods
.method constructor <init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;ILcom/google/vr/vrcore/controller/api/ControllerRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$2;->arg$1:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;

    iput p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$2;->arg$2:I

    iput-object p3, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$2;->arg$3:Lcom/google/vr/vrcore/controller/api/ControllerRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$2;->arg$1:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;

    iget v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$2;->arg$2:I

    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$2;->arg$3:Lcom/google/vr/vrcore/controller/api/ControllerRequest;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->lambda$vibrateController$0$ControllerServiceBridge(ILcom/google/vr/vrcore/controller/api/ControllerRequest;)V

    return-void
.end method
