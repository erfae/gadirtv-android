.class public final Lcom/google/ads/interactivemedia/v3/internal/aaw;
.super Lcom/google/ads/interactivemedia/v3/internal/zi;
.source "IMASDK"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private b:Landroid/net/Uri;

.field private c:Landroid/content/res/AssetFileDescriptor;

.field private d:Ljava/io/InputStream;

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zi;-><init>(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/aav;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->e:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_5

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    int-to-long v5, p3

    .line 28
    :try_start_0
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->d:Ljava/io/InputStream;

    .line 29
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v4, :cond_3

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->e:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_2

    return v4

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aav;

    .line 31
    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aav;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_3
    iget-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->e:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_4

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->e:J

    .line 32
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->a(I)V

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/aav;

    .line 30
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/aav;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_5
    return v4
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/aav;
        }
    .end annotation

    .line 10
    :try_start_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->b:Landroid/net/Uri;

    const-string v1, "rawresource"

    .line 11
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_4

    .line 13
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->b(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->a:Landroid/content/res/Resources;

    .line 16
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->c:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_3

    .line 17
    new-instance v0, Ljava/io/FileInputStream;

    .line 18
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->d:Ljava/io/InputStream;

    .line 19
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    .line 20
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v2

    .line 21
    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 23
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->f:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->e:J

    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    sub-long v4, v0, v2

    .line 24
    :goto_0
    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->e:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->f:Z

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->c(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->e:J

    return-wide v0

    .line 22
    :cond_2
    :try_start_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aav;

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Resource is compressed: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aav;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :catch_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aav;

    const-string v0, "Resource identifier must be an integer."

    .line 14
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aav;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aav;

    const-string v0, "URI must use scheme rawresource"

    .line 12
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aav;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 25
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aav;

    .line 26
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aav;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/aav;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->d:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->d:Ljava/io/InputStream;

    :try_start_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->c:Landroid/content/res/AssetFileDescriptor;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->c:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->f:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->f:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zi;->d()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    :try_start_2
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/aav;

    .line 6
    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/aav;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->c:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->f:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->f:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zi;->d()V

    .line 8
    :cond_3
    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 7
    :try_start_3
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/aav;

    .line 4
    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/aav;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->d:Ljava/io/InputStream;

    :try_start_4
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->c:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_4

    .line 5
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->c:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->f:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->f:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zi;->d()V

    .line 9
    :cond_5
    throw v2

    :catchall_2
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 8
    :try_start_5
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/aav;

    .line 6
    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/aav;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->c:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->f:Z

    if-nez v0, :cond_6

    goto :goto_3

    .line 8
    :cond_6
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/aaw;->f:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zi;->d()V

    .line 8
    :goto_3
    throw v2
.end method
