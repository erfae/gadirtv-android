.class public final Lcom/google/vr/sdk/widgets/video/deps/dg;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cr;


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cu;

.field private static final b:I


# instance fields
.field private final c:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/di;

.field private h:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private i:I

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:Z

.field private p:Lcom/google/vr/sdk/widgets/video/deps/df;

.field private q:Lcom/google/vr/sdk/widgets/video/deps/dk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/dg;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    const-string v0, "FLV"

    .line 108
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/dg;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/di;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/di;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->g:Lcom/google/vr/sdk/widgets/video/deps/di;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->i:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->j:J

    return-void
.end method

.method static final synthetic a()[Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 106
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dg;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/dg;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b()V
    .locals 5

    .line 99
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->o:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->h:Lcom/google/vr/sdk/widgets/video/deps/ct;

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/da$b;

    invoke-direct {v3, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/da$b;-><init>(J)V

    invoke-interface {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->o:Z

    .line 102
    :cond_0
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->j:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->g:Lcom/google/vr/sdk/widgets/video/deps/di;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/di;->a()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->n:J

    neg-long v0, v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->j:J

    :cond_2
    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 46
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 47
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result p1

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v4, :cond_3

    .line 50
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->p:Lcom/google/vr/sdk/widgets/video/deps/df;

    if-nez p1, :cond_3

    .line 51
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/df;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->h:Lcom/google/vr/sdk/widgets/video/deps/ct;

    const/16 v5, 0x8

    .line 52
    invoke-interface {v4, v5, v3}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/df;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->p:Lcom/google/vr/sdk/widgets/video/deps/df;

    :cond_3
    const/4 p1, 0x2

    if-eqz v1, :cond_4

    .line 53
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->q:Lcom/google/vr/sdk/widgets/video/deps/dk;

    if-nez v1, :cond_4

    .line 54
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dk;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->h:Lcom/google/vr/sdk/widgets/video/deps/ct;

    .line 55
    invoke-interface {v4, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/dk;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->q:Lcom/google/vr/sdk/widgets/video/deps/dk;

    .line 56
    :cond_4
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->h:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    .line 57
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->k:I

    .line 58
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->i:I

    return v3
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/cs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->k:I

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->k:I

    const/4 p1, 0x3

    .line 62
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->i:I

    return-void
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 67
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->l:I

    .line 68
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->l()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->m:I

    .line 69
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->l()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->n:J

    .line 70
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v0, p1

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->n:J

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->n:J

    .line 71
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    const/4 p1, 0x4

    .line 72
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->i:I

    return v3
.end method

.method private e(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 75
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->l:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->p:Lcom/google/vr/sdk/widgets/video/deps/df;

    if-eqz v2, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/dg;->b()V

    .line 77
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->p:Lcom/google/vr/sdk/widgets/video/deps/df;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dg;->f(Lcom/google/vr/sdk/widgets/video/deps/cs;)Lcom/google/vr/sdk/widgets/video/deps/pe;

    move-result-object p1

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->j:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->n:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/df;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;J)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->q:Lcom/google/vr/sdk/widgets/video/deps/dk;

    if-eqz v2, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/dg;->b()V

    .line 80
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->q:Lcom/google/vr/sdk/widgets/video/deps/dk;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dg;->f(Lcom/google/vr/sdk/widgets/video/deps/cs;)Lcom/google/vr/sdk/widgets/video/deps/pe;

    move-result-object p1

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->j:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->n:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dk;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;J)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x12

    if-ne v0, v2, :cond_2

    .line 81
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->o:Z

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->g:Lcom/google/vr/sdk/widgets/video/deps/di;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dg;->f(Lcom/google/vr/sdk/widgets/video/deps/cs;)Lcom/google/vr/sdk/widgets/video/deps/pe;

    move-result-object p1

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->n:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/di;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;J)V

    .line 83
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->g:Lcom/google/vr/sdk/widgets/video/deps/di;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/di;->a()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    .line 85
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->h:Lcom/google/vr/sdk/widgets/video/deps/ct;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/da$b;

    invoke-direct {v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/da$b;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    .line 86
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->o:Z

    goto :goto_0

    .line 88
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->m:I

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    const/4 v1, 0x0

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 90
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->k:I

    const/4 p1, 0x2

    .line 91
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->i:I

    return v1
.end method

.method private f(Lcom/google/vr/sdk/widgets/video/deps/cs;)Lcom/google/vr/sdk/widgets/video/deps/pe;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 93
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->m:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->e()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->e()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->m:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->m:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    .line 97
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->m:I

    invoke-interface {p1, v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 98
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 33
    :cond_0
    :goto_0
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->i:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 40
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dg;->e(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 38
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dg;->d(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    .line 36
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dg;->c(Lcom/google/vr/sdk/widgets/video/deps/cs;)V

    goto :goto_0

    .line 34
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dg;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x1

    .line 28
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->i:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->j:J

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->k:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->h:Lcom/google/vr/sdk/widgets/video/deps/ct;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->l()I

    move-result v0

    sget v2, Lcom/google/vr/sdk/widgets/video/deps/dg;->b:I

    if-eq v0, v2, :cond_0

    return v1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    .line 21
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 22
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 24
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 25
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dg;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public c()V
    .locals 0

    return-void
.end method
