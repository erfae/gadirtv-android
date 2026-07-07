.class final Lcom/google/ads/interactivemedia/v3/internal/jm;
.super Lcom/google/ads/interactivemedia/v3/internal/jl;
.source "IMASDK"


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ix;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ix;)V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/abp;->a:[B

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v0, 0x4

    .line 3
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/jk;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 5
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->g:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jk;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    .line 5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Video format not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jk;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/abr;J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->k()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->e:Z

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v1

    .line 18
    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v2

    .line 19
    invoke-virtual {p1, v1, p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    .line 20
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/aci;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)Lcom/google/ads/interactivemedia/v3/internal/aci;

    move-result-object p1

    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/aci;->b:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->d:I

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 21
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    const-string v1, "video/avc"

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/aci;->c:I

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->p(I)V

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/aci;->d:I

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(I)V

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/aci;->e:F

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->b(F)V

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/aci;->a:Ljava/util/List;

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/util/List;)V

    .line 27
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 28
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->e:Z

    return p3

    :cond_0
    if-ne v0, p2, :cond_5

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->e:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->g:I

    if-ne v0, p2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->f:Z

    if-nez v0, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    return p3

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    .line 8
    aput-byte p3, v0, p3

    .line 9
    aput-byte p3, v0, p2

    const/4 v1, 0x2

    .line 10
    aput-byte p3, v0, v1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->d:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->d:I

    .line 11
    invoke-virtual {p1, v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 12
    invoke-virtual {v2, p3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 13
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 14
    invoke-virtual {v3, p3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 15
    invoke-interface {v3, v8, v1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 16
    invoke-interface {v3, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v2

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 17
    invoke-interface/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/jm;->f:Z

    return p2

    :cond_5
    return p3
.end method
