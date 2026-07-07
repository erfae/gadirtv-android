.class public final Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeIntervalData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;


# instance fields
.field public batteryLevel:Ljava/lang/Integer;

.field public batteryLevelDelta:Ljava/lang/Integer;

.field public batteryTemperature:[F

.field public cpuTemperature:[F

.field public edsThreadFrameDropCount:Ljava/lang/Integer;

.field public gpuTemperature:[F

.field public intervalStartTimeSeconds:Ljava/lang/Integer;

.field public skinTemperature:Ljava/lang/Float;

.field public thermalWarningsShown:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clear()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    .line 4
    sput-object v1, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

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
    sget-object v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->_emptyArray:[Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 2

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    .line 11
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    .line 12
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    .line 13
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    .line 14
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    .line 15
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    .line 16
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    .line 17
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    .line 18
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    .line 19
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 3

    .line 22
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 27
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 29
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 31
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 25
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

    .line 186
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

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

    .line 187
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

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

    .line 189
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 59
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 65
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    const/4 v3, 0x4

    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    const/4 v4, 0x5

    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v4, 0x6

    .line 77
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-eqz v1, :cond_6

    array-length v4, v1

    if-lez v4, :cond_6

    .line 79
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v0, v4

    .line 81
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 82
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-eqz v1, :cond_7

    array-length v4, v1

    if-lez v4, :cond_7

    .line 83
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v0, v4

    .line 85
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 86
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-eqz v1, :cond_8

    array-length v4, v1

    if-lez v4, :cond_8

    .line 87
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v0, v4

    .line 89
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_8
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    const/16 v0, 0x4d

    .line 161
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 162
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    array-length v3, v2

    :goto_1
    add-int/2addr v0, v3

    .line 163
    new-array v4, v0, [F

    if-eqz v3, :cond_2

    .line 165
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3

    .line 167
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 168
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 170
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 171
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    goto :goto_0

    .line 173
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 174
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 175
    div-int/lit8 v0, v0, 0x4

    .line 176
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-nez v3, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    array-length v4, v3

    :goto_3
    add-int/2addr v0, v4

    .line 177
    new-array v5, v0, [F

    if-eqz v4, :cond_5

    .line 179
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    if-ge v4, v0, :cond_6

    .line 181
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 183
    :cond_6
    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    .line 184
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x45

    .line 135
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 136
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-nez v2, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    array-length v3, v2

    :goto_5
    add-int/2addr v0, v3

    .line 137
    new-array v4, v0, [F

    if-eqz v3, :cond_8

    .line 139
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_9

    .line 141
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 142
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 144
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 145
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    goto/16 :goto_0

    .line 147
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 148
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 149
    div-int/lit8 v0, v0, 0x4

    .line 150
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-nez v3, :cond_a

    const/4 v4, 0x0

    goto :goto_7

    :cond_a
    array-length v4, v3

    :goto_7
    add-int/2addr v0, v4

    .line 151
    new-array v5, v0, [F

    if-eqz v4, :cond_b

    .line 153
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_8
    if-ge v4, v0, :cond_c

    .line 155
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 157
    :cond_c
    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    .line 158
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x3d

    .line 109
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 110
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-nez v2, :cond_d

    const/4 v3, 0x0

    goto :goto_9

    :cond_d
    array-length v3, v2

    :goto_9
    add-int/2addr v0, v3

    .line 111
    new-array v4, v0, [F

    if-eqz v3, :cond_e

    .line 113
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_f

    .line 115
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 116
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 118
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v4, v3

    .line 119
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    goto/16 :goto_0

    .line 121
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 122
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 123
    div-int/lit8 v0, v0, 0x4

    .line 124
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    if-nez v3, :cond_10

    const/4 v4, 0x0

    goto :goto_b

    :cond_10
    array-length v4, v3

    :goto_b
    add-int/2addr v0, v4

    .line 125
    new-array v5, v0, [F

    if-eqz v4, :cond_11

    .line 127
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_c
    if-ge v4, v0, :cond_12

    .line 129
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 131
    :cond_12
    iput-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    .line 132
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 106
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 104
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 102
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 100
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 98
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    goto/16 :goto_0

    .line 96
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_c
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x15 -> :sswitch_a
        0x18 -> :sswitch_9
        0x20 -> :sswitch_8
        0x28 -> :sswitch_7
        0x30 -> :sswitch_6
        0x3a -> :sswitch_5
        0x3d -> :sswitch_4
        0x42 -> :sswitch_3
        0x45 -> :sswitch_2
        0x4a -> :sswitch_1
        0x4d -> :sswitch_0
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;

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

    .line 33
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->intervalStartTimeSeconds:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->skinTemperature:Ljava/lang/Float;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 36
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->edsThreadFrameDropCount:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryLevelDelta:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->thermalWarningsShown:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->cpuTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_6

    const/4 v3, 0x7

    .line 47
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    .line 50
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->gpuTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_7

    const/16 v3, 0x8

    .line 51
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    .line 54
    :goto_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData$TimeIntervalData;->batteryTemperature:[F

    array-length v2, v0

    if-ge v1, v2, :cond_8

    const/16 v2, 0x9

    .line 55
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 57
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
