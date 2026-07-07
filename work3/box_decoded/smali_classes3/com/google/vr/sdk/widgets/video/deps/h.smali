.class final Lcom/google/vr/sdk/widgets/video/deps/h;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/h$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/vr/sdk/widgets/video/deps/nj;

.field private final b:[Lcom/google/vr/sdk/widgets/video/deps/y;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/ni;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/i;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/vr/sdk/widgets/video/deps/v$c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/af$b;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/af$a;

.field private final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/vr/sdk/widgets/video/deps/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/vr/sdk/widgets/video/deps/if;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Lcom/google/vr/sdk/widgets/video/deps/u;

.field private t:Lcom/google/vr/sdk/widgets/video/deps/ad;

.field private u:Lcom/google/vr/sdk/widgets/video/deps/f;

.field private v:Lcom/google/vr/sdk/widgets/video/deps/t;

.field private w:I

.field private x:I

.field private y:J


# direct methods
.method public constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/o;Lcom/google/vr/sdk/widgets/video/deps/nn;Lcom/google/vr/sdk/widgets/video/deps/oq;Landroid/os/Looper;)V
    .locals 14

    move-object v12, p0

    move-object v1, p1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/ps;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Init "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ExoPlayerLib/2.8.4"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    array-length v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 4
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/sdk/widgets/video/deps/y;

    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->b:[Lcom/google/vr/sdk/widgets/video/deps/y;

    .line 5
    invoke-static/range {p2 .. p2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ni;

    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->c:Lcom/google/vr/sdk/widgets/video/deps/ni;

    .line 6
    iput-boolean v2, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->l:Z

    .line 7
    iput v2, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->n:I

    .line 8
    iput-boolean v2, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->o:Z

    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/nj;

    array-length v0, v1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/ab;

    array-length v2, v1

    new-array v2, v2, [Lcom/google/vr/sdk/widgets/video/deps/nf;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/nj;-><init>([Lcom/google/vr/sdk/widgets/video/deps/ab;[Lcom/google/vr/sdk/widgets/video/deps/nf;Ljava/lang/Object;)V

    iput-object v3, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->a:Lcom/google/vr/sdk/widgets/video/deps/nj;

    .line 11
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/af$b;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/af$b;-><init>()V

    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->h:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    .line 12
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/af$a;-><init>()V

    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->i:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 13
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/u;->a:Lcom/google/vr/sdk/widgets/video/deps/u;

    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->s:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 14
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ad;->e:Lcom/google/vr/sdk/widgets/video/deps/ad;

    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->t:Lcom/google/vr/sdk/widgets/video/deps/ad;

    .line 15
    new-instance v9, Lcom/google/vr/sdk/widgets/video/deps/h$1;

    move-object/from16 v0, p6

    invoke-direct {v9, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/h$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/h;Landroid/os/Looper;)V

    iput-object v9, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->d:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    .line 16
    invoke-static {v4, v5, v3}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(JLcom/google/vr/sdk/widgets/video/deps/nj;)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object v0

    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 17
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->j:Ljava/util/ArrayDeque;

    .line 18
    new-instance v13, Lcom/google/vr/sdk/widgets/video/deps/i;

    iget-boolean v6, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->l:Z

    iget v7, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->n:I

    iget-boolean v8, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->o:Z

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v10, p0

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/i;-><init>([Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/nj;Lcom/google/vr/sdk/widgets/video/deps/o;Lcom/google/vr/sdk/widgets/video/deps/nn;ZIZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/g;Lcom/google/vr/sdk/widgets/video/deps/oq;)V

    iput-object v13, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->e:Lcom/google/vr/sdk/widgets/video/deps/i;

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v13}, Lcom/google/vr/sdk/widgets/video/deps/i;->b()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/h;->f:Landroid/os/Handler;

    return-void
.end method

.method private A()Z
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->p:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/if$a;J)J
    .locals 2

    .line 292
    invoke-static {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide p2

    .line 293
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->i:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 294
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->i:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b()J

    move-result-wide v0

    add-long/2addr p2, v0

    return-wide p2
.end method

.method private a(ZZI)Lcom/google/vr/sdk/widgets/video/deps/t;
    .locals 22

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 271
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->w:I

    .line 272
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->x:I

    const-wide/16 v1, 0x0

    .line 273
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->y:J

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentWindowIndex()I

    move-result v1

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->w:I

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->m()I

    move-result v1

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->x:I

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->y:J

    .line 277
    :goto_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/t;

    if-eqz p2, :cond_1

    .line 278
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/af;->a:Lcom/google/vr/sdk/widgets/video/deps/af;

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    :goto_1
    move-object v4, v2

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 279
    :cond_2
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->c:Ljava/lang/Object;

    :goto_2
    move-object v5, v2

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v6, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v7, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->e:J

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v9, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    const/4 v12, 0x0

    if-eqz p2, :cond_3

    .line 280
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/iw;->a:Lcom/google/vr/sdk/widgets/video/deps/iw;

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    :goto_3
    move-object v13, v2

    if-eqz p2, :cond_4

    .line 281
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->a:Lcom/google/vr/sdk/widgets/video/deps/nj;

    goto :goto_4

    :cond_4
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    :goto_4
    move-object v14, v2

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v15, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->e:J

    move-wide/from16 v16, v2

    const-wide/16 v18, 0x0

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->e:J

    move-wide/from16 v20, v2

    move-object v3, v1

    move/from16 v11, p3

    invoke-direct/range {v3 .. v21}, Lcom/google/vr/sdk/widgets/video/deps/t;-><init>(Lcom/google/vr/sdk/widgets/video/deps/af;Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJIZLcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nj;Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJ)V

    return-object v1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/t;IZI)V
    .locals 7

    .line 252
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->p:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->p:I

    if-nez v0, :cond_4

    .line 254
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 255
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    move-object v0, p1

    .line 256
    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/t;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 257
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->q:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 258
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 259
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->x:I

    .line 260
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->w:I

    const-wide/16 v2, 0x0

    .line 261
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->y:J

    .line 262
    :cond_2
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->q:Z

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    const/4 v4, 0x2

    .line 265
    :goto_0
    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->r:Z

    .line 266
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->q:Z

    .line 267
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->r:Z

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p3

    move v3, p4

    .line 268
    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/t;ZIIZZ)V

    :cond_4
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/t;ZIIZZ)V
    .locals 15

    move-object v0, p0

    .line 283
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 284
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->j:Ljava/util/ArrayDeque;

    new-instance v14, Lcom/google/vr/sdk/widgets/video/deps/h$a;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->c:Lcom/google/vr/sdk/widgets/video/deps/ni;

    iget-boolean v12, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->l:Z

    move-object v3, v14

    move-object/from16 v4, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v13, p6

    invoke-direct/range {v3 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/h$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/t;Lcom/google/vr/sdk/widgets/video/deps/t;Ljava/util/Set;Lcom/google/vr/sdk/widgets/video/deps/ni;ZIIZZZ)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    .line 285
    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    if-eqz v1, :cond_0

    return-void

    .line 288
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/h$a;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/h$a;->a()V

    .line 290
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/h;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Looper;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->e:Lcom/google/vr/sdk/widgets/video/deps/i;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/i;->b()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;
    .locals 7

    .line 137
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/x;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->e:Lcom/google/vr/sdk/widgets/video/deps/i;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 138
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentWindowIndex()I

    move-result v4

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->f:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/x;-><init>(Lcom/google/vr/sdk/widgets/video/deps/x$a;Lcom/google/vr/sdk/widgets/video/deps/x$b;Lcom/google/vr/sdk/widgets/video/deps/af;ILandroid/os/Handler;)V

    return-object v6
.end method

.method public a(I)V
    .locals 2

    .line 49
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->n:I

    if-eq v0, p1, :cond_0

    .line 50
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->n:I

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->e:Lcom/google/vr/sdk/widgets/video/deps/i;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(I)V

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/v$c;

    .line 53
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/v$c;->onRepeatModeChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(IJ)V
    .locals 10

    .line 72
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    if-ltz p1, :cond_6

    .line 73
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->b()I

    move-result v1

    if-ge p1, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 75
    iput-boolean v7, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->r:Z

    .line 76
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->p:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->p:I

    .line 77
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->t()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    .line 78
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->d:Landroid/os/Handler;

    const/4 p2, -0x1

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    .line 80
    invoke-virtual {p1, v2, v7, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 83
    :cond_1
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->w:I

    .line 84
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    cmp-long v1, p2, v3

    if-nez v1, :cond_2

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_2
    move-wide v3, p2

    .line 85
    :goto_0
    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->y:J

    .line 86
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->x:I

    goto :goto_2

    :cond_3
    cmp-long v1, p2, v3

    if-nez v1, :cond_4

    .line 88
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->h:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$b;)Lcom/google/vr/sdk/widgets/video/deps/af$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/af$b;->b()J

    move-result-wide v1

    goto :goto_1

    :cond_4
    invoke-static {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v1

    :goto_1
    move-wide v8, v1

    .line 89
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->h:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->i:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-object v1, v0

    move v4, p1

    move-wide v5, v8

    .line 90
    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Lcom/google/vr/sdk/widgets/video/deps/af$b;Lcom/google/vr/sdk/widgets/video/deps/af$a;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 91
    invoke-static {v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->y:J

    .line 92
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->x:I

    .line 93
    :goto_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->e:Lcom/google/vr/sdk/widgets/video/deps/i;

    invoke-static {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide p2

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/af;IJ)V

    .line 94
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/v$c;

    .line 95
    invoke-interface {p2, v7}, Lcom/google/vr/sdk/widgets/video/deps/v$c;->onPositionDiscontinuity(I)V

    goto :goto_3

    :cond_5
    return-void

    .line 74
    :cond_6
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/n;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/n;-><init>(Lcom/google/vr/sdk/widgets/video/deps/af;IJ)V

    throw v1
.end method

.method a(Landroid/os/Message;)V
    .locals 5

    .line 235
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 244
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/f;

    .line 245
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->u:Lcom/google/vr/sdk/widgets/video/deps/f;

    .line 246
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/v$c;

    .line 247
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/v$c;->onPlayerError(Lcom/google/vr/sdk/widgets/video/deps/f;)V

    goto :goto_0

    .line 250
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 238
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 239
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->s:Lcom/google/vr/sdk/widgets/video/deps/u;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 240
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->s:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 241
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/v$c;

    .line 242
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/v$c;->onPlaybackParametersChanged(Lcom/google/vr/sdk/widgets/video/deps/u;)V

    goto :goto_1

    .line 236
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/t;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/t;IZI)V

    :cond_4
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ad;)V
    .locals 1

    if-nez p1, :cond_0

    .line 104
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/ad;->e:Lcom/google/vr/sdk/widgets/video/deps/ad;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->t:Lcom/google/vr/sdk/widgets/video/deps/ad;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ad;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->t:Lcom/google/vr/sdk/widgets/video/deps/ad;

    .line 107
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->e:Lcom/google/vr/sdk/widgets/video/deps/i;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/ad;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/if;ZZ)V
    .locals 8

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->u:Lcom/google/vr/sdk/widgets/video/deps/f;

    .line 30
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->k:Lcom/google/vr/sdk/widgets/video/deps/if;

    const/4 v0, 0x2

    .line 32
    invoke-direct {p0, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(ZZI)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object v2

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->q:Z

    .line 34
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->p:I

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->e:Lcom/google/vr/sdk/widgets/video/deps/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Lcom/google/vr/sdk/widgets/video/deps/if;ZZ)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 36
    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/t;ZIIZZ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/u;)V
    .locals 1

    if-nez p1, :cond_0

    .line 99
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/u;->a:Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->e:Lcom/google/vr/sdk/widgets/video/deps/i;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Lcom/google/vr/sdk/widgets/video/deps/u;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/v$c;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 57
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->o:Z

    if-eq v0, p1, :cond_0

    .line 58
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->o:Z

    .line 59
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->e:Lcom/google/vr/sdk/widgets/video/deps/i;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->b(Z)V

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/v$c;

    .line 61
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/v$c;->onShuffleModeEnabledChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 7

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 41
    :goto_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->m:Z

    if-eq v0, p2, :cond_1

    .line 42
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->m:Z

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->e:Lcom/google/vr/sdk/widgets/video/deps/i;

    invoke-virtual {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/i;->a(Z)V

    .line 44
    :cond_1
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->l:Z

    if-eq p2, p1, :cond_2

    .line 45
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->l:Z

    .line 46
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/t;ZIIZZ)V

    :cond_2
    return-void
