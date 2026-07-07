.class Lcom/inka/ncg/zip/a;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field d:Lcom/inka/ncg/zip/NcgZipJniWrapper;

.field e:J


# direct methods
.method public constructor <init>(Lcom/inka/ncg/zip/NcgZipJniWrapper;J)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/inka/ncg/zip/a;->a:I

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/inka/ncg/zip/a;->b:I

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lcom/inka/ncg/zip/a;->c:I

    .line 16
    iput-object p1, p0, Lcom/inka/ncg/zip/a;->d:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    .line 17
    iput-wide p2, p0, Lcom/inka/ncg/zip/a;->e:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/inka/ncg/zip/a;->d:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    iget-wide v1, p0, Lcom/inka/ncg/zip/a;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->getContentSize(J)I

    move-result v0

    int-to-long v0, v0

    .line 66
    iget-object v2, p0, Lcom/inka/ncg/zip/a;->d:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    iget-wide v3, p0, Lcom/inka/ncg/zip/a;->e:J

    invoke-virtual {v2, v3, v4}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->tell(J)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2800

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/16 v0, 0x2800

    goto :goto_0

    :cond_0
    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 23
    iget-wide v0, p0, Lcom/inka/ncg/zip/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 24
    iget-object v4, p0, Lcom/inka/ncg/zip/a;->d:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    invoke-virtual {v4, v0, v1}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->destroyZipInputStream(J)V

    .line 25
    iput-wide v2, p0, Lcom/inka/ncg/zip/a;->e:J

    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 83
    invoke-virtual {p0, v1}, Lcom/inka/ncg/zip/a;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    .line 86
    aget-byte v0, v1, v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/inka/ncg/zip/a;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_4

    .line 103
    array-length v6, p1

    new-array v0, v6, [B

    const/4 v2, 0x1

    new-array v8, v2, [I

    .line 105
    iget-object v2, p0, Lcom/inka/ncg/zip/a;->d:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    iget-wide v3, p0, Lcom/inka/ncg/zip/a;->e:J

    move-object v5, v0

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->read(J[BI[I)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 109
    aget v3, v8, v2

    if-nez v3, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    :goto_0
    if-ge v2, p3, :cond_2

    add-int v4, v2, p2

    if-lt v4, v1, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    aget-byte v5, v0, v2

    aput-byte v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v3

    .line 107
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to read : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Too long length"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/inka/ncg/zip/a;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 35
    iget-object v0, p0, Lcom/inka/ncg/zip/a;->d:Lcom/inka/ncg/zip/NcgZipJniWrapper;

    iget-wide v1, p0, Lcom/inka/ncg/zip/a;->e:J

    long-to-int v3, p1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inka/ncg/zip/NcgZipJniWrapper;->seek(JII)I

    move-result v0

    if-nez v0, :cond_0

    return-wide p1

    .line 37
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to seek the file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method
