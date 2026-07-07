.class abstract Lcom/google/vr/sdk/widgets/video/deps/eu;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/eu$b;,
        Lcom/google/vr/sdk/widgets/video/deps/eu$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/eq;

.field private b:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private c:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private d:Lcom/google/vr/sdk/widgets/video/deps/es;

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:Lcom/google/vr/sdk/widgets/video/deps/eu$a;

.field private k:J

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eq;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/eq;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->a:Lcom/google/vr/sdk/widgets/video/deps/eq;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cs;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v11, p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 32
    iget-object v1, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->a:Lcom/google/vr/sdk/widgets/video/deps/eq;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/eq;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    .line 33
    iput v0, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->h:I

    const/4 v0, -0x1

    return v0

    .line 35
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v3

    iget-wide v5, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->f:J

    sub-long/2addr v3, v5

    iput-wide v3, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->k:J

    .line 36
    iget-object v1, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->a:Lcom/google/vr/sdk/widgets/video/deps/eq;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/eq;->c()Lcom/google/vr/sdk/widgets/video/deps/pe;

    move-result-object v1

    iget-wide v3, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->f:J

    iget-object v5, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->j:Lcom/google/vr/sdk/widgets/video/deps/eu$a;

    invoke-virtual {v11, v1, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;JLcom/google/vr/sdk/widgets/video/deps/eu$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-interface/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v3

    iput-wide v3, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->f:J

    goto :goto_0

    :cond_2
    move-object/from16 v2, p1

    .line 39
    iget-object v1, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->j:Lcom/google/vr/sdk/widgets/video/deps/eu$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/eu$a;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    iput v1, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->i:I

    .line 40
    iget-boolean v1, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->m:Z

    if-nez v1, :cond_3

    .line 41
    iget-object v1, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object v3, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->j:Lcom/google/vr/sdk/widgets/video/deps/eu$a;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/eu$a;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-interface {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 42
    iput-boolean v0, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->m:Z

    .line 43
    :cond_3
    iget-object v1, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->j:Lcom/google/vr/sdk/widgets/video/deps/eu$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/eu$a;->b:Lcom/google/vr/sdk/widgets/video/deps/es;

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v1, :cond_4

    .line 44
    iget-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->j:Lcom/google/vr/sdk/widgets/video/deps/eu$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eu$a;->b:Lcom/google/vr/sdk/widgets/video/deps/es;

    iput-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->d:Lcom/google/vr/sdk/widgets/video/deps/es;

    goto :goto_2

    .line 45
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 46
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eu$b;

    invoke-direct {v0, v13}, Lcom/google/vr/sdk/widgets/video/deps/eu$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/eu$1;)V

    iput-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->d:Lcom/google/vr/sdk/widgets/video/deps/es;

    goto :goto_2

    .line 47
    :cond_5
    iget-object v1, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->a:Lcom/google/vr/sdk/widgets/video/deps/eq;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/eq;->b()Lcom/google/vr/sdk/widgets/video/deps/er;

    move-result-object v1

    .line 48
    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/er;->b:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    .line 49
    :goto_1
    new-instance v14, Lcom/google/vr/sdk/widgets/video/deps/em;

    iget-wide v3, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->f:J

    .line 50
    invoke-interface/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v5

    iget v0, v1, Lcom/google/vr/sdk/widgets/video/deps/er;->h:I

    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/er;->i:I

    add-int/2addr v0, v2

    int-to-long v7, v0

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/er;->c:J

    move-object v0, v14

    move-wide v15, v1

    move-wide v1, v3

    move-wide v3, v5

    move-object/from16 v5, p0

    move-wide v6, v7

    move-wide v8, v15

    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/em;-><init>(JJLcom/google/vr/sdk/widgets/video/deps/eu;JJZ)V

    iput-object v14, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->d:Lcom/google/vr/sdk/widgets/video/deps/es;

    .line 51
    :goto_2
    iput-object v13, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->j:Lcom/google/vr/sdk/widgets/video/deps/eu$a;

    const/4 v0, 0x2

    .line 52
    iput v0, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->h:I

    .line 53
    iget-object v0, v11, Lcom/google/vr/sdk/widgets/video/deps/eu;->a:Lcom/google/vr/sdk/widgets/video/deps/eq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/eq;->d()V

    return v12
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 55
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->d:Lcom/google/vr/sdk/widgets/video/deps/es;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/es;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)J

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_0

    move-object/from16 v7, p2

    .line 57
    iput-wide v2, v7, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    return v4

    :cond_0
    const-wide/16 v7, -0x1

    cmp-long v9, v2, v7

    if-gez v9, :cond_1

    const-wide/16 v9, 0x2

    add-long/2addr v2, v9

    neg-long v2, v2

    .line 60
    invoke-virtual {v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/eu;->c(J)V

    .line 61
    :cond_1
    iget-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->l:Z

    if-nez v2, :cond_2

    .line 62
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->d:Lcom/google/vr/sdk/widgets/video/deps/es;

    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/es;->c()Lcom/google/vr/sdk/widgets/video/deps/da;

    move-result-object v2

    .line 63
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->c:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    .line 64
    iput-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->l:Z

    .line 65
    :cond_2
    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->k:J

    cmp-long v4, v2, v5

    if-gtz v4, :cond_4

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->a:Lcom/google/vr/sdk/widgets/video/deps/eq;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/eq;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    .line 76
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->h:I

    const/4 v1, -0x1

    return v1

    .line 66
    :cond_4
    :goto_0
    iput-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->k:J

    .line 67
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->a:Lcom/google/vr/sdk/widgets/video/deps/eq;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/eq;->c()Lcom/google/vr/sdk/widgets/video/deps/pe;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eu;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-ltz v4, :cond_5

    .line 69
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->g:J

    add-long v9, v4, v2

    iget-wide v11, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->e:J

    cmp-long v6, v9, v11

    if-ltz v6, :cond_5

    .line 70
    invoke-virtual {v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a(J)J

    move-result-wide v10

    .line 71
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 72
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    const/4 v12, 0x1

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    .line 73
    iput-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->e:J

    .line 74
    :cond_5
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->g:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eu;->g:J

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method final a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 23
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->h:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eu;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result p1

    return p1

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 25
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->f:J

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 26
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->h:I

    const/4 p1, 0x0

    return p1

    .line 24
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)I

    move-result p1

    return p1
.end method

.method protected a(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 79
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->i:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method final a(JJ)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->a:Lcom/google/vr/sdk/widgets/video/deps/eq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/eq;->a()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 18
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a(Z)V

    goto :goto_0

    .line 19
    :cond_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->h:I

    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->d:Lcom/google/vr/sdk/widgets/video/deps/es;

    invoke-interface {p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/es;->a_(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->e:J

    const/4 p1, 0x2

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->h:I

    :cond_1
    :goto_0
    return-void
.end method

.method a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/dc;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->c:Lcom/google/vr/sdk/widgets/video/deps/ct;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a(Z)V

    return-void
.end method

.method protected a(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/eu$a;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/eu$a;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->j:Lcom/google/vr/sdk/widgets/video/deps/eu$a;

    .line 10
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->f:J

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    .line 13
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->e:J

    .line 14
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->g:J

    return-void
.end method

.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/pe;JLcom/google/vr/sdk/widgets/video/deps/eu$a;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected b(J)J
    .locals 2

    .line 80
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->i:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method protected abstract b(Lcom/google/vr/sdk/widgets/video/deps/pe;)J
.end method

.method protected c(J)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eu;->g:J

    return-void
.end method
