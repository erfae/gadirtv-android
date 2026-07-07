.class public final Lcom/google/ads/interactivemedia/v3/internal/ye;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/ads/interactivemedia/v3/internal/ye;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/yh;

.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:I

.field private final j:I

.field private final k:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/yh;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->c:Lcom/google/ads/interactivemedia/v3/internal/yh;

    .line 1
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->d:Z

    .line 2
    iget-object p3, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->A:Ljava/lang/String;

    .line 3
    invoke-static {p1, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->e:I

    .line 4
    iget p3, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->d:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eq v1, p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->h:Z

    .line 5
    iget p3, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->i:I

    .line 6
    iget p3, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->j:I

    .line 7
    iget p3, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->k:I

    .line 8
    iget p3, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:I

    const/4 v2, -0x1

    if-eq p3, v2, :cond_2

    iget v3, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->q:I

    if-gt p3, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    iget p3, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    if-eq p3, v2, :cond_3

    iget p2, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->p:I

    if-gt p3, p2, :cond_1

    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->a:Z

    .line 9
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/ach;->d()[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 10
    :goto_3
    array-length v1, p2

    if-ge p3, v1, :cond_5

    .line 11
    aget-object v1, p2, p3

    .line 12
    invoke-static {p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    const p3, 0x7fffffff

    :goto_4
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->f:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->g:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ye;)I
    .locals 5

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->d:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/apd;->a()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v0

    .line 15
    :goto_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/any;->b()Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->d:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ye;->d:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/any;->b(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->e:I

    .line 16
    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ye;->e:I

    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(II)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->a:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ye;->a:Z

    .line 18
    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/any;->b(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->k:I

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ye;->k:I

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->c:Lcom/google/ads/interactivemedia/v3/internal/yh;

    .line 21
    iget-boolean v4, v4, Lcom/google/ads/interactivemedia/v3/internal/yh;->v:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/apd;->a()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v4

    goto :goto_1

    .line 34
    :cond_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/yn;->b()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v4

    .line 22
    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->h:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ye;->h:Z

    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/any;->b(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->f:I

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ye;->f:I

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/apd;->b()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/apd;->a()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v4

    .line 26
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->g:I

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ye;->g:I

    .line 27
    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(II)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->i:I

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ye;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->j:I

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ye;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->k:I

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ye;->k:I

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ye;->b:Ljava/lang/String;

    .line 32
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ye;->b:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 34
    :cond_2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/yn;->b()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v0

    .line 33
    :goto_2
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/any;->a()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/ye;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ye;->a(Lcom/google/ads/interactivemedia/v3/internal/ye;)I

    move-result p1

    return p1
.end method
