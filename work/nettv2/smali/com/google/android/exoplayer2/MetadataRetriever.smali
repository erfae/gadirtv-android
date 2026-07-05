.class public final Lcom/google/android/exoplayer2/MetadataRetriever;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retrieveMetadata(Landroid/content/Context;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    const/4 v2, 0x6

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    .line 5
    invoke-static {v2, p1, v0}, Lcom/google/android/exoplayer2/MetadataRetriever;->retrieveMetadata(Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static retrieveMetadata(Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer2/MetadataRetriever;->retrieveMetadata(Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static retrieveMetadata(Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/MediaSource$Factory;",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/android/exoplayer2/util/Clock;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/util/Clock;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/MetadataRetriever$MetadataRetrieverInternal;->retrieveMetadata(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
