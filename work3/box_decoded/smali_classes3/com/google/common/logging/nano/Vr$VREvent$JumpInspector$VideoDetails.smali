.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoDetails"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public audioBitRate:Ljava/lang/Integer;

.field public audioChannelCount:Ljava/lang/Integer;

.field public audioCodec:Ljava/lang/Integer;

.field public framesPerSecond:Ljava/lang/Double;

.field public mediaLengthSeconds:Ljava/lang/Long;

.field public resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

.field public sampleRate:Ljava/lang/Integer;

.field public sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

.field public usedMonoFilename:Ljava/lang/Boolean;

.field public usedWalleFilename:Ljava/lang/Boolean;

.field public usedWallyFilename:Ljava/lang/Boolean;

.field public videoBitRate:Ljava/lang/Integer;

.field public videoCodec:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    .line 9
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    .line 13
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    .line 14
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    .line 15
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    .line 16
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    .line 17
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    .locals 2

    .line 20
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 23
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

    .line 143
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

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

    .line 144
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

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

    .line 146
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 57
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 60
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 63
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 66
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 69
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 72
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 78
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 84
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 87
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 90
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    const/16 v2, 0xc

    .line 93
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 96
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 141
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    goto :goto_0

    .line 139
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    goto :goto_0

    .line 137
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    goto :goto_0

    .line 135
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    goto :goto_0

    .line 131
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 124
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 125
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->checkAudioCodecOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 117
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 118
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->checkVideoCodecOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 121
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 115
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 113
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 111
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 109
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    goto/16 :goto_0

    .line 105
    :sswitch_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-nez v0, :cond_2

    .line 106
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 103
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    goto/16 :goto_0

    :sswitch_d
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_c
        0x12 -> :sswitch_b
        0x19 -> :sswitch_a
        0x20 -> :sswitch_9
        0x28 -> :sswitch_8
        0x30 -> :sswitch_7
        0x38 -> :sswitch_6
        0x40 -> :sswitch_5
        0x4a -> :sswitch_4
        0x50 -> :sswitch_3
        0x58 -> :sswitch_2
        0x60 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->mediaLengthSeconds:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->framesPerSecond:Ljava/lang/Double;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 34
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sampleRate:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoBitRate:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 39
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioBitRate:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 41
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->videoCodec:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 43
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioCodec:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 45
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->sphericalMetadata:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$SphericalMetadata;

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 47
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->audioChannelCount:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 49
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedMonoFilename:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 50
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 51
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWalleFilename:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 53
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->usedWallyFilename:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 55
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
