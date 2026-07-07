.class public final Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$Eva;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileTransfer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public fileSize:Ljava/lang/Long;

.field public fileType:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$FileType;

.field public outcome:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$Outcome;

.field public resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

.field public transferInterface:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$TransferInterface;

.field public transferTimeMs:Ljava/lang/Long;

.field public videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->outcome:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$Outcome;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->transferInterface:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$TransferInterface;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->fileSize:Ljava/lang/Long;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->transferTimeMs:Ljava/lang/Long;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->fileType:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$FileType;

    .line 9
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;
    .locals 2

    .line 14
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    :cond_1
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

    .line 109
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

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

    .line 110
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

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

    .line 112
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 42
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->outcome:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$Outcome;

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 46
    invoke-virtual {v1}, Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$Outcome;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->transferInterface:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$TransferInterface;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 50
    invoke-virtual {v1}, Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$TransferInterface;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->fileSize:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 53
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->transferTimeMs:Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 56
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->fileType:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$FileType;

    if-eqz v1, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 60
    invoke-virtual {v1}, Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$FileType;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 63
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 66
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v1, :cond_b

    const/16 v1, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x18

    if-eq v0, v1, :cond_8

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_5

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    .line 71
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    if-nez v0, :cond_2

    .line 106
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    if-nez v0, :cond_4

    .line 102
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 93
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 94
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_6

    .line 98
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 96
    :cond_6
    invoke-static {v2}, Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$FileType;->forNumber(I)Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$FileType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->fileType:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$FileType;

    goto :goto_0

    .line 91
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->transferTimeMs:Ljava/lang/Long;

    goto :goto_0

    .line 89
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->fileSize:Ljava/lang/Long;

    goto/16 :goto_0

    .line 81
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 82
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    if-eqz v7, :cond_a

    if-eq v7, v6, :cond_a

    if-eq v7, v5, :cond_a

    if-eq v7, v4, :cond_a

    if-eq v7, v3, :cond_a

    if-eq v7, v2, :cond_a

    .line 86
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 84
    :cond_a
    invoke-static {v7}, Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$TransferInterface;->forNumber(I)Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$TransferInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->transferInterface:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$TransferInterface;

    goto/16 :goto_0

    .line 73
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 74
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    if-eqz v7, :cond_c

    if-eq v7, v6, :cond_c

    if-eq v7, v5, :cond_c

    if-eq v7, v4, :cond_c

    if-eq v7, v3, :cond_c

    if-eq v7, v2, :cond_c

    .line 78
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 76
    :cond_c
    invoke-static {v7}, Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$Outcome;->forNumber(I)Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$Outcome;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->outcome:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$Outcome;

    goto/16 :goto_0

    :cond_d
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;

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

    .line 23
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->outcome:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$Outcome;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0}, Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$Outcome;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->transferInterface:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$TransferInterface;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 28
    invoke-virtual {v0}, Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$TransferInterface;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->fileSize:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 30
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->transferTimeMs:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 32
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 33
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->fileType:Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$FileType;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 35
    invoke-virtual {v0}, Lcom/google/common/logging/Vr$VREvent$Eva$FileTransfer$FileType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 36
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 37
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 38
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$FileTransfer;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 39
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 40
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
