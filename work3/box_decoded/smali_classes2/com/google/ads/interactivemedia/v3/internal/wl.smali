.class final Lcom/google/ads/interactivemedia/v3/internal/wl;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/st;


# instance fields
.field private final a:I

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/wt;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/wt;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->b:Lcom/google/ads/interactivemedia/v3/internal/wt;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->a:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->c:I

    return-void
.end method

.method private final e()Z
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wl;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->b:Lcom/google/ads/interactivemedia/v3/internal/wt;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->c:I

    .line 9
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a(IJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->b(I)V

    const/4 p1, -0x4

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wl;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->b:Lcom/google/ads/interactivemedia/v3/internal/wt;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->c:I

    .line 8
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a(ILcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public final a()V
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->b:Lcom/google/ads/interactivemedia/v3/internal/wt;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->a:I

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->c:I

    return-void
.end method

.method public final b()Z
    .locals 4

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x3

    if-eq v0, v3, :cond_1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wl;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->b:Lcom/google/ads/interactivemedia/v3/internal/wt;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->c:I

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/wt;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->c:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->b:Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->j()V

    return-void

    :cond_0
    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->b:Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->d(I)V

    :cond_1
    return-void

    .line 0
    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/wy;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->b:Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 4
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/wt;->g()Lcom/google/ads/interactivemedia/v3/internal/tb;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->a:I

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/tb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/wy;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->b:Lcom/google/ads/interactivemedia/v3/internal/wt;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->a:I

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/wt;->b(I)V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wl;->c:I

    :cond_0
    return-void
.end method
