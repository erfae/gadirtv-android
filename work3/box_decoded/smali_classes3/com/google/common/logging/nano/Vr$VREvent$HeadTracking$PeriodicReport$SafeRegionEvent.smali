.class public final Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SafeRegionEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;


# instance fields
.field public entered:Ljava/lang/Boolean;

.field public hrsPosition:[F

.field public hrsQuat:[F

.field public timestampMs:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->clear()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    .line 4
    sput-object v1, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;
    .locals 2

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->timestampMs:Ljava/lang/Long;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->entered:Ljava/lang/Boolean;

    .line 12
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsPosition:[F

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsQuat:[F

    .line 14
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;
    .locals 3

    .line 17
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsPosition:[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 22
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsPosition:[F

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsQuat:[F

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 24
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsQuat:[F

    :cond_1
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

    .line 117
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

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
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

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
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 40
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->timestampMs:Ljava/lang/Long;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->entered:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 46
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsPosition:[F

    if-eqz v1, :cond_2

    array-length v3, v1

    if-lez v3, :cond_2

    .line 48
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 50
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsQuat:[F

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 52
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 54
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_13

    const/16 v1, 0x8

    if-eq v0, v1, :cond_12

    const/16 v1, 0x10

    if-eq v0, v1, :cond_11

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_9

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    .line 59
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 92
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsQuat:[F

    if-nez v1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 94
    new-array v4, v0, [F

    if-eqz v3, :cond_3

    .line 96
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    .line 98
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 99
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 101
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 102
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsQuat:[F

    goto :goto_0

    .line 104
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 105
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 106
    div-int/lit8 v0, v0, 0x4

    .line 107
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsQuat:[F

    if-nez v3, :cond_6

    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    array-length v4, v3

    :goto_3
    add-int/2addr v0, v4

    .line 108
    new-array v5, v0, [F

    if-eqz v4, :cond_7

    .line 110
    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    if-ge v4, v0, :cond_8

    .line 112
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 114
    :cond_8
    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsQuat:[F

    .line 115
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 66
    :cond_9
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsPosition:[F

    if-nez v1, :cond_a

    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    array-length v3, v1

    :goto_5
    add-int/2addr v0, v3

    .line 68
    new-array v4, v0, [F

    if-eqz v3, :cond_b

    .line 70
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_c

    .line 72
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 73
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 75
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 76
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsPosition:[F

    goto/16 :goto_0

    .line 78
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 79
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    .line 80
    div-int/lit8 v0, v0, 0x4

    .line 81
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsPosition:[F

    if-nez v3, :cond_e

    const/4 v4, 0x0

    goto :goto_7

    :cond_e
    array-length v4, v3

    :goto_7
    add-int/2addr v0, v4

    .line 82
    new-array v5, v0, [F

    if-eqz v4, :cond_f

    .line 84
    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_8
    if-ge v4, v0, :cond_10

    .line 86
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v2

    aput v2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 88
    :cond_10
    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsPosition:[F

    .line 89
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 63
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->entered:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 61
    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->timestampMs:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_13
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;

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

    .line 26
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->timestampMs:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->entered:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsPosition:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsPosition:[F

    array-length v3, v2

    if-ge v0, v3, :cond_2

    const/4 v3, 0x3

    .line 32
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsQuat:[F

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    .line 35
    :goto_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking$PeriodicReport$SafeRegionEvent;->hrsQuat:[F

    array-length v2, v0

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 36
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
