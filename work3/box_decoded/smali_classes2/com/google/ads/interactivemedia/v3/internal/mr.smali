.class public final Lcom/google/ads/interactivemedia/v3/internal/mr;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/me;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/gs;

.field private final c:Ljava/lang/String;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:J

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/mr;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->f:I

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v2, 0x4

    .line 2
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 3
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/gs;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/gs;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->b:Lcom/google/ads/interactivemedia/v3/internal/gs;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->f:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->g:I

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->i:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->l:J

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 10

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->d:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 4
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    if-lez v0, :cond_9

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_1

    .line 30
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->k:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->g:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->d:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 31
    invoke-interface {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->g:I

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->k:I

    if-lt v1, v7, :cond_0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->d:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->l:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 32
    invoke-interface/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->l:J

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->j:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->l:J

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->g:I

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->f:I

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->g:I

    const/4 v5, 0x4

    rsub-int/lit8 v4, v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 14
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v4

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->g:I

    invoke-virtual {p1, v4, v6, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->g:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->g:I

    if-lt v4, v5, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 15
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->b:Lcom/google/ads/interactivemedia/v3/internal/gs;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 16
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/gs;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->g:I

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->f:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->b:Lcom/google/ads/interactivemedia/v3/internal/gs;

    .line 17
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/gs;->c:I

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->k:I

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->h:Z

    if-nez v4, :cond_3

    .line 18
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/gs;->g:I

    int-to-long v6, v4

    const-wide/32 v8, 0xf4240

    mul-long v6, v6, v8

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/gs;->d:I

    int-to-long v8, v0

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->j:J

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 19
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->e:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->b:Lcom/google/ads/interactivemedia/v3/internal/gs;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/gs;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    const/16 v4, 0x1000

    .line 22
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->h(I)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->b:Lcom/google/ads/interactivemedia/v3/internal/gs;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/gs;->e:I

    .line 23
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->b:Lcom/google/ads/interactivemedia/v3/internal/gs;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/gs;->d:I

    .line 24
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->m(I)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->c:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->d:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 27
    invoke-interface {v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->h:Z

    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 28
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->d:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 29
    invoke-interface {v0, v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->f:I

    goto/16 :goto_0

    .line 6
    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v4

    .line 8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_8

    .line 9
    aget-byte v6, v0, v4

    and-int/lit16 v7, v6, 0xff

    const/16 v8, 0xff

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_2
    iget-boolean v8, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->i:Z

    if-eqz v8, :cond_6

    and-int/lit16 v6, v6, 0xe0

    const/16 v8, 0xe0

    if-ne v6, v8, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    iput-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->i:Z

    if-eqz v6, :cond_7

    add-int/lit8 v5, v4, 0x1

    .line 10
    invoke-virtual {p1, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->i:Z

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 11
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    aget-byte v0, v0, v4

    aput-byte v0, v2, v3

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->g:I

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->f:I

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_8
    invoke-virtual {p1, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V
    .locals 1

    .line 33
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->a()V

    .line 34
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->e:Ljava/lang/String;

    .line 35
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mr;->d:Lcom/google/ads/interactivemedia/v3/internal/ix;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
