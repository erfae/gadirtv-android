.class Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache$1;
.super Ljava/util/LinkedHashMap;
.source "FullSegmentEncryptionKeyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Landroid/net/Uri;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic val$maxSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache$1;->val$maxSize:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Landroid/net/Uri;",
            "[B>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache$1;->val$maxSize:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
