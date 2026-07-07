.class public final Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
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
    name = "ImageDetails"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

.field public usedMonoFilename:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->usedMonoFilename:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
    .locals 2

    .line 9
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 12
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

    .line 41
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

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

    .line 42
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

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

    .line 44
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 3

    .line 22
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 25
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->usedMonoFilename:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 33
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->usedMonoFilename:Ljava/lang/Boolean;

    goto :goto_0

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-nez v0, :cond_3

    .line 36
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;

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

    .line 16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->resolution:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$Resolution;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 17
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector$ImageDetails;->usedMonoFilename:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 20
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
