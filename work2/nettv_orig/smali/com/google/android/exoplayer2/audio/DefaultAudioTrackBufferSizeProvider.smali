.class public Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;
.super Ljava/lang/Object;
.source "DefaultAudioTrackBufferSizeProvider.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    }
.end annotation


# static fields
.field private static final AC3_BUFFER_MULTIPLICATION_FACTOR:I = 0x2

.field private static final MAX_PCM_BUFFER_DURATION_US:I = 0xb71b0

.field private static final MIN_PCM_BUFFER_DURATION_US:I = 0x3d090

.field private static final OFFLOAD_BUFFER_DURATION_US:I = 0x2faf080

.field private static final PASSTHROUGH_BUFFER_DURATION_US:I = 0x3d090

.field private static final PCM_BUFFER_MULTIPLICATION_FACTOR:I = 0x4


# instance fields
.field public final ac3BufferMultiplicationFactor:I

.field public final maxPcmBufferDurationUs:I

.field public final minPcmBufferDurationUs:I

.field public final offloadBufferDurationUs:I

.field public final passthroughBufferDurationUs:I

.field public final pcmBufferMultiplicationFactor:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$000(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->minPcmBufferDurationUs:I

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$100(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->maxPcmBufferDurationUs:I

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$200(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->pcmBufferMultiplicationFactor:I

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$300(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->passthroughBufferDurationUs:I

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$400(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->offloadBufferDurationUs:I

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;->access$500(Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider$Builder;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->ac3BufferMultiplicationFactor:I

    return-void
.end method

.method public static getMaximumEncodedRateBytesPerSecond(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_1
    const p0, 0xf906

    return p0

    :pswitch_2
    const p0, 0x52080

    return p0

    :pswitch_3
    const p0, 0x3e800

    return p0

    :pswitch_4
    const/16 p0, 0x1f40

    return p0

    :pswitch_5
    const p0, 0x2ebae4

    return p0

    :pswitch_6
    const/16 p0, 0x1b58

    return p0

    :pswitch_7
    const/16 p0, 0x3e80

    return p0

    :pswitch_8
    const p0, 0x186a0

    return p0

    :pswitch_9
    const p0, 0x9c40

    return p0

    :pswitch_a
    const p0, 0x225510

    return p0

    :pswitch_b
    const p0, 0x2ee00

    return p0

    :pswitch_c
    const p0, 0xbb800

    return p0

    :pswitch_d
    const p0, 0x13880

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getBufferSizeInBytes(IIIIIID)I
    .locals 7

    const-wide/32 v0, 0xf4240

    const/4 v2, 0x1

    if-eqz p3, :cond_4

    if-eq p3, v2, :cond_3

    const/4 p5, 0x2

    if-ne p3, p5, :cond_2

    .line 1
    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->passthroughBufferDurationUs:I

    const/4 p5, 0x5

    if-ne p2, p5, :cond_0

    .line 2
    iget p5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->ac3BufferMultiplicationFactor:I

    mul-int p3, p3, p5

    :cond_0
    const/4 p5, -0x1

    if-eq p6, p5, :cond_1

    const/16 p2, 0x8

    .line 3
    sget-object p5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p6, p2, p5}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result p2

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result p2

    :goto_0
    int-to-long p5, p3

    int-to-long p2, p2

    mul-long p5, p5, p2

    .line 5
    div-long/2addr p5, v0

    invoke-static {p5, p6}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 7
    :cond_3
    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result p2

    .line 8
    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->offloadBufferDurationUs:I

    int-to-long p5, p3

    int-to-long p2, p2

    mul-long p5, p5, p2

    div-long/2addr p5, v0

    invoke-static {p5, p6}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p2

    goto :goto_1

    .line 9
    :cond_4
    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->pcmBufferMultiplicationFactor:I

    mul-int p2, p2, p1

    .line 10
    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->minPcmBufferDurationUs:I

    int-to-long v3, p3

    int-to-long p5, p5

    mul-long v3, v3, p5

    int-to-long v5, p4

    mul-long v3, v3, v5

    .line 11
    div-long/2addr v3, v0

    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p3

    .line 12
    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioTrackBufferSizeProvider;->maxPcmBufferDurationUs:I

    int-to-long v3, v3

    mul-long v3, v3, p5

    mul-long v3, v3, v5

    .line 13
    div-long/2addr v3, v0

    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p5

    .line 14
    invoke-static {p2, p3, p5}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result p2

    :goto_1
    int-to-double p2, p2

    mul-double p2, p2, p7

    double-to-int p2, p2

    .line 15
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p4

    sub-int/2addr p1, v2

    .line 16
    div-int/2addr p1, p4

    mul-int p1, p1, p4

    return p1
.end method
