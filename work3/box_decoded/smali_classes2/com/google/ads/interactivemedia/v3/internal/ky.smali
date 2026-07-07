.class public final Lcom/google/ads/interactivemedia/v3/internal/ky;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ih;
.implements Lcom/google/ads/interactivemedia/v3/internal/iu;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/ads/interactivemedia/v3/internal/kd;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:J

.field private i:I

.field private j:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private p:[Lcom/google/ads/interactivemedia/v3/internal/kx;

.field private q:[[J

.field private r:I

.field private s:J

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ky;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v0, 0x10

    .line 2
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->e:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/abp;->a:[B

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v0, 0x4

    .line 5
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 6
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->k:I

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/lf;J)I
    .locals 2

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/lf;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/lf;->b(J)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/lf;JJ)J
    .locals 0

    .line 30
    invoke-static {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ky;->a(Lcom/google/ads/interactivemedia/v3/internal/lf;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/lf;->c:[J

    aget-wide p1, p0, p1

    .line 32
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private final b(J)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    move-object/from16 v0, p0

    :goto_0
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->e:Ljava/util/ArrayDeque;

    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/kd;

    iget-wide v3, v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->a:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->e:Ljava/util/ArrayDeque;

    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/kd;

    .line 35
    iget v1, v3, Lcom/google/ads/interactivemedia/v3/internal/kd;->d:I

    const v4, 0x6d6f6f76

    if-ne v1, v4, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/ip;

    invoke-direct {v10}, Lcom/google/ads/interactivemedia/v3/internal/ip;-><init>()V

    const v4, 0x75647461

    .line 38
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ke;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-boolean v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->t:Z

    .line 39
    invoke-static {v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/km;->a(Lcom/google/ads/interactivemedia/v3/internal/ke;Z)Lcom/google/ads/interactivemedia/v3/internal/ot;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 40
    invoke-virtual {v10, v4}, Lcom/google/ads/interactivemedia/v3/internal/ip;->a(Lcom/google/ads/interactivemedia/v3/internal/ot;)V

    :cond_0
    move-object v11, v4

    goto :goto_1

    :cond_1
    move-object v11, v5

    :goto_1
    const v4, 0x6d657461

    .line 41
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b(I)Lcom/google/ads/interactivemedia/v3/internal/kd;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 42
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/km;->a(Lcom/google/ads/interactivemedia/v3/internal/kd;)Lcom/google/ads/interactivemedia/v3/internal/ot;

    move-result-object v5

    :cond_2
    move-object v12, v5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    iget-boolean v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->t:Z

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/kw;->a:Lcom/google/ads/interactivemedia/v3/internal/and;

    move-object v4, v10

    .line 43
    invoke-static/range {v3 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/km;->a(Lcom/google/ads/interactivemedia/v3/internal/kd;Lcom/google/ads/interactivemedia/v3/internal/ip;JLcom/google/ads/interactivemedia/v3/internal/hk;ZLcom/google/ads/interactivemedia/v3/internal/and;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->o:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 44
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v8, v6

    const/4 v13, 0x0

    const/4 v14, -0x1

    :goto_2
    const-wide/16 v16, 0x0

    if-ge v13, v5, :cond_c

    .line 46
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    check-cast v15, Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 47
    iget v2, v15, Lcom/google/ads/interactivemedia/v3/internal/lf;->b:I

    if-nez v2, :cond_3

    move-object/from16 v22, v3

    move/from16 v23, v5

    const/4 v0, -0x1

    goto/16 :goto_7

    .line 48
    :cond_3
    iget-object v2, v15, Lcom/google/ads/interactivemedia/v3/internal/lf;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    move-object/from16 v20, v1

    iget-wide v0, v2, Lcom/google/ads/interactivemedia/v3/internal/lc;->e:J

    cmp-long v21, v0, v6

    if-eqz v21, :cond_4

    goto :goto_3

    .line 49
    :cond_4
    iget-wide v0, v15, Lcom/google/ads/interactivemedia/v3/internal/lf;->h:J

    .line 50
    :goto_3
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/kx;

    iget v7, v2, Lcom/google/ads/interactivemedia/v3/internal/lc;->b:I

    .line 51
    invoke-interface {v4, v13, v7}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v7

    invoke-direct {v6, v2, v15, v7}, Lcom/google/ads/interactivemedia/v3/internal/kx;-><init>(Lcom/google/ads/interactivemedia/v3/internal/lc;Lcom/google/ads/interactivemedia/v3/internal/lf;Lcom/google/ads/interactivemedia/v3/internal/ix;)V

    .line 52
    iget v7, v15, Lcom/google/ads/interactivemedia/v3/internal/lf;->e:I

    move-object/from16 v22, v3

    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/lc;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 53
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()Lcom/google/ads/interactivemedia/v3/internal/cy;

    move-result-object v3

    add-int/lit8 v7, v7, 0x1e

    .line 54
    invoke-virtual {v3, v7}, Lcom/google/ads/interactivemedia/v3/internal/cy;->h(I)V

    iget v7, v2, Lcom/google/ads/interactivemedia/v3/internal/lc;->b:I

    move/from16 v23, v5

    const/4 v5, 0x2

    if-ne v7, v5, :cond_5

    cmp-long v5, v0, v16

    if-lez v5, :cond_5

    .line 55
    iget v5, v15, Lcom/google/ads/interactivemedia/v3/internal/lf;->b:I

    const/4 v7, 0x1

    if-le v5, v7, :cond_5

    int-to-float v5, v5

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    div-float/2addr v5, v0

    .line 56
    invoke-virtual {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(F)V

    :cond_5
    iget v0, v2, Lcom/google/ads/interactivemedia/v3/internal/lc;->b:I

    .line 57
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/kv;->b:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_7

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/ip;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v10, Lcom/google/ads/interactivemedia/v3/internal/ip;->a:I

    .line 58
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->d(I)V

    iget v0, v10, Lcom/google/ads/interactivemedia/v3/internal/ip;->b:I

    .line 59
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(I)V

    :cond_6
    if-eqz v11, :cond_9

    .line 60
    invoke-virtual {v3, v11}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/ot;)V

    goto :goto_5

    :cond_7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    if-eqz v12, :cond_9

    const/4 v0, 0x0

    .line 61
    :goto_4
    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 62
    invoke-virtual {v12, v0}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a(I)Lcom/google/ads/interactivemedia/v3/internal/os;

    move-result-object v1

    .line 63
    instance-of v5, v1, Lcom/google/ads/interactivemedia/v3/internal/ku;

    if-eqz v5, :cond_8

    .line 64
    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/ku;

    .line 65
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/ku;->a:Ljava/lang/String;

    const-string v7, "com.android.capture.fps"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/ot;

    const/4 v7, 0x1

    new-array v15, v7, [Lcom/google/ads/interactivemedia/v3/internal/os;

    const/4 v7, 0x0

    aput-object v1, v15, v7

    .line 66
    invoke-direct {v5, v15}, Lcom/google/ads/interactivemedia/v3/internal/ot;-><init>([Lcom/google/ads/interactivemedia/v3/internal/os;)V

    invoke-virtual {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/ot;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 60
    :cond_9
    :goto_5
    iget-object v0, v6, Lcom/google/ads/interactivemedia/v3/internal/kx;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 67
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iget v0, v2, Lcom/google/ads/interactivemedia/v3/internal/lc;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    const/4 v0, -0x1

    if-ne v14, v0, :cond_b

    .line 68
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v1

    move v14, v1

    goto :goto_6

    :cond_a
    const/4 v0, -0x1

    :cond_b
    :goto_6
    move-object/from16 v1, v20

    .line 69
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v13, v13, 0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v3, v22

    move/from16 v5, v23

    goto/16 :goto_2

    :cond_c
    move-object v2, v0

    const/4 v0, -0x1

    .line 49
    iput v14, v2, Lcom/google/ads/interactivemedia/v3/internal/ky;->r:I

    iput-wide v8, v2, Lcom/google/ads/interactivemedia/v3/internal/ky;->s:J

    const/4 v3, 0x0

    new-array v5, v3, [Lcom/google/ads/interactivemedia/v3/internal/kx;

    .line 70
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/ads/interactivemedia/v3/internal/kx;

    iput-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/ky;->p:[Lcom/google/ads/interactivemedia/v3/internal/kx;

    .line 71
    array-length v3, v1

    new-array v5, v3, [[J

    new-array v6, v3, [I

    new-array v7, v3, [J

    new-array v3, v3, [Z

    const/4 v8, 0x0

    .line 72
    :goto_8
    array-length v9, v1

    if-ge v8, v9, :cond_d

    .line 73
    aget-object v9, v1, v8

    iget-object v9, v9, Lcom/google/ads/interactivemedia/v3/internal/kx;->b:Lcom/google/ads/interactivemedia/v3/internal/lf;

    iget v9, v9, Lcom/google/ads/interactivemedia/v3/internal/lf;->b:I

    new-array v9, v9, [J

    aput-object v9, v5, v8

    .line 74
    aget-object v9, v1, v8

    iget-object v9, v9, Lcom/google/ads/interactivemedia/v3/internal/kx;->b:Lcom/google/ads/interactivemedia/v3/internal/lf;

    iget-object v9, v9, Lcom/google/ads/interactivemedia/v3/internal/lf;->f:[J

    const/4 v10, 0x0

    aget-wide v11, v9, v10

    aput-wide v11, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 75
    :goto_9
    array-length v9, v1

    if-ge v8, v9, :cond_11

    const-wide v11, 0x7fffffffffffffffL

    const/4 v9, 0x0

    const/16 v18, -0x1

    .line 76
    :goto_a
    array-length v13, v1

    if-ge v9, v13, :cond_f

    .line 77
    aget-boolean v13, v3, v9

    if-nez v13, :cond_e

    aget-wide v13, v7, v9

    cmp-long v15, v13, v11

    if-gtz v15, :cond_e

    move/from16 v18, v9

    move-wide v11, v13

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 78
    :cond_f
    aget v9, v6, v18

    .line 79
    aget-object v11, v5, v18

    aput-wide v16, v11, v9

    .line 80
    aget-object v12, v1, v18

    iget-object v12, v12, Lcom/google/ads/interactivemedia/v3/internal/kx;->b:Lcom/google/ads/interactivemedia/v3/internal/lf;

    iget-object v13, v12, Lcom/google/ads/interactivemedia/v3/internal/lf;->d:[I

    aget v13, v13, v9

    int-to-long v13, v13

    add-long v16, v16, v13

    const/4 v13, 0x1

    add-int/2addr v9, v13

    .line 81
    aput v9, v6, v18

    .line 82
    array-length v11, v11

    if-ge v9, v11, :cond_10

    .line 83
    iget-object v11, v12, Lcom/google/ads/interactivemedia/v3/internal/lf;->f:[J

    aget-wide v14, v11, v9

    aput-wide v14, v7, v18

    goto :goto_9

    .line 84
    :cond_10
    aput-boolean v13, v3, v18

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_11
    iput-object v5, v2, Lcom/google/ads/interactivemedia/v3/internal/ky;->q:[[J

    .line 85
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/internal/ii;->w()V

    .line 86
    invoke-interface {v4, v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/internal/ky;->e:Ljava/util/ArrayDeque;

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x2

    iput v0, v2, Lcom/google/ads/interactivemedia/v3/internal/ky;->f:I

    goto :goto_b

    :cond_12
    move-object v2, v0

    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/internal/ky;->e:Ljava/util/ArrayDeque;

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/internal/ky;->e:Ljava/util/ArrayDeque;

    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/kd;

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(Lcom/google/ads/interactivemedia/v3/internal/kd;)V

    :cond_13
    :goto_b
    move-object v0, v2

    goto/16 :goto_0

    :cond_14
    move-object v2, v0

    iget v0, v2, Lcom/google/ads/interactivemedia/v3/internal/ky;->f:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ky;->d()V

    :cond_15
    return-void
.end method

.method private final d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->f:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->i:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :cond_0
    :goto_0
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->f:I

    const v4, 0x66747970

    const-wide/16 v5, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eqz v3, :cond_1d

    const-wide/32 v13, 0x40000

    if-eq v3, v10, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v3

    iget v9, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->k:I

    if-ne v9, v8, :cond_b

    const-wide v15, 0x7fffffffffffffffL

    move-wide/from16 v17, v15

    move-wide/from16 v21, v17

    move-wide/from16 v24, v21

    const/4 v9, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v26, -0x1

    :goto_1
    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->p:[Lcom/google/ads/interactivemedia/v3/internal/kx;

    .line 120
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/ads/interactivemedia/v3/internal/kx;

    array-length v7, v7

    if-ge v9, v7, :cond_8

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->p:[Lcom/google/ads/interactivemedia/v3/internal/kx;

    .line 121
    aget-object v7, v7, v9

    .line 122
    iget v12, v7, Lcom/google/ads/interactivemedia/v3/internal/kx;->d:I

    .line 123
    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/internal/kx;->b:Lcom/google/ads/interactivemedia/v3/internal/lf;

    iget v11, v7, Lcom/google/ads/interactivemedia/v3/internal/lf;->b:I

    if-ne v12, v11, :cond_1

    goto :goto_6

    .line 124
    :cond_1
    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/internal/lf;->c:[J

    aget-wide v27, v7, v12

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->q:[[J

    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 125
    check-cast v7, [[J

    aget-object v7, v7, v9

    aget-wide v11, v7, v12

    sub-long v27, v27, v3

    cmp-long v7, v27, v5

    if-ltz v7, :cond_3

    cmp-long v7, v27, v13

    if-ltz v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-nez v7, :cond_4

    if-nez v23, :cond_5

    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    move/from16 v10, v23

    :goto_4
    if-ne v7, v10, :cond_6

    cmp-long v23, v27, v21

    if-gez v23, :cond_6

    :cond_5
    move/from16 v23, v7

    move/from16 v19, v9

    move-wide/from16 v24, v11

    move-wide/from16 v21, v27

    goto :goto_5

    :cond_6
    move/from16 v23, v10

    :goto_5
    cmp-long v10, v11, v17

    if-gez v10, :cond_7

    move/from16 v20, v7

    move/from16 v26, v9

    move-wide/from16 v17, v11

    :cond_7
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    goto :goto_1

    :cond_8
    cmp-long v7, v17, v15

    if-eqz v7, :cond_a

    if-eqz v20, :cond_a

    const-wide/32 v9, 0xa00000

    add-long v17, v17, v9

    cmp-long v7, v24, v17

    if-gez v7, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v7, v26

    goto :goto_8

    :cond_a
    :goto_7
    move/from16 v7, v19

    :goto_8
    iput v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->k:I

    if-ne v7, v8, :cond_b

    goto/16 :goto_c

    :cond_b
    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->p:[Lcom/google/ads/interactivemedia/v3/internal/kx;

    .line 126
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/ads/interactivemedia/v3/internal/kx;

    iget v9, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->k:I

    aget-object v7, v7, v9

    .line 127
    iget-object v15, v7, Lcom/google/ads/interactivemedia/v3/internal/kx;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 128
    iget v9, v7, Lcom/google/ads/interactivemedia/v3/internal/kx;->d:I

    .line 129
    iget-object v10, v7, Lcom/google/ads/interactivemedia/v3/internal/kx;->b:Lcom/google/ads/interactivemedia/v3/internal/lf;

    iget-object v11, v10, Lcom/google/ads/interactivemedia/v3/internal/lf;->c:[J

    aget-wide v13, v11, v9

    .line 130
    iget-object v10, v10, Lcom/google/ads/interactivemedia/v3/internal/lf;->d:[I

    aget v10, v10, v9

    sub-long v3, v13, v3

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->l:I

    int-to-long v11, v11

    add-long/2addr v3, v11

    cmp-long v11, v3, v5

    if-ltz v11, :cond_14

    const-wide/32 v5, 0x40000

    cmp-long v11, v3, v5

    if-ltz v11, :cond_c

    goto/16 :goto_b

    .line 131
    :cond_c
    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/kx;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/lc;->g:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_d

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    add-int/lit8 v10, v10, -0x8

    :cond_d
    long-to-int v2, v3

    .line 132
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    .line 133
    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/kx;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/lc;->j:I

    if-eqz v3, :cond_10

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 134
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    const/4 v3, 0x0

    .line 135
    aput-byte v3, v2, v3

    const/4 v4, 0x1

    .line 136
    aput-byte v3, v2, v4

    const/4 v4, 0x2

    .line 137
    aput-byte v3, v2, v4

    .line 138
    iget-object v3, v7, Lcom/google/ads/interactivemedia/v3/internal/kx;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/lc;->j:I

    rsub-int/lit8 v4, v3, 0x4

    :goto_9
    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->m:I

    if-ge v5, v10, :cond_13

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->n:I

    if-nez v5, :cond_f

    .line 139
    invoke-virtual {v1, v2, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->l:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->l:I

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v6, 0x0

    .line 140
    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 141
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v5

    if-ltz v5, :cond_e

    .line 145
    iput v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->n:I

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 142
    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v6, 0x4

    .line 143
    invoke-interface {v15, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->m:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->m:I

    add-int/2addr v10, v4

    goto :goto_9

    .line 141
    :cond_e
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "Invalid NAL length"

    .line 145
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    const/4 v6, 0x0

    .line 144
    invoke-interface {v15, v1, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result v5

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->l:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->l:I

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->m:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->m:I

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->n:I

    sub-int/2addr v6, v5

    iput v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->n:I

    goto :goto_9

    .line 151
    :cond_10
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/lc;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 146
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->m:I

    if-nez v2, :cond_11

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 147
    invoke-static {v10, v2}, Lcom/google/ads/interactivemedia/v3/internal/fd;->a(ILcom/google/ads/interactivemedia/v3/internal/abr;)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v3, 0x7

    .line 148
    invoke-interface {v15, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->m:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->m:I

    :cond_11
    add-int/lit8 v10, v10, 0x7

    :cond_12
    :goto_a
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->m:I

    if-ge v2, v10, :cond_13

    sub-int v2, v10, v2

    const/4 v3, 0x0

    .line 149
    invoke-interface {v15, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result v2

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->l:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->l:I

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->m:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->m:I

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->n:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->n:I

    goto :goto_a

    :cond_13
    move/from16 v19, v10

    .line 150
    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/kx;->b:Lcom/google/ads/interactivemedia/v3/internal/lf;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/lf;->f:[J

    aget-wide v16, v2, v9

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/lf;->g:[I

    aget v18, v1, v9

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v15 .. v21}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    .line 151
    iget v1, v7, Lcom/google/ads/interactivemedia/v3/internal/kx;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v7, Lcom/google/ads/interactivemedia/v3/internal/kx;->d:I

    iput v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->l:I

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->m:I

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->n:I

    const/4 v8, 0x0

    goto :goto_c

    .line 130
    :cond_14
    :goto_b
    iput-wide v13, v2, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:J

    const/4 v8, 0x1

    :goto_c
    return v8

    .line 149
    :cond_15
    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->h:J

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->i:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->j:Lcom/google/ads/interactivemedia/v3/internal/abr;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v10

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->i:I

    long-to-int v6, v5

    .line 111
    invoke-virtual {v1, v10, v11, v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->g:I

    if-ne v5, v4, :cond_19

    .line 112
    invoke-virtual {v3, v9}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 113
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v4

    const v5, 0x71742020

    if-ne v4, v5, :cond_16

    :goto_d
    const/4 v3, 0x1

    goto :goto_e

    :cond_16
    const/4 v4, 0x4

    .line 114
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    :cond_17
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v4

    if-lez v4, :cond_18

    .line 115
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v4

    if-ne v4, v5, :cond_17

    goto :goto_d

    :cond_18
    const/4 v3, 0x0

    .line 113
    :goto_e
    iput-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->t:Z

    goto :goto_f

    .line 115
    :cond_19
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->e:Ljava/util/ArrayDeque;

    .line 116
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->e:Ljava/util/ArrayDeque;

    .line 117
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/kd;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/ke;

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->g:I

    invoke-direct {v5, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/ke;-><init>(ILcom/google/ads/interactivemedia/v3/internal/abr;)V

    invoke-virtual {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(Lcom/google/ads/interactivemedia/v3/internal/ke;)V

    goto :goto_f

    :cond_1a
    const-wide/32 v3, 0x40000

    cmp-long v9, v5, v3

    if-gez v9, :cond_1c

    long-to-int v3, v5

    .line 118
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    :cond_1b
    :goto_f
    const/4 v11, 0x0

    goto :goto_10

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v3

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/ir;->a:J

    const/4 v11, 0x1

    .line 119
    :goto_10
    invoke-direct {v0, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/ky;->b(J)V

    if-eqz v11, :cond_0

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->f:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1d
    const/4 v3, 0x1

    .line 118
    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->i:I

    if-nez v7, :cond_1f

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 91
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v10, v9, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BIIZ)Z

    move-result v7

    if-nez v7, :cond_1e

    return v8

    :cond_1e
    iput v9, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->i:I

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 92
    invoke-virtual {v3, v10}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 93
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->h:J

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 94
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v3

    iput v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->g:I

    :cond_1f
    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->h:J

    const-wide/16 v10, 0x1

    cmp-long v3, v7, v10

    if-nez v3, :cond_20

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 95
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    invoke-virtual {v1, v3, v9, v9}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->i:I

    add-int/2addr v3, v9

    iput v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->i:I

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 96
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->v()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->h:J

    goto :goto_11

    :cond_20
    cmp-long v3, v7, v5

    if-nez v3, :cond_22

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_21

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->e:Ljava/util/ArrayDeque;

    .line 97
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/kd;

    if-eqz v3, :cond_21

    iget-wide v5, v3, Lcom/google/ads/interactivemedia/v3/internal/kd;->a:J

    :cond_21
    cmp-long v3, v5, v7

    if-eqz v3, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->i:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->h:J

    .line 96
    :cond_22
    :goto_11
    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->h:J

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->i:I

    int-to-long v7, v3

    cmp-long v10, v5, v7

    if-ltz v10, :cond_2c

    .line 152
    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->g:I

    const v6, 0x6d6f6f76

    const v7, 0x68646c72    # 4.3148E24f

    const v8, 0x6d657461

    if-eq v5, v6, :cond_28

    const v6, 0x7472616b

    if-eq v5, v6, :cond_28

    const v6, 0x6d646961

    if-eq v5, v6, :cond_28

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_28

    const v6, 0x7374626c

    if-eq v5, v6, :cond_28

    const v6, 0x65647473

    if-eq v5, v6, :cond_28

    if-ne v5, v8, :cond_23

    goto/16 :goto_16

    :cond_23
    const v6, 0x6d646864

    if-eq v5, v6, :cond_25

    const v6, 0x6d766864

    if-eq v5, v6, :cond_25

    if-eq v5, v7, :cond_25

    const v6, 0x73747364

    if-eq v5, v6, :cond_25

    const v6, 0x73747473

    if-eq v5, v6, :cond_25

    const v6, 0x73747373

    if-eq v5, v6, :cond_25

    const v6, 0x63747473

    if-eq v5, v6, :cond_25

    const v6, 0x656c7374

    if-eq v5, v6, :cond_25

    const v6, 0x73747363

    if-eq v5, v6, :cond_25

    const v6, 0x7374737a

    if-eq v5, v6, :cond_25

    const v6, 0x73747a32

    if-eq v5, v6, :cond_25

    const v6, 0x7374636f

    if-eq v5, v6, :cond_25

    const v6, 0x636f3634

    if-eq v5, v6, :cond_25

    const v6, 0x746b6864

    if-eq v5, v6, :cond_25

    if-eq v5, v4, :cond_25

    const v4, 0x75647461

    if-eq v5, v4, :cond_25

    const v4, 0x6b657973

    if-eq v5, v4, :cond_25

    const v4, 0x696c7374

    if-ne v5, v4, :cond_24

    goto :goto_12

    :cond_24
    const/4 v3, 0x0

    goto :goto_15

    :cond_25
    :goto_12
    if-ne v3, v9, :cond_26

    const/4 v3, 0x1

    goto :goto_13

    :cond_26
    const/4 v3, 0x0

    .line 107
    :goto_13
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->h:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_27

    const/4 v3, 0x1

    goto :goto_14

    :cond_27
    const/4 v3, 0x0

    .line 108
    :goto_14
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->h:J

    long-to-int v5, v4

    .line 109
    invoke-direct {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->d:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 110
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_15
    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->j:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->f:I

    goto/16 :goto_0

    .line 152
    :cond_28
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->h:J

    iget v10, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->i:I

    int-to-long v10, v10

    add-long/2addr v3, v5

    sub-long/2addr v3, v10

    cmp-long v12, v5, v10

    if-eqz v12, :cond_2a

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->g:I

    if-ne v5, v8, :cond_2a

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 98
    invoke-virtual {v5, v9}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 99
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v9}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v6, 0x4

    .line 100
    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 101
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v5

    if-ne v5, v7, :cond_29

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    goto :goto_17

    .line 103
    :cond_29
    invoke-virtual {v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    .line 102
    :cond_2a
    :goto_17
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->e:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/kd;

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->g:I

    .line 104
    invoke-direct {v6, v7, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/kd;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->h:J

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ky;->i:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_2b

    .line 105
    invoke-direct {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ky;->b(J)V

    goto/16 :goto_0

    .line 106
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ky;->d()V

    goto/16 :goto_0

    .line 96
    :cond_2c
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "Atom size less than header length (unsupported)."

    .line 152
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(J)Lcom/google/ads/interactivemedia/v3/internal/is;
    .locals 12

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->p:[Lcom/google/ads/interactivemedia/v3/internal/kx;

    .line 7
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/kx;

    array-length v0, v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/is;

    .line 8
    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/iv;->a:Lcom/google/ads/interactivemedia/v3/internal/iv;

    .line 9
    invoke-direct {p1, p2, p2}, Lcom/google/ads/interactivemedia/v3/internal/is;-><init>(Lcom/google/ads/interactivemedia/v3/internal/iv;Lcom/google/ads/interactivemedia/v3/internal/iv;)V

    return-object p1

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->r:I

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v0, v1, :cond_3

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->p:[Lcom/google/ads/interactivemedia/v3/internal/kx;

    .line 10
    aget-object v0, v6, v0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/kx;->b:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 11
    invoke-static {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ky;->a(Lcom/google/ads/interactivemedia/v3/internal/lf;J)I

    move-result v6

    if-ne v6, v1, :cond_1

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/is;

    .line 12
    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/iv;->a:Lcom/google/ads/interactivemedia/v3/internal/iv;

    .line 13
    invoke-direct {p1, p2, p2}, Lcom/google/ads/interactivemedia/v3/internal/is;-><init>(Lcom/google/ads/interactivemedia/v3/internal/iv;Lcom/google/ads/interactivemedia/v3/internal/iv;)V

    return-object p1

    .line 14
    :cond_1
    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/lf;->f:[J

    aget-wide v8, v7, v6

    .line 15
    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/lf;->c:[J

    aget-wide v10, v7, v6

    cmp-long v7, v8, p1

    if-gez v7, :cond_2

    .line 16
    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/lf;->b:I

    add-int/2addr v7, v1

    if-ge v6, v7, :cond_2

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/lf;->b(J)I

    move-result p1

    if-eq p1, v1, :cond_2

    if-eq p1, v6, :cond_2

    .line 18
    iget-object p2, v0, Lcom/google/ads/interactivemedia/v3/internal/lf;->f:[J

    aget-wide v1, p2, p1

    .line 19
    iget-object p2, v0, Lcom/google/ads/interactivemedia/v3/internal/lf;->c:[J

    aget-wide p1, p2, p1

    goto :goto_0

    :cond_2
    move-wide p1, v2

    move-wide v1, v4

    :goto_0
    move-wide v6, p1

    move-wide p1, v8

    goto :goto_1

    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v6, v2

    move-wide v1, v4

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->p:[Lcom/google/ads/interactivemedia/v3/internal/kx;

    .line 20
    array-length v8, v3

    if-ge v0, v8, :cond_6

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->r:I

    if-eq v0, v8, :cond_5

    .line 21
    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/kx;->b:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 22
    invoke-static {v3, p1, p2, v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/ky;->a(Lcom/google/ads/interactivemedia/v3/internal/lf;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v4

    if-eqz v10, :cond_4

    .line 23
    invoke-static {v3, v1, v2, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/ky;->a(Lcom/google/ads/interactivemedia/v3/internal/lf;JJ)J

    move-result-wide v6

    :cond_4
    move-wide v10, v8

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 24
    :cond_6
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/iv;

    invoke-direct {v0, p1, p2, v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/iv;-><init>(JJ)V

    cmp-long p1, v1, v4

    if-nez p1, :cond_7

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/is;

    .line 25
    invoke-direct {p1, v0, v0}, Lcom/google/ads/interactivemedia/v3/internal/is;-><init>(Lcom/google/ads/interactivemedia/v3/internal/iv;Lcom/google/ads/interactivemedia/v3/internal/iv;)V

    return-object p1

    :cond_7
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/iv;

    .line 26
    invoke-direct {p1, v1, v2, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/iv;-><init>(JJ)V

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/is;

    .line 27
    invoke-direct {p2, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/is;-><init>(Lcom/google/ads/interactivemedia/v3/internal/iv;Lcom/google/ads/interactivemedia/v3/internal/iv;)V

    return-object p2
.end method

.method public final a(JJ)V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->e:Ljava/util/ArrayDeque;

    .line 153
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->i:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->k:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->l:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->m:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->n:I

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ky;->d()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->p:[Lcom/google/ads/interactivemedia/v3/internal/kx;

    if-eqz p1, :cond_2

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 155
    aget-object v2, p1, v0

    .line 156
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/kx;->b:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 157
    invoke-virtual {v3, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/lf;->a(J)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 158
    invoke-virtual {v3, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/lf;->b(J)I

    move-result v4

    :cond_1
    iput v4, v2, Lcom/google/ads/interactivemedia/v3/internal/kx;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->o:Lcom/google/ads/interactivemedia/v3/internal/ii;

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/lb;->b(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result p1

    return p1
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ky;->s:J

    return-wide v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
