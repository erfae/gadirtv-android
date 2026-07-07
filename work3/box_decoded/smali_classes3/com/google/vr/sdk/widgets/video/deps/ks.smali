.class public final Lcom/google/vr/sdk/widgets/video/deps/ks;
.super Ljava/lang/Object;
.source "HlsMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ie;
.implements Lcom/google/vr/sdk/widgets/video/deps/kv$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/lh$a;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/kp;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/lh;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/ko;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/oo;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/oi;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/nl;

.field private final h:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/vr/sdk/widgets/video/deps/is;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/kz;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/hw;

.field private final k:Z

.field private l:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

.field private m:I

.field private n:Lcom/google/vr/sdk/widgets/video/deps/iw;

.field private o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

.field private p:[Lcom/google/vr/sdk/widgets/video/deps/kv;

.field private q:Lcom/google/vr/sdk/widgets/video/deps/it;

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/kp;Lcom/google/vr/sdk/widgets/video/deps/lh;Lcom/google/vr/sdk/widgets/video/deps/ko;Lcom/google/vr/sdk/widgets/video/deps/oo;Lcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/ig$a;Lcom/google/vr/sdk/widgets/video/deps/nl;Lcom/google/vr/sdk/widgets/video/deps/hw;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->a:Lcom/google/vr/sdk/widgets/video/deps/kp;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->b:Lcom/google/vr/sdk/widgets/video/deps/lh;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->c:Lcom/google/vr/sdk/widgets/video/deps/ko;

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->d:Lcom/google/vr/sdk/widgets/video/deps/oo;

    .line 6
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->e:Lcom/google/vr/sdk/widgets/video/deps/oi;

    .line 7
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->f:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    .line 8
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->g:Lcom/google/vr/sdk/widgets/video/deps/nl;

    .line 9
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->j:Lcom/google/vr/sdk/widgets/video/deps/hw;

    .line 10
    iput-boolean p9, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->k:Z

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/vr/sdk/widgets/video/deps/it;

    .line 12
    invoke-interface {p8, p2}, Lcom/google/vr/sdk/widgets/video/deps/hw;->a([Lcom/google/vr/sdk/widgets/video/deps/it;)Lcom/google/vr/sdk/widgets/video/deps/it;

    move-result-object p2

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->q:Lcom/google/vr/sdk/widgets/video/deps/it;

    .line 13
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->h:Ljava/util/IdentityHashMap;

    .line 14
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/kz;

    invoke-direct {p2}, Lcom/google/vr/sdk/widgets/video/deps/kz;-><init>()V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->i:Lcom/google/vr/sdk/widgets/video/deps/kz;

    new-array p2, p1, [Lcom/google/vr/sdk/widgets/video/deps/kv;

    .line 15
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/kv;

    .line 16
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->p:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    .line 17
    invoke-virtual {p6}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a()V

    return-void
.end method

.method private a(I[Lcom/google/vr/sdk/widgets/video/deps/lc$a;Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/util/List;J)Lcom/google/vr/sdk/widgets/video/deps/kv;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/google/vr/sdk/widgets/video/deps/lc$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;J)",
            "Lcom/google/vr/sdk/widgets/video/deps/kv;"
        }
    .end annotation

    move-object v10, p0

    .line 232
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/kn;

    iget-object v1, v10, Lcom/google/vr/sdk/widgets/video/deps/ks;->a:Lcom/google/vr/sdk/widgets/video/deps/kp;

    iget-object v2, v10, Lcom/google/vr/sdk/widgets/video/deps/ks;->b:Lcom/google/vr/sdk/widgets/video/deps/lh;

    iget-object v4, v10, Lcom/google/vr/sdk/widgets/video/deps/ks;->c:Lcom/google/vr/sdk/widgets/video/deps/ko;

    iget-object v5, v10, Lcom/google/vr/sdk/widgets/video/deps/ks;->d:Lcom/google/vr/sdk/widgets/video/deps/oo;

    iget-object v6, v10, Lcom/google/vr/sdk/widgets/video/deps/ks;->i:Lcom/google/vr/sdk/widgets/video/deps/kz;

    move-object v0, v8

    move-object v3, p2

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/kn;-><init>(Lcom/google/vr/sdk/widgets/video/deps/kp;Lcom/google/vr/sdk/widgets/video/deps/lh;[Lcom/google/vr/sdk/widgets/video/deps/lc$a;Lcom/google/vr/sdk/widgets/video/deps/ko;Lcom/google/vr/sdk/widgets/video/deps/oo;Lcom/google/vr/sdk/widgets/video/deps/kz;Ljava/util/List;)V

    .line 233
    new-instance v11, Lcom/google/vr/sdk/widgets/video/deps/kv;

    iget-object v4, v10, Lcom/google/vr/sdk/widgets/video/deps/ks;->g:Lcom/google/vr/sdk/widgets/video/deps/nl;

    iget-object v9, v10, Lcom/google/vr/sdk/widgets/video/deps/ks;->e:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget-object v12, v10, Lcom/google/vr/sdk/widgets/video/deps/ks;->f:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    move-object v0, v11

    move v1, p1

    move-object v2, p0

    move-object v3, v8

    move-wide/from16 v5, p5

    move-object/from16 v7, p3

    move-object v8, v9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/kv;-><init>(ILcom/google/vr/sdk/widgets/video/deps/kv$a;Lcom/google/vr/sdk/widgets/video/deps/kn;Lcom/google/vr/sdk/widgets/video/deps/nl;JLcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/ig$a;)V

    return-object v11
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 13

    .line 234
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 235
    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/pb;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v10, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->n:F

    iget v12, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    const/4 v11, 0x0

    invoke-static/range {v2 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;Z)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 242
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    .line 243
    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    .line 244
    iget v5, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    .line 245
    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    .line 246
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    move-object v7, v1

    move-object v10, v2

    move v12, v4

    move v15, v5

    move-object/from16 v16, v6

    goto :goto_0

    .line 247
    :cond_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 249
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    .line 250
    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    .line 251
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    .line 252
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->b:Ljava/lang/String;

    move-object v10, v1

    move-object/from16 v16, v2

    move v12, v4

    move v15, v5

    move-object v7, v6

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object v10, v1

    move-object v7, v2

    move-object/from16 v16, v7

    const/4 v12, -0x1

    const/4 v15, 0x0

    .line 253
    :goto_0
    invoke-static {v10}, Lcom/google/vr/sdk/widgets/video/deps/pb;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz p2, :cond_2

    .line 254
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    move v11, v3

    goto :goto_1

    :cond_2
    const/4 v11, -0x1

    .line 255
    :goto_1
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->f:Ljava/lang/String;

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-static/range {v6 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/lc;J)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/lc;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 175
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v3, v4, :cond_3

    .line 176
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 177
    iget-object v5, v4, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 178
    iget v6, v5, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    if-gtz v6, :cond_1

    iget-object v6, v5, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    invoke-static {v5, v11}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 181
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 179
    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v12, v1

    goto :goto_3

    .line 185
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 186
    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_5
    move-object v12, v0

    .line 187
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v11

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    new-array v0, v9, [Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 188
    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    .line 189
    aget-object v0, v13, v9

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 190
    iget-object v3, v8, Lcom/google/vr/sdk/widgets/video/deps/lc;->e:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v4, v8, Lcom/google/vr/sdk/widgets/video/deps/lc;->f:Ljava/util/List;

    move-object v0, p0

    move-object v2, v13

    move-wide/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ks;->a(I[Lcom/google/vr/sdk/widgets/video/deps/lc$a;Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/util/List;J)Lcom/google/vr/sdk/widgets/video/deps/kv;

    move-result-object v0

    .line 191
    iget-object v1, v7, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    aput-object v0, v1, v9

    .line 192
    iget-boolean v1, v7, Lcom/google/vr/sdk/widgets/video/deps/ks;->k:Z

    if-eqz v1, :cond_10

    if-eqz v14, :cond_10

    .line 193
    invoke-static {v14, v10}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 194
    :goto_4
    invoke-static {v14, v11}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    .line 195
    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_b

    .line 197
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Lcom/google/vr/sdk/widgets/video/deps/l;

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v1, :cond_8

    .line 199
    aget-object v6, v13, v5

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/ks;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 201
    :cond_8
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/iv;

    invoke-direct {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/iv;-><init>([Lcom/google/vr/sdk/widgets/video/deps/l;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_a

    .line 202
    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/lc;->e:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-nez v1, :cond_9

    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/lc;->c:Ljava/util/List;

    .line 203
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 204
    :cond_9
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/iv;

    new-array v2, v11, [Lcom/google/vr/sdk/widgets/video/deps/l;

    aget-object v4, v13, v9

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v5, v8, Lcom/google/vr/sdk/widgets/video/deps/lc;->e:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 205
    invoke-static {v4, v5, v9}, Lcom/google/vr/sdk/widgets/video/deps/ks;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;Z)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/iv;-><init>([Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 206
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_a
    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/lc;->f:Ljava/util/List;

    if-eqz v1, :cond_d

    const/4 v2, 0x0

    .line 209
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 210
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/iv;

    new-array v5, v11, [Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/l;

    aput-object v6, v5, v9

    invoke-direct {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/iv;-><init>([Lcom/google/vr/sdk/widgets/video/deps/l;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    if-eqz v2, :cond_e

    .line 213
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Lcom/google/vr/sdk/widgets/video/deps/l;

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v1, :cond_c

    .line 215
    aget-object v5, v13, v4

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 216
    iget-object v6, v8, Lcom/google/vr/sdk/widgets/video/deps/lc;->e:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 217
    invoke-static {v5, v6, v11}, Lcom/google/vr/sdk/widgets/video/deps/ks;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/l;Z)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 219
    :cond_c
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/iv;

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/iv;-><init>([Lcom/google/vr/sdk/widgets/video/deps/l;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_d
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/iv;

    new-array v2, v11, [Lcom/google/vr/sdk/widgets/video/deps/l;

    const/4 v4, -0x1

    const-string v5, "ID3"

    const-string v6, "application/id3"

    const/4 v8, 0x0

    .line 223
    invoke-static {v5, v6, v8, v4, v8}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/iv;-><init>([Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 224
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/iw;

    new-array v4, v9, [Lcom/google/vr/sdk/widgets/video/deps/iv;

    .line 226
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/vr/sdk/widgets/video/deps/iv;

    invoke-direct {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/iw;-><init>([Lcom/google/vr/sdk/widgets/video/deps/iv;)V

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/iw;

    new-array v4, v11, [Lcom/google/vr/sdk/widgets/video/deps/iv;

    aput-object v1, v4, v9

    invoke-direct {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/iw;-><init>([Lcom/google/vr/sdk/widgets/video/deps/iv;)V

    .line 227
    invoke-virtual {v0, v2, v9, v3}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Lcom/google/vr/sdk/widgets/video/deps/iw;ILcom/google/vr/sdk/widgets/video/deps/iw;)V

    goto :goto_a

    .line 221
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected codecs attribute: "

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_10
    invoke-virtual {v0, v11}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Z)V

    .line 230
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->b()V

    :goto_a
    return-void
.end method

.method private d(J)V
    .locals 16

    move-object/from16 v7, p0

    .line 143
    iget-object v0, v7, Lcom/google/vr/sdk/widgets/video/deps/ks;->b:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/lh;->b()Lcom/google/vr/sdk/widgets/video/deps/lc;

    move-result-object v0

    .line 144
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/lc;->c:Ljava/util/List;

    .line 145
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/lc;->d:Ljava/util/List;

    .line 146
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x1

    add-int/2addr v1, v10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 147
    new-array v2, v1, [Lcom/google/vr/sdk/widgets/video/deps/kv;

    iput-object v2, v7, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    .line 148
    iput v1, v7, Lcom/google/vr/sdk/widgets/video/deps/ks;->m:I

    move-wide/from16 v11, p1

    .line 149
    invoke-direct {v7, v0, v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/ks;->a(Lcom/google/vr/sdk/widgets/video/deps/lc;J)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 151
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_1

    .line 152
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    const/4 v1, 0x1

    new-array v2, v10, [Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    aput-object v5, v2, v13

    const/4 v3, 0x0

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v13, v5

    move-wide/from16 v5, p1

    .line 155
    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ks;->a(I[Lcom/google/vr/sdk/widgets/video/deps/lc$a;Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/util/List;J)Lcom/google/vr/sdk/widgets/video/deps/kv;

    move-result-object v0

    .line 156
    iget-object v1, v7, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    add-int/lit8 v2, v15, 0x1

    aput-object v0, v1, v15

    .line 157
    iget-object v1, v13, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 158
    iget-boolean v3, v7, Lcom/google/vr/sdk/widgets/video/deps/ks;->k:Z

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/iw;

    new-array v3, v10, [Lcom/google/vr/sdk/widgets/video/deps/iv;

    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/iv;

    new-array v5, v10, [Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v6, v13, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    const/4 v13, 0x0

    aput-object v6, v5, v13

    invoke-direct {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/iv;-><init>([Lcom/google/vr/sdk/widgets/video/deps/l;)V

    aput-object v4, v3, v13

    invoke-direct {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/iw;-><init>([Lcom/google/vr/sdk/widgets/video/deps/iv;)V

    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/iw;->a:Lcom/google/vr/sdk/widgets/video/deps/iw;

    invoke-virtual {v0, v1, v13, v3}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Lcom/google/vr/sdk/widgets/video/deps/iw;ILcom/google/vr/sdk/widgets/video/deps/iw;)V

    goto :goto_1

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->b()V

    :goto_1
    add-int/lit8 v14, v14, 0x1

    move v15, v2

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 162
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_2

    .line 163
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    const/4 v1, 0x3

    new-array v2, v10, [Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    const/4 v0, 0x0

    aput-object v8, v2, v0

    const/4 v3, 0x0

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    .line 166
    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ks;->a(I[Lcom/google/vr/sdk/widgets/video/deps/lc$a;Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/util/List;J)Lcom/google/vr/sdk/widgets/video/deps/kv;

    move-result-object v0

    .line 167
    iget-object v1, v7, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    add-int/lit8 v2, v15, 0x1

    aput-object v0, v1, v15

    .line 168
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/iw;

    new-array v3, v10, [Lcom/google/vr/sdk/widgets/video/deps/iv;

    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/iv;

    new-array v5, v10, [Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v6, v8, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    const/4 v8, 0x0

    aput-object v6, v5, v8

    invoke-direct {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/iv;-><init>([Lcom/google/vr/sdk/widgets/video/deps/l;)V

    aput-object v4, v3, v8

    invoke-direct {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/iw;-><init>([Lcom/google/vr/sdk/widgets/video/deps/iv;)V

    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/iw;->a:Lcom/google/vr/sdk/widgets/video/deps/iw;

    invoke-virtual {v0, v1, v8, v3}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Lcom/google/vr/sdk/widgets/video/deps/iw;ILcom/google/vr/sdk/widgets/video/deps/iw;)V

    add-int/lit8 v13, v13, 0x1

    move v15, v2

    goto :goto_2

    .line 170
    :cond_2
    iget-object v0, v7, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    iput-object v0, v7, Lcom/google/vr/sdk/widgets/video/deps/ks;->p:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    return-void
.end method


# virtual methods
.method public a(JLcom/google/vr/sdk/widgets/video/deps/ad;)J
    .locals 0

    return-wide p1
.end method

.method public a([Lcom/google/vr/sdk/widgets/video/deps/nf;[Z[Lcom/google/vr/sdk/widgets/video/deps/is;[ZJ)J
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 35
    array-length v3, v1

    new-array v3, v3, [I

    .line 36
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 37
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 38
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    .line 39
    :cond_0
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/ks;->h:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    invoke-virtual {v7, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_1
    aput v7, v3, v6

    .line 40
    aput v8, v4, v6

    .line 41
    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    .line 42
    aget-object v7, v1, v6

    invoke-interface {v7}, Lcom/google/vr/sdk/widgets/video/deps/nf;->f()Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v7

    const/4 v9, 0x0

    .line 43
    :goto_2
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    array-length v11, v10

    if-ge v9, v11, :cond_2

    .line 44
    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/kv;->f()Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(Lcom/google/vr/sdk/widgets/video/deps/iv;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 45
    aput v9, v4, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 50
    :cond_3
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/ks;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    .line 51
    array-length v6, v1

    new-array v7, v6, [Lcom/google/vr/sdk/widgets/video/deps/is;

    .line 52
    array-length v8, v1

    new-array v8, v8, [Lcom/google/vr/sdk/widgets/video/deps/is;

    .line 53
    array-length v9, v1

    new-array v14, v9, [Lcom/google/vr/sdk/widgets/video/deps/nf;

    .line 55
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    array-length v9, v9

    new-array v15, v9, [Lcom/google/vr/sdk/widgets/video/deps/kv;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    .line 56
    :goto_4
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    array-length v9, v9

    if-ge v13, v9, :cond_10

    const/4 v9, 0x0

    .line 57
    :goto_5
    array-length v10, v1

    if-ge v9, v10, :cond_6

    .line 58
    aget v10, v3, v9

    const/4 v11, 0x0

    if-ne v10, v13, :cond_4

    aget-object v10, v2, v9

    goto :goto_6

    :cond_4
    move-object v10, v11

    :goto_6
    aput-object v10, v8, v9

    .line 59
    aget v10, v4, v9

    if-ne v10, v13, :cond_5

    aget-object v11, v1, v9

    :cond_5
    aput-object v11, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 61
    :cond_6
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    aget-object v11, v9, v13

    move-object v9, v11

    move-object v10, v14

    move-object v5, v11

    move-object/from16 v11, p2

    move v2, v12

    move-object v12, v8

    move/from16 v18, v6

    move v6, v13

    move-object/from16 v13, p4

    move/from16 v20, v2

    move-object/from16 v19, v14

    move-object v2, v15

    move-wide/from16 v14, p5

    move/from16 v16, v17

    .line 62
    invoke-virtual/range {v9 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a([Lcom/google/vr/sdk/widgets/video/deps/nf;[Z[Lcom/google/vr/sdk/widgets/video/deps/is;[ZJZ)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 64
    :goto_7
    array-length v12, v1

    const/4 v13, 0x1

    if-ge v10, v12, :cond_b

    .line 65
    aget v12, v4, v10

    if-ne v12, v6, :cond_8

    .line 66
    aget-object v11, v8, v10

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    :goto_8
    invoke-static {v11}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 67
    aget-object v11, v8, v10

    aput-object v11, v7, v10

    .line 69
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/ks;->h:Ljava/util/IdentityHashMap;

    aget-object v12, v8, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x1

    goto :goto_a

    .line 70
    :cond_8
    aget v12, v3, v10

    if-ne v12, v6, :cond_a

    .line 71
    aget-object v12, v8, v10

    if-nez v12, :cond_9

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    :goto_9
    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    :cond_a
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_b
    if-eqz v11, :cond_e

    .line 74
    aput-object v5, v2, v20

    add-int/lit8 v12, v20, 0x1

    if-nez v20, :cond_d

    .line 76
    invoke-virtual {v5, v13}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Z)V

    if-nez v9, :cond_c

    .line 77
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/ks;->p:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    array-length v10, v9

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    aget-object v9, v9, v10

    if-eq v5, v9, :cond_f

    goto :goto_b

    :cond_c
    const/4 v10, 0x0

    .line 78
    :goto_b
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ks;->i:Lcom/google/vr/sdk/widgets/video/deps/kz;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/kz;->a()V

    const/16 v17, 0x1

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    .line 80
    invoke-virtual {v5, v10}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Z)V

    goto :goto_c

    :cond_e
    const/4 v10, 0x0

    move/from16 v12, v20

    :cond_f
    :goto_c
    add-int/lit8 v13, v6, 0x1

    move-object v15, v2

    move/from16 v6, v18

    move-object/from16 v14, v19

    move-object/from16 v2, p3

    goto/16 :goto_4

    :cond_10
    move-object v5, v2

    move-object v2, v15

    const/4 v10, 0x0

    .line 82
    invoke-static {v7, v10, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/vr/sdk/widgets/video/deps/kv;

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ks;->p:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    .line 84
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/ks;->j:Lcom/google/vr/sdk/widgets/video/deps/hw;

    .line 85
    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/hw;->a([Lcom/google/vr/sdk/widgets/video/deps/it;)Lcom/google/vr/sdk/widgets/video/deps/it;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ks;->q:Lcom/google/vr/sdk/widgets/video/deps/it;

    return-wide p5
.end method

.method public a(J)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->q:Lcom/google/vr/sdk/widgets/video/deps/it;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/it;->a(J)V

    return-void
.end method

.method public a(JZ)V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->p:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 88
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ie$a;J)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->l:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    .line 27
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->b:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/lh;->a(Lcom/google/vr/sdk/widgets/video/deps/lh$a;)V

    .line 28
    invoke-direct {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ks;->d(J)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/it;)V
    .locals 0

    .line 256
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/kv;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ks;->a(Lcom/google/vr/sdk/widgets/video/deps/kv;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/kv;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->l:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/ie$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->b:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lh;->d(Lcom/google/vr/sdk/widgets/video/deps/lc$a;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;J)Z
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 139
    invoke-virtual {v4, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(Lcom/google/vr/sdk/widgets/video/deps/lc$a;J)Z

    move-result v4

    and-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->l:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-interface {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/ie$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    return v2
.end method

.method public a_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 31
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/kv;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(J)J
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->p:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 106
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/kv;->b(JZ)Z

    move-result v0

    const/4 v1, 0x1

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->p:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 108
    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->b(JZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->i:Lcom/google/vr/sdk/widgets/video/deps/kz;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/kz;->a()V

    :cond_1
    return-wide p1
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/iw;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->n:Lcom/google/vr/sdk/widgets/video/deps/iw;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 100
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->r:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->f:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->c()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->r:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public c(J)Z
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->n:Lcom/google/vr/sdk/widgets/video/deps/iw;

    if-nez v0, :cond_1

    .line 94
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    .line 95
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->b()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->q:Lcom/google/vr/sdk/widgets/video/deps/it;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/it;->c(J)Z

    move-result p1

    return p1
.end method

.method public d()J
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->q:Lcom/google/vr/sdk/widgets/video/deps/it;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/it;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->q:Lcom/google/vr/sdk/widgets/video/deps/it;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/it;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->b:Lcom/google/vr/sdk/widgets/video/deps/lh;

    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/lh;->b(Lcom/google/vr/sdk/widgets/video/deps/lh$a;)V

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 21
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/kv;->h()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->l:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->f:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->b()V

    return-void
.end method

.method public g()V
    .locals 11

    .line 114
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->m:I

    if-lez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 118
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/kv;->f()Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v5

    iget v5, v5, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_1
    new-array v0, v4, [Lcom/google/vr/sdk/widgets/video/deps/iv;

    .line 122
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->o:[Lcom/google/vr/sdk/widgets/video/deps/kv;

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    .line 123
    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/kv;->f()Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v7

    iget v7, v7, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_2

    add-int/lit8 v9, v5, 0x1

    .line 125
    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/kv;->f()Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    :cond_3
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/iw;

    invoke-direct {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/iw;-><init>([Lcom/google/vr/sdk/widgets/video/deps/iv;)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->n:Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 129
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->l:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/ie$a;->a(Lcom/google/vr/sdk/widgets/video/deps/ie;)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ks;->l:Lcom/google/vr/sdk/widgets/video/deps/ie$a;

    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/ie$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    return-void
.end method
