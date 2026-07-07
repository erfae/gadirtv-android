.class public final Lcom/google/ads/interactivemedia/v3/internal/aac;
.super Lcom/google/ads/interactivemedia/v3/internal/zi;
.source "IMASDK"


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Landroid/net/Uri;

.field private c:J

.field private d:Z


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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/aab;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->a:Ljava/io/RandomAccessFile;

    .line 18
    sget v3, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    int-to-long v3, p3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    iget-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->c:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->c:J

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->a(I)V

    :cond_2
    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/aab;

    .line 19
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/aab;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/aab;
        }
    .end annotation

    .line 6
    :try_start_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->b:Landroid/net/Uri;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->b(Lcom/google/ads/interactivemedia/v3/internal/zs;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->a:Ljava/io/RandomAccessFile;

    .line 13
    iget-wide v3, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 14
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->f:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    sub-long/2addr v2, v4

    :cond_0
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->c:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 15
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->d:Z

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->c(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->c:J

    return-wide v0

    .line 15
    :cond_1
    :try_start_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aab;

    .line 12
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aab;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_3
    :goto_0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/aab;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 10
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"

    .line 11
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aab;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 17
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aab;

    .line 16
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aab;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/aab;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->a:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->a:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->d:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->d:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zi;->d()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/aab;

    .line 3
    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/aab;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->a:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->d:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aac;->d:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zi;->d()V

    .line 5
    :goto_1
    throw v2
.end method
