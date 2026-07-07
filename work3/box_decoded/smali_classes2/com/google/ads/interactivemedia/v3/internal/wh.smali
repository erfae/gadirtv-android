.class final Lcom/google/ads/interactivemedia/v3/internal/wh;
.super Lcom/google/ads/interactivemedia/v3/internal/tu;
.source "IMASDK"


# static fields
.field private static final o:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final A:Z

.field private B:Lcom/google/ads/interactivemedia/v3/internal/wt;

.field private C:I

.field private D:Z

.field private volatile E:Z

.field private F:Z

.field private G:Lcom/google/ads/interactivemedia/v3/internal/aop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private final I:Lcom/google/ads/interactivemedia/v3/internal/vw;

.field private J:Lcom/google/ads/interactivemedia/v3/internal/vw;

.field public final a:I

.field public final b:I

.field public final m:Landroid/net/Uri;

.field public final n:Z

.field private final p:Lcom/google/ads/interactivemedia/v3/internal/zo;

.field private final q:Lcom/google/ads/interactivemedia/v3/internal/zs;

.field private final r:Z

.field private final s:Z

.field private final t:Lcom/google/ads/interactivemedia/v3/internal/acf;

.field private final u:Lcom/google/ads/interactivemedia/v3/internal/wg;

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lcom/google/ads/interactivemedia/v3/internal/hk;

.field private final x:Lcom/google/ads/interactivemedia/v3/internal/pu;

