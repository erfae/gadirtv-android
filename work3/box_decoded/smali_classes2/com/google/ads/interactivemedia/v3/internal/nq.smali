.class final Lcom/google/ads/interactivemedia/v3/internal/nq;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/np;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ns;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private final e:I

.field private f:J

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/ns;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nq;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nq;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/nq;->c:Lcom/google/ads/interactivemedia/v3/internal/ns;

    iget p1, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->b:I

    iget p2, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->e:I

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x8

    iget p2, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->d:I

    if-ne p2, p1, :cond_0

    .line 1
    iget p2, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->c:I

    mul-int p2, p2, p1

    mul-int/lit8 v0, p2, 0x8

    div-int/lit8 p2, p2, 0xa

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nq;->e:I

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 3
    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    .line 4
    invoke-virtual {p2, p4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->b(I)V

    .line 6
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->j(I)V

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->h(I)V

    iget p1, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->b:I

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    iget p1, p3, Lcom/google/ads/interactivemedia/v3/internal/ns;->c:I

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->m(I)V

    .line 10
    invoke-virtual {p2, p5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->i(I)V

    .line 11
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nq;->d:Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-void

    .line 0
    :cond_0
    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance p4, Ljava/lang/StringBuilder;

    const/16 p5, 0x32

    .line 1
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p5, "Expected block size: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public final a(IJ)V
    .locals 9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nq;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/nv;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/nq;->c:Lcom/google/ads/interactivemedia/v3/internal/ns;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-object v1, v8

    move-wide v6, p2

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/nv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ns;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nq;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nq;->d:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 13
    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nq;->f:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nq;->g:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nq;->h:J

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;J)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_1

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->g:I

    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->e:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v6, v8

    .line 14
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    long-to-int v7, v6

    move-object/from16 v9, p1

    .line 15
    invoke-interface {v8, v9, v7, v3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move-wide v1, v4

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->g:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->g:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->c:Lcom/google/ads/interactivemedia/v3/internal/ns;

    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ns;->d:I

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->g:I

    .line 16
    div-int/2addr v4, v2

    if-lez v4, :cond_2

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->f:J

    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->h:J

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ns;->c:I

    const-wide/32 v11, 0xf4240

    int-to-long v13, v1

    .line 17
    invoke-static/range {v9 .. v14}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v9

    mul-int v15, v4, v2

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->g:I

    sub-int/2addr v1, v15

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    add-long v12, v7, v9

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v16, v1

    .line 18
    invoke-interface/range {v11 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->h:J

    int-to-long v4, v4

    add-long/2addr v7, v4

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->h:J

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nq;->g:I

    :cond_2
    if-gtz v6, :cond_3

    return v3

    :cond_3
    const/4 v1, 0x0

    return v1
.end method
