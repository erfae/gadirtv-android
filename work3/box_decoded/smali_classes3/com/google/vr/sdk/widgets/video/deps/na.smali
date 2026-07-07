.class public Lcom/google/vr/sdk/widgets/video/deps/na;
.super Lcom/google/vr/sdk/widgets/video/deps/nb;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/na$a;
    }
.end annotation


# instance fields
.field private final d:Lcom/google/vr/sdk/widgets/video/deps/nn;

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:F

.field private final i:F

.field private final j:J

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/oq;

.field private l:F

.field private m:I

.field private n:I

.field private o:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/iv;[ILcom/google/vr/sdk/widgets/video/deps/nn;JJJFFJLcom/google/vr/sdk/widgets/video/deps/oq;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/nb;-><init>(Lcom/google/vr/sdk/widgets/video/deps/iv;[I)V

    .line 2
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->d:Lcom/google/vr/sdk/widgets/video/deps/nn;

    const-wide/16 p1, 0x3e8

    mul-long p4, p4, p1

    .line 3
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->e:J

    mul-long p6, p6, p1

    .line 4
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->f:J

    mul-long p8, p8, p1

    .line 5
    iput-wide p8, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->g:J

    .line 6
    iput p10, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->h:F

    .line 7
    iput p11, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->i:F

    .line 8
    iput-wide p12, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->j:J

    .line 9
    iput-object p14, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->k:Lcom/google/vr/sdk/widgets/video/deps/oq;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->l:F

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->n:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->o:J

    const-wide/high16 p1, -0x8000000000000000L

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/na;->a(J)I

    move-result p1

    .line 14
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->m:I

    return-void
.end method

.method private a(J)I
    .locals 7

    .line 63
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->d:Lcom/google/vr/sdk/widgets/video/deps/nn;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nn;->a()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->h:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 65
    :goto_0
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->b:I

    if-ge v2, v4, :cond_3

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-eqz v6, :cond_0

    .line 66
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/na;->b(IJ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 67
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/na;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v3

    .line 68
    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->l:F

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, v0

    if-gtz v5, :cond_1

    return v2

    :cond_1
    move v3, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private b(J)J
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 73
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->e:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    long-to-float p1, p1

    .line 75
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->i:F

    mul-float p1, p1, p2

    float-to-long p1, p1

    goto :goto_1

    .line 76
    :cond_1
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->e:J

    :goto_1
    return-wide p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->m:I

    return v0
.end method

.method public a(JLjava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/jk;",
            ">;)I"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->k:Lcom/google/vr/sdk/widgets/video/deps/oq;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/oq;->a()J

    move-result-wide v0

    .line 40
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->o:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->j:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 41
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 42
    :cond_0
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->o:J

    .line 43
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 45
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 46
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/jk;

    .line 47
    iget-wide v4, v4, Lcom/google/vr/sdk/widgets/video/deps/jk;->g:J

    sub-long/2addr v4, p1

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->l:F

    .line 48
    invoke-static {v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b(JF)J

    move-result-wide v4

    .line 49
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->g:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    return v2

    .line 51
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/na;->a(J)I

    move-result v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/na;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 54
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/jk;

    .line 55
    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/jk;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 56
    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/jk;->g:J

    sub-long/2addr v5, p1

    .line 57
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->l:F

    .line 58
    invoke-static {v5, v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b(JF)J

    move-result-wide v5

    .line 59
    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->g:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_3

    iget v1, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    if-ge v1, v5, :cond_3

    iget v1, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    iget v1, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    const/16 v6, 0x2d0

    if-ge v1, v6, :cond_3

    iget v1, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    if-eq v1, v5, :cond_3

    iget v1, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    const/16 v5, 0x500

    if-ge v1, v5, :cond_3

    iget v1, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    if-ge v1, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public a(F)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->l:F

    return-void
.end method

.method public a(JJJLjava/util/List;[Lcom/google/vr/sdk/widgets/video/deps/jl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/jk;",
            ">;[",
            "Lcom/google/vr/sdk/widgets/video/deps/jl;",
            ")V"
        }
    .end annotation

    .line 20
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->k:Lcom/google/vr/sdk/widgets/video/deps/oq;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/oq;->a()J

    move-result-wide p1

    .line 21
    iget p7, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->m:I

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/na;->a(J)I

    move-result p8

    iput p8, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->m:I

    if-ne p8, p7, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-virtual {p0, p7, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/na;->b(IJ)Z

    move-result p1

    if-nez p1, :cond_2

    .line 26
    invoke-virtual {p0, p7}, Lcom/google/vr/sdk/widgets/video/deps/na;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p1

    .line 27
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->m:I

    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/na;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p2

    .line 28
    iget p8, p2, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    if-le p8, v0, :cond_1

    .line 29
    invoke-direct {p0, p5, p6}, Lcom/google/vr/sdk/widgets/video/deps/na;->b(J)J

    move-result-wide p5

    cmp-long p8, p3, p5

    if-gez p8, :cond_1

    .line 30
    iput p7, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->m:I

    goto :goto_0

    .line 31
    :cond_1
    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    if-ge p2, p1, :cond_2

    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->f:J

    cmp-long p5, p3, p1

    if-ltz p5, :cond_2

    .line 32
    iput p7, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->m:I

    .line 33
    :cond_2
    :goto_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->m:I

    if-eq p1, p7, :cond_3

    const/4 p1, 0x3

    .line 34
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->n:I

    :cond_3
    return-void
.end method

.method public b()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->n:I

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/na;->o:J

    return-void
.end method
