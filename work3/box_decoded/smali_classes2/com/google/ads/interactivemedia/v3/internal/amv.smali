.class public final Lcom/google/ads/interactivemedia/v3/internal/amv;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/amt;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/amt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/amv;->a:Lcom/google/ads/interactivemedia/v3/internal/amt;

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/amu;
        }
    .end annotation

    const-string v0, "dmFUD4yixjCLeIFssMn8+bpXZchyM7ZZjdHVe+zeIw0="

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/amv;->a:Lcom/google/ads/interactivemedia/v3/internal/amt;

    .line 21
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/amt;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 22
    array-length v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/4 v1, 0x4

    const/16 v2, 0x10

    .line 23
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-array v1, v2, [B

    .line 24
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 25
    aget-byte v3, v1, v0

    xor-int/lit8 v3, v3, 0x44

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/amu;

    .line 26
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/amu;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amu;

    .line 27
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/amu;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a([BLjava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/amu;
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/amv;->a:Lcom/google/ads/interactivemedia/v3/internal/amt;

    .line 2
    invoke-interface {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/amt;->a(Ljava/lang/String;)[B

    move-result-object p2

    .line 3
    array-length v0, p2

    if-le v0, v1, :cond_0

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 5
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-array p2, v1, [B

    add-int/lit8 v0, v0, -0x10

    new-array v0, v0, [B

    .line 7
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/CBC/PKCS5Padding"

    .line 10
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 11
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 12
    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/amu;

    .line 13
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/amu;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/amu;

    .line 14
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/amu;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 16
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/amu;

    .line 15
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/amu;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 17
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/amu;

    .line 16
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/amu;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 18
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/amu;

    .line 17
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/amu;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    .line 19
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/amu;

    .line 18
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/amu;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_5
    move-exception p1

    .line 20
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/amu;

    .line 19
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/amu;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_6
    move-exception p1

    .line 13
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/amu;

    .line 20
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/amu;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 0
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/amu;

    .line 1
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/amu;-><init>()V

    throw p1
.end method
