.class public final Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
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
    name = "DeviceParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams$ButtonType;,
        Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams$VerticalAlignmentType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;


# instance fields
.field private bitField0_:I

.field public blueDistortionCoefficients:[F

.field public daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

.field public distortionCoefficients:[F

.field public greenDistortionCoefficients:[F

.field private hasMagnet_:Z

.field private interLensDistance_:F

.field public internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

.field public leftEyeFieldOfViewAngles:[F

.field private model_:Ljava/lang/String;

.field private primaryButton_:I

.field private screenToLensDistance_:F

.field private trayToLensDistance_:F

.field private vendor_:Ljava/lang/String;

.field private verticalAlignment_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 92
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->clear()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    return-void
.end method

.method public static checkButtonTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    return p0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum ButtonType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkButtonTypeOrThrow([I)[I
    .locals 3

    .line 12
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 13
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 14
    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->checkButtonTypeOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static checkVerticalAlignmentTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum VerticalAlignmentType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkVerticalAlignmentTypeOrThrow([I)[I
    .locals 3

    .line 4
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 6
    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->checkVerticalAlignmentTypeOrThrow(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static emptyArray()[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 2

    .line 17
    sget-object v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    if-nez v0, :cond_1

    .line 18
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    .line 20
    sput-object v1, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->_emptyArray:[Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 388
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    return-object p0
.end method


# virtual methods
.method public final clear()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 3

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const-string v1, ""

    .line 95
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    const/4 v1, 0x0

    .line 97
    iput v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    .line 98
    iput v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    .line 99
    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    .line 100
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    .line 101
    iput v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    .line 102
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    .line 103
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    .line 104
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    .line 105
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    const/4 v0, 0x1

    .line 106
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 108
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 109
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->cachedSize:I

    return-object p0
.end method

.method public final clearHasMagnet()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    .line 78
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final clearInterLensDistance()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    .line 54
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final clearModel()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    const-string v0, ""

    .line 35
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    .line 36
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final clearPrimaryButton()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .line 88
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v0, 0x1

    .line 89
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    return-object p0
.end method

.method public final clearScreenToLensDistance()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    .line 46
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final clearTrayToLensDistance()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    .line 70
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final clearVendor()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final clearVerticalAlignment()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

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

    .line 391
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 3

    .line 112
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 117
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 119
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 121
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    .line 123
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    if-eqz v1, :cond_4

    .line 125
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 126
    :cond_4
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-eqz v1, :cond_5

    .line 127
    invoke-virtual {v1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    :cond_5
    return-object v0

    :catch_0
    move-exception v0

    .line 115
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

    .line 393
    invoke-virtual {p0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->clone()Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 179
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 180
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    .line 182
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    .line 185
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 187
    iget v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    .line 188
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 190
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    .line 191
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    if-eqz v1, :cond_4

    array-length v4, v1

    if-lez v4, :cond_4

    .line 193
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 197
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 199
    iget v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    .line 200
    invoke-static {v1, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    :cond_5
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-eqz v1, :cond_6

    array-length v4, v1

    if-lez v4, :cond_6

    .line 202
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 206
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_6
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    if-eqz v1, :cond_7

    array-length v4, v1

    if-lez v4, :cond_7

    .line 208
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 212
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 213
    :cond_7
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    if-eqz v1, :cond_8

    array-length v4, v1

    if-lez v4, :cond_8

    .line 214
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 218
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
    :cond_8
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    .line 220
    iget-boolean v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    .line 221
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 222
    :cond_9
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    .line 223
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    .line 224
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_a
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    .line 226
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    .line 227
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_b
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    if-eqz v1, :cond_c

    const/16 v2, 0x6c1

    .line 230
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    :cond_c
    iget-object v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-eqz v1, :cond_d

    const v2, 0x30113

    .line 233
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    return v0
.end method

.method public final getHasMagnet()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    return v0
.end method

.method public final getInterLensDistance()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    return v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryButton()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    return v0
.end method

.method public final getScreenToLensDistance()F
    .locals 1

    .line 43
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    return v0
.end method

.method public final getTrayToLensDistance()F
    .locals 1

    .line 67
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    return v0
.end method

.method public final getVendor()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerticalAlignment()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    return v0
.end method

.method public final hasHasMagnet()Z
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasInterLensDistance()Z
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasModel()Z
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrimaryButton()Z
    .locals 1

    .line 87
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasScreenToLensDistance()Z
    .locals 1

    .line 44
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTrayToLensDistance()Z
    .locals 1

    .line 68
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVendor()Z
    .locals 2

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVerticalAlignment()Z
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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

    .line 392
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 238
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 384
    :sswitch_0
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-nez v0, :cond_1

    .line 385
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 380
    :sswitch_1
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    if-nez v0, :cond_2

    .line 381
    new-instance v0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-direct {v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 371
    :sswitch_2
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 372
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 373
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->checkButtonTypeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    .line 374
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 378
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 362
    :sswitch_3
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 363
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 364
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->checkVerticalAlignmentTypeOrThrow(I)I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    .line 365
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 368
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 369
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 359
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    .line 360
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x4d

    .line 334
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 335
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    if-nez v2, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    array-length v3, v2

    :goto_1
    add-int/2addr v0, v3

    .line 336
    new-array v4, v0, [F

    if-eqz v3, :cond_4

    .line 338
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_5

    .line 340
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 341
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 343
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 344
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    goto/16 :goto_0

    .line 346
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 347
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 348
    div-int/lit8 v0, v0, 0x4

    .line 349
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    if-nez v3, :cond_6

    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    array-length v4, v3

    :goto_3
    add-int/2addr v0, v4

    .line 350
    new-array v5, v0, [F

    if-eqz v4, :cond_7

    .line 352
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    if-ge v4, v0, :cond_8

    .line 354
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 356
    :cond_8
    iput-object v5, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    .line 357
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x45

    .line 308
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 309
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    if-nez v2, :cond_9

    const/4 v3, 0x0

    goto :goto_5

    :cond_9
    array-length v3, v2

    :goto_5
    add-int/2addr v0, v3

    .line 310
    new-array v4, v0, [F

    if-eqz v3, :cond_a

    .line 312
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_b

    .line 314
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 315
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 317
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 318
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    goto/16 :goto_0

    .line 320
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 321
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 322
    div-int/lit8 v0, v0, 0x4

    .line 323
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    if-nez v3, :cond_c

    const/4 v4, 0x0

    goto :goto_7

    :cond_c
    array-length v4, v3

    :goto_7
    add-int/2addr v0, v4

    .line 324
    new-array v5, v0, [F

    if-eqz v4, :cond_d

    .line 326
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_8
    if-ge v4, v0, :cond_e

    .line 328
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 330
    :cond_e
    iput-object v5, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    .line 331
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x3d

    .line 282
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 283
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-nez v2, :cond_f

    const/4 v3, 0x0

    goto :goto_9

    :cond_f
    array-length v3, v2

    :goto_9
    add-int/2addr v0, v3

    .line 284
    new-array v4, v0, [F

    if-eqz v3, :cond_10

    .line 286
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_11

    .line 288
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 289
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 291
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 292
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    goto/16 :goto_0

    .line 294
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 295
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 296
    div-int/lit8 v0, v0, 0x4

    .line 297
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-nez v3, :cond_12

    const/4 v4, 0x0

    goto :goto_b

    :cond_12
    array-length v4, v3

    :goto_b
    add-int/2addr v0, v4

    .line 298
    new-array v5, v0, [F

    if-eqz v4, :cond_13

    .line 300
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_c
    if-ge v4, v0, :cond_14

    .line 302
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 304
    :cond_14
    iput-object v5, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    .line 305
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 278
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    .line 279
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x2d

    .line 253
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 254
    iget-object v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    if-nez v2, :cond_15

    const/4 v3, 0x0

    goto :goto_d

    :cond_15
    array-length v3, v2

    :goto_d
    add-int/2addr v0, v3

    .line 255
    new-array v4, v0, [F

    if-eqz v3, :cond_16

    .line 257
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    :goto_e
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_17

    .line 259
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 260
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 262
    :cond_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 263
    iput-object v4, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    goto/16 :goto_0

    .line 265
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 266
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 267
    div-int/lit8 v0, v0, 0x4

    .line 268
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    if-nez v3, :cond_18

    const/4 v4, 0x0

    goto :goto_f

    :cond_18
    array-length v4, v3

    :goto_f
    add-int/2addr v0, v4

    .line 269
    new-array v5, v0, [F

    if-eqz v4, :cond_19

    .line 271
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    :goto_10
    if-ge v4, v0, :cond_1a

    .line 273
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 275
    :cond_1a
    iput-object v5, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    .line 276
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 249
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    .line 250
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    .line 246
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    .line 247
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    .line 243
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    .line 244
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    .line 240
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    .line 241
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    goto/16 :goto_0

    :sswitch_12
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_12
        0xa -> :sswitch_11
        0x12 -> :sswitch_10
        0x1d -> :sswitch_f
        0x25 -> :sswitch_e
        0x2a -> :sswitch_d
        0x2d -> :sswitch_c
        0x35 -> :sswitch_b
        0x3a -> :sswitch_a
        0x3d -> :sswitch_9
        0x42 -> :sswitch_8
        0x45 -> :sswitch_7
        0x4a -> :sswitch_6
        0x4d -> :sswitch_5
        0x50 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x360a -> :sswitch_1
        0x18089a -> :sswitch_0
    .end sparse-switch
.end method

.method public final setHasMagnet(Z)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 81
    iput-boolean p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    return-object p0
.end method

.method public final setInterLensDistance(F)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 57
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    return-object p0
.end method

.method public final setModel(Ljava/lang/String;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 41
    iput-object p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    return-object p0
.end method

.method public final setPrimaryButton(I)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 0

    .line 84
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    .line 85
    iget p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final setScreenToLensDistance(F)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .line 48
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 49
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    return-object p0
.end method

.method public final setTrayToLensDistance(F)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 73
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    return-object p0
.end method

.method public final setVendor(Ljava/lang/String;)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 1

    .line 29
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    .line 31
    iput-object p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    return-object p0
.end method

.method public final setVerticalAlignment(I)Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;
    .locals 0

    .line 60
    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    .line 61
    iget p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->vendor_:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 131
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->model_:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 133
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 134
    iget v2, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->screenToLensDistance_:F

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 135
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 136
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->interLensDistance_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    array-length v3, v0

    if-lez v3, :cond_4

    .line 138
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v3, 0x2a

    .line 139
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 140
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    const/4 v0, 0x0

    .line 141
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->leftEyeFieldOfViewAngles:[F

    array-length v4, v3

    if-ge v0, v4, :cond_4

    .line 142
    aget v3, v3, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 145
    iget v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->trayToLensDistance_:F

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    if-eqz v0, :cond_6

    array-length v3, v0

    if-lez v3, :cond_6

    .line 147
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v3, 0x3a

    .line 148
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 149
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    const/4 v0, 0x0

    .line 150
    :goto_1
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->distortionCoefficients:[F

    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 151
    aget v3, v3, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    if-eqz v0, :cond_7

    array-length v3, v0

    if-lez v3, :cond_7

    .line 154
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v3, 0x42

    .line 155
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 156
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    const/4 v0, 0x0

    .line 157
    :goto_2
    iget-object v3, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->greenDistortionCoefficients:[F

    array-length v4, v3

    if-ge v0, v4, :cond_7

    .line 158
    aget v3, v3, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 160
    :cond_7
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    if-eqz v0, :cond_8

    array-length v3, v0

    if-lez v3, :cond_8

    .line 161
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x4a

    .line 162
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 163
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 164
    :goto_3
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->blueDistortionCoefficients:[F

    array-length v1, v0

    if-ge v2, v1, :cond_8

    .line 165
    aget v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 167
    :cond_8
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 168
    iget-boolean v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->hasMagnet_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 169
    :cond_9
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 170
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->verticalAlignment_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 171
    :cond_a
    iget v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 172
    iget v1, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->primaryButton_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 173
    :cond_b
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->internal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$CardboardInternalParams;

    if-eqz v0, :cond_c

    const/16 v1, 0x6c1

    .line 174
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 175
    :cond_c
    iget-object v0, p0, Lcom/google/vr/sdk/proto/nano/CardboardDevice$DeviceParams;->daydreamInternal:Lcom/google/vr/sdk/proto/nano/CardboardDevice$DaydreamInternalParams;

    if-eqz v0, :cond_d

    const v1, 0x30113

    .line 176
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 177
    :cond_d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
