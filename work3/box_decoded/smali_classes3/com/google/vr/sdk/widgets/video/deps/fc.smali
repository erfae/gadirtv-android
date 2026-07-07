.class public final Lcom/google/vr/sdk/widgets/video/deps/fc;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cr;


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cu;

.field private static final b:I


# instance fields
.field private final c:I

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/fe;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/pd;

.field private final h:J

.field private i:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private j:J

.field private k:J

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/fd;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/fc;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    const-string v0, "ID3"

    .line 130
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/fc;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fc;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fc;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->h:J

    .line 7
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->j:J

    .line 8
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->c:I

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fe;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fe;-><init>(Z)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->d:Lcom/google/vr/sdk/widgets/video/deps/fe;

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 p2, 0x800

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->l:I

    const-wide/16 p1, -0x1

    .line 12
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->k:J

    .line 13
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 14
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/pd;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;-><init>([B)V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->g:Lcom/google/vr/sdk/widgets/video/deps/pd;

    return-void
.end method

.method private static a(IJ)I
    .locals 4

    mul-int/lit8 p0, p0, 0x8

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    .line 127
    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private a(J)Lcom/google/vr/sdk/widgets/video/deps/da;
    .locals 10

    .line 125
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->l:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->d:Lcom/google/vr/sdk/widgets/video/deps/fe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fe;->c()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fc;->a(IJ)I

    move-result v8

    .line 126
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cn;

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->k:J

    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->l:I

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/cn;-><init>(JJII)V

    return-object v0
.end method

.method private a(JZZ)V
    .locals 6

    .line 80
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 82
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->l:I

    if-lez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p3, :cond_2

    .line 83
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->d:Lcom/google/vr/sdk/widgets/video/deps/fe;

    .line 84
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/fe;->c()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_2

    if-nez p4, :cond_2

    return-void

    .line 86
    :cond_2
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->i:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-static {p4}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/vr/sdk/widgets/video/deps/ct;

    if-eqz p3, :cond_3

    .line 87
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->d:Lcom/google/vr/sdk/widgets/video/deps/fe;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/fe;->c()J

    move-result-wide v3

    cmp-long p3, v3, v1

    if-eqz p3, :cond_3

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fc;->a(J)Lcom/google/vr/sdk/widgets/video/deps/da;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    goto :goto_1

    .line 89
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$b;

    invoke-direct {p1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/da$b;-><init>(J)V

    invoke-interface {p4, p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    .line 90
    :goto_1
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->o:Z

    return-void
.end method

.method static final synthetic a()[Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 128
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/fc;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/fc;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/16 v3, 0xa

    invoke-interface {p1, v2, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 67
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 68
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->l()I

    move-result v2

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/fc;->b:I

    if-eq v2, v3, :cond_1

    .line 75
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 76
    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    .line 77
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->k:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    int-to-long v2, v1

    .line 78
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->k:J

    :cond_0
    return v1

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 71
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->u()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 73
    invoke-interface {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    goto :goto_0
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/cs;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 92
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->l:I

    .line 95
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 96
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 97
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fc;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)I

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    :cond_2
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-interface {p1, v5, v1, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BIIZ)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 101
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 102
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v5

    .line 103
    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 106
    :cond_3
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v6, 0x4

    invoke-interface {p1, v5, v1, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BIIZ)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 108
    :cond_4
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->g:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a(I)V

    .line 109
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->g:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_6

    int-to-long v8, v5

    add-long/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x3e8

    if-ne v2, v6, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, -0x6

    .line 116
    invoke-interface {p1, v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(IZ)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_0
    goto :goto_1

    .line 111
    :cond_6
    iput-boolean v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->m:Z

    .line 112
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v0, "Malformed ADTS stream"

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    move v1, v2

    .line 119
    :goto_2
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    if-lez v1, :cond_8

    int-to-long v0, v1

    .line 121
    div-long/2addr v3, v0

    long-to-int p1, v3

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->l:I

    goto :goto_3

    .line 122
    :cond_8
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->l:I

    .line 123
    :goto_3
    iput-boolean v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->m:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v0

    .line 50
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->c:I

    const/4 v2, 0x1

    and-int/2addr p2, v2

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    const-wide/16 v4, -0x1

    cmp-long p2, v0, v4

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 52
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fc;->c(Lcom/google/vr/sdk/widgets/video/deps/cs;)V

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/16 v5, 0x800

    invoke-interface {p1, v4, v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a([BII)I

    move-result p1

    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 55
    :goto_1
    invoke-direct {p0, v0, v1, p2, v5}, Lcom/google/vr/sdk/widgets/video/deps/fc;->a(JZZ)V

    if-eqz v5, :cond_3

    return v4

    .line 58
    :cond_3
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 59
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    .line 60
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->n:Z

    if-nez p1, :cond_4

    .line 61
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->d:Lcom/google/vr/sdk/widgets/video/deps/fe;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->j:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(JZ)V

    .line 62
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->n:Z

    .line 63
    :cond_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->d:Lcom/google/vr/sdk/widgets/video/deps/fe;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    return v3
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->n:Z

    .line 45
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->d:Lcom/google/vr/sdk/widgets/video/deps/fe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a()V

    .line 46
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->h:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->j:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V
    .locals 4

    .line 40
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->i:Lcom/google/vr/sdk/widgets/video/deps/ct;

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->d:Lcom/google/vr/sdk/widgets/video/deps/fe;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/gd$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V

    .line 42
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fc;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 20
    :goto_1
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v6, 0x2

    invoke-interface {p1, v5, v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 21
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 22
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v5

    .line 23
    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 26
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    add-int/lit8 v3, v3, 0x1

    sub-int v2, v3, v0

    const/16 v4, 0x2000

    if-lt v2, v4, :cond_0

    return v1

    .line 29
    :cond_0
    invoke-interface {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_2

    const/16 v7, 0xbc

    if-le v4, v7, :cond_2

    return v5

    .line 32
    :cond_2
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->f:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v5, v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 33
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->g:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a(I)V

    .line 34
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fc;->g:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v6, v5, -0x6

    .line 37
    invoke-interface {p1, v6}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    add-int/2addr v4, v5

    goto :goto_1
.end method

.method public c()V
    .locals 0

    return-void
.end method
