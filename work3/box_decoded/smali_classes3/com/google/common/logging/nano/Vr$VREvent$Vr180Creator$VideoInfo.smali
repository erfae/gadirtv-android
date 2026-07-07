.class public final Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;
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
    name = "VideoInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public codec:Ljava/lang/Integer;

.field public durationMs:Ljava/lang/Long;

.field public resolution:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;

.field public vrMetadata:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->durationMs:Ljava/lang/Long;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->codec:Ljava/lang/Integer;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->vrMetadata:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;
    .locals 2

    .line 11
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->vrMetadata:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->vrMetadata:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 14
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

    .line 66
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

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

    .line 67
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

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

    .line 69
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 30
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->durationMs:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 36
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->codec:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 39
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->vrMetadata:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 42
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 47
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->vrMetadata:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->vrMetadata:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->vrMetadata:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->checkVideoCodecOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->codec:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 60
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 51
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;

    if-nez v0, :cond_5

    .line 52
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;

    .line 53
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 49
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->durationMs:Ljava/lang/Long;

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;

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

    .line 20
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->durationMs:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 23
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->codec:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;->vrMetadata:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo$VrMetadata;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 27
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 28
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
