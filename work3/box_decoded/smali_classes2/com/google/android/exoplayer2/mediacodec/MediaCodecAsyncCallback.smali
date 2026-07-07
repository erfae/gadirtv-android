.class final Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;
.super Landroid/media/MediaCodec$Callback;
.source "MediaCodecAsyncCallback.java"


# instance fields
.field private final availableInputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

.field private final availableOutputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

.field private final bufferInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private currentFormat:Landroid/media/MediaFormat;

.field private final formats:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mediaCodecException:Ljava/lang/IllegalStateException;

.field private pendingOutputFormat:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/exoplayer2/util/IntArrayQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/IntArrayQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->availableInputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

    .line 40
    new-instance v0, Lcom/google/android/exoplayer2/util/IntArrayQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/IntArrayQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->availableOutputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

    .line 41
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->bufferInfos:Ljava/util/ArrayDeque;

    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->formats:Ljava/util/ArrayDeque;

    return-void
.end method

.method private addOutputFormat(Landroid/media/MediaFormat;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->availableOutputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/IntArrayQueue;->add(I)V

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public dequeueInputBufferIndex()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->availableInputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/IntArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->availableInputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/IntArrayQueue;->remove()I

    move-result v0

    :goto_0
    return v0
.end method

.method public dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 8

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->availableOutputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/IntArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->availableOutputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/IntArrayQueue;->remove()I

    move-result v0

    if-ltz v0, :cond_1

    .line 67
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec$BufferInfo;

    .line 68
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    if-ne v0, p1, :cond_2

    .line 74
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->currentFormat:Landroid/media/MediaFormat;

    :cond_2
    :goto_0
    return v0
.end method

.method public flush()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->availableInputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/IntArrayQueue;->clear()V

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->availableOutputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/IntArrayQueue;->clear()V

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 118
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->mediaCodecException:Ljava/lang/IllegalStateException;

    return-void
.end method

.method public getOutputFormat()Landroid/media/MediaFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->currentFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public maybeThrowMediaCodecException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->mediaCodecException:Ljava/lang/IllegalStateException;

    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->mediaCodecException:Ljava/lang/IllegalStateException;

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    throw v0
.end method

.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    .line 139
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->onMediaCodecError(Ljava/lang/IllegalStateException;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->availableInputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/IntArrayQueue;->add(I)V

    return-void
.end method

.method onMediaCodecError(Ljava/lang/IllegalStateException;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->mediaCodecException:Ljava/lang/IllegalStateException;

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    if-eqz p1, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->addOutputFormat(Landroid/media/MediaFormat;)V

    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->availableOutputBuffers:Lcom/google/android/exoplayer2/util/IntArrayQueue;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/IntArrayQueue;->add(I)V

    .line 134
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p1, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    .line 144
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->addOutputFormat(Landroid/media/MediaFormat;)V

    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAsyncCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    return-void
.end method
