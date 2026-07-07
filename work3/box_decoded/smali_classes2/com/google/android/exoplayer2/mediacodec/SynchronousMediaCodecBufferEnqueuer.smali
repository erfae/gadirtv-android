.class Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecBufferEnqueuer;
.super Ljava/lang/Object;
.source "SynchronousMediaCodecBufferEnqueuer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecInputBufferEnqueuer;


# instance fields
.field private final codec:Landroid/media/MediaCodec;


# direct methods
.method constructor <init>(Landroid/media/MediaCodec;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    return-void
.end method

.method public queueInputBuffer(IIIJI)V
    .locals 7

    .line 44
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public queueSecureInputBuffer(IILcom/google/android/exoplayer2/decoder/CryptoInfo;JI)V
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    .line 51
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->getFrameworkCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    move v1, p1

    move v2, p2

    move-wide v4, p4

    move v6, p6

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
