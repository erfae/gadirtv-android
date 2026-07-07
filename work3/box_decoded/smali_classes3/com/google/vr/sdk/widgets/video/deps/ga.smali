.class final Lcom/google/vr/sdk/widgets/video/deps/ga;
.super Ljava/lang/Object;
.source "TsDurationReader.java"


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/pp;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pp;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pp;-><init>(J)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->f:J

    .line 4
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->g:J

    .line 5
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->h:J

    .line 6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const v1, 0x92e0

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cs;)I
    .locals 1

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->c:Z

    .line 26
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)J
    .locals 7

    .line 39
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    .line 40
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v1

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v1, :cond_2

    .line 43
    iget-object v4, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v4, v4, v0

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    invoke-static {p1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ge;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;II)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    return-wide v4

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 29
    iput-wide v3, p2, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    return v2

    :cond_0
    const-wide/32 v0, 0x92e0

    .line 31
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    .line 32
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 34
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 35
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    .line 36
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p0, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->f:J

    .line 37
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->d:Z

    return v1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/pe;I)J
    .locals 7

    .line 62
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    .line 63
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v1, v0, :cond_2

    .line 66
    iget-object v4, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v4, v4, v1

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-static {p1, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ge;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;II)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    return-wide v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v0

    const-wide/32 v2, 0x92e0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 51
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v2

    int-to-long v4, v1

    sub-long/2addr v2, v4

    .line 52
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v4

    const/4 v0, 0x1

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    .line 53
    iput-wide v2, p2, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    return v0

    .line 55
    :cond_0
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 56
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 57
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 58
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    .line 59
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p0, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/ga;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->g:J

    .line 60
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->e:Z

    return v2
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-gtz p3, :cond_0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)I

    move-result p1

    return p1

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->e:Z

    if-nez v0, :cond_1

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ga;->c(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;I)I

    move-result p1

    return p1

    .line 13
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 14
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)I

    move-result p1

    return p1

    .line 15
    :cond_2
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->d:Z

    if-nez v0, :cond_3

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ga;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;I)I

    move-result p1

    return p1

    .line 17
    :cond_3
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->f:J

    cmp-long v0, p2, v2

    if-nez v0, :cond_4

    .line 18
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)I

    move-result p1

    return p1

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {v0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/pp;->b(J)J

    move-result-wide p2

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pp;->b(J)J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 21
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->h:J

    .line 22
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)I

    move-result p1

    return p1
.end method

.method public a()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->c:Z

    return v0
.end method

.method public b()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->h:J

    return-wide v0
.end method

.method public c()Lcom/google/vr/sdk/widgets/video/deps/pp;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ga;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    return-object v0
.end method
