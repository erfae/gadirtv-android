.class public Lcom/visualon/OSMPSensor/OrientationEKF;
.super Ljava/lang/Object;
.source "OrientationEKF.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_ACCEL_NOISE_SIGMA:D = 7.0

.field private static final MIN_ACCEL_NOISE_SIGMA:D = 0.75

.field private static final NS2S:F = 1.0E-9f


# instance fields
.field private accObservationFunctionForNumericalJacobianTempM:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private alignedToGravity:Z

.field private alignedToNorth:Z

.field private down:Lcom/visualon/OSMPSensor/Vector3d;

.field private filteredGyroTimestep:F

.field private getPredictedGLMatrixTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private getPredictedGLMatrixTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private getPredictedGLMatrixTempV1:Lcom/visualon/OSMPSensor/Vector3d;

.field private gyroFilterValid:Z

.field private final lastGyro:Lcom/visualon/OSMPSensor/Vector3d;

.field private mH:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private mK:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private mNu:Lcom/visualon/OSMPSensor/Vector3d;

.field private mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private mQ:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private mR:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private mRaccel:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private mS:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private magObservationFunctionForNumericalJacobianTempM:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private mh:Lcom/visualon/OSMPSensor/Vector3d;

.field private movingAverageAccelNormChange:D

.field private mu:Lcom/visualon/OSMPSensor/Vector3d;

.field private mx:Lcom/visualon/OSMPSensor/Vector3d;

.field private mz:Lcom/visualon/OSMPSensor/Vector3d;

.field private north:Lcom/visualon/OSMPSensor/Vector3d;

.field private numGyroTimestepSamples:I

.field private previousAccelNorm:D

.field private processAccTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private processAccTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private processAccTempM3:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private processAccTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private processAccTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private processAccTempV1:Lcom/visualon/OSMPSensor/Vector3d;

.field private processAccTempV2:Lcom/visualon/OSMPSensor/Vector3d;

.field private processAccVDelta:Lcom/visualon/OSMPSensor/Vector3d;

.field private processGyroTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private processGyroTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private processMagTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private processMagTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private processMagTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private processMagTempM6:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private processMagTempV1:Lcom/visualon/OSMPSensor/Vector3d;

.field private processMagTempV2:Lcom/visualon/OSMPSensor/Vector3d;

.field private processMagTempV3:Lcom/visualon/OSMPSensor/Vector3d;

.field private processMagTempV4:Lcom/visualon/OSMPSensor/Vector3d;

.field private processMagTempV5:Lcom/visualon/OSMPSensor/Vector3d;

