.class public final Lcom/google/ads/interactivemedia/v3/internal/yl;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/ads/interactivemedia/v3/internal/yl;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/yh;ILjava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1
    invoke-static {p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->b:Z

    .line 2
    iget p3, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->d:I

    iget v1, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->E:I

    not-int v1, v1

    and-int/2addr p3, v1

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->c:Z

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->d:Z

    .line 3
    iget-object v3, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->B:Ljava/lang/String;

    iget-boolean v4, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->D:Z

    .line 4
    invoke-static {p1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Z)I

    move-result v3

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->e:I

    .line 5
    iget v4, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:I

    iget v5, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->C:I

    and-int/2addr v4, v5

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->f:I

    .line 7
    iget v5, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:I

    and-int/lit16 v5, v5, 0x440

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->h:Z

    .line 8
    invoke-static {p4}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 9
    :goto_3
    invoke-static {p1, p4, v5}, Lcom/google/ads/interactivemedia/v3/internal/yn;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->g:I

    if-gtz v3, :cond_5

    .line 10
    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/yh;->B:Ljava/lang/String;

    if-nez p2, :cond_4

    if-gtz v4, :cond_5

    :cond_4
    if-nez v1, :cond_5

    if-eqz p3, :cond_6

    if-lez p1, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/yl;)I
    .locals 4

    .line 11
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/any;->b()Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->b:Z

    iget-boolean v2, p1, Lcom/google/ads/interactivemedia/v3/internal/yl;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/any;->b(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->e:I

    .line 12
    iget v2, p1, Lcom/google/ads/interactivemedia/v3/internal/yl;->e:I

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(II)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->f:I

    iget v2, p1, Lcom/google/ads/interactivemedia/v3/internal/yl;->f:I

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(II)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->c:Z

    iget-boolean v2, p1, Lcom/google/ads/interactivemedia/v3/internal/yl;->c:Z

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/any;->b(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->d:Z

    .line 16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/ads/interactivemedia/v3/internal/yl;->d:Z

    .line 17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->e:I

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/apd;->b()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v3

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/apd;->b()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/apd;->a()Lcom/google/ads/interactivemedia/v3/internal/apd;

    move-result-object v3

    .line 18
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->g:I

    iget v2, p1, Lcom/google/ads/interactivemedia/v3/internal/yl;->g:I

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(II)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->f:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yl;->h:Z

    .line 20
    iget-boolean p1, p1, Lcom/google/ads/interactivemedia/v3/internal/yl;->h:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/any;->a(ZZ)Lcom/google/ads/interactivemedia/v3/internal/any;

    move-result-object v0

    .line 21
    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/any;->a()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/yl;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/yl;->a(Lcom/google/ads/interactivemedia/v3/internal/yl;)I

    move-result p1

    return p1
.end method
