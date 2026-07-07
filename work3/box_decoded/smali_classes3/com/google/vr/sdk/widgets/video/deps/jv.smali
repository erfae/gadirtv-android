.class public Lcom/google/vr/sdk/widgets/video/deps/jv;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/jn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/jv$b;,
        Lcom/google/vr/sdk/widgets/video/deps/jv$c;,
        Lcom/google/vr/sdk/widgets/video/deps/jv$a;
    }
.end annotation


# instance fields
.field protected final a:[Lcom/google/vr/sdk/widgets/video/deps/jv$b;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/ok;

.field private final c:[I

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/nf;

.field private final e:I

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private final g:J

.field private final h:I

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/jx$c;

.field private j:Lcom/google/vr/sdk/widgets/video/deps/jz;

.field private k:I

.field private l:Ljava/io/IOException;

.field private m:Z

.field private n:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ok;Lcom/google/vr/sdk/widgets/video/deps/jz;I[ILcom/google/vr/sdk/widgets/video/deps/nf;ILcom/google/vr/sdk/widgets/video/deps/nr;JIZZLcom/google/vr/sdk/widgets/video/deps/jx$c;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    .line 2
    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->b:Lcom/google/vr/sdk/widgets/video/deps/ok;

    move-object/from16 v2, p2

    .line 3
    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    move-object/from16 v3, p4

    .line 4
    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->c:[I

    .line 5
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    move/from16 v10, p6

    .line 6
    iput v10, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->e:I

    move-object/from16 v3, p7

    .line 7
    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->f:Lcom/google/vr/sdk/widgets/video/deps/nr;

    move/from16 v3, p3

    .line 8
    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->k:I

    move-wide/from16 v4, p8

    .line 9
    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->g:J

    move/from16 v4, p10

    .line 10
    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->h:I

    move-object/from16 v11, p13

    .line 11
    iput-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->i:Lcom/google/vr/sdk/widgets/video/deps/jx$c;

    .line 12
    invoke-virtual/range {p2 .. p3}, Lcom/google/vr/sdk/widgets/video/deps/jz;->c(I)J

    move-result-wide v12

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    iput-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->n:J

    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/jv;->b()Ljava/util/ArrayList;

    move-result-object v14

    .line 15
    invoke-interface/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/nf;->g()I

    move-result v2

    new-array v2, v2, [Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->a:[Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    const/4 v2, 0x0

    const/4 v15, 0x0

    .line 16
    :goto_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->a:[Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    array-length v2, v2

    if-ge v15, v2, :cond_0

    .line 17
    invoke-interface {v1, v15}, Lcom/google/vr/sdk/widgets/video/deps/nf;->b(I)I

    move-result v2

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/kf;

    .line 18
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/jv;->a:[Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    new-instance v16, Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    move-object/from16 v2, v16

    move-wide v3, v12

    move/from16 v5, p6

    move/from16 v7, p11

    move/from16 v8, p12

    move-object/from16 v17, v9

    move-object/from16 v9, p13

    invoke-direct/range {v2 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;-><init>(JILcom/google/vr/sdk/widgets/video/deps/kf;ZZLcom/google/vr/sdk/widgets/video/deps/dc;)V

    aput-object v16, v17, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(J)J
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->n:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 168
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->n:J

    sub-long v1, v0, p1

    :cond_1
    return-wide v1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/jv$b;Lcom/google/vr/sdk/widgets/video/deps/jk;JJJ)J
    .locals 6

    if-eqz p2, :cond_0

    .line 150
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/jk;->h()J

    move-result-wide p1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c(J)J

    move-result-wide v0

    move-wide v2, p5

    move-wide v4, p7

    .line 153
    invoke-static/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(JJJ)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/jv$b;J)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->n:J

    return-void
.end method

.method private b()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/kf;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->k:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/kd;->c:Ljava/util/List;

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->c:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 158
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/jy;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/jy;->c:Ljava/util/List;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private c()J
    .locals 7

    .line 164
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->g:J

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_0

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->g:J

    add-long/2addr v0, v4

    :goto_0
    mul-long v0, v0, v2

    return-wide v0

    .line 166
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public a(JLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/jk;",
            ">;)I"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->l:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a(JLjava/util/List;)I

    move-result p1

    return p1

    .line 49
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public a(JLcom/google/vr/sdk/widgets/video/deps/ad;)J
    .locals 11

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->a:[Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 22
    iget-object v4, v3, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c:Lcom/google/vr/sdk/widgets/video/deps/jt;

    if-eqz v4, :cond_1

    .line 23
    invoke-virtual {v3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c(J)J

    move-result-wide v0

    .line 24
    invoke-virtual {v3, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a(J)J

    move-result-wide v7

    cmp-long v2, v7, p1

    if-gez v2, :cond_0

    .line 25
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 26
    invoke-virtual {v3, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a(J)J

    move-result-wide v0

    move-wide v9, v0

    goto :goto_1

    :cond_0
    move-wide v9, v7

    :goto_1
    move-wide v4, p1

    move-object v6, p3

    .line 28
    invoke-static/range {v4 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(JLcom/google/vr/sdk/widgets/video/deps/ad;JJ)J

    move-result-wide p1

    return-wide p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide p1
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/jv$b;Lcom/google/vr/sdk/widgets/video/deps/nr;ILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JIJ)Lcom/google/vr/sdk/widgets/video/deps/jc;
    .locals 23

    move-object/from16 v0, p1

    move-wide/from16 v13, p7

    .line 178
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b:Lcom/google/vr/sdk/widgets/video/deps/kf;

    .line 179
    invoke-virtual {v0, v13, v14}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a(J)J

    move-result-wide v7

    .line 180
    invoke-virtual {v0, v13, v14}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->d(J)Lcom/google/vr/sdk/widgets/video/deps/ke;

    move-result-object v2

    .line 181
    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/kf;->d:Ljava/lang/String;

    .line 182
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jd;

    if-nez v3, :cond_0

    .line 183
    invoke-virtual {v0, v13, v14}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b(J)J

    move-result-wide v9

    .line 184
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/nv;

    invoke-virtual {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ke;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    iget-wide v4, v2, Lcom/google/vr/sdk/widgets/video/deps/ke;->a:J

    iget-wide v11, v2, Lcom/google/vr/sdk/widgets/video/deps/ke;->b:J

    .line 185
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/kf;->f()Ljava/lang/String;

    move-result-object v21

    move-object v15, v3

    move-wide/from16 v17, v4

    move-wide/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lcom/google/vr/sdk/widgets/video/deps/nv;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 186
    new-instance v15, Lcom/google/vr/sdk/widgets/video/deps/jm;

    move-object v0, v15

    move-object/from16 v1, p2

    move-object v2, v3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-wide v6, v7

    move-wide v8, v9

    move-wide/from16 v10, p7

    move/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/jm;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJILcom/google/vr/sdk/widgets/video/deps/l;)V

    return-object v15

    :cond_0
    const/4 v3, 0x1

    move/from16 v5, p9

    const/4 v15, 0x1

    :goto_0
    if-ge v3, v5, :cond_2

    int-to-long v9, v3

    add-long/2addr v9, v13

    .line 189
    invoke-virtual {v0, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->d(J)Lcom/google/vr/sdk/widgets/video/deps/ke;

    move-result-object v6

    .line 190
    invoke-virtual {v2, v6, v4}, Lcom/google/vr/sdk/widgets/video/deps/ke;->a(Lcom/google/vr/sdk/widgets/video/deps/ke;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ke;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v2, v6

    goto :goto_0

    :cond_2
    :goto_1
    int-to-long v5, v15

    add-long/2addr v5, v13

    const-wide/16 v9, 0x1

    sub-long/2addr v5, v9

    .line 196
    invoke-virtual {v0, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b(J)J

    move-result-wide v9

    .line 197
    new-instance v16, Lcom/google/vr/sdk/widgets/video/deps/nv;

    move-object/from16 v3, v16

    invoke-virtual {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ke;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    iget-wide v4, v2, Lcom/google/vr/sdk/widgets/video/deps/ke;->a:J

    iget-wide v11, v2, Lcom/google/vr/sdk/widgets/video/deps/ke;->b:J

    .line 198
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/kf;->f()Ljava/lang/String;

    move-result-object v22

    move-wide/from16 v18, v4

    move-wide/from16 v20, v11

    invoke-direct/range {v16 .. v22}, Lcom/google/vr/sdk/widgets/video/deps/nv;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 199
    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/kf;->e:J

    neg-long v1, v1

    move-wide/from16 v16, v1

    .line 200
    new-instance v19, Lcom/google/vr/sdk/widgets/video/deps/jh;

    move-object/from16 v1, v19

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jd;

    move-object/from16 v18, v0

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v11, p10

    move-wide/from16 v13, p7

    invoke-direct/range {v1 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/jh;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJIJLcom/google/vr/sdk/widgets/video/deps/jd;)V

    return-object v19
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/jv$b;Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/ke;Lcom/google/vr/sdk/widgets/video/deps/ke;)Lcom/google/vr/sdk/widgets/video/deps/jc;
    .locals 8

    .line 169
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b:Lcom/google/vr/sdk/widgets/video/deps/kf;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/kf;->d:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 171
    invoke-virtual {p6, p7, v0}, Lcom/google/vr/sdk/widgets/video/deps/ke;->a(Lcom/google/vr/sdk/widgets/video/deps/ke;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ke;

    move-result-object p7

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    move-object p6, p7

    .line 175
    :goto_0
    new-instance p7, Lcom/google/vr/sdk/widgets/video/deps/nv;

    invoke-virtual {p6, v0}, Lcom/google/vr/sdk/widgets/video/deps/ke;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-wide v3, p6, Lcom/google/vr/sdk/widgets/video/deps/ke;->a:J

    iget-wide v5, p6, Lcom/google/vr/sdk/widgets/video/deps/ke;->b:J

    iget-object p6, p1, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b:Lcom/google/vr/sdk/widgets/video/deps/kf;

    .line 176
    invoke-virtual {p6}, Lcom/google/vr/sdk/widgets/video/deps/kf;->f()Ljava/lang/String;

    move-result-object v7

    move-object v1, p7

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/nv;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 177
    new-instance p6, Lcom/google/vr/sdk/widgets/video/deps/jj;

    iget-object v7, p1, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jd;

    move-object v1, p6

    move-object v2, p2

    move-object v3, p7

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/jj;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/jd;)V

    return-object p6
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->l:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->b:Lcom/google/vr/sdk/widgets/video/deps/ok;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ok;->a()V

    return-void

    .line 45
    :cond_0
    throw v0
.end method

.method public a(JJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/je;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/jk;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/je;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p6

    .line 51
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->l:Ljava/io/IOException;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sub-long v9, p3, p1

    .line 54
    invoke-direct/range {p0 .. p2}, Lcom/google/vr/sdk/widgets/video/deps/jv;->a(J)J

    move-result-wide v14

    .line 55
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jz;->a:J

    .line 56
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v0

    iget-object v2, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget v3, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->k:I

    .line 57
    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a(I)Lcom/google/vr/sdk/widgets/video/deps/kd;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/kd;->b:J

    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    add-long v0, v0, p3

    .line 58
    iget-object v2, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->i:Lcom/google/vr/sdk/widgets/video/deps/jx$c;

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 61
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/jv;->c()J

    move-result-wide v7

    .line 62
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v11, 0x0

    const/16 v16, 0x1

    if-eqz v0, :cond_2

    move-object/from16 v5, p5

    move-object/from16 v17, v11

    goto :goto_0

    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v5, p5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/jk;

    move-object/from16 v17, v0

    .line 63
    :goto_0
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->g()I

    move-result v6

    new-array v3, v6, [Lcom/google/vr/sdk/widgets/video/deps/jl;

    const/16 v18, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_5

    .line 65
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->a:[Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    aget-object v2, v0, v4

    .line 66
    iget-object v0, v2, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c:Lcom/google/vr/sdk/widgets/video/deps/jt;

    if-nez v0, :cond_3

    .line 67
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/jl;->a:Lcom/google/vr/sdk/widgets/video/deps/jl;

    aput-object v0, v3, v4

    move-object/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v6

    move-wide/from16 v28, v7

    goto :goto_2

    .line 68
    :cond_3
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget v1, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->k:I

    .line 69
    invoke-virtual {v2, v0, v1, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a(Lcom/google/vr/sdk/widgets/video/deps/jz;IJ)J

    move-result-wide v19

    .line 70
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget v1, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->k:I

    .line 71
    invoke-virtual {v2, v0, v1, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b(Lcom/google/vr/sdk/widgets/video/deps/jz;IJ)J

    move-result-wide v23

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v21, v2

    move-object/from16 v2, v17

    move-object/from16 v25, v3

    move/from16 v26, v4

    move-wide/from16 v3, p3

    move/from16 v27, v6

    move-wide/from16 v5, v19

    move-wide/from16 v28, v7

    move-wide/from16 v7, v23

    .line 73
    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/jv;->a(Lcom/google/vr/sdk/widgets/video/deps/jv$b;Lcom/google/vr/sdk/widgets/video/deps/jk;JJJ)J

    move-result-wide v0

    cmp-long v2, v0, v19

    if-gez v2, :cond_4

    .line 75
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/jl;->a:Lcom/google/vr/sdk/widgets/video/deps/jl;

    aput-object v0, v25, v26

    goto :goto_2

    .line 76
    :cond_4
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/jv$c;

    move-object/from16 v19, v2

    move-object/from16 v20, v21

    move-wide/from16 v21, v0

    invoke-direct/range {v19 .. v24}, Lcom/google/vr/sdk/widgets/video/deps/jv$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/jv$b;JJ)V

    aput-object v2, v25, v26

    :goto_2
    add-int/lit8 v4, v26, 0x1

    move-object/from16 v5, p5

    move-object/from16 v3, v25

    move/from16 v6, v27

    move-wide/from16 v7, v28

    goto :goto_1

    :cond_5
    move-object/from16 v25, v3

    move-wide/from16 v28, v7

    .line 78
    iget-object v1, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-wide/from16 v2, p1

    move-wide v4, v9

    move-wide v6, v14

    move-object/from16 v8, p5

    move-object/from16 v9, v25

    invoke-interface/range {v1 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a(JJJLjava/util/List;[Lcom/google/vr/sdk/widgets/video/deps/jl;)V

    .line 79
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->a:[Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    iget-object v1, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    .line 80
    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a()I

    move-result v1

    aget-object v9, v0, v1

    .line 81
    iget-object v0, v9, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jd;

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, v9, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b:Lcom/google/vr/sdk/widgets/video/deps/kf;

    .line 85
    iget-object v1, v9, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jd;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/jd;->c()[Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v1

    if-nez v1, :cond_6

    .line 86
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/kf;->c()Lcom/google/vr/sdk/widgets/video/deps/ke;

    move-result-object v1

    move-object v6, v1

    goto :goto_3

    :cond_6
    move-object v6, v11

    .line 87
    :goto_3
    iget-object v1, v9, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c:Lcom/google/vr/sdk/widgets/video/deps/jt;

    if-nez v1, :cond_7

    .line 88
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/kf;->d()Lcom/google/vr/sdk/widgets/video/deps/ke;

    move-result-object v0

    move-object v7, v0

    goto :goto_4

    :cond_7
    move-object v7, v11

    :goto_4
    if-nez v6, :cond_8

    if-eqz v7, :cond_9

    .line 90
    :cond_8
    iget-object v2, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->f:Lcom/google/vr/sdk/widgets/video/deps/nr;

    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    .line 91
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->h()Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v3

    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->b()I

    move-result v4

    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    .line 92
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->c()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v9

    .line 93
    invoke-virtual/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/jv;->a(Lcom/google/vr/sdk/widgets/video/deps/jv$b;Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/ke;Lcom/google/vr/sdk/widgets/video/deps/ke;)Lcom/google/vr/sdk/widgets/video/deps/jc;

    move-result-object v0

    iput-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/je;->a:Lcom/google/vr/sdk/widgets/video/deps/jc;

    return-void

    .line 95
    :cond_9
    invoke-virtual {v9}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b()I

    move-result v0

    if-nez v0, :cond_c

    .line 96
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    if-eqz v0, :cond_b

    iget v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->k:I

    iget-object v1, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, v13, Lcom/google/vr/sdk/widgets/video/deps/je;->b:Z

    return-void

    .line 98
    :cond_c
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget v1, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->k:I

    move-wide/from16 v2, v28

    .line 99
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a(Lcom/google/vr/sdk/widgets/video/deps/jz;IJ)J

    move-result-wide v10

    .line 100
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget v1, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->k:I

    .line 101
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b(Lcom/google/vr/sdk/widgets/video/deps/jz;IJ)J

    move-result-wide v14

    .line 102
    invoke-direct {v12, v9, v14, v15}, Lcom/google/vr/sdk/widgets/video/deps/jv;->a(Lcom/google/vr/sdk/widgets/video/deps/jv$b;J)V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v17

    move-wide/from16 v3, p3

    move-wide v5, v10

    move-wide v7, v14

    .line 104
    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/jv;->a(Lcom/google/vr/sdk/widgets/video/deps/jv$b;Lcom/google/vr/sdk/widgets/video/deps/jk;JJJ)J

    move-result-wide v7

    cmp-long v0, v7, v10

    if-gez v0, :cond_d

    .line 106
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ht;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/ht;-><init>()V

    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->l:Ljava/io/IOException;

    return-void

    :cond_d
    cmp-long v0, v7, v14

    if-gtz v0, :cond_10

    .line 108
    iget-boolean v1, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->m:Z

    if-eqz v1, :cond_e

    if-ltz v0, :cond_e

    goto :goto_8

    .line 111
    :cond_e
    iget v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->h:I

    int-to-long v0, v0

    sub-long/2addr v14, v7

    const-wide/16 v2, 0x1

    add-long/2addr v14, v2

    .line 112
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v10, v0

    .line 113
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    move-wide/from16 v14, p3

    goto :goto_7

    :cond_f
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v14, v0

    .line 114
    :goto_7
    iget-object v2, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->f:Lcom/google/vr/sdk/widgets/video/deps/nr;

    iget v3, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->e:I

    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    .line 115
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->h()Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v4

    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    .line 116
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->b()I

    move-result v5

    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    .line 117
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->c()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v9

    move v9, v10

    move-wide v10, v14

    .line 118
    invoke-virtual/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/jv;->a(Lcom/google/vr/sdk/widgets/video/deps/jv$b;Lcom/google/vr/sdk/widgets/video/deps/nr;ILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JIJ)Lcom/google/vr/sdk/widgets/video/deps/jc;

    move-result-object v0

    iput-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/je;->a:Lcom/google/vr/sdk/widgets/video/deps/jc;

    return-void

    .line 109
    :cond_10
    :goto_8
    iget-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    if-eqz v0, :cond_12

    iget v0, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->k:I

    iget-object v1, v12, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/jz;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_11

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, v13, Lcom/google/vr/sdk/widgets/video/deps/je;->b:Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jc;)V
    .locals 7

    .line 120
    instance-of v0, p1, Lcom/google/vr/sdk/widgets/video/deps/jj;

    if-eqz v0, :cond_0

    .line 121
    move-object v0, p1

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/jj;

    .line 122
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/jj;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result v0

    .line 123
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->a:[Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    aget-object v1, v1, v0

    .line 124
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->c:Lcom/google/vr/sdk/widgets/video/deps/jt;

    if-nez v2, :cond_0

    .line 125
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a:Lcom/google/vr/sdk/widgets/video/deps/jd;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/jd;->b()Lcom/google/vr/sdk/widgets/video/deps/da;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->a:[Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/ju;

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/cm;

    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b:Lcom/google/vr/sdk/widgets/video/deps/kf;

    iget-wide v5, v5, Lcom/google/vr/sdk/widgets/video/deps/kf;->e:J

    invoke-direct {v4, v2, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/ju;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cm;J)V

    .line 128
    invoke-virtual {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a(Lcom/google/vr/sdk/widgets/video/deps/jt;)Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    move-result-object v1

    aput-object v1, v3, v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->i:Lcom/google/vr/sdk/widgets/video/deps/jx$c;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jz;I)V
    .locals 5

    .line 31
    :try_start_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    .line 32
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->k:I

    .line 33
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/jz;->c(I)J

    move-result-wide p1

    .line 34
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jv;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 35
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->a:[Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/nf;->b(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/kf;

    .line 37
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->a:[Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    aget-object v4, v3, v1

    .line 38
    invoke-virtual {v4, p1, p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a(JLcom/google/vr/sdk/widgets/video/deps/kf;)Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/ht; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->l:Ljava/io/IOException;

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jc;ZLjava/lang/Exception;J)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 134
    :cond_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->i:Lcom/google/vr/sdk/widgets/video/deps/jx$c;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 135
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/jx$c;->b(Lcom/google/vr/sdk/widgets/video/deps/jc;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    .line 137
    :cond_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->j:Lcom/google/vr/sdk/widgets/video/deps/jz;

    iget-boolean p2, p2, Lcom/google/vr/sdk/widgets/video/deps/jz;->d:Z

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/google/vr/sdk/widgets/video/deps/jk;

    if-eqz p2, :cond_2

    instance-of p2, p3, Lcom/google/vr/sdk/widgets/video/deps/of$e;

    if-eqz p2, :cond_2

    check-cast p3, Lcom/google/vr/sdk/widgets/video/deps/of$e;

    iget p2, p3, Lcom/google/vr/sdk/widgets/video/deps/of$e;->c:I

    const/16 p3, 0x194

    if-ne p2, p3, :cond_2

    .line 138
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->a:[Lcom/google/vr/sdk/widgets/video/deps/jv$b;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/jc;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 139
    invoke-interface {p3, v2}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result p3

    aget-object p2, p2, p3

    .line 140
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->b()I

    move-result p3

    const/4 v2, -0x1

    if-eq p3, v2, :cond_2

    if-eqz p3, :cond_2

    .line 142
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/jv$b;->a()J

    move-result-wide v2

    int-to-long p2, p3

    add-long/2addr v2, p2

    const-wide/16 p2, 0x1

    sub-long/2addr v2, p2

    .line 143
    move-object p2, p1

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/jk;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/jk;->h()J

    move-result-wide p2

    cmp-long v4, p2, v2

    if-lez v4, :cond_2

    .line 144
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->m:Z

    return v1

    :cond_2
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p4, p2

    if-eqz v2, :cond_3

    .line 146
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jv;->d:Lcom/google/vr/sdk/widgets/video/deps/nf;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/jc;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 147
    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result p1

    invoke-interface {p2, p1, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/nf;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method
