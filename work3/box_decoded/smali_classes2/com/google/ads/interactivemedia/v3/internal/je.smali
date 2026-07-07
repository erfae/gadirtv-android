.class final Lcom/google/ads/interactivemedia/v3/internal/je;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ia;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/io;

.field private final b:I

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ik;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/io;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/je;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/je;->b:I

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ik;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/ik;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/je;->c:Lcom/google/ads/interactivemedia/v3/internal/ik;

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x6

    add-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/je;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/je;->b:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/je;->c:Lcom/google/ads/interactivemedia/v3/internal/ik;

    .line 1
    invoke-static {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/io;ILcom/google/ads/interactivemedia/v3/internal/ik;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v2

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/je;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 4
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/io;->j:J

    return-wide v0

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/je;->c:Lcom/google/ads/interactivemedia/v3/internal/ik;

    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/ik;->a:J

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;J)Lcom/google/ads/interactivemedia/v3/internal/hz;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/je;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/je;->a:Lcom/google/ads/interactivemedia/v3/internal/io;

    .line 6
    iget v6, v6, Lcom/google/ads/interactivemedia/v3/internal/io;->c:I

    const/4 v7, 0x6

    .line 7
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 6
    invoke-virtual {p1, v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    .line 8
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/je;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b()J

    move-result-wide v8

    cmp-long p1, v2, p2

    if-gtz p1, :cond_1

    cmp-long p1, v6, p2

    if-gtz p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/hz;->a(J)Lcom/google/ads/interactivemedia/v3/internal/hz;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    cmp-long p1, v6, p2

    if-gtz p1, :cond_2

    .line 9
    invoke-static {v6, v7, v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/hz;->b(JJ)Lcom/google/ads/interactivemedia/v3/internal/hz;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    invoke-static {v2, v3, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/hz;->a(JJ)Lcom/google/ads/interactivemedia/v3/internal/hz;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method
