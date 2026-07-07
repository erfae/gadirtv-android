.class public final Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;
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
    name = "Capture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public captureType:Ljava/lang/Integer;

.field public liveStreamStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;

.field public resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

.field public videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

    return-void
.end method

.method public static checkCaptureTypeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum CaptureType"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;
    .locals 1

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->captureType:Ljava/lang/Integer;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    .line 9
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->liveStreamStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;
    .locals 2

    .line 14
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->liveStreamStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->liveStreamStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;

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

    .line 73
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

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

    .line 74
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

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

    .line 76
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 35
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 36
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->captureType:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 41
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 44
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->liveStreamStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;

    if-eqz v1, :cond_3

    const/16 v2, 0xa

    .line 47
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x52

    if-eq v0, v1, :cond_1

    .line 52
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->liveStreamStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;

    if-nez v0, :cond_2

    .line 70
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->liveStreamStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->liveStreamStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    if-nez v0, :cond_4

    .line 66
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    .line 67
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    if-nez v0, :cond_6

    .line 62
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    .line 63
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 54
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->checkCaptureTypeOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->captureType:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

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

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;

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
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->captureType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Resolution;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->videoInfo:Lcom/google/common/logging/nano/Vr$VREvent$Eva$VideoInfo;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture;->liveStreamStats:Lcom/google/common/logging/nano/Vr$VREvent$Eva$Capture$LiveStreamStats;

    if-eqz v0, :cond_3

    const/16 v1, 0xa

    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 33
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
