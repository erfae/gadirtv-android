.class public abstract Lcom/google/ads/interactivemedia/v3/internal/yb;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/yr;


# instance fields
.field protected final a:Lcom/google/ads/interactivemedia/v3/internal/sz;

.field protected final b:I

.field protected final c:[I

.field private final d:[Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private final e:[J

.field private f:I


# direct methods
.method public varargs constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/sz;[I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    .line 2
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->a:Lcom/google/ads/interactivemedia/v3/internal/sz;

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->b:I

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->d:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 v0, 0x0

    .line 3
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->d:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 4
    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->d:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ya;->a:Ljava/util/Comparator;

    .line 5
    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->c:[I

    :goto_2
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->b:I

    if-ge v1, p2, :cond_2

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->c:[I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->d:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 6
    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->e:[J

    return-void
.end method


# virtual methods
.method public a(JLjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/ads/interactivemedia/v3/internal/tu;",
            ">;)I"
        }
    .end annotation

    .line 16
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->d:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 23
    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->d:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 17
    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public final a(IJ)Z
    .locals 7

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/yb;->b(IJ)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->b:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    if-nez v2, :cond_2

    if-eq v4, p1, :cond_0

    .line 9
    invoke-virtual {p0, v4, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/yb;->b(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v3

    :cond_2
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->e:[J

    .line 10
    aget-wide v3, v2, p1

    .line 11
    invoke-static {v0, v1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->c(JJ)J

    move-result-wide p2

    .line 12
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v2, p1

    return v6
.end method

.method public final b(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->c:[I

    .line 18
    aget p1, v0, p1

    return p1
.end method

.method protected final b(IJ)Z
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->e:[J

    .line 24
    aget-wide v1, v0, p1

    cmp-long p1, v1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->c:[I

    .line 22
    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/yb;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->a:Lcom/google/ads/interactivemedia/v3/internal/sz;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/yb;->a:Lcom/google/ads/interactivemedia/v3/internal/sz;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->c:[I

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/yb;->c:[I

    .line 15
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final f()Lcom/google/ads/interactivemedia/v3/internal/sz;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->a:Lcom/google/ads/interactivemedia/v3/internal/sz;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->c:[I

    .line 25
    array-length v0, v0

    return v0
.end method

.method public final h()Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->d:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/yb;->a()I

    move-result v1

    .line 19
    aget-object v0, v0, v1

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->a:Lcom/google/ads/interactivemedia/v3/internal/sz;

    .line 21
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->f:I

    :cond_0
    return v0
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yb;->c:[I

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/yb;->a()I

    move-result v1

    .line 20
    aget v0, v0, v1

    return v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