.field private rotationMatrix:[D

.field private sensorTimeStampGyro:J

.field private setHeadingDegreesTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private timestepFilterInit:Z

.field private updateCovariancesAfterMotionTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

.field private updateCovariancesAfterMotionTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [D

    .line 66
    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->rotationMatrix:[D

    .line 67
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 68
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 69
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 70
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mQ:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 71
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mR:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 72
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mRaccel:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 73
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mS:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 74
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mH:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 75
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mK:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 76
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mNu:Lcom/visualon/OSMPSensor/Vector3d;

    .line 77
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mz:Lcom/visualon/OSMPSensor/Vector3d;

    .line 78
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mh:Lcom/visualon/OSMPSensor/Vector3d;

    .line 79
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mu:Lcom/visualon/OSMPSensor/Vector3d;

    .line 80
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mx:Lcom/visualon/OSMPSensor/Vector3d;

    .line 81
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->down:Lcom/visualon/OSMPSensor/Vector3d;

    .line 82
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->north:Lcom/visualon/OSMPSensor/Vector3d;

    .line 83
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->lastGyro:Lcom/visualon/OSMPSensor/Vector3d;

    const-wide/16 v0, 0x0

    .line 84
    iput-wide v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->previousAccelNorm:D

    .line 85
    iput-wide v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->movingAverageAccelNormChange:D

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->timestepFilterInit:Z

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->gyroFilterValid:Z

    .line 88
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->getPredictedGLMatrixTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 89
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->getPredictedGLMatrixTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 90
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->getPredictedGLMatrixTempV1:Lcom/visualon/OSMPSensor/Vector3d;

    .line 91
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->setHeadingDegreesTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 92
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processGyroTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 93
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processGyroTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 94
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 95
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 96
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM3:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 97
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 98
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 99
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempV1:Lcom/visualon/OSMPSensor/Vector3d;

    .line 100
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempV2:Lcom/visualon/OSMPSensor/Vector3d;

    .line 101
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccVDelta:Lcom/visualon/OSMPSensor/Vector3d;

    .line 102
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV1:Lcom/visualon/OSMPSensor/Vector3d;

    .line 103
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV2:Lcom/visualon/OSMPSensor/Vector3d;

    .line 104
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV3:Lcom/visualon/OSMPSensor/Vector3d;

    .line 105
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV4:Lcom/visualon/OSMPSensor/Vector3d;

    .line 106
    new-instance v0, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV5:Lcom/visualon/OSMPSensor/Vector3d;

    .line 107
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 108
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 109
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 110
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 111
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM6:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 112
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->updateCovariancesAfterMotionTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 113
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->updateCovariancesAfterMotionTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 114
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->accObservationFunctionForNumericalJacobianTempM:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 115
    new-instance v0, Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->magObservationFunctionForNumericalJacobianTempM:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 116
    invoke-virtual {p0}, Lcom/visualon/OSMPSensor/OrientationEKF;->reset()V

    return-void
.end method

.method private accObservationFunctionForNumericalJacobian(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->down:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mh:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 411
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mh:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mz:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->accObservationFunctionForNumericalJacobianTempM:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVec(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 412
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->accObservationFunctionForNumericalJacobianTempM:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2}, Lcom/visualon/OSMPSensor/So3Util;->muFromSO3(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    return-void
.end method

.method public static arrayAssign([[DLcom/visualon/OSMPSensor/Matrix3x3d;)V
    .locals 21

    const/4 v0, 0x0

    .line 203
    aget-object v1, p0, v0

    aget-wide v3, v1, v0

    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget-wide v5, v1, v2

    aget-object v1, p0, v0

    const/16 v19, 0x2

    aget-wide v7, v1, v19

    aget-object v1, p0, v2

    aget-wide v9, v1, v0

    aget-object v1, p0, v2

    aget-wide v11, v1, v2

    aget-object v1, p0, v2

    aget-wide v13, v1, v19

    aget-object v1, p0, v19

    aget-wide v15, v1, v0

    aget-object v0, p0, v19

    aget-wide v17, v0, v2

    aget-object v0, p0, v19

    aget-wide v19, v0, v19

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v20}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(DDDDDDDDD)V

    return-void
.end method

.method private filterGyroTimestep(F)V
    .locals 3

    .line 389
    iget-boolean v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->timestepFilterInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 390
    iput p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->filteredGyroTimestep:F

    .line 391
    iput v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->numGyroTimestepSamples:I

    .line 392
    iput-boolean v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->timestepFilterInit:Z

    goto :goto_0

    :cond_0
    const v0, 0x3f733333    # 0.95f

    .line 395
    iget v2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->filteredGyroTimestep:F

    mul-float v2, v2, v0

    const v0, 0x3d4cccd0    # 0.050000012f

    mul-float p1, p1, v0

    add-float/2addr v2, p1

    iput v2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->filteredGyroTimestep:F

    .line 396
    iget p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->numGyroTimestepSamples:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->numGyroTimestepSamples:I

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 397
    iput-boolean v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->gyroFilterValid:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private glMatrixFromSo3(Lcom/visualon/OSMPSensor/Matrix3x3d;)[D
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 361
    iget-object v4, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->rotationMatrix:[D

    mul-int/lit8 v5, v3, 0x4

    add-int/2addr v5, v1

    invoke-virtual {p1, v1, v3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->rotationMatrix:[D

    const/16 v0, 0xb

    const-wide/16 v3, 0x0

    .line 371
    aput-wide v3, p1, v0

    const/4 v0, 0x7

    .line 372
    aput-wide v3, p1, v0

    aput-wide v3, p1, v2

    const/16 v0, 0xe

    .line 380
    aput-wide v3, p1, v0

    const/16 v0, 0xc

    const/16 v1, 0xd

    .line 381
    aput-wide v3, p1, v1

    aput-wide v3, p1, v0

    const/16 v0, 0xf

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 382
    aput-wide v1, p1, v0

    return-object p1
.end method

.method private magObservationFunctionForNumericalJacobian(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;)V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->north:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mh:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 417
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mh:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mz:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->magObservationFunctionForNumericalJacobianTempM:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVec(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 418
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->magObservationFunctionForNumericalJacobianTempM:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2}, Lcom/visualon/OSMPSensor/So3Util;->muFromSO3(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    return-void
.end method

.method private updateAccelCovariance(D)V
    .locals 4

    .line 244
    iget-wide v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->previousAccelNorm:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 245
    iput-wide p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->previousAccelNorm:D

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, p1

    .line 247
    iget-wide v2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->movingAverageAccelNormChange:D

    mul-double v2, v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->movingAverageAccelNormChange:D

    const-wide p1, 0x3fc3333333333333L    # 0.15

    div-double/2addr v0, p1

    const-wide/high16 p1, 0x4019000000000000L    # 6.25

    mul-double v0, v0, p1

    const-wide/high16 p1, 0x3fe8000000000000L    # 0.75

    add-double/2addr v0, p1

    const-wide/high16 p1, 0x401c000000000000L    # 7.0

    .line 250
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    .line 251
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mRaccel:Lcom/visualon/OSMPSensor/Matrix3x3d;

    mul-double p1, p1, p1

    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setSameDiagonal(D)V

    return-void
.end method

.method private updateCovariancesAfterMotion()V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->updateCovariancesAfterMotionTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->transpose(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 404
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->updateCovariancesAfterMotionTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->updateCovariancesAfterMotionTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 405
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->updateCovariancesAfterMotionTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 406
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setIdentity()V

    return-void
.end method


# virtual methods
.method public getGLMatrix()[D
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-direct {p0, v0}, Lcom/visualon/OSMPSensor/OrientationEKF;->glMatrixFromSo3(Lcom/visualon/OSMPSensor/Matrix3x3d;)[D

    move-result-object v0

    return-object v0
.end method

.method public getHeadingDegrees()D
    .locals 11

    .line 153
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v2

    .line 154
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/visualon/OSMPSensor/Matrix3x3d;->get(II)D

    move-result-wide v0

    mul-double v4, v2, v2

    mul-double v6, v0, v0

    add-double/2addr v4, v6

    .line 155
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double v10, v4, v8

    if-gez v10, :cond_0

    return-wide v6

    :cond_0
    const-wide v4, -0x3fa9800000000000L    # -90.0

    .line 159
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    sub-double/2addr v4, v0

    const-wide v0, 0x4076800000000000L    # 360.0

    cmpg-double v2, v4, v6

    if-gez v2, :cond_1

    add-double/2addr v4, v0

    :cond_1
    cmpl-double v2, v4, v0

    if-ltz v2, :cond_2

    sub-double/2addr v4, v0

    :cond_2
    return-wide v4
.end method

.method public getPredictedGLMatrix(D)[D
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->getPredictedGLMatrixTempV1:Lcom/visualon/OSMPSensor/Vector3d;

    .line 185
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->lastGyro:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPSensor/Vector3d;->set(Lcom/visualon/OSMPSensor/Vector3d;)V

    neg-double p1, p1

    .line 186
    invoke-virtual {v0, p1, p2}, Lcom/visualon/OSMPSensor/Vector3d;->scale(D)V

    .line 187
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->getPredictedGLMatrixTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 188
    invoke-static {v0, p1}, Lcom/visualon/OSMPSensor/So3Util;->sO3FromMu(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 189
    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->getPredictedGLMatrixTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    .line 190
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, v0, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 191
    invoke-direct {p0, p2}, Lcom/visualon/OSMPSensor/OrientationEKF;->glMatrixFromSo3(Lcom/visualon/OSMPSensor/Matrix3x3d;)[D

    move-result-object p1

    return-object p1
.end method

.method public getRotationMatrix()Lcom/visualon/OSMPSensor/Matrix3x3d;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    return-object v0
.end method

.method public isAlignedToGravity()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->alignedToGravity:Z

    return v0
.end method

.method public isAlignedToNorth()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->alignedToNorth:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->alignedToGravity:Z

    return v0
.end method

.method public declared-synchronized processAcc(Lcom/visualon/OSMPSensor/Vector3d;J)V
    .locals 2

    monitor-enter p0

    .line 255
    :try_start_0
    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mz:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p2, p1}, Lcom/visualon/OSMPSensor/Vector3d;->set(Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 256
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mz:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p1}, Lcom/visualon/OSMPSensor/Vector3d;->length()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPSensor/OrientationEKF;->updateAccelCovariance(D)V

    .line 257
    iget-boolean p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->alignedToGravity:Z

    if-eqz p1, :cond_3

    .line 258
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mNu:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPSensor/OrientationEKF;->accObservationFunctionForNumericalJacobian(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    .line 261
    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccVDelta:Lcom/visualon/OSMPSensor/Vector3d;

    .line 262
    invoke-virtual {p2}, Lcom/visualon/OSMPSensor/Vector3d;->setZero()V

    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 263
    invoke-virtual {p2, p1, v0, v1}, Lcom/visualon/OSMPSensor/Vector3d;->setComponent(ID)V

    .line 264
    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p2, p3}, Lcom/visualon/OSMPSensor/So3Util;->sO3FromMu(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 265
    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p2, p3, v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 266
    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempV1:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {p0, p2, p3}, Lcom/visualon/OSMPSensor/OrientationEKF;->accObservationFunctionForNumericalJacobian(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 267
    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempV1:Lcom/visualon/OSMPSensor/Vector3d;

    .line 268
    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mNu:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempV2:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {p3, p2, v0}, Lcom/visualon/OSMPSensor/Vector3d;->sub(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 269
    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempV2:Lcom/visualon/OSMPSensor/Vector3d;

    const-wide v0, 0x416312d000000000L    # 1.0E7

    invoke-virtual {p2, v0, v1}, Lcom/visualon/OSMPSensor/Vector3d;->scale(D)V

    .line 270
    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mH:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempV2:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p2, p1, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setColumn(ILcom/visualon/OSMPSensor/Vector3d;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mH:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM3:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->transpose(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 273
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM3:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 274
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mH:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 275
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mRaccel:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mS:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->add(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 276
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mS:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM3:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->invert(Lcom/visualon/OSMPSensor/Matrix3x3d;)Z

    .line 277
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mH:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->transpose(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 278
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM3:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 279
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mK:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 280
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mK:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mNu:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mx:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 281
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mK:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mH:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM3:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 282
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setIdentity()V

    .line 283
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM3:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->minusEquals(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 284
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM3:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 285
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processAccTempM3:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 286
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mx:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2}, Lcom/visualon/OSMPSensor/So3Util;->sO3FromMu(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 287
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->containsNaN()Z

    move-result p1

    if-nez p1, :cond_1

    .line 288
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    goto :goto_1

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->containsNaN()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 290
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setIdentity()V

    .line 291
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/visualon/OSMPSensor/OrientationEKF;->updateCovariancesAfterMotion()V

    goto :goto_2

    .line 294
    :cond_3
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->down:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mz:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/So3Util;->sO3FromTwoVec(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    const/4 p1, 0x1

    .line 295
    iput-boolean p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->alignedToGravity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized processGyro(Lcom/visualon/OSMPSensor/Vector3d;J)V
    .locals 5

    monitor-enter p0

    .line 217
    :try_start_0
    iget-wide v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->sensorTimeStampGyro:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    sub-long v0, p2, v0

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float v0, v0, v1

    const v1, 0x3d23d70a    # 0.04f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 220
    iget-boolean v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->gyroFilterValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->filteredGyroTimestep:F

    goto :goto_0

    :cond_0
    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0

    .line 223
    :cond_1
    invoke-direct {p0, v0}, Lcom/visualon/OSMPSensor/OrientationEKF;->filterGyroTimestep(F)V

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mu:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {v1, p1}, Lcom/visualon/OSMPSensor/Vector3d;->set(Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 226
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mu:Lcom/visualon/OSMPSensor/Vector3d;

    neg-float v2, v0

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPSensor/Vector3d;->scale(D)V

    .line 227
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mu:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object v2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {v1, v2}, Lcom/visualon/OSMPSensor/So3Util;->sO3FromMu(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 228
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processGyroTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 229
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processGyroTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 230
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processGyroTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->containsNaN()Z

    move-result v1

    if-nez v1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processGyroTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    goto :goto_1

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->containsNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setIdentity()V

    .line 234
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/visualon/OSMPSensor/OrientationEKF;->updateCovariancesAfterMotion()V

    .line 235
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processGyroTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mQ:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 236
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processGyroTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    mul-float v0, v0, v0

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->scale(D)V

    .line 237
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processGyroTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->plusEquals(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 239
    :cond_4
    iput-wide p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->sensorTimeStampGyro:J

    .line 240
    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->lastGyro:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p2, p1}, Lcom/visualon/OSMPSensor/Vector3d;->set(Lcom/visualon/OSMPSensor/Vector3d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized processMag([FJ)V
    .locals 8

    monitor-enter p0

    .line 300
    :try_start_0
    iget-boolean p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->alignedToGravity:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 301
    monitor-exit p0

    return-void

    .line 303
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mz:Lcom/visualon/OSMPSensor/Vector3d;

    const/4 p2, 0x0

    aget p3, p1, p2

    float-to-double v1, p3

    const/4 p3, 0x1

    aget v3, p1, p3

    float-to-double v3, v3

    const/4 v7, 0x2

    aget p1, p1, v7

    float-to-double v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/visualon/OSMPSensor/Vector3d;->set(DDD)V

    .line 304
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mz:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p1}, Lcom/visualon/OSMPSensor/Vector3d;->normalize()V

    .line 305
    new-instance p1, Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {p1}, Lcom/visualon/OSMPSensor/Vector3d;-><init>()V

    .line 306
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v0, v7, p1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->getColumn(ILcom/visualon/OSMPSensor/Vector3d;)V

    .line 307
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mz:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV1:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {v0, p1, v1}, Lcom/visualon/OSMPSensor/Vector3d;->cross(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 308
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV1:Lcom/visualon/OSMPSensor/Vector3d;

    .line 309
    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Vector3d;->normalize()V

    .line 310
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV2:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPSensor/Vector3d;->cross(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 311
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV2:Lcom/visualon/OSMPSensor/Vector3d;

    .line 312
    invoke-virtual {p1}, Lcom/visualon/OSMPSensor/Vector3d;->normalize()V

    .line 313
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mz:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPSensor/Vector3d;->set(Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 314
    iget-boolean p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->alignedToNorth:Z

    if-eqz p1, :cond_2

    .line 315
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mNu:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {p0, p1, p3}, Lcom/visualon/OSMPSensor/OrientationEKF;->magObservationFunctionForNumericalJacobian(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    :goto_0
    const/4 p1, 0x3

    if-ge p2, p1, :cond_1

    .line 318
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV3:Lcom/visualon/OSMPSensor/Vector3d;

    .line 319
    invoke-virtual {p1}, Lcom/visualon/OSMPSensor/Vector3d;->setZero()V

    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 320
    invoke-virtual {p1, p2, v0, v1}, Lcom/visualon/OSMPSensor/Vector3d;->setComponent(ID)V

    .line 321
    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p3}, Lcom/visualon/OSMPSensor/So3Util;->sO3FromMu(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 322
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p3, v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 323
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM2:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV4:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {p0, p1, p3}, Lcom/visualon/OSMPSensor/OrientationEKF;->magObservationFunctionForNumericalJacobian(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 324
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV4:Lcom/visualon/OSMPSensor/Vector3d;

    .line 325
    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mNu:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV5:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {p3, p1, v0}, Lcom/visualon/OSMPSensor/Vector3d;->sub(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 326
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV5:Lcom/visualon/OSMPSensor/Vector3d;

    const-wide v0, 0x416312d000000000L    # 1.0E7

    invoke-virtual {p1, v0, v1}, Lcom/visualon/OSMPSensor/Vector3d;->scale(D)V

    .line 327
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mH:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempV5:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setColumn(ILcom/visualon/OSMPSensor/Vector3d;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mH:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->transpose(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 330
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 331
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mH:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM6:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 332
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM6:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mR:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mS:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->add(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 333
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mS:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->invert(Lcom/visualon/OSMPSensor/Matrix3x3d;)Z

    .line 334
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mH:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->transpose(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 335
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM6:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 336
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM6:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mK:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 337
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mK:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mNu:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mx:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 338
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mK:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mH:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 339
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setIdentity()V

    .line 340
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->minusEquals(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 341
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM5:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 342
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 343
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mx:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2}, Lcom/visualon/OSMPSensor/So3Util;->sO3FromMu(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 344
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p3}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 345
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 346
    invoke-direct {p0}, Lcom/visualon/OSMPSensor/OrientationEKF;->updateCovariancesAfterMotion()V

    goto :goto_1

    .line 349
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mNu:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPSensor/OrientationEKF;->magObservationFunctionForNumericalJacobian(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Vector3d;)V

    .line 350
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mNu:Lcom/visualon/OSMPSensor/Vector3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2}, Lcom/visualon/OSMPSensor/So3Util;->sO3FromMu(Lcom/visualon/OSMPSensor/Vector3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 351
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 352
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->processMagTempM4:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {p1, p2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->set(Lcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 353
    invoke-direct {p0}, Lcom/visualon/OSMPSensor/OrientationEKF;->updateCovariancesAfterMotion()V

    .line 354
    iput-boolean p3, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->alignedToNorth:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reset()V
    .locals 15

    const-wide/16 v0, 0x0

    .line 120
    iput-wide v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->sensorTimeStampGyro:J

    .line 121
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setIdentity()V

    .line 122
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3LastMotion:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setIdentity()V

    .line 124
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setZero()V

    .line 125
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mP:Lcom/visualon/OSMPSensor/Matrix3x3d;

    const-wide/high16 v1, 0x4039000000000000L    # 25.0

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setSameDiagonal(D)V

    .line 127
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mQ:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setZero()V

    .line 128
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mQ:Lcom/visualon/OSMPSensor/Matrix3x3d;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setSameDiagonal(D)V

    .line 130
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mR:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setZero()V

    .line 131
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mR:Lcom/visualon/OSMPSensor/Matrix3x3d;

    const-wide/high16 v1, 0x3fb0000000000000L    # 0.0625

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setSameDiagonal(D)V

    .line 132
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mRaccel:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setZero()V

    .line 133
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mRaccel:Lcom/visualon/OSMPSensor/Matrix3x3d;

    const-wide/high16 v1, 0x3fe2000000000000L    # 0.5625

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setSameDiagonal(D)V

    .line 134
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mS:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setZero()V

    .line 135
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mH:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setZero()V

    .line 136
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mK:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Matrix3x3d;->setZero()V

    .line 137
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mNu:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Vector3d;->setZero()V

    .line 138
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mz:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Vector3d;->setZero()V

    .line 139
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mh:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Vector3d;->setZero()V

    .line 140
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mu:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Vector3d;->setZero()V

    .line 141
    iget-object v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->mx:Lcom/visualon/OSMPSensor/Vector3d;

    invoke-virtual {v0}, Lcom/visualon/OSMPSensor/Vector3d;->setZero()V

    .line 142
    iget-object v1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->down:Lcom/visualon/OSMPSensor/Vector3d;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide v6, 0x40239eb851eb851fL    # 9.81

    invoke-virtual/range {v1 .. v7}, Lcom/visualon/OSMPSensor/Vector3d;->set(DDD)V

    .line 143
    iget-object v8, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->north:Lcom/visualon/OSMPSensor/Vector3d;

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/visualon/OSMPSensor/Vector3d;->set(DDD)V

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->alignedToGravity:Z

    .line 145
    iput-boolean v0, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->alignedToNorth:Z

    return-void
.end method

.method public declared-synchronized setHeadingDegrees(D)V
    .locals 10

    monitor-enter p0

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/visualon/OSMPSensor/OrientationEKF;->getHeadingDegrees()D

    move-result-wide v0

    sub-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v0

    .line 172
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 173
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    const/4 v2, 0x3

    new-array v3, v2, [[D

    new-array v4, v2, [D

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    neg-double v6, v0

    const/4 v8, 0x1

    aput-wide v6, v4, v8

    const-wide/16 v6, 0x0

    const/4 v9, 0x2

    aput-wide v6, v4, v9

    aput-object v4, v3, v5

    new-array v4, v2, [D

    aput-wide v0, v4, v5

    aput-wide p1, v4, v8

    aput-wide v6, v4, v9

    aput-object v4, v3, v8

    new-array p1, v2, [D

    aput-wide v6, p1, v5

    aput-wide v6, p1, v8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    aput-wide v0, p1, v9

    aput-object p1, v3, v9

    .line 175
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->setHeadingDegreesTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {v3, p1}, Lcom/visualon/OSMPSensor/OrientationEKF;->arrayAssign([[DLcom/visualon/OSMPSensor/Matrix3x3d;)V

    .line 176
    iget-object p1, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->so3SensorFromWorld:Lcom/visualon/OSMPSensor/Matrix3x3d;

    iget-object p2, p0, Lcom/visualon/OSMPSensor/OrientationEKF;->setHeadingDegreesTempM1:Lcom/visualon/OSMPSensor/Matrix3x3d;

    invoke-static {p1, p2, p1}, Lcom/visualon/OSMPSensor/Matrix3x3d;->mult(Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;Lcom/visualon/OSMPSensor/Matrix3x3d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
