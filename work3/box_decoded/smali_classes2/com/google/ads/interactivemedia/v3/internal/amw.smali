.class final Lcom/google/ads/interactivemedia/v3/internal/amw;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/aqd;

.field private b:[B

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xef

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/amw;->c:I

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/amw;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/amw;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/amw;->b:[B

    .line 6
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aqd;->a([B)Lcom/google/ads/interactivemedia/v3/internal/aqd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/amw;->a:Lcom/google/ads/interactivemedia/v3/internal/aqd;

    return-void
.end method

.method public final a(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/amw;->a:Lcom/google/ads/interactivemedia/v3/internal/aqd;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/aqd;->a(II)V

    .line 8
    invoke-virtual {v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/aqd;->a(J)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/amw;->a:Lcom/google/ads/interactivemedia/v3/internal/aqd;

    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/aqd;->a(II)V

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/aqd;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/amw;->a:Lcom/google/ads/interactivemedia/v3/internal/aqd;

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aqd;->a()I

    move-result v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/amw;->b:[B

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/amw;->b:[B

    .line 4
    array-length v2, v1

    sub-int/2addr v2, v0

    new-array v0, v2, [B

    const/4 v3, 0x0

    .line 5
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 3
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method
