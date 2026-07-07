.class public abstract Lcom/google/ads/interactivemedia/v3/internal/aml;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/amk;


# instance fields
.field protected a:Landroid/util/DisplayMetrics;

.field protected final b:Lcom/google/ads/interactivemedia/v3/internal/amt;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/amw;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/amt;Lcom/google/ads/interactivemedia/v3/internal/amw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aml;->b:Lcom/google/ads/interactivemedia/v3/internal/amt;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/aml;->c:Lcom/google/ads/interactivemedia/v3/internal/amw;

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aml;->a:Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Landroid/util/DisplayMetrics;

    .line 2
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aml;->a:Landroid/util/DisplayMetrics;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/util/DisplayMetrics;->density:F

    return-void
.end method

.method private final a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4

    const/4 p2, 0x7

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aml;->b(Landroid/content/Context;)V

    .line 7
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aml;->b()[B

    move-result-object p1

    .line 8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x5

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_0
    const/16 v1, 0xef

    if-le v0, v1, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a()V

    const/16 p1, 0x14

    const-wide/16 v2, 0x1

    .line 11
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(IJ)V

    .line 12
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/aml;->b()[B

    move-result-object p1

    .line 13
    :cond_1
    array-length v0, p1

    const/16 v2, 0xf0

    if-ge v0, v1, :cond_2

    rsub-int v1, v0, 0xef

    new-array v1, v1, [B

    new-instance v3, Ljava/security/SecureRandom;

    .line 18
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 19
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    int-to-byte v0, v0

    .line 20
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    int-to-byte v0, v0

    .line 15
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    :goto_0
    const-string v0, "MD5"

    .line 24
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 26
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/16 v1, 0x100

    .line 27
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 28
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    new-array v0, v1, [B

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/amj;

    .line 31
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/amj;-><init>()V

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/amj;->cN:[Lcom/google/ads/interactivemedia/v3/internal/alw;

    .line 32
    array-length v2, v1

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0xc

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    invoke-interface {v3, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/alw;->a([B[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aml;->b:Lcom/google/ads/interactivemedia/v3/internal/amt;

    .line 33
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/amt;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 p1, 0x3

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 36
    :catch_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 37
    :catch_2
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aml;->c:Lcom/google/ads/interactivemedia/v3/internal/amw;

    .line 40
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/amw;->a()V

    return-void
.end method

.method private final b()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aml;->c:Lcom/google/ads/interactivemedia/v3/internal/amw;

    .line 39
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/amw;->b()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aml;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aml;->c:Lcom/google/ads/interactivemedia/v3/internal/amw;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/amw;->a(IJ)V

    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aml;->c:Lcom/google/ads/interactivemedia/v3/internal/amw;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/amw;->a(ILjava/lang/String;)V

    return-void
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method
