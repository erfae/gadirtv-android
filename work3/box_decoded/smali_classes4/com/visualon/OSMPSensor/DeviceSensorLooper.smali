.class public Lcom/visualon/OSMPSensor/DeviceSensorLooper;
.super Ljava/lang/Object;
.source "DeviceSensorLooper.java"

# interfaces
.implements Lcom/visualon/OSMPSensor/SensorEventProvider;


# static fields
.field private static final INPUT_SENSORS:[I


# instance fields
.field private mIsRunning:Z

.field private final mRegisteredListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/SensorEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorLooper:Landroid/os/Looper;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 85
    fill-array-data v0, :array_0

    sput-object v0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->INPUT_SENSORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mRegisteredListeners:Ljava/util/ArrayList;

    .line 19
    iput-object p1, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPSensor/DeviceSensorLooper;)Ljava/util/ArrayList;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mRegisteredListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 7
    sget-object v0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->INPUT_SENSORS:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPSensor/DeviceSensorLooper;)Landroid/hardware/SensorManager;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/visualon/OSMPSensor/DeviceSensorLooper;)Landroid/hardware/SensorEventListener;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method


# virtual methods
.method public registerListener(Landroid/hardware/SensorEventListener;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mRegisteredListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mRegisteredListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 2

    .line 24
    iget-boolean v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mIsRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 27
    :cond_0
    new-instance v0, Lcom/visualon/OSMPSensor/DeviceSensorLooper$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPSensor/DeviceSensorLooper$1;-><init>(Lcom/visualon/OSMPSensor/DeviceSensorLooper;)V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 44
    new-instance v0, Lcom/visualon/OSMPSensor/DeviceSensorLooper$2;

    const-string v1, "sensor"

    invoke-direct {v0, p0, v1}, Lcom/visualon/OSMPSensor/DeviceSensorLooper$2;-><init>(Lcom/visualon/OSMPSensor/DeviceSensorLooper;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mSensorLooper:Landroid/os/Looper;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mIsRunning:Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 60
    iget-boolean v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 65
    iget-object v1, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mSensorLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 66
    iput-object v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mSensorLooper:Landroid/os/Looper;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mIsRunning:Z

    return-void
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mRegisteredListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->mRegisteredListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