.field private final y:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/wh;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/wg;Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ZLcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLcom/google/ads/interactivemedia/v3/internal/acf;Lcom/google/ads/interactivemedia/v3/internal/hk;Lcom/google/ads/interactivemedia/v3/internal/vw;Lcom/google/ads/interactivemedia/v3/internal/pu;Lcom/google/ads/interactivemedia/v3/internal/abr;Z)V
    .locals 14

    move-object v12, p0

    move-object/from16 v13, p7

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    .line 2
    invoke-direct/range {v0 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/tu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJJ)V

    move/from16 v0, p5

    iput-boolean v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->z:Z

    move/from16 v0, p19

    iput v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->b:I

    iput-object v13, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->q:Lcom/google/ads/interactivemedia/v3/internal/zs;

    move-object/from16 v0, p6

    iput-object v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->p:Lcom/google/ads/interactivemedia/v3/internal/zo;

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->D:Z

    move/from16 v0, p8

    iput-boolean v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->A:Z

    move-object/from16 v0, p9

    iput-object v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->m:Landroid/net/Uri;

    move/from16 v0, p21

    iput-boolean v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->r:Z

    move-object/from16 v0, p22

    iput-object v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->t:Lcom/google/ads/interactivemedia/v3/internal/acf;

    move/from16 v0, p20

    iput-boolean v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->s:Z

    move-object v0, p1

    iput-object v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->u:Lcom/google/ads/interactivemedia/v3/internal/wg;

    move-object/from16 v0, p10

    iput-object v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->v:Ljava/util/List;

    move-object/from16 v0, p23

    iput-object v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->w:Lcom/google/ads/interactivemedia/v3/internal/hk;

    move-object/from16 v0, p24

    iput-object v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->I:Lcom/google/ads/interactivemedia/v3/internal/vw;

    move-object/from16 v0, p25

    iput-object v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->x:Lcom/google/ads/interactivemedia/v3/internal/pu;

    move-object/from16 v0, p26

    iput-object v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    move/from16 v0, p27

    iput-boolean v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->n:Z

    .line 3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aop;->g()Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object v0

    iput-object v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->G:Lcom/google/ads/interactivemedia/v3/internal/aop;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/wh;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lcom/google/ads/interactivemedia/v3/internal/wh;->a:I

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 65
    invoke-virtual {p1, v2, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 66
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 67
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->j()I

    move-result v2

    const v5, 0x494433

    if-eq v2, v5, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v5, 0x3

    .line 68
    invoke-virtual {v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 69
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->s()I

    move-result v2

    add-int/lit8 v5, v2, 0xa

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 70
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->e()I

    move-result v6

    if-le v5, v6, :cond_1

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v6

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 71
    invoke-virtual {v7, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    .line 72
    invoke-static {v6, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    .line 73
    invoke-virtual {p1, v5, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->x:Lcom/google/ads/interactivemedia/v3/internal/pu;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    .line 74
    invoke-virtual {p1, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/pu;->a([BI)Lcom/google/ads/interactivemedia/v3/internal/ot;

    move-result-object p1

    if-nez p1, :cond_2

    return-wide v0

    .line 75
    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 76
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a(I)Lcom/google/ads/interactivemedia/v3/internal/os;

    move-result-object v5

    .line 77
    instance-of v6, v5, Lcom/google/ads/interactivemedia/v3/internal/qb;

    if-eqz v6, :cond_4

    .line 78
    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/qb;

    .line 79
    iget-object v6, v5, Lcom/google/ads/interactivemedia/v3/internal/qb;->a:Ljava/lang/String;

    const-string v7, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 80
    :cond_3
    iget-object p1, v5, Lcom/google/ads/interactivemedia/v3/internal/qb;->b:[B

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 81
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 82
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->p()J

    move-result-wide v0

    const-wide v2, 0x1ffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_5
    return-wide v0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/wg;Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/cz;JLcom/google/ads/interactivemedia/v3/internal/xk;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLcom/google/ads/interactivemedia/v3/internal/wz;Lcom/google/ads/interactivemedia/v3/internal/wh;[B[B)Lcom/google/ads/interactivemedia/v3/internal/wh;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/wg;",
            "Lcom/google/ads/interactivemedia/v3/internal/zo;",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            "J",
            "Lcom/google/ads/interactivemedia/v3/internal/xk;",
            "I",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;I",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/google/ads/interactivemedia/v3/internal/wz;",
            "Lcom/google/ads/interactivemedia/v3/internal/wh;",
            "[B[B)",
            "Lcom/google/ads/interactivemedia/v3/internal/wh;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    move-object/from16 v5, p15

    .line 7
    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->l:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/xj;

    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/zs;

    .line 8
    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->n:Ljava/lang/String;

    iget-object v8, v6, Lcom/google/ads/interactivemedia/v3/internal/xj;->a:Ljava/lang/String;

    .line 9
    invoke-static {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-wide v9, v6, Lcom/google/ads/interactivemedia/v3/internal/xj;->i:J

    iget-wide v11, v6, Lcom/google/ads/interactivemedia/v3/internal/xj;->j:J

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/zs;-><init>(Landroid/net/Uri;JJ)V

    if-eqz v4, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_1

    .line 10
    iget-object v10, v6, Lcom/google/ads/interactivemedia/v3/internal/xj;->h:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/wh;->a(Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 11
    :goto_1
    invoke-static {v0, v4, v10}, Lcom/google/ads/interactivemedia/v3/internal/wh;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;[B[B)Lcom/google/ads/interactivemedia/v3/internal/zo;

    move-result-object v4

    .line 12
    iget-object v10, v6, Lcom/google/ads/interactivemedia/v3/internal/xj;->b:Lcom/google/ads/interactivemedia/v3/internal/xj;

    if-eqz v10, :cond_4

    if-eqz v5, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_3

    iget-object v14, v10, Lcom/google/ads/interactivemedia/v3/internal/xj;->h:Ljava/lang/String;

    .line 13
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/wh;->a(Ljava/lang/String;)[B

    move-result-object v14

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 14
    :goto_3
    iget-object v15, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->n:Ljava/lang/String;

    iget-object v7, v10, Lcom/google/ads/interactivemedia/v3/internal/xj;->a:Ljava/lang/String;

    invoke-static {v15, v7}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-wide v8, v10, Lcom/google/ads/interactivemedia/v3/internal/xj;->i:J

    move/from16 p14, v11

    iget-wide v10, v10, Lcom/google/ads/interactivemedia/v3/internal/xj;->j:J

    move-object/from16 v17, v7

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    .line 15
    invoke-direct/range {v17 .. v22}, Lcom/google/ads/interactivemedia/v3/internal/zs;-><init>(Landroid/net/Uri;JJ)V

    .line 16
    invoke-static {v0, v5, v14}, Lcom/google/ads/interactivemedia/v3/internal/wh;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;[B[B)Lcom/google/ads/interactivemedia/v3/internal/zo;

    move-result-object v0

    move/from16 v5, p14

    move-object v14, v7

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    .line 17
    :goto_4
    iget-wide v7, v6, Lcom/google/ads/interactivemedia/v3/internal/xj;->e:J

    add-long v20, p3, v7

    .line 18
    iget-wide v7, v6, Lcom/google/ads/interactivemedia/v3/internal/xj;->c:J

    add-long v31, v20, v7

    .line 19
    iget v7, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->e:I

    iget v8, v6, Lcom/google/ads/interactivemedia/v3/internal/xj;->d:I

    add-int v11, v7, v8

    if-eqz v3, :cond_a

    iget-object v7, v3, Lcom/google/ads/interactivemedia/v3/internal/wh;->m:Landroid/net/Uri;

    move-object/from16 v10, p7

    .line 20
    invoke-virtual {v10, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, v3, Lcom/google/ads/interactivemedia/v3/internal/wh;->F:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    iget-object v8, v3, Lcom/google/ads/interactivemedia/v3/internal/wh;->x:Lcom/google/ads/interactivemedia/v3/internal/pu;

    iget-object v9, v3, Lcom/google/ads/interactivemedia/v3/internal/wh;->y:Lcom/google/ads/interactivemedia/v3/internal/abr;

    if-nez v7, :cond_8

    .line 21
    iget-boolean v15, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->p:Z

    if-eqz v15, :cond_6

    move-object v15, v8

    move-object/from16 v17, v9

    iget-wide v8, v3, Lcom/google/ads/interactivemedia/v3/internal/wh;->j:J

    cmp-long v18, v20, v8

    if-ltz v18, :cond_7

    goto :goto_6

    :cond_6
    move-object v15, v8

    move-object/from16 v17, v9

    :cond_7
    const/16 v16, 0x1

    goto :goto_7

    :cond_8
    move-object v15, v8

    move-object/from16 v17, v9

    :goto_6
    const/16 v16, 0x0

    :goto_7
    if-eqz v7, :cond_9

    iget-boolean v7, v3, Lcom/google/ads/interactivemedia/v3/internal/wh;->H:Z

    if-nez v7, :cond_9

    iget v7, v3, Lcom/google/ads/interactivemedia/v3/internal/wh;->b:I

    if-ne v7, v11, :cond_9

    iget-object v9, v3, Lcom/google/ads/interactivemedia/v3/internal/wh;->J:Lcom/google/ads/interactivemedia/v3/internal/vw;

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    :goto_8
    move-object v3, v9

    move-object/from16 v33, v15

    move/from16 v35, v16

    move-object/from16 v34, v17

    goto :goto_9

    :cond_a
    move-object/from16 v10, p7

    .line 25
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/pu;

    const/4 v7, 0x0

    .line 22
    invoke-direct {v3, v7}, Lcom/google/ads/interactivemedia/v3/internal/pu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ps;)V

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v9, 0xa

    .line 23
    invoke-direct {v8, v9}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    move-object/from16 v33, v3

    move-object v3, v7

    move-object/from16 v34, v8

    const/16 v35, 0x0

    .line 21
    :goto_9
    new-instance v36, Lcom/google/ads/interactivemedia/v3/internal/wh;

    move-object/from16 v7, v36

    .line 24
    iget-wide v8, v1, Lcom/google/ads/interactivemedia/v3/internal/xk;->f:J

    int-to-long v1, v2

    add-long v24, v8, v1

    iget-boolean v1, v6, Lcom/google/ads/interactivemedia/v3/internal/xj;->k:Z

    move/from16 v27, v1

    move-object/from16 v1, p12

    .line 25
    invoke-virtual {v1, v11}, Lcom/google/ads/interactivemedia/v3/internal/wz;->a(I)Lcom/google/ads/interactivemedia/v3/internal/acf;

    move-result-object v29

    iget-object v1, v6, Lcom/google/ads/interactivemedia/v3/internal/xj;->f:Lcom/google/ads/interactivemedia/v3/internal/hk;

    move-object/from16 v30, v1

    move-object/from16 v8, p0

    move-object v9, v4

    move-object v10, v13

    move v1, v11

    move-object/from16 v11, p2

    move-object v13, v0

    move v15, v5

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move/from16 v18, p9

    move-object/from16 v19, p10

    move-wide/from16 v22, v31

    move/from16 v26, v1

    move/from16 v28, p11

    move-object/from16 v31, v3

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move/from16 v34, v35

    invoke-direct/range {v7 .. v34}, Lcom/google/ads/interactivemedia/v3/internal/wh;-><init>(Lcom/google/ads/interactivemedia/v3/internal/wg;Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Lcom/google/ads/interactivemedia/v3/internal/cz;ZLcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLcom/google/ads/interactivemedia/v3/internal/acf;Lcom/google/ads/interactivemedia/v3/internal/hk;Lcom/google/ads/interactivemedia/v3/internal/vw;Lcom/google/ads/interactivemedia/v3/internal/pu;Lcom/google/ads/interactivemedia/v3/internal/abr;Z)V

    return-object v36
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/zo;[B[B)Lcom/google/ads/interactivemedia/v3/internal/zo;
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/vv;

    .line 6
    invoke-direct {v0, p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/vv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zo;[B[B)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget v3, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->C:I

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    move-object/from16 v10, p1

    move-object v3, v2

    goto :goto_0

    .line 32
    :cond_1
    iget v3, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->C:I

    int-to-long v3, v3

    .line 26
    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zs;->a(J)Lcom/google/ads/interactivemedia/v3/internal/zs;

    move-result-object v3

    move-object/from16 v10, p1

    .line 27
    :goto_0
    :try_start_0
    invoke-interface {v10, v3}, Lcom/google/ads/interactivemedia/v3/internal/zo;->a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J

    move-result-wide v8

    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/ie;

    .line 28
    iget-wide v6, v3, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    move-object v4, v15

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/ie;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zl;JJ)V

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->J:Lcom/google/ads/interactivemedia/v3/internal/vw;

    if-nez v4, :cond_5

    .line 29
    invoke-direct {v1, v15}, Lcom/google/ads/interactivemedia/v3/internal/wh;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)J

    move-result-wide v4

    .line 30
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->I:Lcom/google/ads/interactivemedia/v3/internal/vw;

    if-eqz v6, :cond_2

    .line 31
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/vw;->c()Lcom/google/ads/interactivemedia/v3/internal/vw;

    move-result-object v3

    move-object v6, v15

    goto :goto_1

    .line 37
    :cond_2
    iget-object v11, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->u:Lcom/google/ads/interactivemedia/v3/internal/wg;

    .line 32
    iget-object v12, v3, Lcom/google/ads/interactivemedia/v3/internal/zs;->a:Landroid/net/Uri;

    iget-object v13, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v14, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->v:Ljava/util/List;

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->t:Lcom/google/ads/interactivemedia/v3/internal/acf;

    .line 33
    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zo;->b()Ljava/util/Map;

    move-result-object v16

    move-object v6, v15

    move-object v15, v3

    move-object/from16 v17, v6

    .line 32
    invoke-interface/range {v11 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/wg;->a(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/acf;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/internal/ie;)Lcom/google/ads/interactivemedia/v3/internal/vw;

    move-result-object v3

    .line 31
    :goto_1
    iput-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->J:Lcom/google/ads/interactivemedia/v3/internal/vw;

    .line 34
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/vw;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->B:Lcom/google/ads/interactivemedia/v3/internal/wt;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v4, v7

    if-eqz v9, :cond_3

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->t:Lcom/google/ads/interactivemedia/v3/internal/acf;

    .line 35
    invoke-virtual {v7, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/acf;->b(J)J

    move-result-wide v4

    goto :goto_2

    .line 41
    :cond_3
    iget-wide v4, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->i:J

    .line 36
    :goto_2
    invoke-virtual {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/wt;->b(J)V

    goto :goto_3

    .line 41
    :cond_4
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->B:Lcom/google/ads/interactivemedia/v3/internal/wt;

    const-wide/16 v4, 0x0

    .line 37
    invoke-virtual {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/wt;->b(J)V

    .line 36
    :goto_3
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->B:Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 38
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/wt;->k()V

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->J:Lcom/google/ads/interactivemedia/v3/internal/vw;

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->B:Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 39
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/vw;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V

    goto :goto_4

    :cond_5
    move-object v6, v15

    :goto_4
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->B:Lcom/google/ads/interactivemedia/v3/internal/wt;

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->w:Lcom/google/ads/interactivemedia/v3/internal/hk;

    .line 40
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a(Lcom/google/ads/interactivemedia/v3/internal/hk;)V

    if-nez v0, :cond_6

    goto :goto_5

    .line 45
    :cond_6
    iget v0, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->C:I

    .line 41
    invoke-virtual {v6, v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :cond_7
    :goto_5
    :try_start_1
    iget-boolean v0, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->E:Z

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->J:Lcom/google/ads/interactivemedia/v3/internal/vw;

    .line 42
    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/vw;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_7

    :cond_8
    :try_start_2
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v3

    .line 43
    iget-wide v5, v2, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    iput v0, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->C:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    invoke-static/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    return-void

    :catchall_0
    move-exception v0

    .line 46
    :try_start_3
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v3

    .line 43
    iget-wide v5, v2, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    sub-long/2addr v3, v5

    long-to-int v2, v3

    iput v2, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->C:I

    .line 44
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 45
    invoke-static/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;)V

    .line 46
    throw v0
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 4

    .line 47
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    .line 49
    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    .line 50
    array-length v2, p0

    if-le v2, v1, :cond_1

    add-int/lit8 v1, v2, -0x10

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    rsub-int/lit8 v3, v2, 0x10

    add-int/2addr v3, v1

    sub-int/2addr v2, v1

    .line 51
    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->n:Z

    xor-int/lit8 v0, v0, 0x1

    .line 52
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->G:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 53
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aop;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->G:Lcom/google/ads/interactivemedia/v3/internal/aop;

    .line 54
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aop;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->E:Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/wt;Lcom/google/ads/interactivemedia/v3/internal/aop;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/wt;",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->B:Lcom/google/ads/interactivemedia/v3/internal/wt;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->G:Lcom/google/ads/interactivemedia/v3/internal/aop;

    return-void
.end method

.method public final b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->B:Lcom/google/ads/interactivemedia/v3/internal/wt;

    .line 55
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->J:Lcom/google/ads/interactivemedia/v3/internal/vw;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->I:Lcom/google/ads/interactivemedia/v3/internal/vw;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/vw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->I:Lcom/google/ads/interactivemedia/v3/internal/vw;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->J:Lcom/google/ads/interactivemedia/v3/internal/vw;

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->D:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->D:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->p:Lcom/google/ads/interactivemedia/v3/internal/zo;

    .line 57
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->q:Lcom/google/ads/interactivemedia/v3/internal/zs;

    .line 58
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->p:Lcom/google/ads/interactivemedia/v3/internal/zo;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->q:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->A:Z

    .line 59
    invoke-direct {p0, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/wh;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Z)V

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->C:I

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->D:Z

    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->E:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->s:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->r:Z

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->t:Lcom/google/ads/interactivemedia/v3/internal/acf;

    .line 60
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/acf;->e()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->t:Lcom/google/ads/interactivemedia/v3/internal/acf;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/acf;->a()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->t:Lcom/google/ads/interactivemedia/v3/internal/acf;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->i:J

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/acf;->a(J)V

    .line 60
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->k:Lcom/google/ads/interactivemedia/v3/internal/aax;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->z:Z

    .line 63
    invoke-direct {p0, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/wh;->a(Lcom/google/ads/interactivemedia/v3/internal/zo;Lcom/google/ads/interactivemedia/v3/internal/zs;Z)V

    :cond_4
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->E:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->F:Z

    :cond_5
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->H:Z

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wh;->F:Z

    return v0
.end method
