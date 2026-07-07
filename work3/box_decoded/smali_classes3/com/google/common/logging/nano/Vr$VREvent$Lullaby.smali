.class public final Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
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
    name = "Lullaby"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public contentId:Ljava/lang/String;

.field public index:Ljava/lang/Integer;

.field public loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

.field public uiElement:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    return-void
.end method

.method public static checkUiElementOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_1

    const/16 v0, 0x3f0

    if-gt p0, v0, :cond_1

    return p0

    :cond_1
    const/16 v0, 0x7d0

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7e5

    if-gt p0, v0, :cond_2

    return p0

    :cond_2
    const/16 v0, 0xbb8

    if-lt p0, v0, :cond_3

    const/16 v0, 0xbc6

    if-gt p0, v0, :cond_3

    return p0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum UiElement"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    .locals 1

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;

    .line 14
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    .line 15
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    .line 17
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    .locals 2

    .line 20
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    :cond_0
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

    .line 71
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

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
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

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
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 37
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 46
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 49
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 54
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    if-nez v0, :cond_2

    .line 68
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    goto :goto_0

    .line 56
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 57
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->checkUiElementOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    :cond_6
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

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

    .line 27
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->uiElement:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->index:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->contentId:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->loadTime:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby$LoadTime;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 35
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
