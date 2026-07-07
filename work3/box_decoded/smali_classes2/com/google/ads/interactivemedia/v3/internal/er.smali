.class public abstract Lcom/google/ads/interactivemedia/v3/internal/er;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static final a:Lcom/google/ads/interactivemedia/v3/internal/er;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/eo;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/eo;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/er;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 19
    invoke-virtual {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 20
    invoke-virtual {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/er;->b(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return p1

    .line 21
    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Z)I

    move-result p2

    if-ne p1, p2, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    add-int/2addr p1, v0

    return p1
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/ep;Lcom/google/ads/interactivemedia/v3/internal/eq;IZ)I
    .locals 1

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object p2

    iget p2, p2, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    .line 16
    invoke-virtual {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object v0

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->m:I

    if-ne v0, p1, :cond_1

    .line 17
    invoke-virtual {p0, p2, p4, p5}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 18
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object p1

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->l:I

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public a(Z)I
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/eq;Lcom/google/ads/interactivemedia/v3/internal/ep;IJ)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/eq;",
            "Lcom/google/ads/interactivemedia/v3/internal/ep;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 25
    invoke-virtual/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Lcom/google/ads/interactivemedia/v3/internal/eq;Lcom/google/ads/interactivemedia/v3/internal/ep;IJJ)Landroid/util/Pair;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/eq;Lcom/google/ads/interactivemedia/v3/internal/ep;IJJ)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/eq;",
            "Lcom/google/ads/interactivemedia/v3/internal/ep;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(II)V

    .line 28
    invoke-virtual {p0, p3, p1, p6, p7}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;J)Lcom/google/ads/interactivemedia/v3/internal/eq;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    if-nez p3, :cond_1

    iget-wide p4, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->n:J

    cmp-long p3, p4, p6

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_1
    :goto_0
    iget p3, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->l:I

    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->p:J

    add-long/2addr v0, p4

    const/4 p4, 0x1

    .line 30
    invoke-virtual {p0, p3, p2, p4}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;Z)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object p5

    iget-wide v2, p5, Lcom/google/ads/interactivemedia/v3/internal/ep;->d:J

    :goto_1
    cmp-long p5, v2, p6

    if-eqz p5, :cond_2

    cmp-long p5, v0, v2

    if-ltz p5, :cond_2

    .line 31
    iget p5, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->m:I

    if-ge p3, p5, :cond_2

    sub-long/2addr v0, v2

    add-int/lit8 p3, p3, 0x1

    .line 32
    invoke-virtual {p0, p3, p2, p4}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;Z)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object p5

    iget-wide v2, p5, Lcom/google/ads/interactivemedia/v3/internal/ep;->d:J

    goto :goto_1

    .line 33
    :cond_2
    iget-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/ep;->b:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;Z)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(ILcom/google/ads/interactivemedia/v3/internal/ep;Z)Lcom/google/ads/interactivemedia/v3/internal/ep;
.end method

.method public a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;
    .locals 1

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;Z)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;
    .locals 2

    const-wide/16 v0, 0x0

    .line 34
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;J)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(ILcom/google/ads/interactivemedia/v3/internal/eq;J)Lcom/google/ads/interactivemedia/v3/internal/eq;
.end method

.method public abstract a(I)Ljava/lang/Object;
.end method

.method public abstract b()I
.end method

.method public b(Z)I
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract c()I
.end method

.method public abstract c(Ljava/lang/Object;)I
.end method

.method public final d()Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/ads/interactivemedia/v3/internal/er;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v3

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;->c()I

    move-result v3

    if-eq v1, v3, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/eq;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/eq;-><init>()V

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 5
    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/ep;-><init>()V

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/eq;

    .line 6
    invoke-direct {v4}, Lcom/google/ads/interactivemedia/v3/internal/eq;-><init>()V

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 7
    invoke-direct {v5}, Lcom/google/ads/interactivemedia/v3/internal/ep;-><init>()V

    const/4 v6, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 9
    invoke-virtual {p0, v6, v1}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object v7

    invoke-virtual {p1, v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/eq;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;->c()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 11
    invoke-virtual {p0, v1, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;Z)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v4

    .line 12
    invoke-virtual {p1, v1, v5, v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;Z)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/ep;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v2
.end method

.method public final hashCode()I
    .locals 6

    .line 35
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/eq;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/eq;-><init>()V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 36
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/ep;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v2

    add-int/lit16 v2, v2, 0xd9

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v5

    if-ge v4, v5, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    .line 39
    invoke-virtual {p0, v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/eq;->hashCode()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v2, 0x1f

    .line 40
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;->c()I

    move-result v0

    add-int/2addr v2, v0

    .line 41
    :goto_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/er;->c()I

    move-result v0

    if-ge v3, v0, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v3, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;Z)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ep;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return v2
.end method
