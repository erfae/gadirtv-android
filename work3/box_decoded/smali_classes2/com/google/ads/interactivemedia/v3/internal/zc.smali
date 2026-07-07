.class public final Lcom/google/ads/interactivemedia/v3/internal/zc;
.super Lcom/google/ads/interactivemedia/v3/internal/zi;
.source "IMASDK"


# instance fields
.field private final a:Landroid/content/res/AssetManager;

.field private b:Landroid/net/Uri;

.field private c:Ljava/io/InputStream;

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zi;-><init>(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->a:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/zb;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->d:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_5

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    int-to-long v5, p3

    .line 22
    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->c:Ljava/io/InputStream;

    .line 23
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_3

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->d:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_2

    return v4

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zb;

    .line 25
    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zb;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_3
    iget-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->d:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_4

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->d:J

    .line 26
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->a(I)V

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zb;

    .line 24
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zb;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_5
    return v4
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/zb;
        }
    .end annotation

    .line 7
    :try_start_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->b:Landroid/net/Uri;

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "/android_asset/"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "/"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->b(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->a:Landroid/content/res/AssetManager;

    .line 14
    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->c:Ljava/io/InputStream;

    .line 15
    iget-wide v3, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    invoke-virtual {v0, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 16
    iget-wide v3, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_4

    .line 18
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->f:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->d:J

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->c:Ljava/io/InputStream;

    .line 19
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->d:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v0, v5

    if-nez v7, :cond_3

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->d:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->e:Z

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->c(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->d:J

    return-wide v0

    .line 17
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zb;

    .line 20
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zb;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/zb;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->c:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->c:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->e:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->e:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zi;->d()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/zb;

    .line 4
    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zb;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->c:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->e:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zc;->e:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zi;->d()V

    .line 6
    :goto_1
    throw v2
.end method
