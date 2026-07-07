.class public final Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vr180Creator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;,
        Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;,
        Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;,
        Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;,
        Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;,
        Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Status;,
        Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoInfo;,
        Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Fov;,
        Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$Resolution;,
        Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public clientInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;

.field public photoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;

.field public photoMerge:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;

.field public photoSplit:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;

.field public videoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

.field public videoPublish:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

    return-void
.end method

.method public static checkStereoModeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum StereoMode"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkVideoCodecOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x6

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
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->clientInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

    .line 12
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoPublish:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

    .line 13
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoSplit:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;

    .line 14
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoMerge:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;

    .line 15
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;

    .line 16
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;
    .locals 2

    .line 19
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->clientInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->clientInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoPublish:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoPublish:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

    .line 29
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoSplit:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;

    if-eqz v1, :cond_3

    .line 30
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoSplit:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoMerge:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;

    if-eqz v1, :cond_4

    .line 32
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoMerge:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;

    .line 33
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;

    if-eqz v1, :cond_5

    .line 34
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;

    :cond_5
    return-object v0

    :catch_0
    move-exception v0

    .line 22
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

    .line 99
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

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

    .line 100
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

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

    .line 102
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 50
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->clientInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 53
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 56
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoPublish:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 59
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoSplit:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 62
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoMerge:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 65
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 68
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_b

    const/16 v1, 0x12

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_7

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    .line 73
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoMerge:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;

    if-nez v0, :cond_4

    .line 92
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoMerge:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoMerge:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoSplit:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;

    if-nez v0, :cond_6

    .line 88
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoSplit:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;

    .line 89
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoSplit:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 83
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoPublish:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

    if-nez v0, :cond_8

    .line 84
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoPublish:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

    .line 85
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoPublish:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 79
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

    if-nez v0, :cond_a

    .line 80
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

    .line 81
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 75
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->clientInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;

    if-nez v0, :cond_c

    .line 76
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->clientInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;

    .line 77
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->clientInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

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

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;

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

    .line 36
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->clientInfo:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$ClientInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 37
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoConvert;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 39
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->videoPublish:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$VideoPublish;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 41
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoSplit:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoSplit;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 43
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoMerge:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoMerge;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 45
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 46
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator;->photoConvert:Lcom/google/common/logging/nano/Vr$VREvent$Vr180Creator$PhotoConvert;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 47
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 48
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
