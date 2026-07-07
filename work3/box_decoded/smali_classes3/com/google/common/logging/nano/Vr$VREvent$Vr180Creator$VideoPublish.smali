.class public final Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;
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
    name = "VideoPublish"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

.field public status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

.field public stereoMode:Ljava/lang/Integer;

.field public transcoded:Ljava/lang/Boolean;

.field public videoCodec:Ljava/lang/Integer;

.field public videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

.field public videoQuality:Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->stereoMode:Ljava/lang/Integer;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->transcoded:Ljava/lang/Boolean;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoCodec:Ljava/lang/Integer;

    .line 9
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoQuality:Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;
    .locals 2

    .line 14
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 17
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

    .line 107
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

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

    .line 108
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

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

    .line 110
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 42
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 45
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->stereoMode:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 48
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 51
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->transcoded:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 54
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoCodec:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 57
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoQuality:Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;

    if-eqz v1, :cond_5

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 61
    invoke-virtual {v1}, Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 64
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0x28

    if-eq v0, v1, :cond_5

    const/16 v1, 0x30

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    .line 69
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 96
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 100
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 98
    :cond_4
    invoke-static {v2}, Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;->forNumber(I)Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoQuality:Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;

    goto :goto_0

    .line 88
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 89
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->checkVideoCodecOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoCodec:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 86
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->transcoded:Ljava/lang/Boolean;

    goto :goto_0

    .line 82
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    if-nez v0, :cond_8

    .line 83
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    .line 84
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 75
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 76
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->checkStereoModeOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->stereoMode:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 79
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 71
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    if-nez v0, :cond_b

    .line 72
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    .line 73
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

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

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

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

    .line 25
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->stereoMode:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->fov:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->transcoded:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 32
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoCodec:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 35
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->videoQuality:Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 37
    invoke-virtual {v0}, Lcom/google/common/logging/Vr$VREvent$Vr180Creator$VideoQuality;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 38
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->status:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 39
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 40
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
