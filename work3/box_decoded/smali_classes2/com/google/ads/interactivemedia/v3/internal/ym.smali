.class public final Lcom/google/ads/interactivemedia/v3/internal/ym;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/ads/interactivemedia/v3/internal/ym;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/yh;

.field private final c:Z

.field private final d:Z

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/yh;IZ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->b:Lcom/google/ads/interactivemedia/v3/internal/yh;

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_4

    .line 1
    iget v4, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    if-eq v4, v2, :cond_0

    iget v5, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->b:I

    if-gt v4, v5, :cond_4

    :cond_0
    iget v4, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    if-eq v4, v2, :cond_1

    iget v5, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->c:I

    if-gt v4, v5, :cond_4

    :cond_1
    iget v4, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_2

    iget v5, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->d:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    :cond_2
    iget v4, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:I

    if-eq v4, v2, :cond_3

    iget v5, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->e:I

    if-gt v4, v5, :cond_4

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->a:Z

    if-eqz p4, :cond_8

    .line 2
    iget p4, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    if-eq p4, v2, :cond_5

    iget v4, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->f:I

    if-lt p4, v4, :cond_8

    :cond_5
    iget p4, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    if-eq p4, v2, :cond_6

    iget v4, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->g:I

    if-lt p4, v4, :cond_8

    :cond_6
    iget p4, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:F

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_7

    iget v0, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->h:I

    int-to-float v0, v0

    cmpl-float p4, p4, v0

    if-ltz p4, :cond_8

    :cond_7
    iget p4, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:I

    if-eq p4, v2, :cond_9

    iget p2, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->i:I

    if-lt p4, p2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_1
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->c:Z

    .line 3
    invoke-static {p3, v3}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->d:Z

    .line 4
    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->h:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->e:I

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->b()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ym;)I
    .locals 5

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->d:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/apd;->a()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v0

    .line 8
    :goto_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/any;->b()Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->d:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ym;->d:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/any;->b(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->a:Z

    .line 9
    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ym;->a:Z

    .line 10
    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/any;->b(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->c:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ym;->c:Z

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/any;->b(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->e:I

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ym;->e:I

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->b:Lcom/google/ads/interactivemedia/v3/internal/yh;

    .line 14
    iget-boolean v4, v4, Lcom/google/ads/interactivemedia/v3/internal/yh;->v:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/apd;->a()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v4

    goto :goto_1

    .line 18
    :cond_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/yn;->b()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v4

    .line 15
    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->f:I

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/ym;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ym;->e:I

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ym;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/any;->a()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/ym;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ym;->a(Lcom/google/ads/interactivemedia/v3/internal/ym;)I

    move-result p1

    return p1
.end method
