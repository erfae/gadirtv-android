.class final Lcom/google/vr/sdk/widgets/video/deps/p;
.super Ljava/lang/Object;
.source "MediaPeriodHolder.java"


# instance fields
.field public final a:Lcom/google/vr/sdk/widgets/video/deps/ie;

.field public final b:Ljava/lang/Object;

.field public final c:[Lcom/google/vr/sdk/widgets/video/deps/is;

.field public final d:[Z

.field public e:Z

.field public f:Z

.field public g:Lcom/google/vr/sdk/widgets/video/deps/q;

.field public h:Lcom/google/vr/sdk/widgets/video/deps/p;

.field public i:Lcom/google/vr/sdk/widgets/video/deps/iw;

.field public j:Lcom/google/vr/sdk/widgets/video/deps/nj;

.field private final k:[Lcom/google/vr/sdk/widgets/video/deps/aa;

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/ni;

.field private final m:Lcom/google/vr/sdk/widgets/video/deps/if;

.field private n:J

.field private o:Lcom/google/vr/sdk/widgets/video/deps/nj;


# direct methods
.method public constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/aa;JLcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/nl;Lcom/google/vr/sdk/widgets/video/deps/if;Lcom/google/vr/sdk/widgets/video/deps/q;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->k:[Lcom/google/vr/sdk/widgets/video/deps/aa;

    .line 3
    iget-wide v0, p7, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->n:J

    .line 4
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->l:Lcom/google/vr/sdk/widgets/video/deps/ni;

    .line 5
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->m:Lcom/google/vr/sdk/widgets/video/deps/if;

    .line 6
    iget-object p2, p7, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->b:Ljava/lang/Object;

    .line 7
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    .line 8
    array-length p2, p1

    new-array p2, p2, [Lcom/google/vr/sdk/widgets/video/deps/is;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->c:[Lcom/google/vr/sdk/widgets/video/deps/is;

    .line 9
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->d:[Z

    .line 10
    iget-object p1, p7, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-interface {p6, p1, p5}, Lcom/google/vr/sdk/widgets/video/deps/if;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;Lcom/google/vr/sdk/widgets/video/deps/nl;)Lcom/google/vr/sdk/widgets/video/deps/ie;

    move-result-object v1

    .line 11
    iget-object p1, p7, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide p1, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->e:J

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p5, p1, p3

    if-eqz p5, :cond_0

    .line 12
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/hu;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    iget-object p2, p7, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v5, p2, Lcom/google/vr/sdk/widgets/video/deps/if$a;->e:J

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/hu;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ie;ZJJ)V

    move-object v1, p1

    .line 13
    :cond_0
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/nj;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->o:Lcom/google/vr/sdk/widgets/video/deps/nj;

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/p;->c(Lcom/google/vr/sdk/widgets/video/deps/nj;)V

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->o:Lcom/google/vr/sdk/widgets/video/deps/nj;

    if-eqz p1, :cond_1

    .line 86
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/p;->b(Lcom/google/vr/sdk/widgets/video/deps/nj;)V

    :cond_1
    return-void
.end method

.method private a([Lcom/google/vr/sdk/widgets/video/deps/is;)V
    .locals 3

    const/4 v0, 0x0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->k:[Lcom/google/vr/sdk/widgets/video/deps/aa;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 103
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/aa;->getTrackType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 104
    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/nj;)V
    .locals 3

    const/4 v0, 0x0

    .line 88
    :goto_0
    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/nj;->a:I

    if-ge v0, v1, :cond_1

    .line 89
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/nj;->a(I)Z

    move-result v1

    .line 90
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    invoke-virtual {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/nh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 92
    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/nf;->d()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b([Lcom/google/vr/sdk/widgets/video/deps/is;)V
    .locals 3

    const/4 v0, 0x0

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->k:[Lcom/google/vr/sdk/widgets/video/deps/aa;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 108
    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/aa;->getTrackType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    .line 109
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/nj;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/hz;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/hz;-><init>()V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/nj;)V
    .locals 3

    const/4 v0, 0x0

    .line 95
    :goto_0
    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/nj;->a:I

    if-ge v0, v1, :cond_1

    .line 96
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/nj;->a(I)Z

    move-result v1

    .line 97
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    invoke-virtual {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/nh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 99
    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/nf;->e()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->n:J

    return-wide v0
.end method

.method public a(J)J
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/p;->a()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public a(JZ)J
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->k:[Lcom/google/vr/sdk/widgets/video/deps/aa;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/p;->a(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JZ[Z)J
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/nj;->a:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->d:[Z

    if-nez p3, :cond_0

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->o:Lcom/google/vr/sdk/widgets/video/deps/nj;

    .line 56
    invoke-virtual {v4, v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/nj;->a(Lcom/google/vr/sdk/widgets/video/deps/nj;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->c:[Lcom/google/vr/sdk/widgets/video/deps/is;

    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/p;->a([Lcom/google/vr/sdk/widgets/video/deps/is;)V

    .line 59
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/p;->a(Lcom/google/vr/sdk/widgets/video/deps/nj;)V

    .line 60
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-object p3, p3, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    .line 61
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    .line 62
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/nh;->a()[Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v5

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->d:[Z

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->c:[Lcom/google/vr/sdk/widgets/video/deps/is;

    move-object v8, p4

    move-wide v9, p1

    .line 63
    invoke-interface/range {v4 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/ie;->a([Lcom/google/vr/sdk/widgets/video/deps/nf;[Z[Lcom/google/vr/sdk/widgets/video/deps/is;[ZJ)J

    move-result-wide p1

    .line 64
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->c:[Lcom/google/vr/sdk/widgets/video/deps/is;

    invoke-direct {p0, p4}, Lcom/google/vr/sdk/widgets/video/deps/p;->b([Lcom/google/vr/sdk/widgets/video/deps/is;)V

    .line 65
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->f:Z

    const/4 p4, 0x0

    .line 66
    :goto_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->c:[Lcom/google/vr/sdk/widgets/video/deps/is;

    array-length v2, v1

    if-ge p4, v2, :cond_5

    .line 67
    aget-object v1, v1, p4

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    invoke-virtual {v1, p4}, Lcom/google/vr/sdk/widgets/video/deps/nj;->a(I)Z

    move-result v1

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 69
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->k:[Lcom/google/vr/sdk/widgets/video/deps/aa;

    aget-object v1, v1, p4

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/aa;->getTrackType()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    .line 70
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->f:Z

    goto :goto_4

    .line 71
    :cond_2
    invoke-virtual {p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/nh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    :cond_4
    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_5
    return-wide p1
.end method

.method public a(Z)J
    .locals 5

    .line 22
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->e:Z

    if-nez v0, :cond_0

    .line 23
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    return-wide v0

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->f:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ie;->d()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 26
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->d:J

    :cond_2
    return-wide v3
.end method

.method public a(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->e:Z

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ie;->b()Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/p;->b(F)Z

    .line 33
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/p;->a(JZ)J

    move-result-wide v0

    .line 34
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->n:J

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->n:J

    .line 35
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    invoke-virtual {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/q;->a(J)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    return-void
.end method

.method public b()J
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->n:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public b(J)J
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/p;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public b(F)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->l:Lcom/google/vr/sdk/widgets/video/deps/ni;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->k:[Lcom/google/vr/sdk/widgets/video/deps/aa;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ni;->a([Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/iw;)Lcom/google/vr/sdk/widgets/video/deps/nj;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->o:Lcom/google/vr/sdk/widgets/video/deps/nj;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/nj;->a(Lcom/google/vr/sdk/widgets/video/deps/nj;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 47
    :cond_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    .line 48
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/nh;->a()[Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 50
    invoke-interface {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a(F)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public c(J)V
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->e:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/p;->b(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ie;->a(J)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 5

    .line 19
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    .line 20
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ie;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()J
    .locals 2

    .line 29
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->e:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ie;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public d(J)V
    .locals 1

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/p;->b(J)J

    move-result-wide p1

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ie;->c(J)Z

    return-void
.end method

.method public e()V
    .locals 5

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/p;->a(Lcom/google/vr/sdk/widgets/video/deps/nj;)V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->e:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->m:Lcom/google/vr/sdk/widgets/video/deps/if;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/hu;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/hu;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/if;->a(Lcom/google/vr/sdk/widgets/video/deps/ie;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->m:Lcom/google/vr/sdk/widgets/video/deps/if;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/if;->a(Lcom/google/vr/sdk/widgets/video/deps/ie;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    .line 80
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
