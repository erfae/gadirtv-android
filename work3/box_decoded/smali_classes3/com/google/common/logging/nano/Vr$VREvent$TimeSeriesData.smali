.class public final Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
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
    name = "TimeSeriesData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

.field public timeIntervalSeconds:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clear()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    .locals 2

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    .line 5
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    .line 6
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    .locals 4

    .line 9
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 14
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 16
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 17
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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

    .line 64
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

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

    .line 65
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

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

    .line 67
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 4

    .line 30
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 35
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 36
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 39
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 45
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 50
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 52
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-eqz v3, :cond_3

    .line 54
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    .line 56
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;-><init>()V

    aput-object v1, v4, v3

    .line 57
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 58
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 60
    :cond_4
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;-><init>()V

    aput-object v0, v4, v3

    .line 61
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 62
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    goto :goto_0

    .line 47
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

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

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalSeconds:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->timeIntervalData:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 24
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 26
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
