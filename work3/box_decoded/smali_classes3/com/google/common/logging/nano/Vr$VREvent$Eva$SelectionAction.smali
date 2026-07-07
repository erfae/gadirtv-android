.class public final Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;
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
    name = "SelectionAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public durationMs:Ljava/lang/Long;

.field public entryPoint:Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionEntryPoint;

.field public outcome:Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionOutcome;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->outcome:Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionOutcome;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->entryPoint:Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionEntryPoint;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->durationMs:Ljava/lang/Long;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;
    .locals 2

    .line 10
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;
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

    .line 61
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

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

    .line 62
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

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

    .line 64
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 25
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->outcome:Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionOutcome;

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1}, Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionOutcome;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->entryPoint:Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionEntryPoint;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 33
    invoke-virtual {v1}, Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionEntryPoint;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->durationMs:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 36
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 41
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->durationMs:Ljava/lang/Long;

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 52
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    if-eqz v6, :cond_3

    if-eq v6, v5, :cond_3

    if-eq v6, v4, :cond_3

    if-eq v6, v3, :cond_3

    if-eq v6, v2, :cond_3

    .line 56
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 54
    :cond_3
    invoke-static {v6}, Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionEntryPoint;->forNumber(I)Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionEntryPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->entryPoint:Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionEntryPoint;

    goto :goto_0

    .line 43
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 44
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    if-eqz v6, :cond_5

    if-eq v6, v5, :cond_5

    if-eq v6, v4, :cond_5

    if-eq v6, v3, :cond_5

    if-eq v6, v2, :cond_5

    .line 48
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 46
    :cond_5
    invoke-static {v6}, Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionOutcome;->forNumber(I)Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionOutcome;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->outcome:Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionOutcome;

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

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;

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
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->outcome:Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionOutcome;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0}, Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionOutcome;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->entryPoint:Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionEntryPoint;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 20
    invoke-virtual {v0}, Lcom/google/common/logging/Vr$VREvent$Eva$SelectionAction$ActionEntryPoint;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$SelectionAction;->durationMs:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 22
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 23
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
