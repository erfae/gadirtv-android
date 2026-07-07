.class public final Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoConvert"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

.field public motionMode:Ljava/lang/Integer;

.field public status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

.field public stereoMode:Ljava/lang/Integer;

.field public videoCodec:Ljava/lang/Integer;

.field public videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

.field public videoQuality:Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

    return-void
.end method

.method public static checkMotionModeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum MotionMode"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;
    .locals 1

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    .line 9
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->stereoMode:Ljava/lang/Integer;

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoCodec:Ljava/lang/Integer;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoQuality:Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;

    .line 12
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->motionMode:Ljava/lang/Integer;

    .line 13
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    .line 14
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;
    .locals 2

    .line 17
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    if-eqz v1, :cond_2

    .line 26
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 20
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

    .line 115
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

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

    .line 116
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

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

    .line 118
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 45
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 48
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 51
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->stereoMode:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoCodec:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 57
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoQuality:Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;

    if-eqz v1, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 61
    invoke-virtual {v1}, Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->motionMode:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 67
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_8

    const/16 v1, 0x18

    if-eq v0, v1, :cond_7

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    .line 72
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 105
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->checkMotionModeOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->motionMode:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 96
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 97
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 101
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 99
    :cond_5
    invoke-static {v2}, Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;->forNumber(I)Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoQuality:Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;

    goto :goto_0

    .line 89
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 90
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->checkVideoCodecOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoCodec:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 93
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 82
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 83
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->checkStereoModeOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->stereoMode:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 86
    :catch_2
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 78
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    if-nez v0, :cond_9

    .line 79
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    .line 80
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 74
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    .line 76
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :cond_c
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

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

    .line 28
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 31
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->stereoMode:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoCodec:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->videoQuality:Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 38
    invoke-virtual {v0}, Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 39
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->motionMode:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 41
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 42
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 43
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
