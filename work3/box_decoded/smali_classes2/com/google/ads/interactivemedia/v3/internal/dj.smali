.class final Lcom/google/ads/interactivemedia/v3/internal/dj;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/ro;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ro;JJJJZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:J

    iput-wide p6, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:J

    iput-wide p8, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    iput-boolean p10, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->f:Z

    iput-boolean p11, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->g:Z

    iput-boolean p12, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->h:Z

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/ads/interactivemedia/v3/internal/dj;
    .locals 16

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dj;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:J

    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:J

    iget-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    iget-boolean v13, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->f:Z

    iget-boolean v14, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->g:Z

    iget-boolean v15, v0, Lcom/google/ads/interactivemedia/v3/internal/dj;->h:Z

    move-object v3, v1

    move-wide/from16 v5, p1

    .line 1
    invoke-direct/range {v3 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/dj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ro;JJJJZZZ)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/dj;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->f:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/dj;->f:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->g:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/dj;->g:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->h:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/dj;->h:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 4
    invoke-static {v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ro;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->h:Z

    add-int/2addr v0, v1

    return v0
.end method
