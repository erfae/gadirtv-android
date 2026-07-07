.class public final Lcom/google/ads/interactivemedia/v3/internal/zq;
.super Ljava/io/InputStream;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/zs;

.field private final c:[B

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->d:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->e:Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->a:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->c:[B

    return-void
.end method

.method private final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->a:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->b:Lcom/google/ads/interactivemedia/v3/internal/zs;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zo;->a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zq;->b()V

    return-void
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->a:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zo;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->e:Z

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->c:[B

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zq;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->c:[B

    const/4 v1, 0x0

    .line 6
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zq;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->e:Z

    xor-int/lit8 v0, v0, 0x1

    .line 8
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    .line 9
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zq;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->a:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 10
    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zo;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zq;->f:J

    return p1
.end method