.end method

.method public varargs a([Lcom/google/vr/sdk/widgets/video/deps/g$a;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 134
    iget-object v3, v2, Lcom/google/vr/sdk/widgets/video/deps/g$a;->a:Lcom/google/vr/sdk/widgets/video/deps/x$b;

    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/g$a;->b:I

    invoke-virtual {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(I)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v3

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/g$a;->c:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/x;->i()Lcom/google/vr/sdk/widgets/video/deps/x;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addListener(Lcom/google/vr/sdk/widgets/video/deps/v$c;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Landroid/os/Looper;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(IJ)V

    return-void
.end method

.method public b(Z)V
    .locals 8

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->u:Lcom/google/vr/sdk/widgets/video/deps/f;

    .line 119
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->k:Lcom/google/vr/sdk/widgets/video/deps/if;

    :cond_0
    const/4 v0, 0x1

    .line 121
    invoke-direct {p0, p1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(ZZI)Lcom/google/vr/sdk/widgets/video/deps/t;

    move-result-object v2

    .line 122
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->p:I

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->e:Lcom/google/vr/sdk/widgets/video/deps/i;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/i;->c(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 124
    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/t;ZIIZZ)V

    return-void
.end method

.method public varargs b([Lcom/google/vr/sdk/widgets/video/deps/g$a;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 142
    iget-object v5, v4, Lcom/google/vr/sdk/widgets/video/deps/g$a;->a:Lcom/google/vr/sdk/widgets/video/deps/x$b;

    .line 143
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/x$b;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v5

    iget v6, v4, Lcom/google/vr/sdk/widgets/video/deps/g$a;->b:I

    .line 144
    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(I)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v5

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/g$a;->c:Ljava/lang/Object;

    .line 145
    invoke-virtual {v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/x;->a(Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v4

    .line 146
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/x;->i()Lcom/google/vr/sdk/widgets/video/deps/x;

    move-result-object v4

    .line 147
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/x;

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_1

    .line 153
    :try_start_0
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/x;->k()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    goto :goto_1

    :catch_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    return-void
.end method

.method public c()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->g:I

    return v0
.end method

.method public c(I)I
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->b:[Lcom/google/vr/sdk/widgets/video/deps/y;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->getTrackType()I

    move-result p1

    return p1
.end method

.method public d()Lcom/google/vr/sdk/widgets/video/deps/f;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->u:Lcom/google/vr/sdk/widgets/video/deps/f;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->l:Z

    return v0
.end method

.method public f()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->n:I

    return v0
.end method

.method public g()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->o:Z

    return v0
.end method

.method public getContentPosition()J
    .locals 4

    .line 212
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->i:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 214
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->i:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentPosition()J
    .locals 3

    .line 183
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->y:J

    return-wide v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->n:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/vr/sdk/widgets/video/deps/af;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 3

    .line 166
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->w:I

    return v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->i:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object v0

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c:I

    return v0
.end method

.method public getDuration()J
    .locals 4

    .line 177
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    .line 179
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->i:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 180
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->i:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->b:I

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->c:I

    invoke-virtual {v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c(II)J

    move-result-wide v0

    .line 181
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalBufferedDuration()J
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->m:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->h:Z

    return v0
.end method

.method public i()V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->b(I)V

    return-void
.end method

.method public j()Lcom/google/vr/sdk/widgets/video/deps/u;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->s:Lcom/google/vr/sdk/widgets/video/deps/u;

    return-object v0
.end method

.method public k()Lcom/google/vr/sdk/widgets/video/deps/ad;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->t:Lcom/google/vr/sdk/widgets/video/deps/ad;

    return-object v0
.end method

.method public l()Ljava/lang/Object;
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentWindowIndex()I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->b()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->h:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$b;Z)Lcom/google/vr/sdk/widgets/video/deps/af$b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/af$b;->a:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public m()I
    .locals 2

    .line 163
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->x:I

    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 170
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentWindowIndex()I

    move-result v1

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->n:I

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->o:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public o()I
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 174
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentWindowIndex()I

    move-result v1

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->n:I

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->o:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/af;->b(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public p()J
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->k:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->l:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()I
    .locals 9

    .line 194
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->p()J

    move-result-wide v0

    .line 195
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getDuration()J

    move-result-wide v2

    const/16 v4, 0x64

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x64

    mul-long v0, v0, v6

    .line 198
    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1, v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(III)I

    move-result v4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public r()Z
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 202
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->h:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$b;)Lcom/google/vr/sdk/widgets/video/deps/af$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/af$b;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 5

    .line 126
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/ps;->e:Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ExoPlayerLib/2.8.4"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 128
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->k:Lcom/google/vr/sdk/widgets/video/deps/if;

    .line 130
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->e:Lcom/google/vr/sdk/widgets/video/deps/i;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/i;->a()V

    .line 131
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public s()Z
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 204
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->h:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$b;)Lcom/google/vr/sdk/widgets/video/deps/af$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/af$b;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public seekTo(J)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(IJ)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(ZZ)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->b(Z)V

    return-void
.end method

.method public t()Z
    .locals 1

    .line 205
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->A()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()J
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->h:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$b;)Lcom/google/vr/sdk/widgets/video/deps/af$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af$b;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public v()J
    .locals 6

    .line 216
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->y:J

    return-wide v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->k:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 219
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->h:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$b;)Lcom/google/vr/sdk/widgets/video/deps/af$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af$b;->c()J

    move-result-wide v0

    return-wide v0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->l:J

    .line 221
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->k:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->b:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->k:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->i:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/t;->k:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->b:I

    .line 225
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 227
    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->d:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    .line 228
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/t;->k:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/h;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()I
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->b:[Lcom/google/vr/sdk/widgets/video/deps/y;

    array-length v0, v0

    return v0
.end method

.method public x()Lcom/google/vr/sdk/widgets/video/deps/iw;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->i:Lcom/google/vr/sdk/widgets/video/deps/iw;

    return-object v0
.end method

.method public y()Lcom/google/vr/sdk/widgets/video/deps/nh;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->j:Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    return-object v0
.end method

.method public z()Ljava/lang/Object;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/h;->v:Lcom/google/vr/sdk/widgets/video/deps/t;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/t;->c:Ljava/lang/Object;

    return-object v0
.end method
