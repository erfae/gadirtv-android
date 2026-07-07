.class final Lcom/google/vr/sdk/widgets/video/deps/fs;
.super Ljava/lang/Object;
.source "PsDurationReader.java"


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

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->f:J

    .line 4
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->g:J

    .line 5
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->h:J

    .line 6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v1, 0x4e20

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cs;)I
    .locals 1

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->c:Z

    .line 33
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    const/4 p1, 0x0

    return p1
.end method

.method private a([BI)I
    .locals 2

    .line 82
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/pe;)J
    .locals 6

    .line 23
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    .line 24
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v4, 0x9

    if-ge v1, v4, :cond_0

    return-wide v2

    :cond_0
    new-array v1, v4, [B

    const/4 v5, 0x0

    .line 27
    invoke-virtual {p0, v1, v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 29
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/fs;->a([B)Z

    move-result p0

    if-nez p0, :cond_1

    return-wide v2

    .line 31
    :cond_1
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/fs;->b([B)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a([B)Z
    .locals 3

    const/4 v0, 0x0

    .line 83
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xc4

    const/16 v2, 0x44

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 85
    aget-byte v1, p0, v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    return v0

    .line 87
    :cond_1
    aget-byte v1, p0, v2

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x5

    .line 89
    aget-byte v1, p0, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    const/16 v1, 0x8

    .line 91
    aget-byte p0, p0, v1

    const/4 v1, 0x3

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 36
    iput-wide v3, p2, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    return v2

    :cond_0
    const-wide/16 v0, 0x4e20

    .line 38
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    .line 39
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 41
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 42
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    .line 43
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fs;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->f:J

    .line 44
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Z

    return v1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/pe;)J
    .locals 7

    .line 46
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    .line 47
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x3

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v2, :cond_1

    .line 50
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-direct {p0, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fs;->a([BI)I

    move-result v2

    const/16 v5, 0x1ba

    if-ne v2, v5, :cond_0

    add-int/lit8 v2, v0, 0x4

    .line 52
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 53
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/fs;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_0

    return-wide v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method private static b([B)J
    .locals 13

    const/4 v0, 0x0

    .line 92
    aget-byte v1, p0, v0

    int-to-long v1, v1

    const-wide/16 v3, 0x38

    and-long/2addr v1, v3

    const/4 v3, 0x3

    shr-long/2addr v1, v3

    const/16 v4, 0x1e

    shl-long/2addr v1, v4

    aget-byte v0, p0, v0

    int-to-long v4, v0

    const-wide/16 v6, 0x3

    and-long/2addr v4, v6

    const/16 v0, 0x1c

    shl-long/2addr v4, v0

    or-long v0, v1, v4

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v4, v2

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    const/16 v2, 0x14

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 v2, 0x2

    aget-byte v4, p0, v2

    int-to-long v4, v4

    const-wide/16 v10, 0xf8

    and-long/2addr v4, v10

    shr-long/2addr v4, v3

    const/16 v12, 0xf

    shl-long/2addr v4, v12

    or-long/2addr v0, v4

    aget-byte v2, p0, v2

    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v2, 0xd

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    aget-byte v2, p0, v3

    int-to-long v4, v2

    and-long/2addr v4, v8

    const/4 v2, 0x5

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 v2, 0x4

    aget-byte p0, p0, v2

    int-to-long v4, p0

    and-long/2addr v4, v10

    shr-long v2, v4, v3

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 59
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v2

    int-to-long v4, v1

    sub-long/2addr v2, v4

    .line 60
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v4

    const/4 v0, 0x1

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    .line 61
    iput-wide v2, p2, Lcom/google/vr/sdk/widgets/video/deps/cz;->a:J

    return v0

    .line 63
    :cond_0
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 64
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 65
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 66
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    .line 67
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fs;->c(Lcom/google/vr/sdk/widgets/video/deps/pe;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->g:J

    .line 68
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->e:Z

    return v2
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/pe;)J
    .locals 7

    .line 70
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    .line 71
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v1, v0, :cond_1

    .line 74
    iget-object v4, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-direct {p0, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/fs;->a([BI)I

    move-result v4

    const/16 v5, 0x1ba

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v1, 0x4

    .line 76
    invoke-virtual {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 77
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/fs;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    return-wide v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 10
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->e:Z

    if-nez v0, :cond_0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fs;->c(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result p1

    return p1

    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 13
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fs;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)I

    move-result p1

    return p1

    .line 14
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->d:Z

    if-nez v0, :cond_2

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fs;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result p1

    return p1

    .line 16
    :cond_2
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->f:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_3

    .line 17
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fs;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)I

    move-result p1

    return p1

    .line 18
    :cond_3
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pp;->b(J)J

    move-result-wide v0

    .line 19
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->g:J

    invoke-virtual {p2, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/pp;->b(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 20
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->h:J

    .line 21
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fs;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)I

    move-result p1

    return p1
.end method

.method public a()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->c:Z

    return v0
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/pp;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->a:Lcom/google/vr/sdk/widgets/video/deps/pp;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fs;->h:J

    return-wide v0
.end method
