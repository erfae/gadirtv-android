.class public final Lcom/google/ads/interactivemedia/v3/internal/hb;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public a:[B

.field public b:[I

.field public c:[I

.field private final d:Landroid/media/MediaCodec$CryptoInfo;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/ha;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->d:Landroid/media/MediaCodec$CryptoInfo;

    .line 2
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ha;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ha;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->e:Lcom/google/ads/interactivemedia/v3/internal/ha;

    return-void
.end method


# virtual methods
.method public final a()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->d:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->b:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->b:[I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->d:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->b:[I

    const/4 v1, 0x0

    .line 3
    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-void
.end method

.method public final a(I[I[I[B[BIII)V
    .locals 1

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->b:[I

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->c:[I

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->a:[B

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->d:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->d:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p2, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->d:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p3, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->d:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p4, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->d:Landroid/media/MediaCodec$CryptoInfo;

    iput-object p5, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->d:Landroid/media/MediaCodec$CryptoInfo;

    iput p6, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 4
    sget p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hb;->e:Lcom/google/ads/interactivemedia/v3/internal/ha;

    .line 5
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p7, p8}, Lcom/google/ads/interactivemedia/v3/internal/ha;->a(Lcom/google/ads/interactivemedia/v3/internal/ha;II)V

    :cond_0
    return-void
.end method
