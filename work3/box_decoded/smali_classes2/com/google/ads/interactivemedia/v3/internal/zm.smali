.class public final Lcom/google/ads/interactivemedia/v3/internal/zm;
.super Lcom/google/ads/interactivemedia/v3/internal/zi;
.source "IMASDK"


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/zs;

.field private b:[B

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zi;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->c:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->d:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 21
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->b:[B

    .line 22
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->d:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->d:I

    .line 23
    invoke-virtual {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/zi;->a(I)V

    return p3
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->b(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->a:Lcom/google/ads/interactivemedia/v3/internal/zs;

    .line 4
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    long-to-int v1, v0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->d:I

    .line 5
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->a:Landroid/net/Uri;

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unsupported scheme: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 10
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const/4 v0, 0x1

    .line 12
    aget-object v0, v1, v0

    const/4 v2, 0x0

    .line 13
    aget-object v1, v1, v2

    const-string v3, ";base64"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->b:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 8
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error while parsing Base64 encoded string: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 16
    :cond_3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/anc;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->c(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->b:[B

    .line 17
    :goto_2
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->f:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    long-to-int v1, v0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->d:I

    add-int/2addr v1, v0

    goto :goto_3

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->b:[B

    .line 17
    array-length v1, v0

    :goto_3
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->c:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->b:[B

    .line 18
    array-length v0, v0

    if-gt v1, v0, :cond_5

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->d:I

    if-gt v0, v1, :cond_5

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->c(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->c:I

    int-to-long v0, p1

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->d:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0

    :cond_5
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->b:[B

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zp;

    .line 19
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zp;-><init>()V

    throw p1

    .line 10
    :cond_6
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x17

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected URI format: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->a:Lcom/google/ads/interactivemedia/v3/internal/zs;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zs;->a:Landroid/net/Uri;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->b:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->b:[B

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zi;->d()V

    :cond_0
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zm;->a:Lcom/google/ads/interactivemedia/v3/internal/zs;

    return-void
.end method
