.class final Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;
.super Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
.source "BatchBuffer.java"


# static fields
.field private static final BATCH_SIZE_BYTES:I = 0x2ee000

.field public static final DEFAULT_BATCH_SIZE_ACCESS_UNITS:I = 0x20


# instance fields
.field private accessUnitCount:I

.field private firstAccessUnitTimeUs:J

.field private hasPendingAccessUnit:Z

.field private maxAccessUnitCount:I

.field private final nextAccessUnitBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    .line 45
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    .line 46
    new-instance v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->nextAccessUnitBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->clear()V

    return-void
.end method

.method private canBatch(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z
    .locals 4

    .line 139
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 142
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->isDecodeOnly()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    .line 146
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/2addr v0, p1

    const p1, 0x2ee000

    if-lt v0, p1, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method private clearMainBuffer()V
    .locals 2

    .line 181
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    const/4 v0, 0x0

    .line 182
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->accessUnitCount:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 183
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->firstAccessUnitTimeUs:J

    .line 184
    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->timeUs:J

    return-void
.end method

.method private putAccessUnit(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 4

    .line 156
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 159
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->ensureSpaceForWrite(I)V

    .line 160
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 164
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->setFlags(I)V

    .line 166
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x80000000

    .line 167
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->setFlags(I)V

    .line 169
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isKeyFrame()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->setFlags(I)V

    .line 172
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->accessUnitCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->accessUnitCount:I

    .line 173
    iget-wide v2, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->timeUs:J

    .line 174
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->accessUnitCount:I

    if-ne v0, v1, :cond_4

    .line 175
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->timeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->firstAccessUnitTimeUs:J

    .line 177
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    return-void
.end method


# virtual methods
.method public batchWasConsumed()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->clearMainBuffer()V

    .line 79
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasPendingAccessUnit:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->nextAccessUnitBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->putAccessUnit(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasPendingAccessUnit:Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->flush()V

    const/16 v0, 0x20

    .line 66
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->maxAccessUnitCount:I

    return-void
.end method

.method public commitNextAccessUnit()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->nextAccessUnitBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 129
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->isFull()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->isEndOfStream()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 130
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->hasSupplementalData()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 131
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->canBatch(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasPendingAccessUnit:Z

    return-void

    .line 135
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->putAccessUnit(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->clearMainBuffer()V

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->nextAccessUnitBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasPendingAccessUnit:Z

    return-void
.end method

.method public getAccessUnitCount()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->accessUnitCount:I

    return v0
.end method

.method public getFirstAccessUnitTimeUs()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->firstAccessUnitTimeUs:J

    return-wide v0
.end method

.method public getLastAccessUnitTimeUs()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->timeUs:J

    return-wide v0
.end method

.method public getMaxAccessUnitCount()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->maxAccessUnitCount:I

    return v0
.end method

.method public getNextAccessUnitBuffer()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->nextAccessUnitBuffer:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 110
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->accessUnitCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFull()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->accessUnitCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->maxAccessUnitCount:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const v1, 0x2ee000

    if-ge v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->hasPendingAccessUnit:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setMaxAccessUnitCount(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 54
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/BatchBuffer;->maxAccessUnitCount:I

    return-void
.end method
