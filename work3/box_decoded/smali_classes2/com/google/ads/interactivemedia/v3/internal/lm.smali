.class final Lcom/google/ads/interactivemedia/v3/internal/lm;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:I

.field public e:I

.field public f:I

.field public final g:[I

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/abr;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->g:[I

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 1
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/ie;[BIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BIIZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_0

    return v0

    .line 3
    :cond_0
    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->a:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->b:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->c:J

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->d:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->e:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->f:I

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 20
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/lm;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;J)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    :goto_1
    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v0

    const-wide/16 v6, 0x4

    add-long/2addr v0, v6

    cmp-long v3, v0, p2

    if-ltz v3, :cond_1

    goto :goto_2

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    const/4 v1, 0x4

    .line 22
    invoke-static {p1, v0, v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/lm;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;[BIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 24
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v0

    const-wide/32 v2, 0x4f676753

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    return v5

    .line 25
    :cond_2
    invoke-virtual {p1, v5}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v0

    cmp-long v3, v0, p2

    if-gez v3, :cond_5

    .line 26
    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    :cond_5
    return v4
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/lm;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v1, 0x1b

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    .line 6
    invoke-static {p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/lm;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;[BIZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v2

    const-wide/32 v4, 0x4f676753

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 8
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->a:I

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    return v1

    .line 19
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string p2, "unsupported bit stream revision"

    .line 9
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 10
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result p2

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->b:I

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 11
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->q()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->c:J

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 12
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->m()J

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 13
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->m()J

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 14
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->m()J

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 15
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result p2

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->d:I

    add-int/lit8 v0, p2, 0x1b

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->e:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 16
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object p2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->d:I

    .line 17
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    :goto_0
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->d:I

    if-ge v1, p1, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->g:[I

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 18
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result p2

    aput p2, p1, v1

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->f:I

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->g:[I

    .line 19
    aget p2, p2, v1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lm;->f:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method
