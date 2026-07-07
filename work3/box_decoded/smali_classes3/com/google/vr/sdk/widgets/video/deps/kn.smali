.class Lcom/google/vr/sdk/widgets/video/deps/kn;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/kn$c;,
        Lcom/google/vr/sdk/widgets/video/deps/kn$a;,
        Lcom/google/vr/sdk/widgets/video/deps/kn$d;,
        Lcom/google/vr/sdk/widgets/video/deps/kn$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/kp;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/kz;

.field private final e:[Lcom/google/vr/sdk/widgets/video/deps/lc$a;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/lh;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/iv;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:[B

.field private k:Ljava/io/IOException;

.field private l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

.field private m:Z

.field private n:Landroid/net/Uri;

.field private o:[B

.field private p:Ljava/lang/String;

.field private q:[B

.field private r:Lcom/google/vr/sdk/widgets/video/deps/nf;

.field private s:J

.field private t:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/kp;Lcom/google/vr/sdk/widgets/video/deps/lh;[Lcom/google/vr/sdk/widgets/video/deps/lc$a;Lcom/google/vr/sdk/widgets/video/deps/ko;Lcom/google/vr/sdk/widgets/video/deps/oo;Lcom/google/vr/sdk/widgets/video/deps/kz;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/kp;",
            "Lcom/google/vr/sdk/widgets/video/deps/lh;",
            "[",
            "Lcom/google/vr/sdk/widgets/video/deps/lc$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/ko;",
            "Lcom/google/vr/sdk/widgets/video/deps/oo;",
            "Lcom/google/vr/sdk/widgets/video/deps/kz;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->a:Lcom/google/vr/sdk/widgets/video/deps/kp;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->f:Lcom/google/vr/sdk/widgets/video/deps/lh;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->e:[Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 5
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->d:Lcom/google/vr/sdk/widgets/video/deps/kz;

    .line 6
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->h:Ljava/util/List;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->s:J

    .line 8
    array-length p1, p3

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 9
    array-length p2, p3

    new-array p2, p2, [I

    const/4 p6, 0x0

    .line 10
    :goto_0
    array-length p7, p3

    if-ge p6, p7, :cond_0

    .line 11
    aget-object p7, p3, p6

    iget-object p7, p7, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    aput-object p7, p1, p6

    .line 12
    aput p6, p2, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 14
    invoke-interface {p4, p3}, Lcom/google/vr/sdk/widgets/video/deps/ko;->a(I)Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object p3

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->b:Lcom/google/vr/sdk/widgets/video/deps/nr;

    if-eqz p5, :cond_1

    .line 16
    invoke-interface {p3, p5}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a(Lcom/google/vr/sdk/widgets/video/deps/oo;)V

    :cond_1
    const/4 p3, 0x3

    .line 17
    invoke-interface {p4, p3}, Lcom/google/vr/sdk/widgets/video/deps/ko;->a(I)Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object p3

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->c:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 18
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/iv;

    invoke-direct {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/iv;-><init>([Lcom/google/vr/sdk/widgets/video/deps/l;)V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->g:Lcom/google/vr/sdk/widgets/video/deps/iv;

    .line 19
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/kn$d;

    invoke-direct {p1, p3, p2}, Lcom/google/vr/sdk/widgets/video/deps/kn$d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/iv;[I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    return-void
.end method

.method private a(J)J
    .locals 5

    .line 159
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->s:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    sub-long v2, v0, p1

    :cond_1
    return-wide v2
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/kr;ZLcom/google/vr/sdk/widgets/video/deps/ld;JJ)J
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/kr;->h()J

    move-result-wide p1

    return-wide p1

    .line 149
    :cond_1
    :goto_0
    iget-wide v0, p3, Lcom/google/vr/sdk/widgets/video/deps/ld;->m:J

    add-long/2addr v0, p4

    if-eqz p1, :cond_3

    .line 150
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->m:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-wide p6, p1, Lcom/google/vr/sdk/widgets/video/deps/kr;->g:J

    .line 151
    :cond_3
    :goto_1
    iget-boolean p2, p3, Lcom/google/vr/sdk/widgets/video/deps/ld;->i:Z

    if-nez p2, :cond_4

    cmp-long p2, p6, v0

    if-ltz p2, :cond_4

    .line 152
    iget-wide p1, p3, Lcom/google/vr/sdk/widgets/video/deps/ld;->f:J

    iget-object p3, p3, Lcom/google/vr/sdk/widgets/video/deps/ld;->l:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    int-to-long p3, p3

    :goto_2
    add-long/2addr p1, p3

    return-wide p1

    :cond_4
    sub-long/2addr p6, p4

    .line 154
    iget-object p2, p3, Lcom/google/vr/sdk/widgets/video/deps/ld;->l:Ljava/util/List;

    .line 155
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iget-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->f:Lcom/google/vr/sdk/widgets/video/deps/lh;

    .line 156
    invoke-interface {p5}, Lcom/google/vr/sdk/widgets/video/deps/lh;->e()Z

    move-result p5

    const/4 p6, 0x1

    if-eqz p5, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p1, 0x1

    .line 157
    :goto_4
    invoke-static {p2, p4, p6, p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result p1

    int-to-long p1, p1

    iget-wide p3, p3, Lcom/google/vr/sdk/widgets/video/deps/ld;->f:J

    goto :goto_2
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/kn$a;
    .locals 9

    .line 169
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/nv;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/nv;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 170
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/kn$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->c:Lcom/google/vr/sdk/widgets/video/deps/nr;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->e:[Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    aget-object p3, v0, p3

    iget-object v3, p3, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->j:[B

    move-object v0, p1

    move-object v2, v8

    move v4, p4

    move-object v5, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/kn$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;[BLjava/lang/String;)V

    return-object p1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;[B)V
    .locals 5

    .line 171
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 172
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 174
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    new-array v1, v2, [B

    .line 176
    array-length v3, v0

    if-le v3, v2, :cond_1

    array-length v3, v0

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 177
    :goto_1
    array-length v4, v0

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->n:Landroid/net/Uri;

    .line 179
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->o:[B

    .line 180
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->p:Ljava/lang/String;

    .line 181
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->q:[B

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/ld;)V
    .locals 4

    .line 165
    iget-boolean v0, p1, Lcom/google/vr/sdk/widgets/video/deps/ld;->i:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ld;->a()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->f:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/lh;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->s:J

    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->n:Landroid/net/Uri;

    .line 184
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->o:[B

    .line 185
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->p:Ljava/lang/String;

    .line 186
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->q:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->k:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->t:Z

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->f:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lh;->c(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)V

    :cond_0
    return-void

    .line 22
    :cond_1
    throw v0
.end method

.method public a(JJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/kn$b;)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/kr;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/kn$b;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-wide/from16 v6, p3

    move-object/from16 v9, p6

    .line 34
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    move-object/from16 v1, p5

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/kr;

    move-object v4, v0

    :goto_0
    if-nez v4, :cond_1

    const/4 v0, -0x1

    const/4 v5, -0x1

    goto :goto_1

    .line 36
    :cond_1
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->g:Lcom/google/vr/sdk/widgets/video/deps/iv;

    iget-object v2, v4, Lcom/google/vr/sdk/widgets/video/deps/kr;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result v0

    move v5, v0

    :goto_1
    sub-long v2, v6, p1

    .line 38
    invoke-direct/range {p0 .. p2}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(J)J

    move-result-wide v12

    if-eqz v4, :cond_2

    .line 39
    iget-boolean v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->m:Z

    if-nez v0, :cond_2

    .line 40
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/kr;->d()J

    move-result-wide v14

    sub-long/2addr v2, v14

    const-wide/16 v10, 0x0

    .line 41
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v12, v16

    if-eqz v0, :cond_2

    sub-long/2addr v12, v14

    .line 43
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-wide v15, v2

    move-wide/from16 v17, v10

    goto :goto_2

    :cond_2
    move-wide v15, v2

    move-wide/from16 v17, v12

    .line 44
    :goto_2
    invoke-virtual {v8, v4, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(Lcom/google/vr/sdk/widgets/video/deps/kr;J)[Lcom/google/vr/sdk/widgets/video/deps/jl;

    move-result-object v20

    .line 45
    iget-object v12, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-wide/from16 v13, p1

    move-object/from16 v19, p5

    invoke-interface/range {v12 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a(JJJLjava/util/List;[Lcom/google/vr/sdk/widgets/video/deps/jl;)V

    .line 46
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->i()I

    move-result v10

    const/4 v11, 0x0

    if-eq v5, v10, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 48
    :goto_3
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->e:[Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    aget-object v13, v0, v10

    .line 49
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->f:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {v0, v13}, Lcom/google/vr/sdk/widgets/video/deps/lh;->b(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 50
    iput-object v13, v9, Lcom/google/vr/sdk/widgets/video/deps/kn$b;->c:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 51
    iget-boolean v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->t:Z

    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    if-ne v1, v13, :cond_4

    const/4 v11, 0x1

    :cond_4
    and-int/2addr v0, v11

    iput-boolean v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->t:Z

    .line 52
    iput-object v13, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    return-void

    .line 54
    :cond_5
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->f:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {v0, v13}, Lcom/google/vr/sdk/widgets/video/deps/lh;->a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)Lcom/google/vr/sdk/widgets/video/deps/ld;

    move-result-object v14

    .line 55
    iget-boolean v0, v14, Lcom/google/vr/sdk/widgets/video/deps/ld;->p:Z

    iput-boolean v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->m:Z

    .line 56
    invoke-direct {v8, v14}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(Lcom/google/vr/sdk/widgets/video/deps/ld;)V

    .line 57
    iget-wide v0, v14, Lcom/google/vr/sdk/widgets/video/deps/ld;->c:J

    iget-object v2, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->f:Lcom/google/vr/sdk/widgets/video/deps/lh;

    .line 58
    invoke-interface {v2}, Lcom/google/vr/sdk/widgets/video/deps/lh;->c()J

    move-result-wide v2

    sub-long v15, v0, v2

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v12

    move-object v3, v14

    move-object/from16 v31, v4

    move/from16 v17, v5

    move-wide v4, v15

    move-wide/from16 v6, p3

    .line 60
    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(Lcom/google/vr/sdk/widgets/video/deps/kr;ZLcom/google/vr/sdk/widgets/video/deps/ld;JJ)J

    move-result-wide v0

    .line 61
    iget-wide v2, v14, Lcom/google/vr/sdk/widgets/video/deps/ld;->f:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_7

    if-eqz v31, :cond_6

    if-eqz v12, :cond_6

    .line 64
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->e:[Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    aget-object v0, v0, v17

    .line 65
    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->f:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lh;->a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)Lcom/google/vr/sdk/widgets/video/deps/ld;

    move-result-object v14

    .line 66
    iget-wide v1, v14, Lcom/google/vr/sdk/widgets/video/deps/ld;->c:J

    iget-object v3, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->f:Lcom/google/vr/sdk/widgets/video/deps/lh;

    .line 67
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/lh;->c()J

    move-result-wide v3

    sub-long v15, v1, v3

    .line 68
    invoke-virtual/range {v31 .. v31}, Lcom/google/vr/sdk/widgets/video/deps/kr;->h()J

    move-result-wide v1

    move-wide/from16 v25, v1

    move/from16 v3, v17

    goto :goto_4

    .line 69
    :cond_6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ht;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/ht;-><init>()V

    iput-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->k:Ljava/io/IOException;

    return-void

    :cond_7
    move-wide/from16 v25, v0

    move v3, v10

    move-object v0, v13

    .line 71
    :goto_4
    iget-wide v1, v14, Lcom/google/vr/sdk/widgets/video/deps/ld;->f:J

    sub-long v1, v25, v1

    long-to-int v2, v1

    .line 72
    iget-object v1, v14, Lcom/google/vr/sdk/widgets/video/deps/ld;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_a

    .line 73
    iget-boolean v1, v14, Lcom/google/vr/sdk/widgets/video/deps/ld;->i:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, v9, Lcom/google/vr/sdk/widgets/video/deps/kn$b;->b:Z

    goto :goto_5

    :cond_8
    const/4 v1, 0x1

    .line 75
    iput-object v0, v9, Lcom/google/vr/sdk/widgets/video/deps/kn$b;->c:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 76
    iget-boolean v2, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->t:Z

    iget-object v3, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    if-ne v3, v0, :cond_9

    const/4 v11, 0x1

    :cond_9
    and-int v1, v2, v11

    iput-boolean v1, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->t:Z

    .line 77
    iput-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    :goto_5
    return-void

    .line 79
    :cond_a
    iput-boolean v11, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->t:Z

    const/4 v1, 0x0

    .line 80
    iput-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 81
    iget-object v4, v14, Lcom/google/vr/sdk/widgets/video/deps/ld;->l:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;

    .line 82
    iget-object v4, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->h:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 83
    iget-object v4, v14, Lcom/google/vr/sdk/widgets/video/deps/ld;->n:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->h:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/pr;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 84
    iget-object v5, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->n:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 85
    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->i:Ljava/lang/String;

    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    .line 86
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->b()I

    move-result v5

    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->c()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v4

    move v4, v5

    move-object v5, v6

    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/kn$a;

    move-result-object v0

    iput-object v0, v9, Lcom/google/vr/sdk/widgets/video/deps/kn$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jc;

    return-void

    .line 89
    :cond_b
    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->i:Ljava/lang/String;

    iget-object v5, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->p:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 90
    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->i:Ljava/lang/String;

    iget-object v5, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->o:[B

    invoke-direct {v8, v4, v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(Landroid/net/Uri;Ljava/lang/String;[B)V

    goto :goto_6

    .line 92
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/kn;->e()V

    .line 94
    :cond_d
    :goto_6
    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->b:Lcom/google/vr/sdk/widgets/video/deps/ld$a;

    if-eqz v3, :cond_e

    .line 96
    iget-object v1, v14, Lcom/google/vr/sdk/widgets/video/deps/ld;->n:Ljava/lang/String;

    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->a:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/pr;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 97
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-wide v4, v3, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->j:J

    iget-wide v6, v3, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->k:J

    const/16 v23, 0x0

    move-object/from16 v17, v10

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    invoke-direct/range {v17 .. v23}, Lcom/google/vr/sdk/widgets/video/deps/nv;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    goto :goto_7

    :cond_e
    move-object v10, v1

    .line 98
    :goto_7
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->f:J

    add-long/2addr v3, v15

    move-wide/from16 v21, v3

    .line 99
    iget v1, v14, Lcom/google/vr/sdk/widgets/video/deps/ld;->e:I

    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->e:I

    add-int/2addr v1, v5

    move/from16 v27, v1

    .line 100
    iget-object v5, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->d:Lcom/google/vr/sdk/widgets/video/deps/kz;

    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/kz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/pp;

    move-result-object v30

    .line 101
    iget-object v1, v14, Lcom/google/vr/sdk/widgets/video/deps/ld;->n:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->a:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/pr;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    .line 102
    new-instance v32, Lcom/google/vr/sdk/widgets/video/deps/nv;

    move-object/from16 v15, v32

    iget-wide v5, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->j:J

    iget-wide v11, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->k:J

    const/16 v38, 0x0

    move-wide/from16 v34, v5

    move-wide/from16 v36, v11

    invoke-direct/range {v32 .. v38}, Lcom/google/vr/sdk/widgets/video/deps/nv;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 103
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/kr;

    move-object v12, v1

    iget-object v13, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->a:Lcom/google/vr/sdk/widgets/video/deps/kp;

    iget-object v14, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->b:Lcom/google/vr/sdk/widgets/video/deps/nr;

    iget-object v5, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->h:Ljava/util/List;

    move-object/from16 v18, v5

    iget-object v5, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    .line 104
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/nf;->b()I

    move-result v19

    iget-object v5, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    .line 105
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/nf;->c()Ljava/lang/Object;

    move-result-object v20

    iget-wide v5, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->c:J

    add-long v23, v3, v5

    iget-boolean v3, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->l:Z

    move/from16 v28, v3

    iget-boolean v3, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->i:Z

    move/from16 v29, v3

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ld$a;->g:Lcom/google/vr/sdk/widgets/video/deps/cb;

    move-object/from16 v32, v2

    iget-object v2, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->o:[B

    move-object/from16 v33, v2

    iget-object v2, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->q:[B

    move-object/from16 v34, v2

    move-object/from16 v16, v10

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v34}, Lcom/google/vr/sdk/widgets/video/deps/kr;-><init>(Lcom/google/vr/sdk/widgets/video/deps/kp;Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/lc$a;Ljava/util/List;ILjava/lang/Object;JJJIZZLcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/kr;Lcom/google/vr/sdk/widgets/video/deps/cb;[B[B)V

    iput-object v1, v9, Lcom/google/vr/sdk/widgets/video/deps/kn$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jc;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jc;)V
    .locals 2

    .line 107
    instance-of v0, p1, Lcom/google/vr/sdk/widgets/video/deps/kn$a;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/kn$a;

    .line 109
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/kn$a;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->j:[B

    .line 110
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/kn$a;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/kn$a;->a:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/kn$a;->h()[B

    move-result-object p1

    .line 112
    invoke-direct {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(Landroid/net/Uri;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/nf;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->i:Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jc;J)Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->g:Lcom/google/vr/sdk/widgets/video/deps/iv;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/jc;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 115
    invoke-virtual {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nf;->c(I)I

    move-result p1

    .line 116
    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a(IJ)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;J)Z
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->g:Lcom/google/vr/sdk/widgets/video/deps/iv;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    invoke-interface {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->c(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v2

    .line 123
    :cond_1
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->t:Z

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    const/4 v4, 0x0

    if-ne v3, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->t:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v5

    if-eqz p1, :cond_4

    .line 124
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    .line 125
    invoke-interface {p1, v0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/kr;J)[Lcom/google/vr/sdk/widgets/video/deps/jl;
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-nez v9, :cond_0

    const/4 v0, -0x1

    const/4 v10, -0x1

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->g:Lcom/google/vr/sdk/widgets/video/deps/iv;

    iget-object v1, v9, Lcom/google/vr/sdk/widgets/video/deps/kr;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result v0

    move v10, v0

    .line 128
    :goto_0
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->g()I

    move-result v11

    new-array v12, v11, [Lcom/google/vr/sdk/widgets/video/deps/jl;

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v11, :cond_4

    .line 130
    iget-object v0, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    invoke-interface {v0, v14}, Lcom/google/vr/sdk/widgets/video/deps/nf;->b(I)I

    move-result v0

    .line 131
    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->e:[Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    aget-object v1, v1, v0

    .line 132
    iget-object v2, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->f:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/lh;->b(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/jl;->a:Lcom/google/vr/sdk/widgets/video/deps/jl;

    aput-object v0, v12, v14

    goto :goto_3

    .line 135
    :cond_1
    iget-object v2, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->f:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/lh;->a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)Lcom/google/vr/sdk/widgets/video/deps/ld;

    move-result-object v15

    .line 136
    iget-wide v1, v15, Lcom/google/vr/sdk/widgets/video/deps/ld;->c:J

    iget-object v3, v8, Lcom/google/vr/sdk/widgets/video/deps/kn;->f:Lcom/google/vr/sdk/widgets/video/deps/lh;

    .line 137
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/lh;->c()J

    move-result-wide v3

    sub-long v6, v1, v3

    if-eq v0, v10, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v15

    move-wide v4, v6

    move-wide/from16 v16, v6

    move-wide/from16 v6, p2

    .line 140
    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/kn;->a(Lcom/google/vr/sdk/widgets/video/deps/kr;ZLcom/google/vr/sdk/widgets/video/deps/ld;JJ)J

    move-result-wide v0

    .line 141
    iget-wide v2, v15, Lcom/google/vr/sdk/widgets/video/deps/ld;->f:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 142
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/jl;->a:Lcom/google/vr/sdk/widgets/video/deps/jl;

    aput-object v0, v12, v14

    goto :goto_3

    .line 144
    :cond_3
    iget-wide v2, v15, Lcom/google/vr/sdk/widgets/video/deps/ld;->f:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 145
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/kn$c;

    move-wide/from16 v2, v16

    invoke-direct {v0, v15, v2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/kn$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ld;JI)V

    aput-object v0, v12, v14

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    return-object v12
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/iv;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->g:Lcom/google/vr/sdk/widgets/video/deps/iv;

    return-object v0
.end method

.method public c()Lcom/google/vr/sdk/widgets/video/deps/nf;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->r:Lcom/google/vr/sdk/widgets/video/deps/nf;

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kn;->k:Ljava/io/IOException;

    return-void
.end method
