.class public final Lcom/google/vr/sdk/widgets/video/deps/dd;
.super Ljava/lang/Object;
.source "AmrExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cr;


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cu;

.field private static final b:[I

.field private static final c:[I

.field private static final d:[B

.field private static final e:[B

.field private static final f:I


# instance fields
.field private final g:[B

.field private final h:I

.field private i:Z

.field private j:J

.field private k:I

.field private l:I

.field private m:Z

.field private n:J

.field private o:I

.field private p:I

.field private q:J

.field private r:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private s:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private t:Lcom/google/vr/sdk/widgets/video/deps/da;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/de;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/dd;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 102
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/vr/sdk/widgets/video/deps/dd;->b:[I

    new-array v0, v0, [I

    .line 103
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/dd;->c:[I

    const-string v1, "#!AMR\n"

    .line 104
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/vr/sdk/widgets/video/deps/dd;->d:[B

    const-string v1, "#!AMR-WB\n"

    .line 105
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/vr/sdk/widgets/video/deps/dd;->e:[B

    const/16 v1, 0x8

    .line 106
    aget v0, v0, v1

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/dd;->f:I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/dd;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->h:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->g:[B

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->o:I

    return-void
.end method

.method private a(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dd;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 79
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->i:Z

    if-eqz v1, :cond_0

    const-string v1, "WB"

    goto :goto_0

    :cond_0
    const-string v1, "NB"

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Illegal AMR "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " frame type "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->i:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/dd;->c:[I

    aget p1, v0, p1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/dd;->b:[I

    aget p1, v0, p1

    :goto_1
    return p1
.end method

.method private static a(IJ)I
    .locals 4

    mul-int/lit8 p0, p0, 0x8

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    .line 99
    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private a(J)Lcom/google/vr/sdk/widgets/video/deps/da;
    .locals 10

    .line 97
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->o:I

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dd;->a(IJ)I

    move-result v8

    .line 98
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cn;

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->n:J

    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->o:I

    move-object v3, v0

    move-wide v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/cn;-><init>(JJII)V

    return-object v0
.end method

.method private a(JI)V
    .locals 4

    .line 86
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->h:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->o:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->k:I

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->p:I

    const/16 v3, 0x14

    if-ge v0, v3, :cond_2

    if-ne p3, v2, :cond_4

    .line 93
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dd;->a(J)Lcom/google/vr/sdk/widgets/video/deps/da;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->t:Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 94
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->r:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    .line 95
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->m:Z

    goto :goto_1

    .line 89
    :cond_3
    :goto_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$b;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/da$b;-><init>(J)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->t:Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 90
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->r:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    .line 91
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->m:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cs;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 37
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 38
    array-length v0, p2

    new-array v0, v0, [B

    .line 39
    array-length v1, p2

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 40
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method static final synthetic a()[Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 100
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dd;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/dd;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b()V
    .locals 14

    .line 41
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->u:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->u:Z

    .line 43
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->i:Z

    if-eqz v0, :cond_0

    const-string v1, "audio/amr-wb"

    goto :goto_0

    :cond_0
    const-string v1, "audio/3gpp"

    :goto_0
    move-object v3, v1

    if-eqz v0, :cond_1

    const/16 v0, 0x3e80

    const/16 v8, 0x3e80

    goto :goto_1

    :cond_1
    const/16 v0, 0x1f40

    const/16 v8, 0x1f40

    .line 45
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->s:Lcom/google/vr/sdk/widgets/video/deps/dc;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    sget v6, Lcom/google/vr/sdk/widgets/video/deps/dd;->f:I

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 46
    invoke-static/range {v2 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v1

    .line 47
    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    :cond_2
    return-void
.end method

.method private b(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 82
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dd;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dd;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/dd;->d:[B

    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dd;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 29
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->i:Z

    .line 30
    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    return v3

    .line 32
    :cond_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/dd;->e:[B

    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dd;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->i:Z

    .line 34
    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    return v3

    :cond_1
    return v2
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/cs;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 49
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->l:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_1

    .line 50
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dd;->d(Lcom/google/vr/sdk/widgets/video/deps/cs;)I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->k:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->l:I

    .line 55
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->o:I

    if-ne v0, v2, :cond_0

    .line 56
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->n:J

    .line 57
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->k:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->o:I

    .line 58
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->o:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->k:I

    if-ne v0, v3, :cond_1

    .line 59
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->p:I

    goto :goto_0

    :catch_0
    return v2

    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->s:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->l:I

    .line 61
    invoke-interface {v0, p1, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I

    move-result p1

    if-ne p1, v2, :cond_2

    return v2

    .line 64
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->l:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->l:I

    const/4 p1, 0x0

    if-lez v0, :cond_3

    return p1

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->s:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->q:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->j:J

    add-long/2addr v2, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->k:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    .line 68
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->j:J

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->j:J

    return p1
.end method

.method private c(I)Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->i:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/16 v0, 0xd

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/cs;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->g:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 72
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->g:[B

    aget-byte p1, p1, v1

    and-int/lit16 v0, p1, 0x83

    if-gtz v0, :cond_0

    shr-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, 0xf

    .line 76
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dd;->a(I)I

    move-result p1

    return p1

    .line 74
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/s;

    const/16 v1, 0x2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid padding bits for frame header "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(I)Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->i:Z

    if-nez v0, :cond_1

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 13
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 14
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dd;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string p2, "Could not find AMR header."

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/dd;->b()V

    .line 17
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dd;->c(Lcom/google/vr/sdk/widgets/video/deps/cs;)I

    move-result p2

    .line 18
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dd;->a(JI)V

    return p2
.end method

.method public a(JJ)V
    .locals 2

    const-wide/16 p3, 0x0

    .line 20
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->j:J

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->k:I

    .line 22
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->l:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->t:Lcom/google/vr/sdk/widgets/video/deps/da;

    instance-of v1, v0, Lcom/google/vr/sdk/widgets/video/deps/cn;

    if-eqz v1, :cond_0

    .line 24
    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/cn;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cn;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->q:J

    goto :goto_0

    .line 25
    :cond_0
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->q:J

    :goto_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V
    .locals 2

    .line 9
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->r:Lcom/google/vr/sdk/widgets/video/deps/ct;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 10
    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dd;->s:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 11
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dd;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
