.class final Lcom/google/ads/interactivemedia/v3/internal/di;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/rn;

.field public final b:Ljava/lang/Object;

.field public final c:[Lcom/google/ads/interactivemedia/v3/internal/st;

.field public d:Z

.field public e:Z

.field public f:Lcom/google/ads/interactivemedia/v3/internal/dj;

.field public g:Z

.field private final h:[Z

.field private final i:[Lcom/google/ads/interactivemedia/v3/internal/ee;

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/yw;

.field private final k:Lcom/google/ads/interactivemedia/v3/internal/ds;

.field private l:Lcom/google/ads/interactivemedia/v3/internal/di;

.field private m:Lcom/google/ads/interactivemedia/v3/internal/tb;

.field private n:Lcom/google/ads/interactivemedia/v3/internal/yx;

.field private o:J


# direct methods
.method public constructor <init>([Lcom/google/ads/interactivemedia/v3/internal/ee;JLcom/google/ads/interactivemedia/v3/internal/yw;Lcom/google/ads/interactivemedia/v3/internal/zt;Lcom/google/ads/interactivemedia/v3/internal/ds;Lcom/google/ads/interactivemedia/v3/internal/dj;Lcom/google/ads/interactivemedia/v3/internal/yx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->i:[Lcom/google/ads/interactivemedia/v3/internal/ee;

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->o:J

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->j:Lcom/google/ads/interactivemedia/v3/internal/yw;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->k:Lcom/google/ads/interactivemedia/v3/internal/ds;

    iget-object p2, p7, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->b:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 1
    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/tb;->a:Lcom/google/ads/interactivemedia/v3/internal/tb;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->m:Lcom/google/ads/interactivemedia/v3/internal/tb;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->n:Lcom/google/ads/interactivemedia/v3/internal/yx;

    .line 2
    array-length p1, p1

    new-array p2, p1, [Lcom/google/ads/interactivemedia/v3/internal/st;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->c:[Lcom/google/ads/interactivemedia/v3/internal/st;

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->h:[Z

    iget-object p1, p7, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-wide p2, p7, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    iget-wide p7, p7, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:J

    .line 3
    invoke-virtual {p6, p1, p5, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ds;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)Lcom/google/ads/interactivemedia/v3/internal/rn;

    move-result-object p1

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, p7, p2

    if-eqz p4, :cond_0

    const-wide/high16 p2, -0x8000000000000000L

    cmp-long p4, p7, p2

    if-eqz p4, :cond_0

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/qo;

    .line 4
    invoke-direct {p2, p1, p7, p8}, Lcom/google/ads/interactivemedia/v3/internal/qo;-><init>(Lcom/google/ads/interactivemedia/v3/internal/rn;J)V

    move-object p1, p2

    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    return-void
.end method

.method private final k()V
    .locals 3

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/di;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->n:Lcom/google/ads/interactivemedia/v3/internal/yx;

    .line 30
    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/yx;->a:I

    if-ge v0, v2, :cond_1

    .line 31
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/yx;->a(I)Z

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->n:Lcom/google/ads/interactivemedia/v3/internal/yx;

    .line 32
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/yx;->c:Lcom/google/ads/interactivemedia/v3/internal/ys;

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ys;->a(I)Lcom/google/ads/interactivemedia/v3/internal/yr;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 33
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/yr;->d()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final l()V
    .locals 3

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/di;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->n:Lcom/google/ads/interactivemedia/v3/internal/yx;

    .line 26
    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/yx;->a:I

    if-ge v0, v2, :cond_1

    .line 27
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/yx;->a(I)Z

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->n:Lcom/google/ads/interactivemedia/v3/internal/yx;

    .line 28
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/yx;->c:Lcom/google/ads/interactivemedia/v3/internal/ys;

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ys;->a(I)Lcom/google/ads/interactivemedia/v3/internal/yr;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 29
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/yr;->e()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final m()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->l:Lcom/google/ads/interactivemedia/v3/internal/di;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->o:J

    return-wide v0
.end method

.method public final a(J)J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->o:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/yx;J)J
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->i:[Lcom/google/ads/interactivemedia/v3/internal/ee;

    .line 5
    array-length v0, v0

    new-array v6, v0, [Z

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/di;->a(Lcom/google/ads/interactivemedia/v3/internal/yx;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/yx;JZ[Z)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    iget v4, v1, Lcom/google/ads/interactivemedia/v3/internal/yx;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->h:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->n:Lcom/google/ads/interactivemedia/v3/internal/yx;

    .line 7
    invoke-virtual {v1, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/yx;->a(Lcom/google/ads/interactivemedia/v3/internal/yx;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->c:[Lcom/google/ads/interactivemedia/v3/internal/st;

    const/4 v4, 0x0

    :goto_2
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->i:[Lcom/google/ads/interactivemedia/v3/internal/ee;

    .line 8
    array-length v7, v6

    const/4 v8, 0x6

    if-ge v4, v7, :cond_3

    .line 9
    aget-object v6, v6, v4

    invoke-interface {v6}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a()I

    move-result v6

    if-ne v6, v8, :cond_2

    const/4 v6, 0x0

    .line 10
    aput-object v6, v3, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 11
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/di;->l()V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->n:Lcom/google/ads/interactivemedia/v3/internal/yx;

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/di;->k()V

    .line 13
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/yx;->c:Lcom/google/ads/interactivemedia/v3/internal/ys;

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 14
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ys;->a()[Lcom/google/ads/interactivemedia/v3/internal/yr;

    move-result-object v10

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->h:[Z

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->c:[Lcom/google/ads/interactivemedia/v3/internal/st;

    move-object/from16 v13, p5

    move-wide/from16 v14, p2

    .line 15
    invoke-interface/range {v9 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/rn;->a([Lcom/google/ads/interactivemedia/v3/internal/yr;[Z[Lcom/google/ads/interactivemedia/v3/internal/st;[ZJ)J

    move-result-wide v6

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->c:[Lcom/google/ads/interactivemedia/v3/internal/st;

    const/4 v9, 0x0

    :goto_3
    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->i:[Lcom/google/ads/interactivemedia/v3/internal/ee;

    .line 16
    array-length v11, v10

    if-ge v9, v11, :cond_5

    .line 17
    aget-object v10, v10, v9

    invoke-interface {v10}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a()I

    move-result v10

    if-ne v10, v8, :cond_4

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->n:Lcom/google/ads/interactivemedia/v3/internal/yx;

    .line 18
    invoke-virtual {v10, v9}, Lcom/google/ads/interactivemedia/v3/internal/yx;->a(I)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/rc;

    invoke-direct {v10}, Lcom/google/ads/interactivemedia/v3/internal/rc;-><init>()V

    .line 19
    aput-object v10, v4, v9

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->e:Z

    const/4 v4, 0x0

    :goto_4
    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->c:[Lcom/google/ads/interactivemedia/v3/internal/st;

    array-length v10, v9

    if-ge v4, v10, :cond_9

    .line 20
    aget-object v9, v9, v4

    if-eqz v9, :cond_6

    .line 21
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/yx;->a(I)Z

    move-result v9

    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->i:[Lcom/google/ads/interactivemedia/v3/internal/ee;

    .line 22
    aget-object v9, v9, v4

    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a()I

    move-result v9

    if-eq v9, v8, :cond_8

    iput-boolean v5, v0, Lcom/google/ads/interactivemedia/v3/internal/di;->e:Z

    goto :goto_6

    .line 23
    :cond_6
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ys;->a(I)Lcom/google/ads/interactivemedia/v3/internal/yr;

    move-result-object v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    return-wide v6
.end method

.method public final a(FLcom/google/ads/interactivemedia/v3/internal/er;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->d:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 39
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->b()Lcom/google/ads/interactivemedia/v3/internal/tb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->m:Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/di;->b(FLcom/google/ads/interactivemedia/v3/internal/er;)Lcom/google/ads/interactivemedia/v3/internal/yx;

    move-result-object p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 41
    iget-wide v0, p2, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    .line 42
    iget-wide v2, p2, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v2, v4

    if-eqz p2, :cond_0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    const-wide/16 v0, 0x0

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    .line 43
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 44
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/di;->a(Lcom/google/ads/interactivemedia/v3/internal/yx;J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->o:J

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 45
    iget-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    sub-long/2addr v3, p1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->o:J

    .line 46
    invoke-virtual {v2, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dj;->a(J)Lcom/google/ads/interactivemedia/v3/internal/dj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/di;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->l:Lcom/google/ads/interactivemedia/v3/internal/di;

    if-ne p1, v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/di;->l()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->l:Lcom/google/ads/interactivemedia/v3/internal/di;

    .line 59
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/di;->k()V

    return-void
.end method

.method public final b()J
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 38
    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->o:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final b(J)J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->o:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final b(FLcom/google/ads/interactivemedia/v3/internal/er;)Lcom/google/ads/interactivemedia/v3/internal/yx;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->j:Lcom/google/ads/interactivemedia/v3/internal/yw;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->i:[Lcom/google/ads/interactivemedia/v3/internal/ee;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->m:Lcom/google/ads/interactivemedia/v3/internal/tb;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 55
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-virtual {p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/yw;->a([Lcom/google/ads/interactivemedia/v3/internal/ee;Lcom/google/ads/interactivemedia/v3/internal/tb;)Lcom/google/ads/interactivemedia/v3/internal/yx;

    move-result-object p2

    .line 56
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/yx;->c:Lcom/google/ads/interactivemedia/v3/internal/ys;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ys;->a()[Lcom/google/ads/interactivemedia/v3/internal/yr;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 57
    invoke-interface {v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/yr;->a(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final c(J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/di;->m()Z

    move-result v0

    .line 48
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/di;->b(J)J

    move-result-wide p1

    .line 49
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rn;->f(J)V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 7

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->d:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 47
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->d()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public final d()J
    .locals 5

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 34
    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 35
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->d()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 36
    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final d(J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/di;->m()Z

    move-result v0

    .line 24
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/di;->b(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 25
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/rn;->c(J)Z

    return-void
.end method

.method public final e()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->d:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    .line 37
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/rn;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()V
    .locals 7

    .line 50
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/di;->l()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->f:Lcom/google/ads/interactivemedia/v3/internal/dj;

    .line 51
    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:J

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->k:Lcom/google/ads/interactivemedia/v3/internal/ds;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 53
    :try_start_0
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/qo;

    iget-object v0, v3, Lcom/google/ads/interactivemedia/v3/internal/qo;->a:Lcom/google/ads/interactivemedia/v3/internal/rn;

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V

    return-void

    .line 52
    :cond_0
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ds;->a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    .line 54
    invoke-static {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/abh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final g()Lcom/google/ads/interactivemedia/v3/internal/di;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->l:Lcom/google/ads/interactivemedia/v3/internal/di;

    return-object v0
.end method

.method public final h()Lcom/google/ads/interactivemedia/v3/internal/tb;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->m:Lcom/google/ads/interactivemedia/v3/internal/tb;

    return-object v0
.end method

.method public final i()Lcom/google/ads/interactivemedia/v3/internal/yx;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->n:Lcom/google/ads/interactivemedia/v3/internal/yx;

    return-object v0
.end method

.method public final j()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/di;->o:J

    return-void
.end method
