.class public final Lcom/google/vr/sdk/widgets/video/deps/oe;
.super Lcom/google/vr/sdk/widgets/video/deps/no;
.source "FileDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/oe$a;
    }
.end annotation


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
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/no;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/oe$a;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 19
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p1, -0x1

    return p1

    .line 21
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->a:Ljava/io/RandomAccessFile;

    int-to-long v3, p3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    .line 26
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->c:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->c:J

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/oe;->a(I)V

    :cond_2
    return p1

    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/oe$a;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/oe$a;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/oe$a;
        }
    .end annotation

    .line 3
    :try_start_0
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->b:Landroid/net/Uri;

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/oe;->b(Lcom/google/vr/sdk/widgets/video/deps/nv;)V

    .line 5
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->a:Ljava/io/RandomAccessFile;

    .line 6
    iget-wide v1, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 7
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->f:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->g:J

    :goto_0
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->c:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->d:Z

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/oe;->c(Lcom/google/vr/sdk/widgets/video/deps/nv;)V

    .line 16
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->c:J

    return-wide v0

    .line 10
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/oe$a;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/oe$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public a()Landroid/net/Uri;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/oe$a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->a:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->a:Ljava/io/RandomAccessFile;

    .line 34
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->d:Z

    if-eqz v0, :cond_1

    .line 35
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->d:Z

    .line 36
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/oe;->d()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 38
    :try_start_1
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/oe$a;

    invoke-direct {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/oe$a;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->a:Ljava/io/RandomAccessFile;

    .line 40
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->d:Z

    if-eqz v0, :cond_2

    .line 41
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/oe;->d:Z

    .line 42
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/oe;->d()V

    :cond_2
    throw v2
.end method
