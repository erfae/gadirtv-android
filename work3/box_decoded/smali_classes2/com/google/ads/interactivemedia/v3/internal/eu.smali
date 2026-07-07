.class final Lcom/google/ads/interactivemedia/v3/internal/eu;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ep;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/aop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/ads/interactivemedia/v3/internal/aou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aou<",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;",
            "Lcom/google/ads/interactivemedia/v3/internal/er;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/ads/interactivemedia/v3/internal/ro;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/ro;

.field private f:Lcom/google/ads/interactivemedia/v3/internal/ro;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aop;->g()Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aou;->a()Lcom/google/ads/interactivemedia/v3/internal/aou;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->c:Lcom/google/ads/interactivemedia/v3/internal/aou;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/eu;)Lcom/google/ads/interactivemedia/v3/internal/aop;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    return-object p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/dx;Lcom/google/ads/interactivemedia/v3/internal/aop;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ro;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/dx;",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;",
            "Lcom/google/ads/interactivemedia/v3/internal/ep;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;"
        }
    .end annotation

    .line 7
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/dx;->q()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v0

    .line 8
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/dx;->h()I

    move-result v1

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(I)Ljava/lang/Object;

    move-result-object v2

    .line 10
    :goto_0
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/dx;->m()Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0, v1, p3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v0

    .line 12
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/dx;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/ep;->b()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 13
    invoke-virtual {v0, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/ep;->b(J)I

    move-result p3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, -0x1

    :goto_2
    const/4 v0, 0x0

    .line 14
    :goto_3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aop;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 16
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/dx;->m()Z

    move-result v6

    .line 17
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/dx;->n()I

    move-result v7

    .line 18
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/dx;->o()I

    move-result v8

    move-object v4, v1

    move-object v5, v2

    move v9, p3

    .line 19
    invoke-static/range {v4 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/eu;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;Ljava/lang/Object;ZIII)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aop;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 21
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/dx;->m()Z

    move-result v6

    .line 22
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/dx;->n()I

    move-result v7

    .line 23
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/dx;->o()I

    move-result v8

    move-object v4, p2

    move-object v5, v2

    move v9, p3

    .line 24
    invoke-static/range {v4 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/eu;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object p2

    :cond_5
    return-object v3
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/aos;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/er;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aos<",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;",
            "Lcom/google/ads/interactivemedia/v3/internal/er;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;",
            "Lcom/google/ads/interactivemedia/v3/internal/er;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 3
    invoke-virtual {p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->c:Lcom/google/ads/interactivemedia/v3/internal/aou;

    .line 5
    invoke-virtual {p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/aou;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/ads/interactivemedia/v3/internal/er;

    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/er;)V
    .locals 3

    .line 38
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aou;->b()Lcom/google/ads/interactivemedia/v3/internal/aos;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 39
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aop;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->e:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 44
    invoke-direct {p0, v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/eu;->a(Lcom/google/ads/interactivemedia/v3/internal/aos;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/er;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->f:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->e:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 45
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->f:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 46
    invoke-direct {p0, v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/eu;->a(Lcom/google/ads/interactivemedia/v3/internal/aos;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/er;)V

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->d:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->e:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 47
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->d:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->f:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 48
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->d:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 49
    invoke-direct {p0, v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/eu;->a(Lcom/google/ads/interactivemedia/v3/internal/aos;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/er;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 40
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/aop;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 41
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/aop;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-direct {p0, v0, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/eu;->a(Lcom/google/ads/interactivemedia/v3/internal/aos;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/er;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->d:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aop;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->d:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 43
    invoke-direct {p0, v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/eu;->a(Lcom/google/ads/interactivemedia/v3/internal/aos;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/er;)V

    .line 50
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a()Lcom/google/ads/interactivemedia/v3/internal/aou;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->c:Lcom/google/ads/interactivemedia/v3/internal/aou;

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/ro;Ljava/lang/Object;ZIII)Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_2

    .line 28
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ro;->b:I

    if-ne p2, p3, :cond_3

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ro;->c:I

    if-ne p0, p4, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ro;->b:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_3

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ro;->e:I

    if-ne p0, p5, :cond_3

    :goto_0
    const/4 v0, 0x1

    nop

    :cond_3
    return v0
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->c:Lcom/google/ads/interactivemedia/v3/internal/aou;

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aou;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/er;

    return-object p1
.end method

.method public final a()Lcom/google/ads/interactivemedia/v3/internal/ro;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->d:Lcom/google/ads/interactivemedia/v3/internal/ro;

    return-object v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/dx;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->e:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 29
    invoke-static {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/eu;->a(Lcom/google/ads/interactivemedia/v3/internal/dx;Lcom/google/ads/interactivemedia/v3/internal/aop;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->d:Lcom/google/ads/interactivemedia/v3/internal/ro;

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/dx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;",
            "Lcom/google/ads/interactivemedia/v3/internal/dx;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/aop;->a(Ljava/util/Collection;)Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 31
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 32
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/ro;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->e:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 33
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->f:Lcom/google/ads/interactivemedia/v3/internal/ro;

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->d:Lcom/google/ads/interactivemedia/v3/internal/ro;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->e:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 34
    invoke-static {p3, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/eu;->a(Lcom/google/ads/interactivemedia/v3/internal/dx;Lcom/google/ads/interactivemedia/v3/internal/aop;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->d:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 35
    :cond_1
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/internal/dx;->q()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/eu;->a(Lcom/google/ads/interactivemedia/v3/internal/er;)V

    return-void
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/ro;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->e:Lcom/google/ads/interactivemedia/v3/internal/ro;

    return-object v0
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/dx;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->e:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->a:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 36
    invoke-static {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/eu;->a(Lcom/google/ads/interactivemedia/v3/internal/dx;Lcom/google/ads/interactivemedia/v3/internal/aop;Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->d:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 37
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/dx;->q()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/eu;->a(Lcom/google/ads/interactivemedia/v3/internal/er;)V

    return-void
.end method

.method public final c()Lcom/google/ads/interactivemedia/v3/internal/ro;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->f:Lcom/google/ads/interactivemedia/v3/internal/ro;

    return-object v0
.end method

.method public final d()Lcom/google/ads/interactivemedia/v3/internal/ro;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 25
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eu;->b:Lcom/google/ads/interactivemedia/v3/internal/aop;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/ro;

    return-object v0
.end method
