.class public Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;
.super Ljava/lang/Object;
.source "voSphericalVideoViewImpl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private headingResetToZero:Z

.field private mClock:Lcom/visualon/OSMPSensor/Clock;

.field private final mDisplay:Landroid/view/Display;

.field private mDisplayRotation:F

.field private final mEkfToHeadTracker:[F

.field private final mGyroBias:Lcom/visualon/OSMPSensor/Vector3d;

.field private mLastHeadingDegree:F

.field private final mLatestAcc:Lcom/visualon/OSMPSensor/Vector3d;

.field private final mLatestGyro:Lcom/visualon/OSMPSensor/Vector3d;

.field private mLatestGyroEventClockTimeNs:J

.field private mNeckModelEnabled:Z

.field private final mNeckModelTranslation:[F

.field private mSensorEventProvider:Lcom/visualon/OSMPSensor/SensorEventProvider;

.field private final mSensorToDisplay:[F

.field private final mTmpHeadView:[F

.field private final mTmpHeadView2:[F

.field private mTracker:Lcom/visualon/OSMPSensor/OrientationEKF;

.field private volatile mTracking:Z


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPSensor/SensorEventProvider;Lcom/visualon/OSMPSensor/Clock;Landroid/view/Display;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->headingResetToZero:Z

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 39
    iput-object v2, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mEkfToHeadTracker:[F

    new-array v2, v1, [F

    .line 40
    iput-object v2, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mSensorToDisplay:[F

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 41
    iput v2, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mDisplayRotation:F

    new-array v2, v1, [F

    .line 42
    iput-object v2, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mNeckModelTranslation:[F

    new-array v3, v1, [F

    .line 43
    iput-object v3, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTmpHeadView:[F

    new-array v1, v1, [F

    .line 44
    iput-object v1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTmpHeadView2:[F

    .line 45
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mNeckModelEnabled:Z

    .line 46
    new-instance v1, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v1}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mGyroBias:Lcom/visualon/OSMPSensor/Vector3d;

    .line 47
    new-instance v1, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v1}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mLatestGyro:Lcom/visualon/OSMPSensor/Vector3d;

    .line 48
    new-instance v1, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v1}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mLatestAcc:Lcom/visualon/OSMPSensor/Vector3d;

    .line 49
    iput-object p2, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mClock:Lcom/visualon/OSMPSensor/Clock;

    .line 50
    iput-object p1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mSensorEventProvider:Lcom/visualon/OSMPSensor/SensorEventProvider;

    .line 51
    new-instance p1, Lcom/visualon/OSMPSensor/OrientationEKF;

    invoke-direct {p1}, Lcom/visualon/OSMPSensor/OrientationEKF;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracker:Lcom/visualon/OSMPSensor/OrientationEKF;

    .line 52
    iput-object p3, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mDisplay:Landroid/view/Display;

    .line 53
    invoke-static {v2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 p1, 0x0

    const p2, -0x42666666    # -0.075f

    const p3, 0x3da3d70a    # 0.08f

    .line 54
    invoke-static {v2, v0, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public static createFromContext(Landroid/content/Context;)Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;
    .locals 3

    const-string v0, "sensor"

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const-string v1, "window"

    .line 33
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 34
    new-instance v1, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;

    new-instance v2, Lcom/visualon/OSMPSensor/DeviceSensorLooper;

    invoke-direct {v2, v0}, Lcom/visualon/OSMPSensor/DeviceSensorLooper;-><init>(Landroid/hardware/SensorManager;)V

    new-instance v0, Lcom/visualon/OSMPSensor/SystemClock;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/SystemClock;-><init>()V

    invoke-direct {v1, v2, v0, p0}, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;-><init>(Lcom/visualon/OSMPSensor/SensorEventProvider;Lcom/visualon/OSMPSensor/Clock;Landroid/view/Display;)V

    return-object v1
.end method


# virtual methods
.method public getHeadingDegrees()F
    .locals 2

    .line 79
    iget v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mLastHeadingDegree:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracker:Lcom/visualon/OSMPSensor/OrientationEKF;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/OrientationEKF;->getHeadingDegrees()D

    move-result-wide v0

    double-to-float v0, v0

    :cond_0
    return v0
.end method

.method public getLastHeadView()[F
    .locals 9

    const/16 v0, 0x10

    new-array v8, v0, [F

    .line 122
    iget-object v1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43870000    # 270.0f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_0

    :cond_3
    const/high16 v1, 0x42b40000    # 90.0f

    .line 140
    :goto_0
    iget v4, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mDisplayRotation:F

    const/4 v5, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_4

    .line 141
    iput v1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mDisplayRotation:F

    .line 142
    iget-object v4, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mSensorToDisplay:[F

    neg-float v1, v1

    invoke-static {v4, v5, v3, v3, v1}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    .line 143
    iget-object v1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mEkfToHeadTracker:[F

    invoke-static {v1, v5, v2, v3, v3}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    .line 145
    :cond_4
    iget-object v1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracker:Lcom/visualon/OSMPSensor/OrientationEKF;

    monitor-enter v1

    .line 146
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mClock:Lcom/visualon/OSMPSensor/Clock;

    invoke-interface {v3}, Lcom/visualon/OSMPSensor/Clock;->nanoTime()J

    move-result-wide v3

    iget-wide v6, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mLatestGyroEventClockTimeNs:J

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v6, 0x3fa1111111111111L    # 0.03333333333333333

    add-double/2addr v2, v6

    .line 148
    iget-object v4, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracker:Lcom/visualon/OSMPSensor/OrientationEKF;

    iget-boolean v6, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracking:Z

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v2, 0x0

    :goto_1
    invoke-virtual {v4, v2, v3}, Lcom/visualon/OSMPSensor/OrientationEKF;->getPredictedGLMatrix(D)[D

    move-result-object v2

    :goto_2
    if-ge v5, v0, :cond_6

    .line 150
    iget-object v3, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTmpHeadView:[F

    aget-wide v6, v2, v5

    double-to-float v4, v6

    aput v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 152
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v2, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTmpHeadView2:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mSensorToDisplay:[F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTmpHeadView:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v2, 0x0

    .line 154
    iget-object v3, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTmpHeadView2:[F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mEkfToHeadTracker:[F

    const/4 v6, 0x0

    move-object v1, v8

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 155
    iget-boolean v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mNeckModelEnabled:Z

    if-eqz v0, :cond_7

    .line 156
    iget-object v1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTmpHeadView:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mNeckModelTranslation:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v8

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 157
    iget-object v3, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTmpHeadView:[F

    const/4 v5, 0x0

    const v6, 0x3d99999a    # 0.075f

    const/4 v7, 0x0

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    :cond_7
    return-object v8

    :catchall_0
    move-exception v0

    .line 152
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    .line 58
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 59
    iget-object v4, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mLatestAcc:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-double v5, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    float-to-double v7, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-double v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/visualon/OSMPSensor/Vector3d;->set(DDD)V

    .line 60
    iget-object v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracker:Lcom/visualon/OSMPSensor/OrientationEKF;

    iget-object v1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mLatestAcc:Lcom/visualon/OSMPSensor/Vector3d;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/visualon/OSMPSensor/OrientationEKF;->processAcc(Lcom/visualon/OSMPSensor/Vector3d;J)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 63
    iget-object v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mClock:Lcom/visualon/OSMPSensor/Clock;

    invoke-interface {v0}, Lcom/visualon/OSMPSensor/Clock;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mLatestGyroEventClockTimeNs:J

    .line 64
    iget-object v6, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mLatestGyro:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-double v7, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    float-to-double v9, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    float-to-double v11, v0

    invoke-virtual/range {v6 .. v12}, Lcom/visualon/OSMPSensor/Vector3d;->set(DDD)V

    .line 65
    iget-object v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mLatestGyro:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object v1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mGyroBias:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {v0, v1, v0}, Lcom/visualon/OSMPSensor/Vector3d;->sub(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 66
    iget-object v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracker:Lcom/visualon/OSMPSensor/OrientationEKF;

    iget-object v1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mLatestGyro:Lcom/visualon/OSMPSensor/Vector3d;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v4, v5}, Lcom/visualon/OSMPSensor/OrientationEKF;->processGyro(Lcom/visualon/OSMPSensor/Vector3d;J)V

    .line 67
    iget-boolean p1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->headingResetToZero:Z

    if-nez p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracker:Lcom/visualon/OSMPSensor/OrientationEKF;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/visualon/OSMPSensor/OrientationEKF;->setHeadingDegrees(D)V

    .line 69
    iput-boolean v3, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->headingResetToZero:Z

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracker:Lcom/visualon/OSMPSensor/OrientationEKF;

    invoke-virtual {p1}, Lcom/visualon/OSMPSensor/OrientationEKF;->getHeadingDegrees()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mLastHeadingDegree:F

    :cond_2
    :goto_0
    return-void
.end method

.method public pauseTracking()V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracking:Z

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mSensorEventProvider:Lcom/visualon/OSMPSensor/SensorEventProvider;

    invoke-interface {v0}, Lcom/visualon/OSMPSensor/SensorEventProvider;->stop()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracking:Z

    return-void
.end method

.method public resumeTracking()V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracking:Z

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mSensorEventProvider:Lcom/visualon/OSMPSensor/SensorEventProvider;

    invoke-interface {v0}, Lcom/visualon/OSMPSensor/SensorEventProvider;->start()V

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracking:Z

    return-void
.end method

.method public startTracking()V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracking:Z

    if-eqz v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracker:Lcom/visualon/OSMPSensor/OrientationEKF;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/OrientationEKF;->reset()V

    .line 87
    iget-object v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mSensorEventProvider:Lcom/visualon/OSMPSensor/SensorEventProvider;

    invoke-interface {v0, p0}, Lcom/visualon/OSMPSensor/SensorEventProvider;->registerListener(Landroid/hardware/SensorEventListener;)V

    .line 88
    iget-object v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mSensorEventProvider:Lcom/visualon/OSMPSensor/SensorEventProvider;

    invoke-interface {v0}, Lcom/visualon/OSMPSensor/SensorEventProvider;->start()V

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracking:Z

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->headingResetToZero:Z

    return-void
.end method

.method public stopTracking()V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracking:Z

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mSensorEventProvider:Lcom/visualon/OSMPSensor/SensorEventProvider;

    invoke-interface {v0, p0}, Lcom/visualon/OSMPSensor/SensorEventProvider;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 98
    iget-object v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mSensorEventProvider:Lcom/visualon/OSMPSensor/SensorEventProvider;

    invoke-interface {v0}, Lcom/visualon/OSMPSensor/SensorEventProvider;->stop()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/voSphericalVideoViewImpl;->mTracking:Z

    return-void
.end method
