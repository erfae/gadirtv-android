.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;
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
    name = "MediaDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails$AudioCodec;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

.field public fileExtension:Ljava/lang/String;

.field public imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

.field public videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    return-void
.end method

.method public static checkAudioCodecOrThrow(I)I
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

    const-string p0, " is not a valid enum AudioCodec"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkVideoCodecOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    return p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum VideoCodec"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    .line 12
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    .line 13
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    .line 14
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;
    .locals 2

    .line 17
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    if-eqz v1, :cond_2

    .line 26
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

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

    .line 71
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

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

    .line 72
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

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

    .line 74
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 38
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 41
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 44
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 47
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 50
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 55
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    if-nez v0, :cond_2

    .line 68
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-nez v0, :cond_4

    .line 64
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 59
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-nez v0, :cond_6

    .line 60
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    .line 61
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 57
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    goto :goto_0

    :cond_8
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;

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
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->fileExtension:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->videoDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$VideoDetails;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 31
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->imageDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 33
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$MediaDetails;->audioDetails:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$AudioDetails;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 35
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 36
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
