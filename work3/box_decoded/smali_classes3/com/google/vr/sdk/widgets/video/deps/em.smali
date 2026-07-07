.class final Lcom/google/vr/sdk/widgets/video/deps/em;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/es;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/em$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/er;

.field private final b:J

.field private final c:J

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/eu;

.field private e:I

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>(JJLcom/google/vr/sdk/widgets/video/deps/eu;JJZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/er;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/er;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    cmp-long v1, p3, p1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 4
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->d:Lcom/google/vr/sdk/widgets/video/deps/eu;

    .line 5
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->b:J

    .line 6
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->c:J

    sub-long/2addr p3, p1

    cmp-long p1, p6, p3

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->e:I

    goto :goto_2

    .line 8
    :cond_2
    :goto_1
    iput-wide p8, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->f:J

    const/4 p1, 0x3

    .line 9
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->e:I

    :goto_2
    return-void
.end method

.method private a(JJJ)J
    .locals 6

    .line 72
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->c:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->b:J

    sub-long v4, v0, v2

    mul-long p3, p3, v4

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->f:J

    div-long/2addr p3, v4

    sub-long/2addr p3, p5

    add-long/2addr p1, p3

    cmp-long p3, p1, v2

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    const-wide/16 p1, 0x1

    sub-long v2, v0, p1

    :cond_1
    return-wide v2
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/em;)J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/em;JJJ)J
    .locals 0

    .line 111
    invoke-direct/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/em;->a(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/em;)Lcom/google/vr/sdk/widgets/video/deps/eu;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->d:Lcom/google/vr/sdk/widgets/video/deps/eu;

    return-object p0
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/em;)J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(JLcom/google/vr/sdk/widgets/video/deps/cs;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 42
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->i:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->j:J

    const-wide/16 v4, 0x2

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    .line 43
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->k:J

    add-long/2addr p1, v4

    neg-long p1, p1

    return-wide p1

    .line 44
    :cond_0
    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    .line 45
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->j:J

    invoke-virtual {p0, p3, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/em;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 46
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->i:J

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    return-wide p1

    .line 47
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No ogg page can be found."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3}, Lcom/google/vr/sdk/widgets/video/deps/er;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Z)Z

    .line 50
    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 51
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/er;->c:J

    sub-long/2addr p1, v2

    .line 52
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/er;->h:I

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/er;->i:I

    add-int/2addr v2, v3

    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-ltz v3, :cond_4

    const-wide/32 v6, 0x11940

    cmp-long v8, p1, v6

    if-lez v8, :cond_3

    goto :goto_0

    .line 70
    :cond_3
    invoke-interface {p3, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 71
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget-wide p1, p1, Lcom/google/vr/sdk/widgets/video/deps/er;->c:J

    add-long/2addr p1, v4

    neg-long p1, p1

    return-wide p1

    :cond_4
    :goto_0
    const-wide/32 v6, 0x186a0

    if-gez v3, :cond_5

    .line 55
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->j:J

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/er;->c:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->l:J

    goto :goto_1

    .line 57
    :cond_5
    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    int-to-long v8, v2

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->i:J

    .line 58
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/er;->c:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->k:J

    .line 59
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->j:J

    iget-wide v10, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->i:J

    sub-long/2addr v0, v10

    add-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_6

    .line 60
    invoke-interface {p3, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 61
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->k:J

    add-long/2addr p1, v4

    neg-long p1, p1

    return-wide p1

    .line 62
    :cond_6
    :goto_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->j:J

    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->i:J

    sub-long/2addr v0, v8

    cmp-long v10, v0, v6

    if-gez v10, :cond_7

    .line 63
    iput-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->j:J

    return-wide v8

    :cond_7
    int-to-long v0, v2

    const-wide/16 v6, 0x1

    if-gtz v3, :cond_8

    goto :goto_2

    :cond_8
    move-wide v4, v6

    :goto_2
    mul-long v0, v0, v4

    .line 66
    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->j:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->i:J

    sub-long/2addr v0, v4

    mul-long p1, p1, v0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->l:J

    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->k:J

    sub-long/2addr v0, v8

    div-long/2addr p1, v0

    add-long/2addr v2, p1

    .line 67
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 68
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->j:J

    sub-long/2addr v0, v6

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 12
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 22
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->h:J

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_2

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/em;->a(JLcom/google/vr/sdk/widgets/video/deps/cs;)J

    move-result-wide v0

    cmp-long v7, v0, v5

    if-ltz v7, :cond_3

    return-wide v0

    .line 27
    :cond_3
    iget-wide v10, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->h:J

    add-long/2addr v0, v3

    neg-long v12, v0

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/em;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;JJ)J

    move-result-wide v5

    .line 28
    :goto_0
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->e:I

    add-long/2addr v5, v3

    neg-long v0, v5

    return-wide v0

    .line 14
    :cond_4
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->g:J

    .line 15
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->e:I

    .line 16
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->c:J

    const-wide/32 v5, 0xff1b

    sub-long/2addr v0, v5

    cmp-long v5, v0, v3

    if-lez v5, :cond_5

    return-wide v0

    .line 19
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/em;->c(Lcom/google/vr/sdk/widgets/video/deps/cs;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->f:J

    .line 20
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->e:I

    .line 21
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->g:J

    return-wide v0
.end method

.method a(Lcom/google/vr/sdk/widgets/video/deps/cs;JJ)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/er;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Z)Z

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/er;->c:J

    cmp-long v0, v2, p2

    if-gez v0, :cond_0

    .line 103
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget p4, p4, Lcom/google/vr/sdk/widgets/video/deps/er;->h:I

    iget-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget p5, p5, Lcom/google/vr/sdk/widgets/video/deps/er;->i:I

    add-int/2addr p4, p5

    invoke-interface {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 104
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget-wide p4, p4, Lcom/google/vr/sdk/widgets/video/deps/er;->c:J

    .line 105
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/er;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Z)Z

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    return-wide p4
.end method

.method public a()Lcom/google/vr/sdk/widgets/video/deps/em$a;
    .locals 6

    .line 36
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->f:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/em$a;

    invoke-direct {v0, p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/em$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/em;Lcom/google/vr/sdk/widgets/video/deps/em$1;)V

    move-object v2, v0

    :cond_0
    return-object v2
.end method

.method a(Lcom/google/vr/sdk/widgets/video/deps/cs;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0x3

    add-long/2addr p2, v0

    .line 81
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->c:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const/16 v0, 0x800

    new-array v1, v0, [B

    .line 84
    :goto_0
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/4 v4, 0x0

    cmp-long v5, v2, p2

    if-lez v5, :cond_0

    .line 85
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v2

    sub-long v2, p2, v2

    long-to-int v0, v2

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    return v4

    .line 88
    :cond_0
    invoke-interface {p1, v1, v4, v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BIIZ)Z

    :goto_1
    add-int/lit8 v2, v0, -0x3

    if-ge v4, v2, :cond_2

    .line 90
    aget-byte v2, v1, v4

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x1

    aget-byte v2, v1, v2

    const/16 v3, 0x67

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x2

    aget-byte v2, v1, v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v4, 0x3

    aget-byte v2, v1, v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_1

    .line 91
    invoke-interface {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 94
    :cond_2
    invoke-interface {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    goto :goto_0
.end method

.method public a_(J)J
    .locals 4

    .line 31
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->e:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    goto :goto_2

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->d:Lcom/google/vr/sdk/widgets/video/deps/eu;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eu;->b(J)J

    move-result-wide v2

    :goto_2
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->h:J

    .line 33
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->e:I

    .line 34
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/em;->b()V

    .line 35
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->h:J

    return-wide p1
.end method

.method public b()V
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->b:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->i:J

    .line 38
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->c:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->j:J

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->k:J

    .line 40
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->f:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->l:J

    return-void
.end method

.method b(Lcom/google/vr/sdk/widgets/video/deps/cs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->c:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/em;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method c(Lcom/google/vr/sdk/widgets/video/deps/cs;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/em;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)V

    .line 96
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/er;->a()V

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/er;->b:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->c:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/er;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Z)Z

    .line 99
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/er;->h:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/er;->i:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->a:Lcom/google/vr/sdk/widgets/video/deps/er;

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/er;->c:J

    return-wide v0
.end method

.method public synthetic c()Lcom/google/vr/sdk/widgets/video/deps/da;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/em;->a()Lcom/google/vr/sdk/widgets/video/deps/em$a;

    move-result-object v0

    return-object v0
.end method
