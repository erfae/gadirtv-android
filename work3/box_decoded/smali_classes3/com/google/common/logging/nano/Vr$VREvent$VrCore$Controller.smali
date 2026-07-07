.class public final Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$VrCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Controller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public availableFirmware:Ljava/lang/String;

.field public axis:Ljava/lang/Integer;

.field public batteryLevel:Ljava/lang/Integer;

.field public firmware:Ljava/lang/String;

.field public hardwareRevision:Ljava/lang/String;

.field public isConnected:Ljava/lang/Boolean;

.field public manufacturer:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public otaRetries:Ljava/lang/Integer;

.field public sampleCount:Ljava/lang/Integer;

.field public sensorType:Ljava/lang/Integer;

.field public softwareRevision:Ljava/lang/String;

.field public status:Ljava/lang/Integer;

.field public totalControllerLagCount:Ljava/lang/Integer;

.field public xRailCount:Ljava/lang/Integer;

.field public yRailCount:Ljava/lang/Integer;

.field public zRailCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->clear()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    return-void
.end method

.method public static checkControllerAxisOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    return p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum ControllerAxis"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkSensorTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum SensorType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->isConnected:Ljava/lang/Boolean;

    .line 16
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    .line 17
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    .line 19
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    .line 20
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    .line 21
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    .line 22
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sensorType:Ljava/lang/Integer;

    .line 23
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->axis:Ljava/lang/Integer;

    .line 24
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->totalControllerLagCount:Ljava/lang/Integer;

    .line 26
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->status:Ljava/lang/Integer;

    .line 27
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;
    .locals 2

    .line 30
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

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

    .line 174
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 71
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 74
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 77
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 80
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 83
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 86
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 89
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 92
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 95
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 98
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 101
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 104
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sensorType:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    const/16 v2, 0xc

    .line 107
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->axis:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 110
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    const/16 v2, 0xe

    .line 113
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->totalControllerLagCount:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    const/16 v2, 0xf

    .line 116
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->isConnected:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    const/16 v2, 0x10

    .line 119
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->status:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    const/16 v2, 0x11

    .line 122
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 127
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 171
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->status:Ljava/lang/Integer;

    goto :goto_0

    .line 169
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->isConnected:Ljava/lang/Boolean;

    goto :goto_0

    .line 167
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->totalControllerLagCount:Ljava/lang/Integer;

    goto :goto_0

    .line 165
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    goto :goto_0

    .line 158
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 159
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->checkControllerAxisOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->axis:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 163
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 151
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 152
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->checkSensorTypeOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sensorType:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 155
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 156
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 149
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    goto :goto_0

    .line 147
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 145
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 143
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 141
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    goto/16 :goto_0

    .line 139
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 137
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    goto/16 :goto_0

    .line 135
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    goto/16 :goto_0

    .line 133
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    goto/16 :goto_0

    .line 129
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_11
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0xa -> :sswitch_10
        0x12 -> :sswitch_f
        0x1a -> :sswitch_e
        0x22 -> :sswitch_d
        0x2a -> :sswitch_c
        0x30 -> :sswitch_b
        0x3a -> :sswitch_a
        0x40 -> :sswitch_9
        0x48 -> :sswitch_8
        0x50 -> :sswitch_7
        0x58 -> :sswitch_6
        0x60 -> :sswitch_5
        0x68 -> :sswitch_4
        0x70 -> :sswitch_3
        0x78 -> :sswitch_2
        0x80 -> :sswitch_1
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->manufacturer:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->model:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 38
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->firmware:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->availableFirmware:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->softwareRevision:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->batteryLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 46
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 47
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->hardwareRevision:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 49
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->xRailCount:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 51
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->yRailCount:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 53
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->zRailCount:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 55
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sampleCount:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 57
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->sensorType:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 59
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->axis:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 61
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->otaRetries:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 63
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->totalControllerLagCount:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 65
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->isConnected:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 67
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore$Controller;->status:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 69
    :cond_10
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
