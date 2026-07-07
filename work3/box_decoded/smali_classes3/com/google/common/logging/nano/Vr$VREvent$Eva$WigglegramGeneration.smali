.class public final Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;
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
    name = "WigglegramGeneration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public correspondenceMs:Ljava/lang/Long;

.field public generationStatus:Lcom/google/common/logging/Vr$VREvent$Eva$WigglegramGeneration$Status;

.field public renderAndEncodeMs:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->generationStatus:Lcom/google/common/logging/Vr$VREvent$Eva$WigglegramGeneration$Status;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->correspondenceMs:Ljava/lang/Long;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->renderAndEncodeMs:Ljava/lang/Long;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;
    .locals 2

    .line 10
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 13
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

    .line 53
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

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

    .line 54
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

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

    .line 56
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 24
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->generationStatus:Lcom/google/common/logging/Vr$VREvent$Eva$WigglegramGeneration$Status;

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 28
    invoke-virtual {v1}, Lcom/google/common/logging/Vr$VREvent$Eva$WigglegramGeneration$Status;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->correspondenceMs:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 31
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->renderAndEncodeMs:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 34
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 39
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->renderAndEncodeMs:Ljava/lang/Long;

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->correspondenceMs:Ljava/lang/Long;

    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 42
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 46
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 44
    :cond_4
    invoke-static {v2}, Lcom/google/common/logging/Vr$VREvent$Eva$WigglegramGeneration$Status;->forNumber(I)Lcom/google/common/logging/Vr$VREvent$Eva$WigglegramGeneration$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->generationStatus:Lcom/google/common/logging/Vr$VREvent$Eva$WigglegramGeneration$Status;

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;

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

    .line 15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->generationStatus:Lcom/google/common/logging/Vr$VREvent$Eva$WigglegramGeneration$Status;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0}, Lcom/google/common/logging/Vr$VREvent$Eva$WigglegramGeneration$Status;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->correspondenceMs:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$WigglegramGeneration;->renderAndEncodeMs:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 22
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
