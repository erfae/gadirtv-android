.class public final Lcom/google/vr/sdk/widgets/video/deps/fe;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fi;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Z

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/pd;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private h:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:J

.field private s:I

.field private t:J

.field private u:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 188
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/fe;->a:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fe;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;-><init>([B)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/fe;->a:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 6
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->e()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->n:I

    .line 8
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->o:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->r:J

    .line 10
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->b:Z

    .line 11
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/dc;JII)V
    .locals 1

    const/4 v0, 0x4

    .line 60
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->i:I

    .line 61
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->j:I

    .line 62
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->u:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 63
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->v:J

    .line 64
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->s:I

    return-void
.end method

.method private a(BB)Z
    .locals 0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    .line 143
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(I)Z

    move-result p1

    return p1
.end method

.method public static a(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Z
    .locals 7

    add-int/lit8 v0, p2, 0x1

    .line 117
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 118
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pd;->a:[B

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fe;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a(I)V

    .line 121
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v0

    .line 122
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->n:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-eq v0, v4, :cond_1

    return v2

    .line 124
    :cond_1
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->o:I

    if-eq v4, v5, :cond_4

    .line 125
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/pd;->a:[B

    invoke-direct {p0, p1, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/fe;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    .line 127
    :cond_2
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a(I)V

    .line 128
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v4

    .line 129
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->o:I

    if-eq v4, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, p2, 0x2

    .line 131
    invoke-virtual {p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 132
    :cond_4
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/pd;->a:[B

    invoke-direct {p0, p1, v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/fe;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    .line 134
    :cond_5
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a(I)V

    .line 135
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_6

    return v2

    :cond_6
    add-int/2addr p2, v3

    add-int/lit8 v3, p2, 0x1

    .line 139
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v4

    if-lt v3, v4, :cond_7

    return v1

    .line 141
    :cond_7
    iget-object v4, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte p2, v4, p2

    iget-object v4, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v4, v4, v3

    invoke-direct {p0, p2, v4}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(BB)Z

    move-result p2

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->n:I

    if-eq p2, v5, :cond_9

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte p1, p1, v3

    and-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x3

    if-ne p1, v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_0
    return v1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z
    .locals 2

    .line 47
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->j:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 48
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->j:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 49
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->j:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 7

    .line 72
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 73
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v1

    .line 74
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_9

    add-int/lit8 v3, v1, 0x1

    .line 76
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 77
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->k:I

    const/16 v5, 0x200

    if-ne v4, v5, :cond_3

    int-to-byte v4, v1

    const/4 v6, -0x1

    invoke-direct {p0, v6, v4}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(BB)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 78
    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->m:Z

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, -0x2

    .line 79
    invoke-direct {p0, p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    and-int/lit8 v0, v1, 0x8

    shr-int/lit8 v0, v0, 0x3

    .line 80
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->p:I

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 81
    :goto_1
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->l:Z

    .line 82
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->m:Z

    if-nez v0, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->h()V

    goto :goto_2

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->g()V

    .line 85
    :goto_2
    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-void

    .line 87
    :cond_3
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->k:I

    or-int/2addr v1, v4

    const/16 v6, 0x149

    if-eq v1, v6, :cond_7

    const/16 v6, 0x1ff

    if-eq v1, v6, :cond_6

    const/16 v5, 0x344

    if-eq v1, v5, :cond_5

    const/16 v5, 0x433

    if-eq v1, v5, :cond_4

    const/16 v1, 0x100

    if-eq v4, v1, :cond_8

    .line 98
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->k:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 94
    :cond_4
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->f()V

    .line 95
    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-void

    :cond_5
    const/16 v1, 0x400

    .line 92
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->k:I

    goto :goto_3

    .line 88
    :cond_6
    iput v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->k:I

    goto :goto_3

    :cond_7
    const/16 v1, 0x300

    .line 90
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->k:I

    :cond_8
    :goto_3
    move v1, v3

    goto :goto_0

    .line 101
    :cond_9
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z
    .locals 2

    .line 144
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_0

    return v1

    .line 146
    :cond_0
    invoke-virtual {p1, p2, v1, p3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    const/4 p1, 0x1

    return p1
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 3

    .line 103
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pd;->a:[B

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result p1

    aget-byte p1, v2, p1

    aput-byte p1, v0, v1

    .line 106
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a(I)V

    .line 107
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result p1

    .line 108
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->d()V

    return-void

    .line 111
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->m:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->m:Z

    .line 113
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->p:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->n:I

    .line 114
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->o:I

    .line 115
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->g()V

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->m:Z

    .line 45
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->e()V

    return-void
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 7

    .line 180
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->s:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->j:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->u:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 182
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->j:I

    .line 183
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->s:I

    if-ne p1, v4, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->u:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->t:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    .line 185
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->t:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->v:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->t:J

    .line 186
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->e()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->i:I

    .line 52
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->j:I

    const/16 v0, 0x100

    .line 53
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->k:I

    return-void
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x2

    .line 55
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->i:I

    .line 56
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/fe;->a:[B

    array-length v0, v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->j:I

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->s:I

    .line 58
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x3

    .line 66
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->i:I

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->j:I

    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->i:I

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->j:I

    return-void
.end method

.method private i()V
    .locals 9

    .line 148
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->h:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 149
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 150
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->h:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 151
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->u()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    .line 152
    invoke-direct/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;JII)V

    return-void
.end method

.method private j()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 154
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a(I)V

    .line 155
    iget-boolean v0, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->q:Z

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 156
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-eq v0, v2, :cond_0

    const/16 v4, 0x3d

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Detected audio object type: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdtsReader"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 160
    :cond_0
    iget-object v4, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 161
    iget-object v4, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v4

    .line 162
    iget v5, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->o:I

    .line 163
    invoke-static {v0, v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/or;->a(III)[B

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/or;->a([B)Landroid/util/Pair;

    move-result-object v4

    .line 165
    iget-object v7, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->f:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 166
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 167
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->e:Ljava/lang/String;

    const-string v8, "audio/mp4a-latm"

    move-object/from16 v17, v0

    .line 168
    invoke-static/range {v7 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    .line 169
    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    int-to-long v7, v7

    div-long/2addr v4, v7

    iput-wide v4, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->r:J

    .line 170
    iget-object v4, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->g:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v4, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 171
    iput-boolean v3, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->q:Z

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 174
    :goto_0
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 175
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 176
    iget-boolean v1, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->l:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x2

    :cond_2
    move v5, v0

    .line 178
    iget-object v1, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->g:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-wide v2, v6, Lcom/google/vr/sdk/widgets/video/deps/fe;->r:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;JII)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->d()V

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->t:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V
    .locals 3

    .line 16
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->a()V

    .line 17
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->f:Ljava/lang/String;

    .line 18
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->g:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 19
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->b:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->a()V

    .line 21
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->b()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->h:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 22
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->c()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const-string v1, "application/id3"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cq;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/cq;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->h:Lcom/google/vr/sdk/widgets/video/deps/dc;

    :goto_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    if-lez v0, :cond_7

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->i:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 38
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fe;->d(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 35
    :cond_2
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->l:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    .line 36
    :goto_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pd;->a:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->j()V

    goto :goto_0

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->d:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fe;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fe;->i()V

    goto :goto_0

    .line 33
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fe;->c(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    goto :goto_0

    .line 29
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fe;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe;->r:J

    return-wide v0
.end method
