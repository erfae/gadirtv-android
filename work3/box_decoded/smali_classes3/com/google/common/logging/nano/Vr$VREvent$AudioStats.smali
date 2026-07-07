.class public final Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
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
    name = "AudioStats"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public framesPerBuffer:Ljava/lang/Integer;

.field public numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public renderingMode:Ljava/lang/Integer;

.field public renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field public sampleRate:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clear()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    return-void
.end method

.method public static checkRenderingModeOrThrow(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid enum RenderingMode"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    .locals 2

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    .line 8
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    .line 9
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    .line 10
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 11
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 12
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 13
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 14
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cachedSize:I

    return-object p0
.end method

.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    .locals 5

    .line 17
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 22
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    .line 23
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 24
    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    .line 25
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 28
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    .line 29
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 30
    aget-object v4, v3, v1

    if-eqz v4, :cond_2

    .line 31
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 33
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_5

    array-length v3, v1

    if-lez v3, :cond_5

    .line 34
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    .line 35
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 36
    aget-object v4, v3, v1

    if-eqz v4, :cond_4

    .line 37
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 39
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_7

    array-length v3, v1

    if-lez v3, :cond_7

    .line 40
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 41
    :goto_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 42
    aget-object v3, v1, v2

    if-eqz v3, :cond_6

    .line 43
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    aput-object v1, v3, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
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

    .line 193
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

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

    .line 194
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

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

    .line 196
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 78
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 84
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 87
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 89
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 90
    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    const/4 v4, 0x4

    .line 93
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    .line 96
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_6

    .line 97
    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    const/4 v4, 0x5

    .line 100
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_8

    array-length v1, v1

    if-lez v1, :cond_8

    const/4 v1, 0x0

    .line 103
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_8

    .line 104
    aget-object v3, v3, v1

    if-eqz v3, :cond_7

    const/4 v4, 0x6

    .line 107
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 109
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_a

    array-length v1, v1

    if-lez v1, :cond_a

    .line 110
    :goto_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v1

    if-ge v2, v3, :cond_a

    .line 111
    aget-object v1, v1, v2

    if-eqz v1, :cond_9

    const/4 v3, 0x7

    .line 114
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_14

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    const/16 v1, 0x10

    if-eq v0, v1, :cond_12

    const/16 v1, 0x18

    if-eq v0, v1, :cond_11

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x32

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1

    .line 120
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 179
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 181
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_3

    .line 183
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    .line 185
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 186
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 187
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 189
    :cond_4
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 190
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 191
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto :goto_0

    .line 164
    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v1, :cond_6

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    array-length v3, v1

    :goto_3
    add-int/2addr v0, v3

    .line 166
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_7

    .line 168
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_8

    .line 170
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 171
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 172
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 174
    :cond_8
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 175
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 176
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 149
    :cond_9
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v1, :cond_a

    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    array-length v3, v1

    :goto_5
    add-int/2addr v0, v3

    .line 151
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_b

    .line 153
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_c

    .line 155
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 156
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 157
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 159
    :cond_c
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 160
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 161
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 134
    :cond_d
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v1, :cond_e

    const/4 v3, 0x0

    goto :goto_7

    :cond_e
    array-length v3, v1

    :goto_7
    add-int/2addr v0, v3

    .line 136
    new-array v4, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v3, :cond_f

    .line 138
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_8
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_10

    .line 140
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v4, v3

    .line 141
    aget-object v1, v4, v3

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 142
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 144
    :cond_10
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v4, v3

    .line 145
    aget-object v0, v4, v3

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 146
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 131
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 129
    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 122
    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 123
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->checkRenderingModeOrThrow(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 126
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    :cond_14
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

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

    .line 46
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingMode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->sampleRate:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->framesPerBuffer:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 53
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->renderingTimePerBufferMilliseconds:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 54
    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    .line 56
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 59
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundObjects:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 60
    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    .line 62
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    const/4 v0, 0x0

    .line 65
    :goto_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->numberOfSimultaneousSoundFields:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 66
    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    const/4 v3, 0x6

    .line 68
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 70
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_a

    array-length v0, v0

    if-lez v0, :cond_a

    .line 71
    :goto_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->cpuMeasurementsPercent:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v2, v0

    if-ge v1, v2, :cond_a

    .line 72
    aget-object v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v2, 0x7

    .line 74
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 76
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
