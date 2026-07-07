.class final Lcom/google/ads/interactivemedia/v3/internal/nw;
.super Lcom/google/ads/interactivemedia/v3/internal/he;
.source "IMASDK"


# instance fields
.field private final f:Lcom/google/ads/interactivemedia/v3/internal/he;

.field private g:Z

.field private h:J

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/he;-><init>(I)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/he;-><init>(I)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->f:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a()V

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/he;)V
    .locals 4

    .line 17
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/he;->h()V

    .line 19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/he;->d(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->b:Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a(I)V

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x80000000

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a(I)V

    .line 25
    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a(I)V

    :cond_3
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->i:I

    .line 27
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/he;->d:J

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->d:J

    if-ne v0, v1, :cond_4

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->h:J

    .line 28
    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a()V

    return-void
.end method

.method private final q()V
    .locals 2

    .line 7
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/he;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->i:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->h:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->i()V

    const/16 v0, 0x20

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->j:I

    return-void
.end method

.method public final e(I)V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->j:I

    return-void
.end method

.method public final i()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->q()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->f:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->g:Z

    return-void
.end method

.method public final j()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->q()V

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->f:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 5
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->a(Lcom/google/ads/interactivemedia/v3/internal/he;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->g:Z

    :cond_0
    return-void
.end method

.method public final k()Lcom/google/ads/interactivemedia/v3/internal/he;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->f:Lcom/google/ads/interactivemedia/v3/internal/he;

    return-object v0
.end method

.method public final l()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->h:J

    return-wide v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->i:I

    return v0
.end method

.method public final n()Z
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->i:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->j:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const v1, 0x2ee000

    if-ge v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->g:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->f:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 8
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->o()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/he;->g()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->e()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->b()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->b()Z

    move-result v3

    if-eq v1, v3, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->b:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_4

    .line 12
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v3, v1

    const v1, 0x2ee000

    if-lt v3, v1, :cond_4

    .line 10
    :goto_1
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/nw;->g:Z

    return-void

    .line 13
    :cond_4
    :goto_2
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->a(Lcom/google/ads/interactivemedia/v3/internal/he;)V

    return-void
.end method
