.class public final Lcom/google/vr/sdk/widgets/video/deps/fo;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fi;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/cy;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:J

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->f:I

    .line 5
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 6
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cy;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cy;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->b:Lcom/google/vr/sdk/widgets/video/deps/cy;

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->c:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 8

    .line 31
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 32
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v1

    .line 33
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 35
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 36
    :goto_1
    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->i:Z

    if-eqz v4, :cond_1

    aget-byte v4, v0, v1

    const/16 v7, 0xe0

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 37
    :goto_2
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->i:Z

    if-eqz v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 39
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 40
    iput-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->i:Z

    .line 41
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    aget-byte v0, v0, v1

    aput-byte v0, p1, v6

    const/4 p1, 0x2

    .line 42
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->g:I

    .line 43
    iput v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->f:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 20

    move-object/from16 v0, p0

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v1

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->g:I

    const/4 v3, 0x4

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 49
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->g:I

    move-object/from16 v5, p1

    invoke-virtual {v5, v2, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 50
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->g:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->g:I

    if-ge v2, v3, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 54
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->b:Lcom/google/vr/sdk/widgets/video/deps/cy;

    invoke-static {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/cy;->a(ILcom/google/vr/sdk/widgets/video/deps/cy;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 56
    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->g:I

    .line 57
    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->f:I

    return-void

    .line 59
    :cond_1
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->b:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cy;->c:I

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->k:I

    .line 60
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->h:Z

    if-nez v1, :cond_2

    const-wide/32 v5, 0xf4240

    .line 61
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->b:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cy;->g:I

    int-to-long v7, v1

    mul-long v7, v7, v5

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->b:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cy;->d:I

    int-to-long v5, v1

    div-long/2addr v7, v5

    iput-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->j:J

    .line 62
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->b:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget-object v10, v1, Lcom/google/vr/sdk/widgets/video/deps/cy;->b:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/16 v13, 0x1000

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->b:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v14, v1, Lcom/google/vr/sdk/widgets/video/deps/cy;->e:I

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->b:Lcom/google/vr/sdk/widgets/video/deps/cy;

    iget v15, v1, Lcom/google/vr/sdk/widgets/video/deps/cy;->d:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->c:Ljava/lang/String;

    move-object/from16 v19, v1

    invoke-static/range {v9 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v1

    .line 63
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 64
    iput-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->h:Z

    .line 65
    :cond_2
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 66
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    const/4 v1, 0x2

    .line 67
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fo;->f:I

    return-void
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 7

    .line 69
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->k:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 71
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->g:I

    .line 72
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->k:I

    if-ge p1, v4, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->l:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    .line 75
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->l:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->l:J

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->g:I

    .line 77
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->f:I

    .line 11
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->g:I

    .line 12
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->i:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->l:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V
    .locals 1

    .line 14
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->a()V

    .line 15
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->e:Lcom/google/vr/sdk/widgets/video/deps/dc;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 2

    .line 20
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    if-lez v0, :cond_3

    .line 21
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fo;->f:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fo;->d(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 24
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fo;->c(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    goto :goto_0

    .line 22
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fo;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
