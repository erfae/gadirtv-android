.class public final Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeriodicReport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;,
        Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public endTimestampMs:Ljava/lang/Long;

.field public recenterEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

.field public safeRegionEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

.field public startTimestampMs:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->clear()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;
    .locals 2

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->startTimestampMs:Ljava/lang/Long;

    .line 5
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->endTimestampMs:Ljava/lang/Long;

    .line 6
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->recenterEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    .line 7
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->safeRegionEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;
    .locals 5

    .line 11
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->recenterEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 16
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->recenterEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    const/4 v1, 0x0

    .line 17
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->recenterEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 18
    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    .line 19
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->recenterEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->safeRegionEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 22
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->safeRegionEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    .line 23
    :goto_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->safeRegionEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 24
    aget-object v3, v1, v2

    if-eqz v3, :cond_2

    .line 25
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->safeRegionEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    move-result-object v1

    aput-object v1, v3, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
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

    .line 107
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

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

    .line 108
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

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

    .line 110
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 46
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->startTimestampMs:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->endTimestampMs:Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 52
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->recenterEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 54
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->recenterEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 55
    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    .line 58
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->safeRegionEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    .line 61
    :goto_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->safeRegionEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 62
    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    const/4 v3, 0x4

    .line 65
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 71
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 93
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->safeRegionEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    if-nez v1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 95
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    if-eqz v3, :cond_3

    .line 97
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    .line 99
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;-><init>()V

    aput-object v1, v4, v3

    .line 100
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 101
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 103
    :cond_4
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;-><init>()V

    aput-object v0, v4, v3

    .line 104
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 105
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->safeRegionEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    goto :goto_0

    .line 78
    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->recenterEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    if-nez v1, :cond_6

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    array-length v3, v1

    :goto_3
    add-int/2addr v0, v3

    .line 80
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    if-eqz v3, :cond_7

    .line 82
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_8

    .line 84
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;-><init>()V

    aput-object v1, v4, v3

    .line 85
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 86
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 88
    :cond_8
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;-><init>()V

    aput-object v0, v4, v3

    .line 89
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 90
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->recenterEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    goto/16 :goto_0

    .line 75
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->endTimestampMs:Ljava/lang/Long;

    goto/16 :goto_0

    .line 73
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->startTimestampMs:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_b
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;

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

    .line 28
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->startTimestampMs:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->endTimestampMs:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 31
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->recenterEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 33
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->recenterEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$RecenterEvent;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 34
    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    .line 36
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->safeRegionEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    .line 39
    :goto_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;->safeRegionEvent:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 40
    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    .line 42
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 44
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
