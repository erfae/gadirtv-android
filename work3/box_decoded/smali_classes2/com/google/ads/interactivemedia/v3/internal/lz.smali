.class public final Lcom/google/ads/interactivemedia/v3/internal/lz;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ih;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ma;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/abq;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private f:J

.field private g:J

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/lz;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ma;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ma;-><init>(ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->a:Lcom/google/ads/interactivemedia/v3/internal/ma;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v0, 0x800

    .line 4
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->h:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->g:J

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v0, 0xa

    .line 5
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/abq;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->d:Lcom/google/ads/interactivemedia/v3/internal/abq;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->e:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 9
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 10
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x800

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BII)I

    move-result p1

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->j:Z

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->e:Lcom/google/ads/interactivemedia/v3/internal/ii;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/it;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    invoke-direct {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/it;-><init>(J)V

    invoke-interface {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->j:Z

    :cond_0
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return p2

    :cond_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 12
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 13
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b(I)V

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->i:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->a:Lcom/google/ads/interactivemedia/v3/internal/ma;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->f:J

    const/4 p2, 0x4

    .line 14
    invoke-virtual {p1, v2, v3, p2}, Lcom/google/ads/interactivemedia/v3/internal/ma;->a(JI)V

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->i:Z

    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->a:Lcom/google/ads/interactivemedia/v3/internal/ma;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 15
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ma;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V

    return v0
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->i:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->a:Lcom/google/ads/interactivemedia/v3/internal/ma;

    .line 16
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ma;->a()V

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->f:J

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 4

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->e:Lcom/google/ads/interactivemedia/v3/internal/ii;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->a:Lcom/google/ads/interactivemedia/v3/internal/ma;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/nl;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 7
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/nl;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ma;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V

    .line 8
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->w()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 17
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p1, v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 18
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 19
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result v2

    const v3, 0x494433

    if-eq v2, v3, :cond_6

    .line 23
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    .line 24
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->g:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->g:J

    :cond_0
    move v3, v1

    :goto_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 25
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {p1, v5, v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 26
    invoke-virtual {v5, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 27
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->g()I

    move-result v5

    .line 28
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/ma;->a(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 29
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    add-int/lit8 v3, v3, 0x1

    sub-int v2, v3, v1

    const/16 v4, 0x2000

    if-lt v2, v4, :cond_1

    return v0

    .line 30
    :cond_1
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_4

    const/16 v7, 0xbc

    if-gt v4, v7, :cond_3

    goto :goto_3

    :cond_3
    return v5

    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 31
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    invoke-virtual {p1, v5, v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->d:Lcom/google/ads/interactivemedia/v3/internal/abq;

    const/16 v6, 0xe

    .line 32
    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->a(I)V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->d:Lcom/google/ads/interactivemedia/v3/internal/abq;

    const/16 v6, 0xd

    .line 33
    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_5

    return v0

    :cond_5
    add-int/lit8 v6, v5, -0x6

    .line 34
    invoke-virtual {p1, v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    add-int/2addr v4, v5

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v3, 0x3

    .line 20
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lz;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 21
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->s()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 22
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    goto/16 :goto_0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
