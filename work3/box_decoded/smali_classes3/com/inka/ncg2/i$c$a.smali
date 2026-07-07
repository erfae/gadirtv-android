.class Lcom/inka/ncg2/i$c$a;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/i$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inka/ncg2/i$c;


# direct methods
.method private constructor <init>(Lcom/inka/ncg2/i$c;)V
    .locals 0

    .line 2240
    iput-object p1, p0, Lcom/inka/ncg2/i$c$a;->a:Lcom/inka/ncg2/i$c;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inka/ncg2/i$c;Lcom/inka/ncg2/i$1;)V
    .locals 0

    .line 2240
    invoke-direct {p0, p1}, Lcom/inka/ncg2/i$c$a;-><init>(Lcom/inka/ncg2/i$c;)V

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

    .line 2303
    iget-object v0, p0, Lcom/inka/ncg2/i$c$a;->a:Lcom/inka/ncg2/i$c;

    iget-object v0, v0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/inka/ncg2/i$c$a;->a:Lcom/inka/ncg2/i$c;

    invoke-static {v1}, Lcom/inka/ncg2/i$c;->c(Lcom/inka/ncg2/i$c;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getContentSize(J)J

    move-result-wide v0

    .line 2307
    :try_start_0
    iget-object v2, p0, Lcom/inka/ncg2/i$c$a;->a:Lcom/inka/ncg2/i$c;

    invoke-virtual {v2}, Lcom/inka/ncg2/i$c;->getCurrentFilePointer()J

    move-result-wide v2
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_0

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

    :catch_0
    move-exception v0

    .line 2309
    invoke-virtual {v0}, Lcom/inka/ncg2/Ncg2Exception;->printStackTrace()V

    .line 2310
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/inka/ncg2/Ncg2Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 0

    .line 2244
    invoke-virtual {p0}, Lcom/inka/ncg2/i$c$a;->close()V

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2325
    :try_start_0
    iget-object v1, p0, Lcom/inka/ncg2/i$c$a;->a:Lcom/inka/ncg2/i$c;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/inka/ncg2/i$c;->read([BJ)J
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    .line 2330
    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0

    :catch_0
    move-exception v0

    .line 2327
    invoke-virtual {v0}, Lcom/inka/ncg2/Ncg2Exception;->printStackTrace()V

    .line 2328
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/inka/ncg2/Ncg2Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2339
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/inka/ncg2/i$c$a;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2347
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_2

    .line 2351
    array-length v0, p1

    new-array v2, v0, [B

    .line 2356
    :try_start_0
    iget-object v3, p0, Lcom/inka/ncg2/i$c$a;->a:Lcom/inka/ncg2/i$c;

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Lcom/inka/ncg2/i$c;->read([BJ)J

    move-result-wide v3
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v5, v0, p2

    if-lt v5, v1, :cond_0

    goto :goto_1

    .line 2366
    :cond_0
    aget-byte v6, v2, v0

    aput-byte v6, p1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    long-to-int p1, v3

    return p1

    :catch_0
    move-exception p1

    .line 2358
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->printStackTrace()V

    .line 2359
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2348
    :cond_2
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

    .line 2273
    iget-object v0, p0, Lcom/inka/ncg2/i$c$a;->a:Lcom/inka/ncg2/i$c;

    iget-object v0, v0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2277
    iget-object v0, p0, Lcom/inka/ncg2/i$c$a;->a:Lcom/inka/ncg2/i$c;

    invoke-static {v0}, Lcom/inka/ncg2/i$c;->a(Lcom/inka/ncg2/i$c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2280
    iget-object v0, p0, Lcom/inka/ncg2/i$c$a;->a:Lcom/inka/ncg2/i$c;

    invoke-static {v0}, Lcom/inka/ncg2/i$c;->b(Lcom/inka/ncg2/i$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2284
    invoke-virtual {p0}, Lcom/inka/ncg2/i$c$a;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2287
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2281
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not Prepared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2278
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2274
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Ncg2Agent.init() method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2249
    iget-object v0, p0, Lcom/inka/ncg2/i$c$a;->a:Lcom/inka/ncg2/i$c;

    iget-object v0, v0, Lcom/inka/ncg2/i$c;->a:Lcom/inka/ncg2/i;

    invoke-static {v0}, Lcom/inka/ncg2/i;->a(Lcom/inka/ncg2/i;)Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2253
    iget-object v0, p0, Lcom/inka/ncg2/i$c$a;->a:Lcom/inka/ncg2/i$c;

    invoke-static {v0}, Lcom/inka/ncg2/i$c;->a(Lcom/inka/ncg2/i$c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2256
    iget-object v0, p0, Lcom/inka/ncg2/i$c$a;->a:Lcom/inka/ncg2/i$c;

    invoke-static {v0}, Lcom/inka/ncg2/i$c;->b(Lcom/inka/ncg2/i$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2263
    :try_start_0
    iget-object v0, p0, Lcom/inka/ncg2/i$c$a;->a:Lcom/inka/ncg2/i$c;

    sget-object v1, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;->Current:Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    invoke-virtual {v0, p1, p2, v1}, Lcom/inka/ncg2/i$c;->seek(JLcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;)V
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 2265
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->printStackTrace()V

    .line 2266
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2260
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "\ud30c\uc77c \uc2dc\uc791 \uc55e\uc73c\ub85c \ud30c\uc77c \ud3ec\uc778\ud130\ub97c \uc774\ub3d9\ud558\ub824\uace0 \ud588\uc2b5\ub2c8\ub2e4"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2257
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not Prepared"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2254
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 2250
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You must call Ncg2Agent.init() method first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
