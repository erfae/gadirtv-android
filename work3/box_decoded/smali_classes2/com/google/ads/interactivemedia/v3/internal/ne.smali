.class final Lcom/google/ads/interactivemedia/v3/internal/ne;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/acf;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/acf;

    const-wide/16 v1, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/acf;-><init>(J)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->a:Lcom/google/ads/interactivemedia/v3/internal/acf;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->f:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->g:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->h:J

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 2
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->f:[B

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->c:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ne;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)V

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->e:Z

    const/16 v2, 0x47

    const-wide/32 v3, 0x1b8a0

    const/4 v5, 0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v8

    .line 6
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    int-to-long v3, v1

    sub-long/2addr v8, v3

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v3

    cmp-long v10, v3, v8

    if-eqz v10, :cond_1

    iput-wide v8, p2, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:J

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 7
    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    :cond_2
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p2, :cond_4

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    .line 10
    aget-byte v3, v3, v1

    if-eq v3, v2, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {p1, v1, p3}, Lcom/google/ads/interactivemedia/v3/internal/wp;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;II)J

    move-result-wide v3

    cmp-long v8, v3, v6

    if-eqz v8, :cond_2

    move-wide v6, v3

    :cond_4
    iput-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->g:J

    iput-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->e:Z

    :goto_1
    return v0

    :cond_5
    iget-wide v8, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->g:J

    cmp-long v1, v8, v6

    if-nez v1, :cond_6

    .line 12
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ne;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)V

    return v0

    :cond_6
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->d:Z

    if-nez v1, :cond_b

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v8

    .line 13
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v10, v3, v8

    if-eqz v10, :cond_7

    iput-wide v8, p2, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:J

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 14
    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    .line 15
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    :goto_2
    if-ge p2, v1, :cond_a

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    .line 17
    aget-byte v3, v3, p2

    if-eq v3, v2, :cond_8

    goto :goto_3

    .line 18
    :cond_8
    invoke-static {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/wp;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;II)J

    move-result-wide v3

    cmp-long v8, v3, v6

    if-eqz v8, :cond_9

    move-wide v6, v3

    goto :goto_4

    :cond_9
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_a
    :goto_4
    iput-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->f:J

    iput-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->d:Z

    :goto_5
    return v0

    :cond_b
    iget-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->f:J

    cmp-long v1, p2, v6

    if-nez v1, :cond_c

    .line 19
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ne;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)V

    return v0

    :cond_c
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->a:Lcom/google/ads/interactivemedia/v3/internal/acf;

    .line 20
    invoke-virtual {v1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/acf;->b(J)J

    move-result-wide p2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->a:Lcom/google/ads/interactivemedia/v3/internal/acf;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->g:J

    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/acf;->b(J)J

    move-result-wide v1

    sub-long/2addr v1, p2

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->h:J

    .line 22
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ne;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)V

    return v0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->c:Z

    return v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->h:J

    return-wide v0
.end method

.method public final c()Lcom/google/ads/interactivemedia/v3/internal/acf;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ne;->a:Lcom/google/ads/interactivemedia/v3/internal/acf;

    return-object v0
.end method
