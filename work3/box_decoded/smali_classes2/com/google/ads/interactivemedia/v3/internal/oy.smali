.class public final Lcom/google/ads/interactivemedia/v3/internal/oy;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oy;->a:Ljava/io/ByteArrayOutputStream;

    .line 2
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oy;->b:Ljava/io/DataOutputStream;

    return-void
.end method

.method private static a(Ljava/io/DataOutputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 15
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 16
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v1, v0

    and-int/lit16 v0, v1, 0xff

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    .line 18
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method

.method private static a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ow;)[B
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oy;->a:Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oy;->b:Ljava/io/DataOutputStream;

    .line 4
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/ow;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/oy;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/ow;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oy;->b:Ljava/io/DataOutputStream;

    .line 6
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/oy;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oy;->b:Ljava/io/DataOutputStream;

    .line 7
    iget-wide v1, p1, Lcom/google/ads/interactivemedia/v3/internal/ow;->c:J

    invoke-static {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/oy;->a(Ljava/io/DataOutputStream;J)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oy;->b:Ljava/io/DataOutputStream;

    .line 8
    iget-wide v1, p1, Lcom/google/ads/interactivemedia/v3/internal/ow;->d:J

    invoke-static {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/oy;->a(Ljava/io/DataOutputStream;J)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oy;->b:Ljava/io/DataOutputStream;

    .line 9
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ow;->e:[B

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oy;->b:Ljava/io/DataOutputStream;

    .line 10
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oy;->a:Ljava/io/ByteArrayOutputStream;

    .line 11
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    .line 12
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
