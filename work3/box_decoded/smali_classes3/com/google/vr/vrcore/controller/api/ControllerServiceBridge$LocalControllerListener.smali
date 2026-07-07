.class Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalControllerListener"
.end annotation


# instance fields
.field public final callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

.field public final controllerIndex:I

.field public final options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;


# direct methods
.method public constructor <init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    .line 3
    iput-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->options:Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    .line 4
    iput p3, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->controllerIndex:I

    return-void
.end method
