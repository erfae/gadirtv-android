.class public final Lcom/google/vr/sdk/widgets/video/deps/fn;
.super Ljava/lang/Object;
.source "LatmReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fi;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/pd;

.field private d:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private e:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:J

.field private r:I

.field private s:J

.field private t:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pd;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;-><init>([B)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    .line 135
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a([B)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->l:Z

    .line 44
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fn;->b(Lcom/google/vr/sdk/widgets/video/deps/pd;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->l:Z

    if-nez v0, :cond_1

    return-void

    .line 47
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->m:I

    if-nez v0, :cond_4

    .line 48
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->n:I

    if-nez v0, :cond_3

    .line 50
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fn;->e(Lcom/google/vr/sdk/widgets/video/deps/pd;)I

    move-result v0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fn;->a(Lcom/google/vr/sdk/widgets/video/deps/pd;I)V

    .line 52
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->p:Z

    if-eqz v0, :cond_2

    .line 53
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->q:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    :cond_2
    return-void

    .line 49
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>()V

    throw p1

    .line 55
    :cond_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>()V

    throw p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pd;I)V
    .locals 8

    .line 125
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    mul-int/lit8 v1, p2, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a([BII)V

    .line 129
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 130
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->d:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {p1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 131
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->d:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->k:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    .line 132
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->k:J

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->s:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->k:J

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/pd;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 57
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_0

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->m:I

    if-nez v5, :cond_9

    if-ne v3, v2, :cond_1

    .line 61
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/fn;->f(Lcom/google/vr/sdk/widgets/video/deps/pd;)J

    .line 62
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x6

    .line 64
    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v5

    iput v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->n:I

    const/4 v5, 0x4

    .line 65
    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v5

    const/4 v6, 0x3

    .line 66
    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v6

    if-nez v5, :cond_7

    if-nez v6, :cond_7

    const/16 v5, 0x8

    if-nez v3, :cond_2

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b()I

    move-result v6

    .line 71
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/fn;->d(Lcom/google/vr/sdk/widgets/video/deps/pd;)I

    move-result v7

    .line 72
    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a(I)V

    add-int/lit8 v6, v7, 0x7

    .line 73
    div-int/2addr v6, v5

    new-array v6, v6, [B

    .line 74
    invoke-virtual {v1, v6, v4, v7}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a([BII)V

    .line 75
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->f:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->t:I

    iget v14, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->r:I

    .line 76
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->a:Ljava/lang/String;

    const-string v9, "audio/mp4a-latm"

    move-object/from16 v18, v4

    .line 77
    invoke-static/range {v8 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v4

    .line 78
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->e:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/l;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 79
    iput-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->e:Lcom/google/vr/sdk/widgets/video/deps/l;

    const-wide/32 v6, 0x3d090000

    .line 80
    iget v8, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    int-to-long v8, v8

    div-long/2addr v6, v8

    iput-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->s:J

    .line 81
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->d:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v6, v4}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    goto :goto_1

    .line 83
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/fn;->f(Lcom/google/vr/sdk/widgets/video/deps/pd;)J

    move-result-wide v6

    long-to-int v4, v6

    .line 84
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/fn;->d(Lcom/google/vr/sdk/widgets/video/deps/pd;)I

    move-result v6

    sub-int/2addr v4, v6

    .line 85
    invoke-virtual {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 86
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/fn;->c(Lcom/google/vr/sdk/widgets/video/deps/pd;)V

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->p:Z

    const-wide/16 v6, 0x0

    .line 88
    iput-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->q:J

    if-eqz v4, :cond_5

    if-ne v3, v2, :cond_4

    .line 91
    invoke-static/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/fn;->f(Lcom/google/vr/sdk/widgets/video/deps/pd;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->q:J

    goto :goto_2

    .line 92
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v2

    .line 93
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->q:J

    shl-long/2addr v3, v5

    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    iput-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fn;->q:J

    if-nez v2, :cond_4

    .line 95
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 97
    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    :cond_6
    return-void

    .line 68
    :cond_7
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>()V

    throw v1

    .line 63
    :cond_8
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>()V

    throw v1

    .line 99
    :cond_9
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>()V

    throw v1
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/pd;)V
    .locals 4

    const/4 v0, 0x3

    .line 101
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->o:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x6

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x7

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 109
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x9

    .line 105
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    .line 103
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    :goto_1
    return-void
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/pd;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a()I

    move-result v0

    const/4 v1, 0x1

    .line 114
    invoke-static {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/or;->a(Lcom/google/vr/sdk/widgets/video/deps/pd;Z)Landroid/util/Pair;

    move-result-object v1

    .line 115
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->r:I

    .line 116
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->t:I

    .line 117
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private e(Lcom/google/vr/sdk/widgets/video/deps/pd;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 119
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->o:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x8

    .line 120
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0

    .line 124
    :cond_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>()V

    throw p1
.end method

.method private static f(Lcom/google/vr/sdk/widgets/video/deps/pd;)J
    .locals 2

    const/4 v0, 0x2

    .line 137
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 138
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->g:I

    .line 7
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->l:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 13
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->k:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V
    .locals 2

    .line 9
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->a()V

    .line 10
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->d:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 11
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 15
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    if-lez v0, :cond_7

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->g:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->i:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->h:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pd;->a:[B

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->h:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 33
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->h:I

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->i:I

    if-ne v1, v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/pd;->a(I)V

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->c:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fn;->a(Lcom/google/vr/sdk/widgets/video/deps/pd;)V

    .line 37
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->g:I

    goto :goto_0

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 25
    :cond_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->j:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->i:I

    .line 26
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    array-length v2, v2

    if-le v0, v2, :cond_3

    .line 27
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->i:I

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fn;->a(I)V

    .line 28
    :cond_3
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->h:I

    .line 29
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->g:I

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_5

    .line 21
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->j:I

    .line 22
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->g:I

    goto :goto_0

    :cond_5
    if-eq v0, v1, :cond_0

    .line 24
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->g:I

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 18
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fn;->g:I

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
