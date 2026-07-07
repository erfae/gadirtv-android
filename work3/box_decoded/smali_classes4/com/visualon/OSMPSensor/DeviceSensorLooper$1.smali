.class Lcom/visualon/OSMPSensor/DeviceSensorLooper$1;
.super Ljava/lang/Object;
.source "DeviceSensorLooper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
.method constructor <init>(Lcom/visualon/OSMPSensor/DeviceSensorLooper;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper$1;->this$0:Lcom/visualon/OSMPSensor/DeviceSensorLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper$1;->this$0:Lcom/visualon/OSMPSensor/DeviceSensorLooper;

    invoke-static {v0}, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->access$000(Lcom/visualon/OSMPSensor/DeviceSensorLooper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEventListener;

    .line 38
    monitor-enter v1

    .line 39
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 40
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/visualon/OSMPSensor/DeviceSensorLooper$1;->this$0:Lcom/visualon/OSMPSensor/DeviceSensorLooper;

    invoke-static {v0}, Lcom/visualon/OSMPSensor/DeviceSensorLooper;->access$000(Lcom/visualon/OSMPSensor/DeviceSensorLooper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEventListener;

    .line 30
    monitor-enter v1

    .line 31
    :try_start_0
    invoke-interface {v1, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 32
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method
