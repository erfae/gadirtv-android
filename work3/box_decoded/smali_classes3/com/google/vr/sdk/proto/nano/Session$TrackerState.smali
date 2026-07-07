.class public final Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/Session$TrackerState;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$TrackerState;


# instance fields
.field private bitField0_:I

.field public gyroscopeBias:[D

.field public lastGyroscopeSample:[D

.field private lastGyroscopeTimestamp_:D

.field public lensOffset:[F

.field private magCalibrationTimeSinceEpochSeconds_:J

.field private magneticFieldStrength_:D

.field public magnetometerBias:[D

.field public q:[D

.field public rightLensOffset:[F

.field private timeSinceEpochSeconds_:J

.field private trackingInVrcore_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->clear()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    .line 4
    sput-object v1, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 365
    new-instance v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 5

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    .line 51
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    const-wide/16 v1, 0x0

    .line 52
    iput-wide v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    .line 53
    sget-object v3, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    .line 54
    sget-object v3, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    .line 55
    sget-object v3, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    iput-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    const-wide/16 v3, 0x0

    .line 56
    iput-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    .line 57
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    .line 58
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    .line 59
    iput-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    .line 60
    iput-wide v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    .line 61
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->cachedSize:I

    return-object p0
.end method

.method public final clearLastGyroscopeTimestamp()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 2

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    return-object p0
.end method

.method public final clearMagCalibrationTimeSinceEpochSeconds()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 2

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    .line 42
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    return-object p0
.end method

.method public final clearMagneticFieldStrength()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 2

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    return-object p0
.end method

.method public final clearTimeSinceEpochSeconds()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 2

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    return-object p0
.end method

.method public final clearTrackingInVrcore()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->clone()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->clone()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 3

    .line 65
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 70
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 72
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 74
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    .line 76
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    .line 78
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    .line 79
    :cond_4
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    if-eqz v1, :cond_5

    array-length v2, v1

    if-lez v2, :cond_5

    .line 80
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    :cond_5
    return-object v0

    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->clone()Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 136
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 138
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 142
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 144
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    .line 145
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 147
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 151
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 153
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 157
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-eqz v1, :cond_4

    array-length v3, v1

    if-lez v3, :cond_4

    .line 159
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 163
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 165
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    .line 166
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_5
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 168
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    .line 169
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    :cond_6
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    if-eqz v1, :cond_7

    array-length v2, v1

    if-lez v2, :cond_7

    .line 171
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 175
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_7
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 177
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    .line 178
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_8
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    .line 180
    iget-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    .line 181
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_9
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    if-eqz v1, :cond_a

    array-length v2, v1

    if-lez v2, :cond_a

    .line 183
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 187
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public final getLastGyroscopeTimestamp()D
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    return-wide v0
.end method

.method public final getMagCalibrationTimeSinceEpochSeconds()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    return-wide v0
.end method

.method public final getMagneticFieldStrength()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    return-wide v0
.end method

.method public final getTimeSinceEpochSeconds()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    return-wide v0
.end method

.method public final getTrackingInVrcore()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    return v0
.end method

.method public final hasLastGyroscopeTimestamp()Z
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMagCalibrationTimeSinceEpochSeconds()Z
    .locals 1

    .line 40
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMagneticFieldStrength()Z
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTimeSinceEpochSeconds()Z
    .locals 2

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTrackingInVrcore()Z
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_36

    const/16 v1, 0x10

    if-eq v0, v1, :cond_35

    const/16 v2, 0x22

    const/4 v3, 0x0

    if-eq v0, v2, :cond_31

    const/16 v2, 0x25

    if-eq v0, v2, :cond_2d

    const/16 v2, 0x31

    if-eq v0, v2, :cond_2c

    const/16 v2, 0x38

    if-eq v0, v2, :cond_2b

    const/16 v2, 0x49

    if-eq v0, v2, :cond_2a

    const/16 v2, 0x50

    if-eq v0, v2, :cond_29

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_25

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_21

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_19

    const/16 v1, 0x19

    if-eq v0, v1, :cond_15

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_11

    const/16 v1, 0x29

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x41

    if-eq v0, v1, :cond_5

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    .line 192
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 320
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 321
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 322
    div-int/lit8 v0, v0, 0x8

    .line 323
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    if-nez v2, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    array-length v4, v2

    :goto_1
    add-int/2addr v0, v4

    .line 324
    new-array v5, v0, [D

    if-eqz v4, :cond_3

    .line 326
    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    if-ge v4, v0, :cond_4

    .line 328
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    aput-wide v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 330
    :cond_4
    iput-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    .line 331
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 308
    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 309
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    if-nez v1, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    array-length v2, v1

    :goto_3
    add-int/2addr v0, v2

    .line 310
    new-array v4, v0, [D

    if-eqz v2, :cond_7

    .line 312
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_8

    .line 314
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 315
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 317
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    aput-wide v0, v4, v2

    .line 318
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    goto/16 :goto_0

    .line 288
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 289
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 290
    div-int/lit8 v0, v0, 0x8

    .line 291
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-nez v2, :cond_a

    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    array-length v4, v2

    :goto_5
    add-int/2addr v0, v4

    .line 292
    new-array v5, v0, [D

    if-eqz v4, :cond_b

    .line 294
    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_6
    if-ge v4, v0, :cond_c

    .line 296
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    aput-wide v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 298
    :cond_c
    iput-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    .line 299
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 276
    :cond_d
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 277
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-nez v1, :cond_e

    const/4 v2, 0x0

    goto :goto_7

    :cond_e
    array-length v2, v1

    :goto_7
    add-int/2addr v0, v2

    .line 278
    new-array v4, v0, [D

    if-eqz v2, :cond_f

    .line 280
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_8
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_10

    .line 282
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 283
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 285
    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    aput-wide v0, v4, v2

    .line 286
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    goto/16 :goto_0

    .line 236
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 237
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 238
    div-int/lit8 v0, v0, 0x8

    .line 239
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-nez v2, :cond_12

    const/4 v4, 0x0

    goto :goto_9

    :cond_12
    array-length v4, v2

    :goto_9
    add-int/2addr v0, v4

    .line 240
    new-array v5, v0, [D

    if-eqz v4, :cond_13

    .line 242
    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_a
    if-ge v4, v0, :cond_14

    .line 244
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    aput-wide v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 246
    :cond_14
    iput-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    .line 247
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 224
    :cond_15
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-nez v1, :cond_16

    const/4 v2, 0x0

    goto :goto_b

    :cond_16
    array-length v2, v1

    :goto_b
    add-int/2addr v0, v2

    .line 226
    new-array v4, v0, [D

    if-eqz v2, :cond_17

    .line 228
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    :goto_c
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_18

    .line 230
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 231
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 233
    :cond_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    aput-wide v0, v4, v2

    .line 234
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    goto/16 :goto_0

    .line 207
    :cond_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 208
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 209
    div-int/lit8 v0, v0, 0x8

    .line 210
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    if-nez v2, :cond_1a

    const/4 v4, 0x0

    goto :goto_d

    :cond_1a
    array-length v4, v2

    :goto_d
    add-int/2addr v0, v4

    .line 211
    new-array v5, v0, [D

    if-eqz v4, :cond_1b

    .line 213
    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    :goto_e
    if-ge v4, v0, :cond_1c

    .line 215
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v2

    aput-wide v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 217
    :cond_1c
    iput-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    .line 218
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 195
    :cond_1d
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    if-nez v1, :cond_1e

    const/4 v2, 0x0

    goto :goto_f

    :cond_1e
    array-length v2, v1

    :goto_f
    add-int/2addr v0, v2

    .line 197
    new-array v4, v0, [D

    if-eqz v2, :cond_1f

    .line 199
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    :goto_10
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_20

    .line 201
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 202
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 204
    :cond_20
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    aput-wide v0, v4, v2

    .line 205
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    goto/16 :goto_0

    .line 340
    :cond_21
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 341
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    if-nez v1, :cond_22

    const/4 v2, 0x0

    goto :goto_11

    :cond_22
    array-length v2, v1

    :goto_11
    add-int/2addr v0, v2

    .line 342
    new-array v4, v0, [F

    if-eqz v2, :cond_23

    .line 344
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    :goto_12
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_24

    .line 346
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v2

    .line 347
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 349
    :cond_24
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v2

    .line 350
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    goto/16 :goto_0

    .line 352
    :cond_25
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 353
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 354
    div-int/lit8 v0, v0, 0x4

    .line 355
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    if-nez v2, :cond_26

    const/4 v4, 0x0

    goto :goto_13

    :cond_26
    array-length v4, v2

    :goto_13
    add-int/2addr v0, v4

    .line 356
    new-array v5, v0, [F

    if-eqz v4, :cond_27

    .line 358
    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_27
    :goto_14
    if-ge v4, v0, :cond_28

    .line 360
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 362
    :cond_28
    iput-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    .line 363
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 336
    :cond_29
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    .line 337
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    goto/16 :goto_0

    .line 333
    :cond_2a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    .line 334
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    goto/16 :goto_0

    .line 304
    :cond_2b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    .line 305
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    goto/16 :goto_0

    .line 301
    :cond_2c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    .line 302
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    goto/16 :goto_0

    .line 250
    :cond_2d
    invoke-static {p1, v2}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    if-nez v1, :cond_2e

    const/4 v2, 0x0

    goto :goto_15

    :cond_2e
    array-length v2, v1

    :goto_15
    add-int/2addr v0, v2

    .line 252
    new-array v4, v0, [F

    if-eqz v2, :cond_2f

    .line 254
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2f
    :goto_16
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_30

    .line 256
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v2

    .line 257
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 259
    :cond_30
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v2

    .line 260
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    goto/16 :goto_0

    .line 262
    :cond_31
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 263
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 264
    div-int/lit8 v0, v0, 0x4

    .line 265
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    if-nez v2, :cond_32

    const/4 v4, 0x0

    goto :goto_17

    :cond_32
    array-length v4, v2

    :goto_17
    add-int/2addr v0, v4

    .line 266
    new-array v5, v0, [F

    if-eqz v4, :cond_33

    .line 268
    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_33
    :goto_18
    if-ge v4, v0, :cond_34

    .line 270
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 272
    :cond_34
    iput-object v5, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    .line 273
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 220
    :cond_35
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    .line 221
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    goto/16 :goto_0

    :cond_36
    return-object p0
.end method

.method public final setLastGyroscopeTimestamp(D)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    .line 21
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    return-object p0
.end method

.method public final setMagCalibrationTimeSinceEpochSeconds(J)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1

    .line 44
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    .line 45
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    return-object p0
.end method

.method public final setMagneticFieldStrength(D)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    .line 37
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    return-object p0
.end method

.method public final setTimeSinceEpochSeconds(J)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    .line 13
    iput-wide p1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    return-object p0
.end method

.method public final setTrackingInVrcore(Z)Lcom/google/vr/sdk/proto/nano/Session$TrackerState;
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    .line 29
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 83
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    .line 84
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 85
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    const/4 v0, 0x0

    .line 86
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->q:[D

    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 87
    aget-wide v4, v3, v0

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 90
    iget-wide v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->timeSinceEpochSeconds_:J

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    .line 92
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    const/16 v4, 0x1a

    .line 93
    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 94
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    const/4 v0, 0x0

    .line 95
    :goto_1
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->gyroscopeBias:[D

    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 96
    aget-wide v5, v4, v0

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    if-eqz v0, :cond_3

    array-length v4, v0

    if-lez v4, :cond_3

    .line 99
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v4, 0x22

    .line 100
    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 101
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    const/4 v0, 0x0

    .line 102
    :goto_2
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lensOffset:[F

    array-length v5, v4

    if-ge v0, v5, :cond_3

    .line 103
    aget v4, v4, v0

    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    if-eqz v0, :cond_4

    array-length v4, v0

    if-lez v4, :cond_4

    .line 106
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    const/16 v4, 0x2a

    .line 107
    invoke-virtual {p1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 108
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    const/4 v0, 0x0

    .line 109
    :goto_3
    iget-object v4, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeSample:[D

    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 110
    aget-wide v5, v4, v0

    invoke-virtual {p1, v5, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 112
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 113
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->lastGyroscopeTimestamp_:D

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 114
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 115
    iget-boolean v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->trackingInVrcore_:Z

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 116
    :cond_6
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    if-eqz v0, :cond_7

    array-length v3, v0

    if-lez v3, :cond_7

    .line 117
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    const/16 v3, 0x42

    .line 118
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 119
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    const/4 v0, 0x0

    .line 120
    :goto_4
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magnetometerBias:[D

    array-length v4, v3

    if-ge v0, v4, :cond_7

    .line 121
    aget-wide v4, v3, v0

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 123
    :cond_7
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 124
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magneticFieldStrength_:D

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 125
    :cond_8
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    .line 126
    iget-wide v3, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->magCalibrationTimeSinceEpochSeconds_:J

    invoke-virtual {p1, v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    if-eqz v0, :cond_a

    array-length v1, v0

    if-lez v1, :cond_a

    .line 128
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x5a

    .line 129
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 130
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 131
    :goto_5
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/Session$TrackerState;->rightLensOffset:[F

    array-length v1, v0

    if-ge v2, v1, :cond_a

    .line 132
    aget v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 134
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
