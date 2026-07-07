.class public Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerListener;,
        Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerServiceListener;,
        Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;,
        Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FLAG_SUPPORTS_RECENTER:I = 0x1

.field static final MIN_API_VERSION_FOR_SERVICE_CALLBACKS:I = 0x15

.field static final TAG:Ljava/lang/String; = "VrCtl.ServiceBridge"

.field public static final TARGET_SERVICE_API_VERSION:I = 0x19

.field private static final UNIQUE_INT:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final controllerListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

.field private final defaultServiceListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerServiceListener;

.field private isBound:Z

.field final listenerKey:Ljava/lang/String;

.field private final mainThreadHandler:Landroid/os/Handler;

.field private service:Lcom/google/vr/vrcore/controller/api/IControllerService;

.field private final vrcoreApiVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 179
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->UNIQUE_INT:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;-><init>(Landroid/content/Context;Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    invoke-direct {v0, p3}, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;-><init>(Landroid/content/Context;Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->context:Landroid/content/Context;

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->initializeDefaultListener(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)V

    .line 9
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->mainThreadHandler:Landroid/os/Handler;

    .line 10
    new-instance p2, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerServiceListener;

    invoke-direct {p2, p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerServiceListener;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;)V

    iput-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultServiceListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerServiceListener;

    .line 11
    invoke-static {p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->getVrCoreApiVersion(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->vrcoreApiVersion:I

    .line 12
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->createListenerKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->listenerKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;I)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->handleServiceEvent(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 0

    .line 178
    invoke-static {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->logIfControllerPacketLags(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V

    return-void
.end method

.method private createAndConnectControllerInternal(ILcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->ensureOnMainThread()V

    .line 157
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    invoke-direct {v0, p2, p3, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;I)V

    .line 160
    iget p2, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->controllerIndex:I

    invoke-direct {p0, p2, v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->registerListener(ILcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 161
    iget p2, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->controllerIndex:I

    if-nez p2, :cond_1

    .line 162
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    .line 163
    :cond_1
    iget-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    if-nez p1, :cond_3

    const/16 p2, 0x29

    .line 166
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed to connect controller "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "VrCtl.ServiceBridge"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_3
    iget-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    return v1
.end method

.method private static createListenerKey()Ljava/lang/String;
    .locals 3

    .line 175
    sget-object v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->UNIQUE_INT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "VrCtl.ServiceBridge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ensureOnMainThread()V
    .locals 2

    .line 119
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be running on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getVrCoreApiVersion(Landroid/content/Context;)I
    .locals 0

    .line 144
    :try_start_0
    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->getVrCoreClientApiVersion(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/vr/vrcore/base/api/VrCoreNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleAvailableControllersChanged()V
    .locals 4

    .line 125
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->ensureOnMainThread()V

    .line 126
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->getNumOfControllers()I

    move-result v0

    if-lez v0, :cond_0

    .line 127
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->isBound:Z

    if-eqz v0, :cond_3

    .line 128
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->setupAndBindDefaultControllerListener()V

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 131
    iget-object v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    if-eqz v3, :cond_1

    .line 133
    iget-object v3, v3, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    invoke-interface {v3, v2, v1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->onControllerStateChanged(II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->clearControllers()V

    .line 136
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    iget-object v0, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    invoke-interface {v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->onServiceDisconnected()V

    :cond_3
    return-void
.end method

.method private handleServiceEvent(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 123
    iget-object p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$3;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private initializeDefaultListener(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)V
    .locals 2

    .line 153
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;I)V

    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    .line 154
    iget-object p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    iget p2, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->controllerIndex:I

    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static logIfControllerPacketLags(Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;)V
    .locals 5

    .line 147
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->getTimestampMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->getSystemTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerEventPacket2;->getTimestampMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    const/16 p0, 0x7a

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Experiencing large controller packet delivery time between service and  client: timestamp diff in ms: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VrCtl.ServiceBridge"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private registerListener(ILcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;)Z
    .locals 3

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->listenerKey:Ljava/lang/String;

    new-instance v2, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerListener;

    invoke-direct {v2, p2}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerListener;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/google/vr/vrcore/controller/api/IControllerService;->registerListener(ILjava/lang/String;Lcom/google/vr/vrcore/controller/api/IControllerListener;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "VrCtl.ServiceBridge"

    const-string v0, "RemoteException while registering listener."

    .line 173
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setupAndBindDefaultControllerListener()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    iget-object v0, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->onServiceConnected(I)V

    .line 107
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    iget v0, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->controllerIndex:I

    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    invoke-direct {p0, v0, v1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->registerListener(ILcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;)Z

    move-result v0

    const-string v1, "VrCtl.ServiceBridge"

    if-nez v0, :cond_0

    const-string v0, "Failed to register service listener."

    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    iget-object v0, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    invoke-interface {v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->onServiceFailed()V

    .line 110
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->doUnbind()V

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    iget v2, v2, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->controllerIndex:I

    iget-object v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "Successfully registered service listener."

    .line 113
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private vibrateControllerInternal(ILcom/google/vr/vrcore/controller/api/ControllerRequest;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->ensureOnMainThread()V

    .line 70
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    const-string v1, "VrCtl.ServiceBridge"

    if-nez v0, :cond_0

    const-string p1, "Vibration cancelled: service not connected"

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 73
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/google/vr/vrcore/controller/api/IControllerService;->request(ILcom/google/vr/vrcore/controller/api/ControllerRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "RemoteException while vibrating the controller."

    .line 76
    invoke-static {v1, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method final synthetic bridge$lambda$0$ControllerServiceBridge()V
    .locals 0

    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->handleAvailableControllersChanged()V

    return-void
.end method

.method public clearControllers()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->ensureOnMainThread()V

    .line 48
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public createAndConnectController(ILcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->createAndConnectControllerInternal(ILcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)Z

    move-result p1

    return p1
.end method

.method public createAndConnectController(ILcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;

    invoke-direct {v0, p3}, Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->createAndConnectControllerInternal(ILcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lcom/google/vr/vrcore/controller/api/ControllerListenerOptions;)Z

    move-result p1

    return p1
.end method

.method public doBind()V
    .locals 4

    .line 18
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->ensureOnMainThread()V

    .line 19
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->isBound:Z

    const-string v1, "VrCtl.ServiceBridge"

    if-eqz v0, :cond_0

    const-string v0, "Service is already bound."

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 22
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.vr.vrcore.controller.BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.vr.vrcore"

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Bind failed. Service is not available."

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    iget-object v0, v0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    invoke-interface {v0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->onServiceUnavailable()V

    .line 27
    :cond_1
    iput-boolean v3, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->isBound:Z

    return-void
.end method

.method public doUnbind()V
    .locals 4

    .line 29
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->ensureOnMainThread()V

    .line 30
    iget-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->isBound:Z

    const-string v1, "VrCtl.ServiceBridge"

    if-nez v0, :cond_0

    const-string v0, "Service is already unbound."

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->unregisterListeners()V

    .line 34
    iget v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->vrcoreApiVersion:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultServiceListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerServiceListener;

    invoke-interface {v0, v2}, Lcom/google/vr/vrcore/controller/api/IControllerService;->unregisterServiceListener(Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to unregister remote service listener."

    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Exception while unregistering remote service listener: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->isBound:Z

    return-void
.end method

.method public getControllerCallbacks(I)Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->ensureOnMainThread()V

    .line 45
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->controllerListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 46
    :cond_0
    iget-object p1, p1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    return-object p1
.end method

.method public getNumOfControllers()I
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 140
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/google/vr/vrcore/controller/api/IControllerService;->getNumberOfControllers()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 142
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Remote exception while getting number of controllers: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VrCtl.ServiceBridge"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method final synthetic lambda$vibrateController$0$ControllerServiceBridge(ILcom/google/vr/vrcore/controller/api/ControllerRequest;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->vibrateControllerInternal(ILcom/google/vr/vrcore/controller/api/ControllerRequest;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->ensureOnMainThread()V

    .line 79
    iget-boolean p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->isBound:Z

    const-string v0, "VrCtl.ServiceBridge"

    if-nez p1, :cond_0

    const-string p1, "Ignoring service connection after unbind."

    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 82
    :cond_0
    invoke-static {p2}, Lcom/google/vr/vrcore/controller/api/IControllerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/vr/vrcore/controller/api/IControllerService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    const/16 p2, 0x19

    .line 83
    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/vr/vrcore/controller/api/IControllerService;->initialize(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_2

    const-string p2, "initialize() returned error: "

    .line 91
    invoke-static {p1}, Lcom/google/vr/vrcore/controller/api/ControllerInitResults;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    :goto_0
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    iget-object p2, p2, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    invoke-interface {p2, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->onServiceInitFailed(I)V

    .line 93
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->doUnbind()V

    return-void

    .line 95
    :cond_2
    iget p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->vrcoreApiVersion:I

    const/16 v1, 0x15

    if-lt p2, v1, :cond_3

    .line 96
    :try_start_1
    iget-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultServiceListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$ControllerServiceListener;

    invoke-interface {p2, v1}, Lcom/google/vr/vrcore/controller/api/IControllerService;->registerServiceListener(Lcom/google/vr/vrcore/controller/api/IControllerServiceListener;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "Failed to register remote service listener."

    .line 97
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p2, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    iget-object p2, p2, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    invoke-interface {p2, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->onServiceInitFailed(I)V

    .line 99
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->doUnbind()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Exception while registering remote service listener: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_3
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->setupAndBindDefaultControllerListener()V

    return-void

    :catch_1
    move-exception p1

    const-string p2, "Failed to call initialize() on controller service (RemoteException)."

    .line 86
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    iget-object p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    iget-object p1, p1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    invoke-interface {p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->onServiceFailed()V

    .line 88
    invoke-virtual {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->doUnbind()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->ensureOnMainThread()V

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    .line 117
    iget-object p1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->defaultListener:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;

    iget-object p1, p1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$LocalControllerListener;->callbacks:Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;

    invoke-interface {p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->onServiceDisconnected()V

    return-void
.end method

.method public requestBind()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$0;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestUnbind()V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$1;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListeners()V
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->ensureOnMainThread()V

    .line 53
    iget-object v0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->service:Lcom/google/vr/vrcore/controller/api/IControllerService;

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->listenerKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/vr/vrcore/controller/api/IControllerService;->unregisterListener(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "VrCtl.ServiceBridge"

    const-string v2, "RemoteException while unregistering listeners."

    .line 58
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public vibrateController(IIII)V
    .locals 2

    .line 60
    new-instance v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;

    invoke-direct {v0}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;-><init>()V

    .line 61
    new-instance v1, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    invoke-direct {v1}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;-><init>()V

    .line 62
    invoke-virtual {v1, p2}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->setFrequencyHz(I)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    move-result-object p2

    .line 63
    invoke-virtual {p2, p3}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->setVolumePercentage(I)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    move-result-object p2

    .line 64
    invoke-virtual {p2, p4}, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;->setDurationMs(I)Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    move-result-object p2

    iput-object p2, v0, Lcom/google/vr/vrcore/controller/api/nano/Proto$Request;->vibration:Lcom/google/vr/vrcore/controller/api/nano/Proto$Request$Vibration;

    .line 65
    new-instance p2, Lcom/google/vr/vrcore/controller/api/ControllerRequest;

    invoke-direct {p2}, Lcom/google/vr/vrcore/controller/api/ControllerRequest;-><init>()V

    .line 66
    invoke-virtual {p2, v0}, Lcom/google/vr/vrcore/controller/api/ControllerRequest;->setFromProto(Lcom/google/protobuf/nano/MessageNano;)V

    .line 67
    iget-object p3, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance p4, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$2;

    invoke-direct {p4, p0, p1, p2}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$$Lambda$2;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;ILcom/google/vr/vrcore/controller/api/ControllerRequest;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
