.class public Lcom/google/vr/ndk/base/ThrottlingMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;,
        Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;,
        Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;
    }
.end annotation


# static fields
.field public static final ERROR_NOT_ACCURATE:I = -0x4

.field public static final ERROR_NOT_CONNECTED:I = -0x3

.field public static final ERROR_NOT_SUPPORTED:I = -0x1

.field public static final ERROR_NO_PERMISSION:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x5

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThrottlingMonitor"


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field private final context:Landroid/content/Context;

.field private final lock:Ljava/lang/Object;

.field private final mainHandler:Landroid/os/Handler;

.field private perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

.field private final setupCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->setupCallbacks:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;

    invoke-direct {v0, p0}, Lcom/google/vr/ndk/base/ThrottlingMonitor$1;-><init>(Lcom/google/vr/ndk/base/ThrottlingMonitor;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->connection:Landroid/content/ServiceConnection;

    .line 5
    iput-object p1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->context:Landroid/content/Context;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/lang/Object;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/vr/ndk/base/ThrottlingMonitor;Lcom/google/vr/vrcore/performance/api/IPerformanceService;)Lcom/google/vr/vrcore/performance/api/IPerformanceService;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/vr/ndk/base/ThrottlingMonitor;)Ljava/util/ArrayList;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->setupCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addTriggerInternal(Landroid/content/ComponentName;IFLcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;JLandroid/os/Handler;)I
    .locals 8

    if-eqz p4, :cond_1

    .line 79
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p1, -0x3

    return p1

    .line 84
    :cond_0
    new-instance v3, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;

    invoke-direct {v3, p4, p7}, Lcom/google/vr/ndk/base/ThrottlingMonitor$ThrottlingTriggerCallback;-><init>(Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;Landroid/os/Handler;)V

    move-object v2, p1

    move-wide v4, p5

    move v6, p3

    move v7, p2

    .line 85
    :try_start_1
    invoke-interface/range {v1 .. v7}, Lcom/google/vr/vrcore/performance/api/IPerformanceService;->addTrigger(Landroid/content/ComponentName;Lcom/google/vr/vrcore/performance/api/IThrottlingTriggerCallback;JFI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    const-string p1, "ThrottlingMonitor"

    const-string p2, "Throttling monitoring not supported on this device."

    .line 93
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :catch_1
    const/4 p1, -0x2

    return p1

    :catch_2
    move-exception p1

    const-string p2, "ThrottlingMonitor"

    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x1d

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Service failed unexpectedly: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x5

    return p1

    :catchall_0
    move-exception p1

    .line 81
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument \'trigger\' cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Landroid/content/Context;)Lcom/google/vr/ndk/base/ThrottlingMonitor;
    .locals 4

    .line 8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.vr.vrcore.performance.service.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.vr.vrcore"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    new-instance v1, Lcom/google/vr/ndk/base/ThrottlingMonitor;

    invoke-direct {v1, p0}, Lcom/google/vr/ndk/base/ThrottlingMonitor;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object v2, v1, Lcom/google/vr/ndk/base/ThrottlingMonitor;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public addTrigger(Landroid/content/ComponentName;FLcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;JLandroid/os/Handler;)I
    .locals 8

    const/4 v2, 0x3

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    .line 38
    invoke-direct/range {v0 .. v7}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->addTriggerInternal(Landroid/content/ComponentName;IFLcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;JLandroid/os/Handler;)I

    move-result p1

    return p1
.end method

.method public addTrigger(Landroid/content/ComponentName;FLcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;Landroid/os/Handler;)I
    .locals 8

    const/4 v2, 0x2

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 40
    invoke-direct/range {v0 .. v7}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->addTriggerInternal(Landroid/content/ComponentName;IFLcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;JLandroid/os/Handler;)I

    move-result p1

    return p1
.end method

.method public addTrigger(Landroid/content/ComponentName;Lcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;JLandroid/os/Handler;)I
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/google/vr/ndk/base/ThrottlingMonitor;->addTriggerInternal(Landroid/content/ComponentName;IFLcom/google/vr/ndk/base/ThrottlingMonitor$TemperatureTrigger;JLandroid/os/Handler;)I

    move-result p1

    return p1
.end method

.method public close()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public getEstimatedThrottlingTimeNanos()J
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-wide/16 v0, -0x3

    return-wide v0

    .line 62
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/vr/vrcore/performance/api/IPerformanceService;->getCurrentEstimatedThrottleWarningTime()J

    move-result-wide v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const-wide/16 v0, -0x4

    :cond_1
    return-wide v0

    :catch_0
    const-string v0, "ThrottlingMonitor"

    const-string v1, "Throttling monitoring not supported on this device."

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_1
    const-wide/16 v0, -0x2

    return-wide v0

    :catch_2
    move-exception v0

    const-string v1, "ThrottlingMonitor"

    .line 65
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Service failed unexpectedly: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x5

    return-wide v0

    :catchall_0
    move-exception v1

    .line 59
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public queryRelativeTemperature(Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;)I
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p1, -0x3

    return p1

    .line 25
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/google/vr/vrcore/performance/api/IPerformanceService;->getCurrentThrottlingRelativeTemperature(Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    iget p1, p1, Lcom/google/vr/vrcore/performance/api/TimestampedTemperature;->temperature:F

    const/4 v0, 0x1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    const/4 p1, -0x4

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :catch_0
    const-string p1, "ThrottlingMonitor"

    const-string v0, "Throttling monitoring not supported on this device."

    .line 33
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :catch_1
    const/4 p1, -0x2

    return p1

    :catch_2
    move-exception p1

    const-string v0, "ThrottlingMonitor"

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Service failed unexpectedly: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x5

    return p1

    :catchall_0
    move-exception p1

    .line 22
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public registerSetupCallback(Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    if-eqz v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/vr/ndk/base/ThrottlingMonitor$2;

    invoke-direct {v2, p0, p1}, Lcom/google/vr/ndk/base/ThrottlingMonitor$2;-><init>(Lcom/google/vr/ndk/base/ThrottlingMonitor;Lcom/google/vr/ndk/base/ThrottlingMonitor$SetupCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    monitor-exit v0

    return-void

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->setupCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAllTriggers(Landroid/content/ComponentName;)I
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/ThrottlingMonitor;->perfService:Lcom/google/vr/vrcore/performance/api/IPerformanceService;

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p1, -0x3

    return p1

    .line 46
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Lcom/google/vr/vrcore/performance/api/IPerformanceService;->removeAllTriggers(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    const-string p1, "ThrottlingMonitor"

    const-string v0, "Throttling monitoring not supported on this device."

    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :catch_1
    const/4 p1, -0x2

    return p1

    :catch_2
    move-exception p1

    const-string v0, "ThrottlingMonitor"

    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Service failed unexpectedly: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x5

    return p1

    :catchall_0
    move-exception p1

    .line 43
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
