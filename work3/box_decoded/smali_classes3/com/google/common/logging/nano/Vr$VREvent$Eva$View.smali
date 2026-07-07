.class public final Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;
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
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public loadingTimeMs:Ljava/lang/Long;

.field public mediaHeadingRotation:Ljava/lang/Integer;

.field public mediaType:Lcom/google/common/logging/Vr$VREvent$Eva$View$MediaType;

.field public triggerAction:Lcom/google/common/logging/Vr$VREvent$Eva$View$TriggerAction;

.field public viewSource:Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewSource;

.field public viewType:Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewType;

.field public viewerHeadingRotation:Ljava/lang/Integer;

.field public viewingDurationMs:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->clear()Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->mediaType:Lcom/google/common/logging/Vr$VREvent$Eva$View$MediaType;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewType:Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewType;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewingDurationMs:Ljava/lang/Long;

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->loadingTimeMs:Ljava/lang/Long;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewSource:Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewSource;

    .line 9
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewerHeadingRotation:Ljava/lang/Integer;

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->mediaHeadingRotation:Ljava/lang/Integer;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->triggerAction:Lcom/google/common/logging/Vr$VREvent$Eva$View$TriggerAction;

    .line 12
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;
    .locals 2

    .line 15
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 18
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

    .line 117
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

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

    .line 118
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

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

    .line 120
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 42
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->mediaType:Lcom/google/common/logging/Vr$VREvent$Eva$View$MediaType;

    if-eqz v1, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 46
    invoke-virtual {v1}, Lcom/google/common/logging/Vr$VREvent$Eva$View$MediaType;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewType:Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewType;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 50
    invoke-virtual {v1}, Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewType;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewingDurationMs:Ljava/lang/Long;

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
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->loadingTimeMs:Ljava/lang/Long;

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
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewSource:Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewSource;

    if-eqz v1, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 60
    invoke-virtual {v1}, Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewSource;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewerHeadingRotation:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 63
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->mediaHeadingRotation:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 66
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->triggerAction:Lcom/google/common/logging/Vr$VREvent$Eva$View$TriggerAction;

    if-eqz v1, :cond_7

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 70
    invoke-virtual {v1}, Lcom/google/common/logging/Vr$VREvent$Eva$View$TriggerAction;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_b

    const/16 v1, 0x10

    const/4 v4, 0x3

    if-eq v0, v1, :cond_9

    const/16 v1, 0x18

    if-eq v0, v1, :cond_8

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_5

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    const/16 v1, 0x38

    if-eq v0, v1, :cond_3

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    .line 75
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 110
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    if-eqz v5, :cond_2

    if-eq v5, v3, :cond_2

    if-eq v5, v2, :cond_2

    if-eq v5, v4, :cond_2

    .line 114
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {v5}, Lcom/google/common/logging/Vr$VREvent$Eva$View$TriggerAction;->forNumber(I)Lcom/google/common/logging/Vr$VREvent$Eva$View$TriggerAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->triggerAction:Lcom/google/common/logging/Vr$VREvent$Eva$View$TriggerAction;

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->mediaHeadingRotation:Ljava/lang/Integer;

    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewerHeadingRotation:Ljava/lang/Integer;

    goto :goto_0

    .line 97
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 98
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    if-eqz v5, :cond_6

    if-eq v5, v3, :cond_6

    if-eq v5, v2, :cond_6

    if-eq v5, v4, :cond_6

    .line 102
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 100
    :cond_6
    invoke-static {v5}, Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewSource;->forNumber(I)Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewSource:Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewSource;

    goto/16 :goto_0

    .line 95
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->loadingTimeMs:Ljava/lang/Long;

    goto/16 :goto_0

    .line 93
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewingDurationMs:Ljava/lang/Long;

    goto/16 :goto_0

    .line 85
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 86
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    if-eqz v5, :cond_a

    if-eq v5, v3, :cond_a

    if-eq v5, v2, :cond_a

    if-eq v5, v4, :cond_a

    .line 90
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 88
    :cond_a
    invoke-static {v5}, Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewType;->forNumber(I)Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewType:Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewType;

    goto/16 :goto_0

    .line 77
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 78
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    if-eqz v4, :cond_c

    if-eq v4, v3, :cond_c

    if-eq v4, v2, :cond_c

    .line 82
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 80
    :cond_c
    invoke-static {v4}, Lcom/google/common/logging/Vr$VREvent$Eva$View$MediaType;->forNumber(I)Lcom/google/common/logging/Vr$VREvent$Eva$View$MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->mediaType:Lcom/google/common/logging/Vr$VREvent$Eva$View$MediaType;

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

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;

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
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->mediaType:Lcom/google/common/logging/Vr$VREvent$Eva$View$MediaType;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0}, Lcom/google/common/logging/Vr$VREvent$Eva$View$MediaType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewType:Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewType;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 25
    invoke-virtual {v0}, Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewingDurationMs:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 27
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->loadingTimeMs:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 29
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewSource:Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewSource;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 32
    invoke-virtual {v0}, Lcom/google/common/logging/Vr$VREvent$Eva$View$ViewSource;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 33
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->viewerHeadingRotation:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 35
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->mediaHeadingRotation:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 37
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$Eva$View;->triggerAction:Lcom/google/common/logging/Vr$VREvent$Eva$View$TriggerAction;

    if-eqz v0, :cond_7

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 39
    invoke-virtual {v0}, Lcom/google/common/logging/Vr$VREvent$Eva$View$TriggerAction;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 40
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
