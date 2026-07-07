.class Lcom/visualon/OSMPSensor/DeviceSensorLooper$2;
.super Landroid/os/HandlerThread;
.source "DeviceSensorLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPSensor/DeviceSensorLooper;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPSensor/DeviceSensorLooper;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPSensor/DeviceSensorLooper;Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper$2;->this$0:Lcom/visualon/OSMPSensor/DeviceSensorLooper;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 8

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    invoke-static {}, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->access$100()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 48
    iget-object v6, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper$2;->this$0:Lcom/visualon/OSMPSensor/DeviceSensorLooper;

    invoke-static {v6}, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->access$200(Lcom/visualon/OSMPSensor/DeviceSensorLooper;)Landroid/hardware/SensorManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    .line 49
    iget-object v6, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper$2;->this$0:Lcom/visualon/OSMPSensor/DeviceSensorLooper;

    invoke-static {v6}, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->access$200(Lcom/visualon/OSMPSensor/DeviceSensorLooper;)Landroid/hardware/SensorManager;

    move-result-object v6

    iget-object v7, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper$2;->this$0:Lcom/visualon/OSMPSensor/DeviceSensorLooper;

    invoke-static {v7}, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->access$300(Lcom/visualon/OSMPSensor/DeviceSensorLooper;)Landroid/hardware/SensorEventListener;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
