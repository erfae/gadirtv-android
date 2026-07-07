.class public final Lcom/google/vr/sdk/widgets/video/deps/dt;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dt$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cu;

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:I

.field private final f:J

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/cy;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/cv;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/cx;

.field private k:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private l:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private m:I

.field private n:Lcom/google/vr/sdk/widgets/video/deps/gp;

.field private o:Lcom/google/vr/sdk/widgets/video/deps/dt$a;

.field private p:J

.field private q:J

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/du;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    const-string v0, "Xing"

    .line 155
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->b:I

    const-string v0, "Info"

    .line 156
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->c:I

    const-string v0, "VBRI"

    .line 157
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/dt;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dt;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->e:I

    .line 7
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->f:J

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cy;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/cy;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cv;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/cv;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->i:Lcom/google/vr/sdk/widgets/video/deps/cv;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->p:J

    .line 12
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cx;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/cx;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->j:Lcom/google/vr/sdk/widgets/video/deps/cx;

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)I
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 145
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result p1

    .line 146
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->b:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->c:I

    if-ne p1, v0, :cond_1

    :cond_0
    return p1

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    const/16 p1, 0x24

    .line 149
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 150
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result p0

    sget p1, Lcom/google/vr/sdk/widgets/video/deps/dt;->d:I

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static a(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cs;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/16 v0, 0x4000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    .line 75
    :goto_0
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 76
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_5

    .line 77
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->e:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 78
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/cv;->a:Lcom/google/vr/sdk/widgets/video/deps/he$a;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 79
    :goto_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->j:Lcom/google/vr/sdk/widgets/video/deps/cx;

    invoke-virtual {v2, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/cx;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/he$a;)Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->n:Lcom/google/vr/sdk/widgets/video/deps/gp;

    if-eqz v1, :cond_3

    .line 81
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->i:Lcom/google/vr/sdk/widgets/video/deps/cv;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cv;->a(Lcom/google/vr/sdk/widgets/video/deps/gp;)Z

    .line 82
    :cond_3
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b()J

    move-result-wide v1

    long-to-int v2, v1

    if-nez p2, :cond_4

    .line 84
    invoke-interface {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 85
    :goto_4
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    if-lez v1, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    const/4 v9, 0x4

    invoke-interface {p1, v7, v6, v9, v8}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BIIZ)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_7

    .line 87
    :cond_7
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v7, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 88
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v7}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v7

    if-eqz v3, :cond_8

    int-to-long v10, v3

    .line 90
    invoke-static {v7, v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/dt;->a(IJ)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 91
    :cond_8
    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/cy;->a(I)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_d

    :cond_9
    add-int/lit8 v1, v4, 0x1

    if-ne v4, v0, :cond_b

    if-eqz p2, :cond_a

    return v6

    .line 94
    :cond_a
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-eqz p2, :cond_c

    .line 99
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    add-int v3, v2, v1

    .line 100
    invoke-interface {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    goto :goto_6

    .line 101
    :cond_c
    invoke-interface {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    :goto_6
    move v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_4

    :cond_d
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v5, :cond_e

    .line 104
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    invoke-static {v7, v3}, Lcom/google/vr/sdk/widgets/video/deps/cy;->a(ILcom/google/vr/sdk/widgets/video/deps/cy;)Z

    move v3, v7

    goto :goto_9

    :cond_e
    if-ne v1, v9, :cond_10

    :goto_7
    if-eqz p2, :cond_f

    add-int/2addr v2, v4

    .line 111
    invoke-interface {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    goto :goto_8

    .line 112
    :cond_f
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 113
    :goto_8
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->m:I

    return v5

    :cond_10
    :goto_9
    add-int/lit8 v8, v8, -0x4

    .line 108
    invoke-interface {p1, v8}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    goto :goto_4
.end method

.method static final synthetic a()[Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 153
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dt;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/dt;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 41
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->r:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 42
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v4, 0x4

    invoke-interface {p1, v0, v3, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    .line 47
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->m:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/dt;->a(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cy;->a(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    invoke-static {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/cy;->a(ILcom/google/vr/sdk/widgets/video/deps/cy;)Z

    .line 53
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->p:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->o:Lcom/google/vr/sdk/widgets/video/deps/dt$a;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/dt$a;->c(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->p:J

    .line 55
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->f:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->o:Lcom/google/vr/sdk/widgets/video/deps/dt$a;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/dt$a;->c(J)J

    move-result-wide v4

    .line 57
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->p:J

    iget-wide v8, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->f:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->p:J

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cy;->c:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->r:I

    goto :goto_1

    .line 49
    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 50
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->m:I

    return v3

    .line 59
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->l:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->r:I

    invoke-interface {v0, p1, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I

    move-result p1

    if-ne p1, v2, :cond_5

    return v2

    .line 62
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->r:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->r:I

    if-lez v0, :cond_6

    return v3

    .line 65
    :cond_6
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->p:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->q:J

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cy;->d:I

    int-to-long v6, p1

    div-long/2addr v4, v6

    add-long v7, v0, v4

    .line 66
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->l:Lcom/google/vr/sdk/widgets/video/deps/dc;

    const/4 v9, 0x1

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v10, p1, Lcom/google/vr/sdk/widgets/video/deps/cy;->c:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    .line 67
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->q:J

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cy;->g:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->q:J

    .line 68
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->r:I

    return v3
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/cs;)Lcom/google/vr/sdk/widgets/video/deps/dt$a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 115
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cy;->c:I

    invoke-direct {v5, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    .line 116
    iget-object v0, v5, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cy;->c:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 117
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cy;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x15

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cy;->e:I

    if-eq v0, v1, :cond_1

    const/16 v2, 0x24

    const/16 v7, 0x24

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cy;->e:I

    if-eq v0, v1, :cond_2

    :cond_1
    const/16 v7, 0x15

    goto :goto_0

    :cond_2
    const/16 v2, 0xd

    const/16 v7, 0xd

    .line 120
    :goto_0
    invoke-static {v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/dt;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)I

    move-result v8

    .line 121
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->b:I

    if-eq v8, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->c:I

    if-ne v8, v0, :cond_3

    goto :goto_1

    .line 132
    :cond_3
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->d:I

    if-ne v8, v0, :cond_4

    .line 133
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dv;->a(JJLcom/google/vr/sdk/widgets/video/deps/cy;Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/dv;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cy;->c:I

    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 136
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    goto :goto_2

    .line 122
    :cond_5
    :goto_1
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dw;->a(JJLcom/google/vr/sdk/widgets/video/deps/cy;Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/dw;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 123
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->i:Lcom/google/vr/sdk/widgets/video/deps/cv;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/cv;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 124
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    add-int/lit16 v7, v7, 0x8d

    .line 125
    invoke-interface {p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    .line 126
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v2, 0x3

    invoke-interface {p1, v1, v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 127
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 128
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->i:Lcom/google/vr/sdk/widgets/video/deps/cv;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cv;->a(I)Z

    .line 129
    :cond_6
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cy;->c:I

    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    if-eqz v0, :cond_7

    .line 130
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/dt$a;->a()Z

    move-result v1

    if-nez v1, :cond_7

    sget v1, Lcom/google/vr/sdk/widgets/video/deps/dt;->c:I

    if-ne v8, v1, :cond_7

    .line 131
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dt;->d(Lcom/google/vr/sdk/widgets/video/deps/cs;)Lcom/google/vr/sdk/widgets/video/deps/dt$a;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_2
    return-object v0
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/cs;)Lcom/google/vr/sdk/widgets/video/deps/dt$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 139
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 140
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cy;->a(ILcom/google/vr/sdk/widgets/video/deps/cy;)Z

    .line 141
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ds;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/ds;-><init>(JJLcom/google/vr/sdk/widgets/video/deps/cy;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 25
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->m:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 26
    :try_start_0
    invoke-direct {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dt;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    return v1

    :cond_0
    move-object/from16 v2, p1

    .line 30
    :goto_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->o:Lcom/google/vr/sdk/widgets/video/deps/dt$a;

    if-nez v1, :cond_4

    .line 31
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dt;->c(Lcom/google/vr/sdk/widgets/video/deps/cs;)Lcom/google/vr/sdk/widgets/video/deps/dt$a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->o:Lcom/google/vr/sdk/widgets/video/deps/dt$a;

    if-eqz v1, :cond_1

    .line 33
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/dt$a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->e:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 34
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dt;->d(Lcom/google/vr/sdk/widgets/video/deps/cs;)Lcom/google/vr/sdk/widgets/video/deps/dt$a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->o:Lcom/google/vr/sdk/widgets/video/deps/dt$a;

    .line 35
    :cond_2
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->k:Lcom/google/vr/sdk/widgets/video/deps/ct;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->o:Lcom/google/vr/sdk/widgets/video/deps/dt$a;

    invoke-interface {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    .line 36
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->l:Lcom/google/vr/sdk/widgets/video/deps/dc;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/cy;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x1000

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v8, v8, Lcom/google/vr/sdk/widgets/video/deps/cy;->e:I

    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->h:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v9, v9, Lcom/google/vr/sdk/widgets/video/deps/cy;->d:I

    const/4 v10, -0x1

    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->i:Lcom/google/vr/sdk/widgets/video/deps/cv;

    iget v11, v11, Lcom/google/vr/sdk/widgets/video/deps/cv;->b:I

    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->i:Lcom/google/vr/sdk/widgets/video/deps/cv;

    iget v12, v12, Lcom/google/vr/sdk/widgets/video/deps/cv;->c:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 37
    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->e:I

    and-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_3

    const/4 v15, 0x0

    goto :goto_1

    :cond_3
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/dt;->n:Lcom/google/vr/sdk/widgets/video/deps/gp;

    :goto_1
    move-object/from16 v17, v15

    const/4 v15, 0x0

    .line 38
    invoke-static/range {v3 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/gp;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v3

    .line 39
    invoke-interface {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 40
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dt;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)I

    move-result v1

    return v1
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->m:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->p:J

    const-wide/16 p2, 0x0

    .line 21
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->q:J

    .line 22
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->r:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V
    .locals 2

    .line 15
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->k:Lcom/google/vr/sdk/widgets/video/deps/ct;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 16
    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->l:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 17
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dt;->k:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dt;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Z)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
