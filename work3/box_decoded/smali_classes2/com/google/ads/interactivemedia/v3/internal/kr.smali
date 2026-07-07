.class final Lcom/google/ads/interactivemedia/v3/internal/kr;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field public final b:Lcom/google/ads/interactivemedia/v3/internal/le;

.field public final c:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field public d:Lcom/google/ads/interactivemedia/v3/internal/lf;

.field public e:Lcom/google/ads/interactivemedia/v3/internal/kn;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final k:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/lf;Lcom/google/ads/interactivemedia/v3/internal/kn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/le;

    .line 1
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/le;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 2
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->j:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 4
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/kr;->a(Lcom/google/ads/interactivemedia/v3/internal/lf;Lcom/google/ads/interactivemedia/v3/internal/kn;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/kr;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->l:Z

    return p0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/kr;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->l:Z

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 9

    .line 19
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/kr;->g()Lcom/google/ads/interactivemedia/v3/internal/ld;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ld;->d:I

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    .line 20
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/le;->p:Lcom/google/ads/interactivemedia/v3/internal/abr;

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ld;->e:[B

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 21
    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->k:Lcom/google/ads/interactivemedia/v3/internal/abr;

    move v2, v3

    .line 20
    :goto_0
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    .line 22
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/le;->c(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    :goto_2
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->j:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v6

    if-eq v4, v5, :cond_4

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v7, v2

    int-to-byte v7, v7

    .line 23
    aput-byte v7, v6, v1

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->j:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 24
    invoke-virtual {v6, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->j:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 25
    invoke-interface {v6, v7, v4}, Lcom/google/ads/interactivemedia/v3/internal/ix;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 26
    invoke-interface {v6, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    if-nez v5, :cond_5

    add-int/2addr v2, v4

    return v2

    :cond_5
    const/4 v0, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 27
    invoke-virtual {v3, v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    .line 28
    aput-byte v1, v3, v1

    .line 29
    aput-byte v4, v3, v4

    .line 30
    aput-byte v1, v3, v6

    int-to-byte p2, p2

    .line 31
    aput-byte p2, v3, v5

    const/4 p2, 0x4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 32
    aput-byte v1, v3, p2

    const/4 p2, 0x5

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 33
    aput-byte v1, v3, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 34
    aput-byte p2, v3, v0

    const/4 p2, 0x7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 35
    aput-byte p1, v3, p2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 36
    invoke-interface {p1, p2, v7}, Lcom/google/ads/interactivemedia/v3/internal/ix;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    add-int/lit8 v2, v2, 0x9

    return v2

    :cond_6
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    .line 37
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/le;->p:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 38
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->g()I

    move-result v3

    const/4 v8, -0x2

    .line 39
    invoke-virtual {p1, v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v6

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 40
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    .line 42
    aget-byte p1, v0, v6

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v7

    aget-byte v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 43
    aput-byte p2, v0, v6

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 44
    aput-byte p1, v0, v5

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    :cond_7
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 45
    invoke-interface {p2, p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    return v2
.end method

.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/le;->e:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/le;->r:J

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/le;->s:Z

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/le;->m:Z

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/le;->q:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/le;->o:Lcom/google/ads/interactivemedia/v3/internal/ld;

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->h:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->g:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->i:I

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->l:Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/lf;Lcom/google/ads/interactivemedia/v3/internal/kn;)V
    .locals 1

    .line 46
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/lf;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 47
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->e:Lcom/google/ads/interactivemedia/v3/internal/kn;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 48
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/lf;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/lc;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-interface {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/kr;->a()V

    return-void
.end method

.method public final b()J
    .locals 3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 11
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/lf;->f:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    aget-wide v1, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/le;->b(I)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public final c()J
    .locals 3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 9
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/lf;->c:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    aget-wide v1, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    .line 10
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/le;->g:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->h:I

    aget-wide v1, v0, v1

    :goto_0
    return-wide v1
.end method

.method public final d()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 13
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/lf;->d:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    .line 14
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/le;->i:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public final e()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 6
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/lf;->g:[I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    aget v0, v0, v1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    .line 7
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/le;->l:[Z

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/kr;->g()Lcom/google/ads/interactivemedia/v3/internal/ld;

    move-result-object v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final f()Z
    .locals 5

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->l:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->g:I

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    .line 18
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/le;->h:[I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->h:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->h:I

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->g:I

    return v2

    :cond_1
    return v1
.end method

.method public final g()Lcom/google/ads/interactivemedia/v3/internal/ld;
    .locals 3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    .line 15
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/le;->a:Lcom/google/ads/interactivemedia/v3/internal/kn;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/kn;->a:I

    .line 16
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/le;->o:Lcom/google/ads/interactivemedia/v3/internal/ld;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 17
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/lf;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/lc;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ld;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 16
    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ld;->a:Z

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method
