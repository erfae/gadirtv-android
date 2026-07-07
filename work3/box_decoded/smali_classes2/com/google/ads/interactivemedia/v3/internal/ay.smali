.class public abstract Lcom/google/ads/interactivemedia/v3/internal/ay;
.super Lcom/google/ads/interactivemedia/v3/internal/er;
.source "IMASDK"


# instance fields
.field private final b:I

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/sw;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/sw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ay;->c:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/sw;->a()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ay;->b:I

    return-void
.end method

.method private final a(IZ)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ay;->c:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 20
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/sw;->a(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ay;->b:I

    add-int/2addr p2, v0

    if-lt p1, p2, :cond_1

    :goto_0
    return v0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(IIZ)I
    .locals 5

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ay;->c(I)I

    move-result v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->f(I)I

    move-result v1

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(I)Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v2

    sub-int/2addr p1, v1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p2

    .line 24
    :goto_0
    invoke-virtual {v2, p1, v4, p3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(IIZ)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    add-int/2addr v1, p1

    return v1

    .line 25
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/google/ads/interactivemedia/v3/internal/ay;->a(IZ)I

    move-result p1

    :goto_1
    if-eq p1, v2, :cond_2

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(I)Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-direct {p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/ay;->a(IZ)I

    move-result p1

    goto :goto_1

    :cond_2
    if-eq p1, v2, :cond_3

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ay;->f(I)I

    move-result p2

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(I)Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/er;->b(Z)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    :cond_3
    if-ne p2, v3, :cond_4

    .line 30
    invoke-virtual {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/er;->b(Z)I

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public final a(Z)I
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ay;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ay;->c:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/sw;->b()I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(I)Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ay;->c:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 17
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/sw;->b(I)I

    move-result v0

    goto :goto_1

    :cond_3
    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    :goto_1
    if-ne v0, v1, :cond_2

    return v1

    .line 18
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->f(I)I

    move-result v1

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(I)Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/ep;Z)Lcom/google/ads/interactivemedia/v3/internal/ep;
    .locals 4

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ay;->b(I)I

    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->f(I)I

    move-result v1

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->e(I)I

    move-result v2

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(I)Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v3

    sub-int/2addr p1, v2

    .line 35
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;Z)Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 36
    iget p1, p2, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    if-eqz p3, :cond_0

    .line 37
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->g(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p2, Lcom/google/ads/interactivemedia/v3/internal/ep;->b:Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/ep;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;
    .locals 3

    .line 39
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ay;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ay;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(Ljava/lang/Object;)I

    move-result v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->f(I)I

    move-result v2

    .line 43
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(I)Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 44
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    iput-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/ep;->b:Ljava/lang/Object;

    return-object p2
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/eq;J)Lcom/google/ads/interactivemedia/v3/internal/eq;
    .locals 4

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ay;->c(I)I

    move-result v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->f(I)I

    move-result v1

    .line 52
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->e(I)I

    move-result v2

    .line 53
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(I)Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v3

    sub-int/2addr p1, v1

    .line 54
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;J)Lcom/google/ads/interactivemedia/v3/internal/eq;

    .line 55
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->g(I)Ljava/lang/Object;

    move-result-object p1

    .line 56
    sget-object p3, Lcom/google/ads/interactivemedia/v3/internal/eq;->a:Ljava/lang/Object;

    iget-object p4, p2, Lcom/google/ads/interactivemedia/v3/internal/eq;->b:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 57
    iget-object p3, p2, Lcom/google/ads/interactivemedia/v3/internal/eq;->b:Ljava/lang/Object;

    .line 58
    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    :cond_0
    iput-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/eq;->b:Ljava/lang/Object;

    .line 59
    iget p1, p2, Lcom/google/ads/interactivemedia/v3/internal/eq;->l:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/ads/interactivemedia/v3/internal/eq;->l:I

    .line 60
    iget p1, p2, Lcom/google/ads/interactivemedia/v3/internal/eq;->m:I

    add-int/2addr p1, v2

    iput p1, p2, Lcom/google/ads/interactivemedia/v3/internal/eq;->m:I

    return-object p2
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 3

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ay;->b(I)I

    move-result v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->e(I)I

    move-result v1

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(I)Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v2

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(I)Ljava/lang/Object;

    move-result-object p1

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->g(I)Ljava/lang/Object;

    move-result-object v0

    .line 49
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(I)I
.end method

.method public final b(Z)I
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ay;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ay;->c:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/sw;->c()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(I)Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ay;->a(IZ)I

    move-result v0

    if-ne v0, v1, :cond_2

    return v1

    .line 7
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->f(I)I

    move-result v1

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(I)Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->b(Z)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method protected abstract c(I)I
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 3

    .line 9
    instance-of v0, p1, Landroid/util/Pair;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ay;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ay;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    .line 13
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->d(I)Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v1, :cond_2

    return v1

    .line 14
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ay;->e(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method protected abstract d(Ljava/lang/Object;)I
.end method

.method protected abstract d(I)Lcom/google/ads/interactivemedia/v3/internal/er;
.end method

.method protected abstract e(I)I
.end method

.method protected abstract f(I)I
.end method

.method protected abstract g(I)Ljava/lang/Object;
.end method
