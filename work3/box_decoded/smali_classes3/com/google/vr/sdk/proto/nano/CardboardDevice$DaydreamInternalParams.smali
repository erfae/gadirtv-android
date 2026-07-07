.class public final Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/proto/nano/CardboardDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DaydreamInternalParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;


# instance fields
.field public alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

.field private bitField0_:I

.field private clampDistortionToMaximumFieldOfView_:Z

.field private clipFieldOfViewToDisplay_:Z

.field private distortionMeshResolution_:I

.field private sensorOrientationIndependentOfDisplay_:Z

.field private useRotationalAlignmentCorrection_:Z

.field private version_:I

.field public vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clear()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    return-void
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 4
    sput-object v1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

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
    sget-object v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 177
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 3

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 59
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 60
    invoke-static {}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;->emptyArray()[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    .line 61
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    .line 62
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    const/16 v2, 0x28

    .line 64
    iput v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->distortionMeshResolution_:I

    const/4 v2, 0x1

    .line 65
    iput-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clipFieldOfViewToDisplay_:Z

    .line 66
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clampDistortionToMaximumFieldOfView_:Z

    .line 67
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->cachedSize:I

    return-object p0
.end method

.method public final clearClampDistortionToMaximumFieldOfView()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clampDistortionToMaximumFieldOfView_:Z

    .line 50
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    return-object p0
.end method

.method public final clearClipFieldOfViewToDisplay()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clipFieldOfViewToDisplay_:Z

    .line 42
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    return-object p0
.end method

.method public final clearDistortionMeshResolution()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    const/16 v0, 0x28

    .line 33
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->distortionMeshResolution_:I

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    return-object p0
.end method

.method public final clearSensorOrientationIndependentOfDisplay()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    return-object p0
.end method

.method public final clearUseRotationalAlignmentCorrection()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    return-object p0
.end method

.method public final clearVersion()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

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

    .line 180
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 4

    .line 70
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 75
    array-length v1, v1

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    const/4 v1, 0x0

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 77
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 73
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

    .line 182
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 105
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 106
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 107
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 108
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 110
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 111
    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 114
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 117
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    .line 118
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_3
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 120
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    .line 121
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 124
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_5
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 126
    iget v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->distortionMeshResolution_:I

    .line 127
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_6
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 129
    iget-boolean v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clipFieldOfViewToDisplay_:Z

    .line 130
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_7
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    .line 132
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clampDistortionToMaximumFieldOfView_:Z

    .line 133
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    return v0
.end method

.method public final getClampDistortionToMaximumFieldOfView()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clampDistortionToMaximumFieldOfView_:Z

    return v0
.end method

.method public final getClipFieldOfViewToDisplay()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clipFieldOfViewToDisplay_:Z

    return v0
.end method

.method public final getDistortionMeshResolution()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->distortionMeshResolution_:I

    return v0
.end method

.method public final getSensorOrientationIndependentOfDisplay()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    return v0
.end method

.method public final getUseRotationalAlignmentCorrection()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    return v0
.end method

.method public final getVersion()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    return v0
.end method

.method public final hasClampDistortionToMaximumFieldOfView()Z
    .locals 1

    .line 48
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasClipFieldOfViewToDisplay()Z
    .locals 1

    .line 40
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDistortionMeshResolution()Z
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSensorOrientationIndependentOfDisplay()Z
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasUseRotationalAlignmentCorrection()Z
    .locals 1

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVersion()Z
    .locals 2

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

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

    .line 181
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    const/16 v2, 0x12

    if-eq v0, v2, :cond_8

    const/16 v2, 0x18

    if-eq v0, v2, :cond_7

    const/16 v2, 0x20

    if-eq v0, v2, :cond_6

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_4

    const/16 v3, 0x30

    if-eq v0, v3, :cond_3

    const/16 v1, 0x38

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    .line 138
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 174
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clampDistortionToMaximumFieldOfView_:Z

    .line 175
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clipFieldOfViewToDisplay_:Z

    .line 172
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    goto :goto_0

    .line 168
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->distortionMeshResolution_:I

    .line 169
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    goto :goto_0

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    if-nez v0, :cond_5

    .line 165
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    .line 166
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 161
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    .line 162
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    goto :goto_0

    .line 158
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    .line 159
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    goto :goto_0

    .line 144
    :cond_8
    invoke-static {p1, v2}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    const/4 v3, 0x0

    goto :goto_1

    :cond_9
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 146
    new-array v4, v0, [Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    if-eqz v3, :cond_a

    .line 148
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_b

    .line 150
    new-instance v1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    invoke-direct {v1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;-><init>()V

    aput-object v1, v4, v3

    .line 151
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 152
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 154
    :cond_b
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;-><init>()V

    aput-object v0, v4, v3

    .line 155
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 156
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    goto/16 :goto_0

    .line 140
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    .line 141
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    goto/16 :goto_0

    :cond_d
    return-object p0
.end method

.method public final setClampDistortionToMaximumFieldOfView(Z)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 53
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clampDistortionToMaximumFieldOfView_:Z

    return-object p0
.end method

.method public final setClipFieldOfViewToDisplay(Z)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    .line 44
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 45
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clipFieldOfViewToDisplay_:Z

    return-object p0
.end method

.method public final setDistortionMeshResolution(I)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 37
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->distortionMeshResolution_:I

    return-object p0
.end method

.method public final setSensorOrientationIndependentOfDisplay(Z)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 29
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    return-object p0
.end method

.method public final setUseRotationalAlignmentCorrection(Z)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 21
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    return-object p0
.end method

.method public final setVersion(I)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;
    .locals 1

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    .line 13
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 84
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->version_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 86
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->alignmentMarkers:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$ScreenAlignmentMarker;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 87
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 92
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->useRotationalAlignmentCorrection_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 93
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 94
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->sensorOrientationIndependentOfDisplay_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->vignetteParams:Lcom/google/vr/sdk/proto/nano/CardboardDevice$VignetteParams;

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    .line 96
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 97
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    .line 98
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->distortionMeshResolution_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 99
    :cond_6
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    .line 100
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clipFieldOfViewToDisplay_:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 101
    :cond_7
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 102
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clampDistortionToMaximumFieldOfView_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 103
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
