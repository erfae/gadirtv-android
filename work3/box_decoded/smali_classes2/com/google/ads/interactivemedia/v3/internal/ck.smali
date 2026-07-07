.class final Lcom/google/ads/interactivemedia/v3/internal/ck;
.super Lcom/google/ads/interactivemedia/v3/internal/bi;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/dx;


# instance fields
.field final b:Lcom/google/ads/interactivemedia/v3/internal/yx;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/yw;

.field private final d:Landroid/os/Handler;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/cs;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/cv;

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/ads/interactivemedia/v3/internal/bg;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/ep;

.field private final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/bu;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Z

.field private final m:Lcom/google/ads/interactivemedia/v3/internal/ev;

.field private final n:Landroid/os/Looper;

.field private final o:Lcom/google/ads/interactivemedia/v3/internal/zh;

.field private p:I

.field private q:Z

.field private r:I

.field private s:I

.field private t:Lcom/google/ads/interactivemedia/v3/internal/du;

.field private u:I

.field private v:J

.field private w:Lcom/google/ads/interactivemedia/v3/internal/sw;


# direct methods
.method public constructor <init>([Lcom/google/ads/interactivemedia/v3/internal/ed;Lcom/google/ads/interactivemedia/v3/internal/yw;Lcom/google/ads/interactivemedia/v3/internal/bl;Lcom/google/ads/interactivemedia/v3/internal/zh;Lcom/google/ads/interactivemedia/v3/internal/ev;ZLcom/google/ads/interactivemedia/v3/internal/eg;ZLcom/google/ads/interactivemedia/v3/internal/abb;Landroid/os/Looper;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v10, p10

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;-><init>()V

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1e

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Init "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [ExoPlayerLib/2.12.0] ["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/abh;->a(Ljava/lang/String;)V

    move-object v2, p1

    .line 3
    array-length v1, v2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    .line 4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/ads/interactivemedia/v3/internal/ed;

    .line 5
    invoke-static/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->c:Lcom/google/ads/interactivemedia/v3/internal/yw;

    iput-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->o:Lcom/google/ads/interactivemedia/v3/internal/zh;

    iput-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->m:Lcom/google/ads/interactivemedia/v3/internal/ev;

    move/from16 v1, p6

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->l:Z

    iput-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->n:Landroid/os/Looper;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->k:Ljava/util/List;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 8
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/sw;-><init>()V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->w:Lcom/google/ads/interactivemedia/v3/internal/sw;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/yx;

    const/4 v1, 0x2

    new-array v5, v1, [Lcom/google/ads/interactivemedia/v3/internal/ef;

    new-array v1, v1, [Lcom/google/ads/interactivemedia/v3/internal/yr;

    const/4 v8, 0x0

    .line 9
    invoke-direct {v4, v5, v1, v8}, Lcom/google/ads/interactivemedia/v3/internal/yx;-><init>([Lcom/google/ads/interactivemedia/v3/internal/ef;[Lcom/google/ads/interactivemedia/v3/internal/yr;Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->b:Lcom/google/ads/interactivemedia/v3/internal/yx;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 10
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/ep;-><init>()V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->u:I

    new-instance v1, Landroid/os/Handler;

    .line 11
    invoke-direct {v1, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->d:Landroid/os/Handler;

    new-instance v12, Lcom/google/ads/interactivemedia/v3/internal/bq;

    .line 12
    invoke-direct {v12, p0}, Lcom/google/ads/interactivemedia/v3/internal/bq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    iput-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->e:Lcom/google/ads/interactivemedia/v3/internal/cs;

    .line 13
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(Lcom/google/ads/interactivemedia/v3/internal/yx;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    new-instance v1, Ljava/util/ArrayDeque;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->j:Ljava/util/ArrayDeque;

    if-eqz v7, :cond_0

    .line 15
    invoke-virtual {v7, p0}, Lcom/google/ads/interactivemedia/v3/internal/ev;->a(Lcom/google/ads/interactivemedia/v3/internal/dx;)V

    .line 16
    invoke-virtual {p0, v7}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/dw;)V

    new-instance v1, Landroid/os/Handler;

    .line 17
    invoke-direct {v1, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v6, v1, v7}, Lcom/google/ads/interactivemedia/v3/internal/zh;->a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/zg;)V

    .line 18
    :cond_0
    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/cv;

    const/4 v9, 0x0

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p10

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/cv;-><init>([Lcom/google/ads/interactivemedia/v3/internal/ed;Lcom/google/ads/interactivemedia/v3/internal/yw;Lcom/google/ads/interactivemedia/v3/internal/yx;Lcom/google/ads/interactivemedia/v3/internal/bl;Lcom/google/ads/interactivemedia/v3/internal/zh;Lcom/google/ads/interactivemedia/v3/internal/ev;Lcom/google/ads/interactivemedia/v3/internal/eg;ZLandroid/os/Looper;Lcom/google/ads/interactivemedia/v3/internal/abb;Lcom/google/ads/interactivemedia/v3/internal/cs;)V

    iput-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->f:Lcom/google/ads/interactivemedia/v3/internal/cv;

    new-instance v1, Landroid/os/Handler;

    .line 19
    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/internal/cv;->e()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->g:Landroid/os/Handler;

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/er;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/er;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->u:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->v:J

    const/4 p1, 0x0

    return-object p1

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v0

    if-lt p2, v0, :cond_2

    const/4 p2, 0x0

    .line 57
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/er;->b(Z)I

    move-result p2

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->a:Lcom/google/ads/interactivemedia/v3/internal/eq;

    .line 58
    invoke-virtual {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/eq;->a()J

    move-result-wide p3

    :cond_2
    move v3, p2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->a:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 59
    invoke-static {p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Lcom/google/ads/interactivemedia/v3/internal/eq;Lcom/google/ads/interactivemedia/v3/internal/ep;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/du;Lcom/google/ads/interactivemedia/v3/internal/er;Landroid/util/Pair;)Lcom/google/ads/interactivemedia/v3/internal/du;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/du;",
            "Lcom/google/ads/interactivemedia/v3/internal/er;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/internal/du;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    move-object/from16 v3, p1

    .line 67
    iget-object v5, v3, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 68
    invoke-virtual/range {p1 .. p2}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(Lcom/google/ads/interactivemedia/v3/internal/er;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v6

    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/du;->a()Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->v:J

    .line 70
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v8

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->v:J

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    .line 71
    sget-object v14, Lcom/google/ads/interactivemedia/v3/internal/tb;->a:Lcom/google/ads/interactivemedia/v3/internal/tb;

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->b:Lcom/google/ads/interactivemedia/v3/internal/yx;

    move-object v7, v1

    .line 72
    invoke-virtual/range {v6 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;JJJLcom/google/ads/interactivemedia/v3/internal/tb;Lcom/google/ads/interactivemedia/v3/internal/yx;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/du;->p:J

    iput-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/du;->n:J

    return-object v1

    :cond_2
    iget-object v3, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 74
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 75
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_3

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 76
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/ro;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 98
    :cond_3
    iget-object v8, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    :goto_2
    move-object v15, v8

    .line 77
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->p()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v8

    .line 79
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 80
    invoke-virtual {v5, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ep;->b()J

    move-result-wide v2

    sub-long/2addr v8, v2

    :cond_4
    if-nez v7, :cond_a

    cmp-long v2, v12, v8

    if-gez v2, :cond_5

    goto/16 :goto_4

    :cond_5
    if-nez v2, :cond_8

    .line 84
    iget-object v2, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->i:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 85
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 86
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 87
    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v2

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    iget-object v3, v15, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 88
    invoke-virtual {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v3

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    if-eq v2, v3, :cond_d

    .line 89
    :cond_6
    iget-object v2, v15, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 90
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 91
    iget v2, v15, Lcom/google/ads/interactivemedia/v3/internal/ro;->b:I

    iget v3, v15, Lcom/google/ads/interactivemedia/v3/internal/ro;->c:I

    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ep;->c(II)J

    move-result-wide v1

    goto :goto_3

    .line 94
    :cond_7
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 92
    iget-wide v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ep;->d:J

    .line 91
    :goto_3
    iget-wide v8, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->p:J

    iget-wide v10, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->p:J

    iget-wide v3, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->p:J

    sub-long v12, v1, v3

    iget-object v14, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->g:Lcom/google/ads/interactivemedia/v3/internal/tb;

    iget-object v3, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->h:Lcom/google/ads/interactivemedia/v3/internal/yx;

    move-object v7, v15

    move-object v5, v15

    move-object v15, v3

    .line 93
    invoke-virtual/range {v6 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;JJJLcom/google/ads/interactivemedia/v3/internal/tb;Lcom/google/ads/interactivemedia/v3/internal/yx;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v3

    .line 94
    invoke-virtual {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v6

    iput-wide v1, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->n:J

    goto/16 :goto_7

    :cond_8
    move-object v5, v15

    .line 95
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    const-wide/16 v1, 0x0

    iget-wide v3, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->o:J

    sub-long v7, v12, v8

    sub-long/2addr v3, v7

    .line 96
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-wide v3, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->n:J

    iget-object v7, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->i:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v8, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 97
    invoke-virtual {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/ro;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    add-long v3, v12, v1

    :cond_9
    iget-object v14, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->g:Lcom/google/ads/interactivemedia/v3/internal/tb;

    iget-object v15, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->h:Lcom/google/ads/interactivemedia/v3/internal/yx;

    move-object v7, v5

    move-wide v8, v12

    move-wide v10, v12

    move-wide v12, v1

    .line 98
    invoke-virtual/range {v6 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;JJJLcom/google/ads/interactivemedia/v3/internal/tb;Lcom/google/ads/interactivemedia/v3/internal/yx;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v6

    iput-wide v3, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->n:J

    goto :goto_7

    :cond_a
    :goto_4
    move-object v5, v15

    .line 81
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    if-eqz v7, :cond_b

    .line 82
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/tb;->a:Lcom/google/ads/interactivemedia/v3/internal/tb;

    goto :goto_5

    .line 84
    :cond_b
    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->g:Lcom/google/ads/interactivemedia/v3/internal/tb;

    :goto_5
    move-object v14, v1

    if-eqz v7, :cond_c

    .line 82
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->b:Lcom/google/ads/interactivemedia/v3/internal/yx;

    goto :goto_6

    .line 84
    :cond_c
    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->h:Lcom/google/ads/interactivemedia/v3/internal/yx;

    :goto_6
    move-object v15, v1

    const-wide/16 v1, 0x0

    move-object v7, v5

    move-wide v8, v12

    move-wide v10, v12

    move-wide v3, v12

    move-wide v12, v1

    .line 83
    invoke-virtual/range {v6 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;JJJLcom/google/ads/interactivemedia/v3/internal/tb;Lcom/google/ads/interactivemedia/v3/internal/yx;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v6

    iput-wide v3, v6, Lcom/google/ads/interactivemedia/v3/internal/du;->n:J

    :cond_d
    :goto_7
    return-object v6
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/du;ZIIIZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v2, p1

    move/from16 v7, p3

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 170
    iget-object v1, v3, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 171
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/er;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    .line 176
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    xor-int/2addr v1, v4

    .line 172
    iget-object v6, v3, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 173
    iget-object v8, v2, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 174
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v9

    const/4 v10, -0x1

    .line 190
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    if-eqz v9, :cond_0

    .line 174
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v1, Landroid/util/Pair;

    .line 190
    invoke-direct {v1, v12, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 175
    :cond_0
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v9

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v13

    const/4 v14, 0x3

    if-eq v9, v13, :cond_1

    new-instance v1, Landroid/util/Pair;

    .line 176
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 177
    :cond_1
    iget-object v9, v3, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v9, v9, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 178
    invoke-virtual {v6, v9, v13}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v9

    iget v9, v9, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->a:Lcom/google/ads/interactivemedia/v3/internal/eq;

    .line 179
    invoke-virtual {v6, v9, v13}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object v6

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/eq;->b:Ljava/lang/Object;

    .line 180
    iget-object v9, v2, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v9, v9, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 181
    invoke-virtual {v8, v9, v13}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v9

    iget v9, v9, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->a:Lcom/google/ads/interactivemedia/v3/internal/eq;

    .line 182
    invoke-virtual {v8, v9, v13}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object v9

    iget-object v9, v9, Lcom/google/ads/interactivemedia/v3/internal/eq;->b:Ljava/lang/Object;

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->a:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget v13, v13, Lcom/google/ads/interactivemedia/v3/internal/eq;->l:I

    .line 183
    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz p2, :cond_2

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    if-ne v7, v4, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const/4 v4, 0x3

    :goto_0
    new-instance v1, Landroid/util/Pair;

    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 189
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 184
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_5
    if-eqz p2, :cond_6

    if-nez v7, :cond_6

    .line 186
    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 187
    invoke-virtual {v8, v1}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v13, :cond_6

    new-instance v1, Landroid/util/Pair;

    .line 189
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 184
    :cond_6
    new-instance v1, Landroid/util/Pair;

    .line 188
    invoke-direct {v1, v12, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    :goto_1
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 192
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v1, 0x0

    if-eqz v9, :cond_7

    .line 193
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v4

    if-nez v4, :cond_7

    .line 194
    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 195
    invoke-virtual {v1, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v1

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    .line 196
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->a:Lcom/google/ads/interactivemedia/v3/internal/eq;

    invoke-virtual {v4, v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/eq;->c:Lcom/google/ads/interactivemedia/v3/internal/dg;

    :cond_7
    move-object v11, v1

    new-instance v14, Lcom/google/ads/interactivemedia/v3/internal/cj;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ck;->c:Lcom/google/ads/interactivemedia/v3/internal/yw;

    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v12, p5

    move/from16 v13, p6

    .line 197
    invoke-direct/range {v1 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/cj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/du;Lcom/google/ads/interactivemedia/v3/internal/du;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/ads/interactivemedia/v3/internal/yw;ZIIZILcom/google/ads/interactivemedia/v3/internal/dg;IZ)V

    invoke-direct {p0, v14}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->j:Ljava/util/ArrayDeque;

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->j:Ljava/util/ArrayDeque;

    .line 100
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    xor-int/lit8 p1, v0, 0x1

    if-nez p1, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->j:Ljava/util/ArrayDeque;

    .line 101
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->j:Ljava/util/ArrayDeque;

    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->j:Ljava/util/ArrayDeque;

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static final synthetic a(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/ads/interactivemedia/v3/internal/bh;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->c(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/ads/interactivemedia/v3/internal/bh;)V

    return-void
.end method

.method static synthetic b(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/ads/interactivemedia/v3/internal/bh;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->c(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/ads/interactivemedia/v3/internal/bh;)V

    return-void
.end method

.method private static c(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/ads/interactivemedia/v3/internal/bh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/ads/interactivemedia/v3/internal/bg;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/bh;",
            ")V"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/bg;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/bg;->a:Lcom/google/ads/interactivemedia/v3/internal/dw;

    .line 64
    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bh;->a(Lcom/google/ads/interactivemedia/v3/internal/dw;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final s()I
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 44
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->u:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 45
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    invoke-virtual {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v0

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ep;->c:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/dz;)Lcom/google/ads/interactivemedia/v3/internal/ea;
    .locals 7

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/ea;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->f:Lcom/google/ads/interactivemedia/v3/internal/cv;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 22
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 23
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->i()I

    move-result v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->g:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ea;-><init>(Lcom/google/ads/interactivemedia/v3/internal/dy;Lcom/google/ads/interactivemedia/v3/internal/dz;Lcom/google/ads/interactivemedia/v3/internal/er;ILandroid/os/Handler;)V

    return-object v6
.end method

.method public final a(I)V
    .locals 12

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 120
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    if-ltz p1, :cond_3

    .line 121
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v1

    if-ge p1, v1, :cond_3

    :cond_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->p:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->p:I

    .line 122
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "ExoPlayerImpl"

    const-string v0, "seekTo ignored because an ad is playing"

    .line 123
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->e:Lcom/google/ads/interactivemedia/v3/internal/cs;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cr;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 124
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/du;)V

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cs;->a(Lcom/google/ads/interactivemedia/v3/internal/cr;)V

    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->d()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 126
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(I)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 127
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/er;IJ)Landroid/util/Pair;

    move-result-object v4

    .line 128
    invoke-direct {p0, v1, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/du;Lcom/google/ads/interactivemedia/v3/internal/er;Landroid/util/Pair;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v6

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->f:Lcom/google/ads/interactivemedia/v3/internal/cv;

    .line 129
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(Lcom/google/ads/interactivemedia/v3/internal/er;IJ)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v5, p0

    .line 130
    invoke-direct/range {v5 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/du;ZIIIZ)V

    return-void

    :cond_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/db;

    .line 131
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/db;-><init>()V

    throw p1
.end method

.method final synthetic a(Lcom/google/ads/interactivemedia/v3/internal/cr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/bt;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bt;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;Lcom/google/ads/interactivemedia/v3/internal/cr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/dw;)V
    .locals 2

    .line 20
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/bg;

    .line 21
    invoke-direct {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/bg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/dw;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/rq;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 133
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 134
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/rq;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    instance-of v3, v3, Lcom/google/ads/interactivemedia/v3/internal/tf;

    if-eqz v3, :cond_1

    if-gt v0, v4, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 161
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->s()I

    .line 137
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->k()J

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->p:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->p:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->k:Ljava/util/List;

    .line 138
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->k:Ljava/util/List;

    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_2
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->k:Ljava/util/List;

    .line 140
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->w:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 141
    invoke-virtual {v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/sw;->b(II)Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->w:Lcom/google/ads/interactivemedia/v3/internal/sw;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->k:Ljava/util/List;

    .line 142
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    .line 143
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 144
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/dq;

    .line 145
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->l:Z

    invoke-direct {v2, v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/dq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/rq;Z)V

    .line 146
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->k:Ljava/util/List;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/bu;

    iget-object v7, v2, Lcom/google/ads/interactivemedia/v3/internal/dq;->b:Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/dq;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/rk;->i()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v2

    .line 147
    invoke-direct {v5, v7, v2}, Lcom/google/ads/interactivemedia/v3/internal/bu;-><init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/er;)V

    .line 148
    invoke-interface {v3, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->w:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 149
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 150
    invoke-virtual {p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/sw;->a(II)Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->w:Lcom/google/ads/interactivemedia/v3/internal/sw;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/eb;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->w:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 151
    invoke-direct {p1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/eb;-><init>(Ljava/util/Collection;Lcom/google/ads/interactivemedia/v3/internal/sw;)V

    .line 152
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_4

    .line 159
    :cond_6
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/db;

    .line 160
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/db;-><init>()V

    throw p1

    .line 152
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 153
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/er;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 154
    invoke-direct {p0, v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/du;Lcom/google/ads/interactivemedia/v3/internal/er;Landroid/util/Pair;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v0

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->d:I

    const/4 v5, 0x4

    if-eq v1, v4, :cond_a

    .line 155
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result p1

    if-gtz p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x2

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v1, 0x4

    .line 156
    :cond_a
    :goto_6
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(I)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object p1

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->f:Lcom/google/ads/interactivemedia/v3/internal/cv;

    const/4 v7, 0x0

    .line 157
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->w:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 158
    invoke-virtual/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(Ljava/util/List;IJLcom/google/ads/interactivemedia/v3/internal/sw;)V

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v7, p0

    move-object v8, p1

    .line 159
    invoke-direct/range {v7 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/du;ZIIIZ)V

    return-void
.end method

.method public final a(ZII)V
    .locals 9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 162
    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->j:Z

    if-ne v1, p1, :cond_0

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->k:I

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->p:I

    .line 163
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(ZI)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->f:Lcom/google/ads/interactivemedia/v3/internal/cv;

    .line 164
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(ZI)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v7, p3

    .line 165
    invoke-direct/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/du;ZIIIZ)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->f:Lcom/google/ads/interactivemedia/v3/internal/cv;

    .line 24
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a()V

    return-void
.end method

.method final synthetic b(Lcom/google/ads/interactivemedia/v3/internal/cr;)V
    .locals 11

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->p:I

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/cr;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->p:I

    iget-boolean v1, p1, Lcom/google/ads/interactivemedia/v3/internal/cr;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->q:Z

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/cr;->d:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->r:I

    :cond_0
    iget-boolean v1, p1, Lcom/google/ads/interactivemedia/v3/internal/cr;->e:Z

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/cr;->f:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->s:I

    :cond_1
    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cr;->a:Lcom/google/ads/interactivemedia/v3/internal/du;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->u:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->v:J

    :cond_2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/eb;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/eb;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/bu;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/er;

    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/bu;->a(Lcom/google/ads/interactivemedia/v3/internal/bu;Lcom/google/ads/interactivemedia/v3/internal/er;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->q:Z

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->q:Z

    iget-object v5, p1, Lcom/google/ads/interactivemedia/v3/internal/cr;->a:Lcom/google/ads/interactivemedia/v3/internal/du;

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->r:I

    const/4 v8, 0x1

    iget v9, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->s:I

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/du;ZIIIZ)V

    :cond_5
    return-void
.end method

.method public final c()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->n:Landroid/os/Looper;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 61
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->d:I

    return v0
.end method

.method public final e()V
    .locals 10

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 104
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->d:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(Lcom/google/ads/interactivemedia/v3/internal/bo;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    .line 106
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v1

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 107
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(I)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v4

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->p:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->p:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->f:Lcom/google/ads/interactivemedia/v3/internal/cv;

    .line 108
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cv;->b()V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    .line 109
    invoke-direct/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/du;ZIIIZ)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 60
    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->j:Z

    return v0
.end method

.method public final g()V
    .locals 7

    .line 110
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->e:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x24

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [ExoPlayerLib/2.12.0] ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/abh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->f:Lcom/google/ads/interactivemedia/v3/internal/cv;

    .line 112
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cv;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/br;->a:Lcom/google/ads/interactivemedia/v3/internal/bh;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 113
    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/bs;

    .line 114
    invoke-direct {v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bs;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/google/ads/interactivemedia/v3/internal/bh;)V

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->m:Lcom/google/ads/interactivemedia/v3/internal/ev;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->o:Lcom/google/ads/interactivemedia/v3/internal/zh;

    .line 116
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zh;->a(Lcom/google/ads/interactivemedia/v3/internal/zg;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(I)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 118
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 119
    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->p:J

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->n:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->o:J

    return-void
.end method

.method public final h()I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 33
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 34
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->s()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final j()J
    .locals 4

    .line 46
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->q()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->i()I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->a:Lcom/google/ads/interactivemedia/v3/internal/eq;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/eq;->o:J

    .line 50
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 51
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 52
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 53
    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ro;->b:I

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ro;->c:I

    invoke-virtual {v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ep;->c(II)J

    move-result-wide v0

    .line 54
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()J
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 35
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->v:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 36
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 37
    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->p:J

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 38
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->p:J

    .line 39
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 40
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    invoke-virtual {v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 41
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ep;->a()J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final l()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 62
    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->o:J

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 65
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a()Z

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ro;->b:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final o()I
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ro;->c:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final p()J
    .locals 6

    .line 25
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 26
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    invoke-virtual {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ep;)Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 27
    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 28
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->i()I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->a:Lcom/google/ads/interactivemedia/v3/internal/eq;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/eq;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    .line 29
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ep;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    iget-wide v2, v2, Lcom/google/ads/interactivemedia/v3/internal/du;->c:J

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 42
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    return-object v0
.end method

.method public final r()V
    .locals 9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->t:Lcom/google/ads/interactivemedia/v3/internal/du;

    .line 166
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v0

    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->p:J

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->n:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/du;->o:J

    const/4 v1, 0x1

    .line 167
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(I)Lcom/google/ads/interactivemedia/v3/internal/du;

    move-result-object v3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->p:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ck;->f:Lcom/google/ads/interactivemedia/v3/internal/cv;

    .line 168
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cv;->c()V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    .line 169
    invoke-direct/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/du;ZIIIZ)V

    return-void
.end method
