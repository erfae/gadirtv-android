.class public final Lcom/google/ads/interactivemedia/v3/internal/lw;
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

.field private i:J

.field private j:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/lw;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abq;

    const/16 v1, 0x80

    new-array v1, v1, [B

    .line 2
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abq;-><init>([B)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->a:Lcom/google/ads/interactivemedia/v3/internal/abq;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 3
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/abq;->a:[B

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->f:I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->f:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->g:I

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->h:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->l:J

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 11

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 4
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    if-lez v0, :cond_9

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->k:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 12
    invoke-interface {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->g:I

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->k:I

    if-ne v1, v8, :cond_0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->l:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 13
    invoke-interface/range {v4 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->l:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->i:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->l:J

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->f:I

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 14
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v2

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->g:I

    const/16 v5, 0x80

    rsub-int v4, v4, 0x80

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->g:I

    .line 16
    invoke-virtual {p1, v0, v4, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->g:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->a:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->a(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->a:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 18
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fb;->a(Lcom/google/ads/interactivemedia/v3/internal/abq;)Lcom/google/ads/interactivemedia/v3/internal/fa;

    move-result-object v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->j:Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-eqz v2, :cond_2

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/fa;->c:I

    iget v6, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    if-ne v4, v6, :cond_2

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/fa;->b:I

    iget v6, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    if-ne v4, v6, :cond_2

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/fa;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 19
    invoke-static {v4, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 20
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->d:Ljava/lang/String;

    .line 21
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/fa;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/fa;->c:I

    .line 23
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/fa;->b:I

    .line 24
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->m(I)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->c:Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v2

    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->j:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 27
    invoke-interface {v4, v2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    :cond_3
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/fa;->d:I

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->k:I

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fa;->e:I

    int-to-long v6, v0

    const-wide/32 v8, 0xf4240

    mul-long v6, v6, v8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->j:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 28
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->z:I

    int-to-long v8, v0

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->i:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 29
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 30
    invoke-interface {v0, v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->f:I

    goto/16 :goto_0

    .line 6
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->h:Z

    const/16 v4, 0xb

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
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->h:Z

    goto :goto_1

    .line 8
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v0

    const/16 v5, 0x77

    if-ne v0, v5, :cond_7

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->h:Z

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->f:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    aput-byte v4, v0, v3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 10
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    aput-byte v5, v0, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->g:I

    goto/16 :goto_0

    :cond_7
    if-ne v0, v4, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->h:Z

    goto :goto_1

    :cond_9
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V
    .locals 1

    .line 31
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->a()V

    .line 32
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->d:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lw;->e:Lcom/google/ads/interactivemedia/v3/internal/ix;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
