.class public final Lcom/google/ads/interactivemedia/v3/internal/lx;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ih;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ly;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ly;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ly;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lx;->a:Lcom/google/ads/interactivemedia/v3/internal/ly;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v1, 0x4000

    .line 2
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lx;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lx;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x4000

    .line 6
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lx;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 7
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lx;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b(I)V

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lx;->c:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lx;->a:Lcom/google/ads/interactivemedia/v3/internal/ly;

    const-wide/16 v1, 0x0

    const/4 p2, 0x4

    .line 9
    invoke-virtual {p1, v1, v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/ly;->a(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lx;->c:Z

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lx;->a:Lcom/google/ads/interactivemedia/v3/internal/ly;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/lx;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ly;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V

    return v0
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lx;->c:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lx;->a:Lcom/google/ads/interactivemedia/v3/internal/ly;

    .line 11
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ly;->a()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lx;->a:Lcom/google/ads/interactivemedia/v3/internal/ly;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/nl;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/nl;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ly;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V

    .line 4
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->w()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/it;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/it;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v1, 0xa

    .line 12
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v4

    .line 13
    invoke-virtual {p1, v4, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    .line 14
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 15
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result v4

    const v5, 0x494433

    const/4 v6, 0x3

    if-eq v4, v5, :cond_7

    .line 19
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    .line 20
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    move v4, v3

    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    const/4 v7, 0x7

    .line 21
    invoke-virtual {p1, v5, v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    .line 22
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 23
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->g()I

    move-result v5

    const v8, 0xac40

    const v9, 0xac41

    if-eq v5, v8, :cond_1

    if-eq v5, v9, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    add-int/lit8 v4, v4, 0x1

    sub-int v1, v4, v3

    const/16 v5, 0x2000

    if-lt v1, v5, :cond_0

    return v2

    .line 30
    :cond_0
    invoke-virtual {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    add-int/2addr v1, v8

    const/4 v10, 0x4

    if-lt v1, v10, :cond_2

    return v8

    :cond_2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v8

    .line 24
    sget v11, Lcom/google/ads/interactivemedia/v3/internal/fd;->a:I

    .line 25
    array-length v11, v8

    const/4 v12, -0x1

    if-ge v11, v7, :cond_3

    const/4 v11, -0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x2

    .line 26
    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    aget-byte v13, v8, v6

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v11, v13

    const v13, 0xffff

    if-ne v11, v13, :cond_4

    .line 27
    aget-byte v10, v8, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    const/4 v11, 0x5

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/4 v11, 0x6

    aget-byte v8, v8, v11

    and-int/lit16 v8, v8, 0xff

    or-int v11, v10, v8

    goto :goto_3

    :cond_4
    const/4 v7, 0x4

    :goto_3
    if-ne v5, v9, :cond_5

    add-int/lit8 v7, v7, 0x2

    :cond_5
    add-int/2addr v11, v7

    :goto_4
    if-ne v11, v12, :cond_6

    return v2

    :cond_6
    add-int/lit8 v11, v11, -0x7

    .line 28
    invoke-virtual {p1, v11}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    goto :goto_2

    .line 16
    :cond_7
    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 17
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->s()I

    move-result v4

    add-int/lit8 v5, v4, 0xa

    add-int/2addr v3, v5

    .line 18
    invoke-virtual {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b(I)V

    goto/16 :goto_0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
