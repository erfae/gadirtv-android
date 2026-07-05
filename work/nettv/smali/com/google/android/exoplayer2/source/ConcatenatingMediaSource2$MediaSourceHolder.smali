.class final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceHolder"
.end annotation


# instance fields
.field public activeMediaPeriods:I

.field public final index:I

.field public final initialPlaceholderDurationUs:J

.field public final mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    .line 4
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    return-void
.end method
