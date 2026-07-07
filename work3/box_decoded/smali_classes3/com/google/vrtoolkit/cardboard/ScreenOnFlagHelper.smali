.class public Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final IDLE_TIMEOUT_MS:J = 0x7530L

.field private static final NUM_SAMPLES:I = 0x78

.field private static final SAMPLE_INTERVAL_MS:J = 0xfaL

.field private static final SENSOR_THRESHOLD:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "ScreenOnFlagHelper"


# instance fields
.field private activity:Landroid/app/Activity;

.field private isFlagSet:Z

.field private lastSampleTimestamp:J

.field private screenAlwaysOn:Z

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorStats:Lcom/google/vrtoolkit/cardboard/SensorReadingStats;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->screenAlwaysOn:Z

    .line 3
    new-instance v1, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    const/16 v2, 0x78

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;-><init>(II)V

    iput-object v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorStats:Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->lastSampleTimestamp:J

    .line 5
    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->isFlagSet:Z

    .line 6
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->activity:Landroid/app/Activity;

    return-void
.end method

.method private setKeepScreenOnFlag(Z)V
    .locals 2

    .line 40
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->isFlagSet:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x80

    if-eqz p1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 45
    :goto_0
    iput-boolean p1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->isFlagSet:Z

    return-void
.end method

.method private updateFlag()V
    .locals 3

    .line 34
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->screenAlwaysOn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorStats:Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->statsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorStats:Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->getMaxAbsoluteDeviation()F

    move-result v0

    const v2, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 38
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->setKeepScreenOnFlag(Z)V

    return-void

    .line 35
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->setKeepScreenOnFlag(Z)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 27
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v2, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->lastSampleTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorStats:Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->addSample([F)V

    .line 31
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->lastSampleTimestamp:J

    .line 32
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->updateFlag()V

    return-void
.end method

.method public setScreenAlwaysOn(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->screenAlwaysOn:Z

    .line 11
    invoke-direct {p0}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->updateFlag()V

    return-void
.end method

.method public setSensorManager(Landroid/hardware/SensorManager;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method public start()V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->activity:Landroid/app/Activity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorManager:Landroid/hardware/SensorManager;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensor:Landroid/hardware/Sensor;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensor:Landroid/hardware/Sensor;

    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->isFlagSet:Z

    .line 18
    invoke-direct {p0, v1}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->setKeepScreenOnFlag(Z)V

    .line 19
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorStats:Lcom/google/vrtoolkit/cardboard/SensorReadingStats;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/SensorReadingStats;->reset()V

    .line 20
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensor:Landroid/hardware/Sensor;

    const v2, 0x3d090

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcom/google/vrtoolkit/cardboard/ScreenOnFlagHelper;->setKeepScreenOnFlag(Z)V

    return-void
.end method
