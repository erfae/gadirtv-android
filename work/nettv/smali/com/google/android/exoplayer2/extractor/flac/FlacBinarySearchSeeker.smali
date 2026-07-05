.class final Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;
.super Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;
.source "FlacBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;IJJ)V
    .locals 14

    move-object v0, p1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lcom/nettv/livestore/activities/MovieActivity$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, p1, v4, v3}, Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;ILcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker$1;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getApproxBytesPerFrame()J

    move-result-wide v11

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v7, 0x6

    .line 4
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object v0, p0

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    .line 5
    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$SeekTimestampConverter;Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V

    return-void
.end method
