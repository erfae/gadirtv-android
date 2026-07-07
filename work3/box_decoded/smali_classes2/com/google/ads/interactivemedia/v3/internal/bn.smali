.class final Lcom/google/ads/interactivemedia/v3/internal/bn;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/abj;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/acb;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/bm;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/ed;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/abj;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/bm;Lcom/google/ads/interactivemedia/v3/internal/abb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->b:Lcom/google/ads/interactivemedia/v3/internal/bm;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/acb;

    .line 1
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/acb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/abb;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Z)J
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->c:Lcom/google/ads/interactivemedia/v3/internal/ed;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ed;->z()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->c:Lcom/google/ads/interactivemedia/v3/internal/ed;

    .line 15
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ed;->y()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->c:Lcom/google/ads/interactivemedia/v3/internal/ed;

    .line 16
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ed;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->d:Lcom/google/ads/interactivemedia/v3/internal/abj;

    .line 17
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/abj;->ad()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->e:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    .line 19
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/acb;->ad()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    .line 20
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/acb;->b()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->e:Z

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->f:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    .line 21
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/acb;->a()V

    :cond_2
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    .line 22
    invoke-virtual {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/acb;->a(J)V

    .line 23
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/abj;->d()F

    move-result p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/acb;->d()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    .line 24
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/acb;->a(F)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->b:Lcom/google/ads/interactivemedia/v3/internal/bm;

    .line 25
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bm;->a(F)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->e:Z

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->f:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    .line 26
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/acb;->a()V

    .line 27
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bn;->ad()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->f:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    .line 12
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/acb;->a()V

    return-void
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->d:Lcom/google/ads/interactivemedia/v3/internal/abj;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/abj;->a(F)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->d:Lcom/google/ads/interactivemedia/v3/internal/abj;

    .line 10
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/abj;->d()F

    move-result p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/acb;->a(F)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/acb;->a(J)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ed;->c()Lcom/google/ads/interactivemedia/v3/internal/abj;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->d:Lcom/google/ads/interactivemedia/v3/internal/abj;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    .line 6
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->d:Lcom/google/ads/interactivemedia/v3/internal/abj;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->c:Lcom/google/ads/interactivemedia/v3/internal/ed;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/acb;->d()F

    move-result p1

    .line 7
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/abj;->a(F)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    .line 6
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/bo;->a(Ljava/lang/RuntimeException;)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method public final ad()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/acb;->ad()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->d:Lcom/google/ads/interactivemedia/v3/internal/abj;

    .line 4
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/abj;->ad()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->f:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    .line 13
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/acb;->b()V

    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/ed;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->c:Lcom/google/ads/interactivemedia/v3/internal/ed;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->d:Lcom/google/ads/interactivemedia/v3/internal/abj;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->c:Lcom/google/ads/interactivemedia/v3/internal/ed;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->e:Z

    :cond_0
    return-void
.end method

.method public final d()F
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->d:Lcom/google/ads/interactivemedia/v3/internal/abj;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/abj;->d()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bn;->a:Lcom/google/ads/interactivemedia/v3/internal/acb;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/acb;->d()F

    move-result v0

    :goto_0
    return v0
.end method
