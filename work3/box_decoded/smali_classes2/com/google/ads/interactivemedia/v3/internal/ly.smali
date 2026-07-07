.class public final Lcom/google/ads/interactivemedia/v3/internal/ly;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/me;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/abq;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:J

.field private k:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private l:I

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ly;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abq;

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 2
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abq;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->a:Lcom/google/ads/interactivemedia/v3/internal/abq;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 3
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/abq;->a:[B

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->f:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->g:I

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->h:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->i:Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->f:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->g:I

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->h:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->i:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->m:J

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 10

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 4
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    if-lez v0, :cond_b

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->l:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->g:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 12
    invoke-interface {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->g:I

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->l:I

    if-ne v1, v7, :cond_0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->m:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 13
    invoke-interface/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->m:J

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->j:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->m:J

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->f:I

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 14
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v3

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->g:I

    const/16 v5, 0x10

    rsub-int/lit8 v4, v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->g:I

    .line 16
    invoke-virtual {p1, v0, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->g:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->a:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 17
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->a(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->a:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 18
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fd;->a(Lcom/google/ads/interactivemedia/v3/internal/abq;)Lcom/google/ads/interactivemedia/v3/internal/fc;

    move-result-object v0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->k:Lcom/google/ads/interactivemedia/v3/internal/cz;

    const-string v4, "audio/ac4"

    if-eqz v3, :cond_2

    iget v6, v3, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    if-ne v6, v1, :cond_2

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/fc;->a:I

    iget v7, v3, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    if-ne v6, v7, :cond_2

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 20
    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->d:Ljava/lang/String;

    .line 21
    invoke-virtual {v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/fc;->a:I

    .line 24
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->m(I)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->c:Ljava/lang/String;

    .line 25
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v3

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->k:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 27
    invoke-interface {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    :cond_3
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/fc;->c:I

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->l:I

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fc;->d:I

    int-to-long v3, v0

    const-wide/32 v6, 0xf4240

    mul-long v3, v3, v6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->k:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 28
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    int-to-long v6, v0

    div-long/2addr v3, v6

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->j:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 29
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 30
    invoke-interface {v0, v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->f:I

    goto/16 :goto_0

    .line 6
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->h:Z

    const/16 v4, 0xac

    if-nez v0, :cond_6

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v0

    if-ne v0, v4, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->h:Z

    goto :goto_1

    .line 8
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v0

    if-ne v0, v4, :cond_7

    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->h:Z

    const/16 v4, 0x40

    const/16 v5, 0x41

    if-eq v0, v4, :cond_8

    if-ne v0, v5, :cond_4

    goto :goto_4

    :cond_8
    if-eq v0, v5, :cond_9

    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->i:Z

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->f:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    const/16 v6, -0x54

    aput-byte v6, v0, v2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 10
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->i:Z

    if-eq v3, v2, :cond_a

    goto :goto_6

    :cond_a
    const/16 v4, 0x41

    :goto_6
    aput-byte v4, v0, v3

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->g:I

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V
    .locals 1

    .line 31
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->a()V

    .line 32
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->d:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ly;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
