.class public final Lcom/google/ads/interactivemedia/v3/internal/na;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/nm;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/mz;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/mz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->a:Lcom/google/ads/interactivemedia/v3/internal/mz;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v0, 0x20

    .line 1
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->f:Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V
    .locals 8

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->f:Z

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 21
    :cond_2
    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->f:Z

    .line 4
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->d:I

    .line 5
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result p2

    if-lez p2, :cond_a

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->d:I

    const/4 v2, 0x3

    if-ge p2, v2, :cond_7

    if-nez p2, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result p2

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    const/16 v3, 0xff

    if-eq p2, v3, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->f:Z

    return-void

    .line 8
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result p2

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->d:I

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->d:I

    .line 9
    invoke-virtual {p1, v3, v5, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->d:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->d:I

    if-ne v3, v2, :cond_3

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 10
    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 11
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 12
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result p2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 13
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v3

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->e:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v3

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->c:I

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 14
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->e()I

    move-result p2

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->c:I

    if-ge p2, v3, :cond_3

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object p2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->c:I

    .line 15
    array-length v6, p2

    const/16 v7, 0x1002

    add-int/2addr v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    .line 16
    invoke-static {p2, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 17
    :cond_7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result p2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->c:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->d:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->d:I

    .line 18
    invoke-virtual {p1, v2, v3, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->d:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->d:I

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->c:I

    if-ne v2, p2, :cond_3

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->e:Z

    if-eqz v2, :cond_9

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object p2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->c:I

    .line 19
    invoke-static {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([BI)I

    move-result p2

    if-eqz p2, :cond_8

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->f:Z

    return-void

    :cond_8
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->c:I

    add-int/lit8 v2, v2, -0x4

    .line 20
    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    goto :goto_4

    .line 22
    :cond_9
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 21
    invoke-virtual {v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    .line 20
    :goto_4
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->a:Lcom/google/ads/interactivemedia/v3/internal/mz;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 22
    invoke-interface {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/mz;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->d:I

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/acf;Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->a:Lcom/google/ads/interactivemedia/v3/internal/mz;

    .line 23
    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/mz;->a(Lcom/google/ads/interactivemedia/v3/internal/acf;Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/na;->f:Z

    return-void
.end method
