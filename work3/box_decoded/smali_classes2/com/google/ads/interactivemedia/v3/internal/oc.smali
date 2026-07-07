.class public abstract Lcom/google/ads/interactivemedia/v3/internal/oc;
.super Lcom/google/ads/interactivemedia/v3/internal/bj;
.source "IMASDK"


# static fields
.field private static final b:[B


# instance fields
.field private A:Lcom/google/ads/interactivemedia/v3/internal/oa;

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Lcom/google/ads/interactivemedia/v3/internal/nx;

.field private N:[Ljava/nio/ByteBuffer;

.field private O:[Ljava/nio/ByteBuffer;

.field private P:J

.field private Q:I

.field private R:I

.field private S:Ljava/nio/ByteBuffer;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:I

.field private Z:I

.field protected a:Lcom/google/ads/interactivemedia/v3/internal/hc;

.field private aa:I

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:J

.field private af:J

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Lcom/google/ads/interactivemedia/v3/internal/bo;

.field private al:J

.field private am:J

.field private an:I

.field private ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

.field private ap:Lcom/google/ads/interactivemedia/v3/internal/hr;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/oe;

.field private final d:F

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/he;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/he;

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/nw;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/ace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/ace<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/media/MediaCodec$BufferInfo;

.field private final k:[J

.field private final l:[J

.field private final m:[J

.field private n:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private o:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private p:Landroid/media/MediaCrypto;

.field private q:Z

.field private r:F

.field private s:Landroid/media/MediaCodec;

.field private t:Lcom/google/ads/interactivemedia/v3/internal/ny;

.field private u:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private v:Landroid/media/MediaFormat;

.field private w:Z

.field private x:F

.field private y:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/ads/interactivemedia/v3/internal/oa;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/google/ads/interactivemedia/v3/internal/ob;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/oc;->b:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/ads/interactivemedia/v3/internal/oe;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bj;-><init>(I)V

    .line 2
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->c:Lcom/google/ads/interactivemedia/v3/internal/oe;

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->d:F

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/he;

    const/4 p2, 0x0

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/he;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 4
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/he;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->f:Lcom/google/ads/interactivemedia/v3/internal/he;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ace;

    .line 5
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/ace;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->h:Lcom/google/ads/interactivemedia/v3/internal/ace;

    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->i:Ljava/util/ArrayList;

    .line 7
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->r:F

    const/16 p1, 0xa

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->k:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->l:[J

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->m:[J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->al:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->am:J

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/nw;

    .line 8
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/nw;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->g:Lcom/google/ads/interactivemedia/v3/internal/nw;

    .line 9
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->N()V

    return-void
.end method

.method private final A()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->W:Z

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->g:Lcom/google/ads/interactivemedia/v3/internal/nw;

    .line 11
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a()V

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->V:Z

    return-void
.end method

.method private final S()V
    .locals 2

    .line 301
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->N:[Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->O:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private final T()Z
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->R:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final U()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Q:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final V()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->R:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->S:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final W()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_21

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ag:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Q:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->t:Lcom/google/ads/interactivemedia/v3/internal/ny;

    .line 16
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ny;->b()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Q:I

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 17
    sget v4, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    .line 18
    invoke-virtual {v4, v0}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_2
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->N:[Ljava/nio/ByteBuffer;

    .line 19
    aget-object v0, v4, v0

    .line 18
    :goto_0
    iput-object v0, v3, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 20
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a()V

    :cond_3
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->L:Z

    if-nez v0, :cond_4

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ac:Z

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->t:Lcom/google/ads/interactivemedia/v3/internal/ny;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Q:I

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    .line 21
    invoke-interface/range {v4 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/ny;->a(IIJI)V

    .line 22
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->U()V

    :cond_4
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z:I

    return v1

    :cond_5
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->J:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->J:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 23
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/oc;->b:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->t:Lcom/google/ads/interactivemedia/v3/internal/ny;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Q:I

    array-length v6, v1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    .line 24
    invoke-interface/range {v4 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/ny;->a(IIJI)V

    .line 25
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->U()V

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ab:Z

    return v3

    :cond_6
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y:I

    if-ne v0, v3, :cond_8

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->u:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 26
    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->u:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 27
    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 28
    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y:I

    :cond_8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 29
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 30
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->t()Lcom/google/ads/interactivemedia/v3/internal/da;

    move-result-object v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 31
    invoke-virtual {p0, v4, v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I

    move-result v5

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->g()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ae:J

    iput-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->af:J

    :cond_9
    const/4 v6, -0x3

    if-ne v5, v6, :cond_a

    return v1

    :cond_a
    const/4 v7, -0x5

    if-ne v5, v7, :cond_c

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y:I

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 32
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a()V

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y:I

    .line 33
    :cond_b
    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/da;)V

    return v3

    :cond_c
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 34
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/gz;->c()Z

    move-result v4

    if-eqz v4, :cond_10

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y:I

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 35
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a()V

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y:I

    :cond_d
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ag:Z

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ab:Z

    if-nez v0, :cond_e

    .line 36
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa()V

    return v1

    :cond_e
    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->L:Z

    if-nez v0, :cond_f

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ac:Z

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->t:Lcom/google/ads/interactivemedia/v3/internal/ny;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Q:I

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    .line 37
    invoke-interface/range {v4 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/ny;->a(IIJI)V

    .line 38
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->U()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    return v1

    :catch_0
    move-exception v0

    .line 68
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/Exception;Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object v0

    throw v0

    .line 38
    :cond_10
    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ab:Z

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 40
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/gz;->d()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 71
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y:I

    if-ne v0, v2, :cond_11

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y:I

    :cond_11
    return v3

    :cond_12
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 41
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/he;->g()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 42
    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/he;->a:Lcom/google/ads/interactivemedia/v3/internal/hb;

    invoke-virtual {v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/hb;->a(I)V

    :cond_13
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->D:Z

    if-eqz v0, :cond_1a

    if-nez v2, :cond_1a

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 43
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/abp;->a:[B

    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v8, v5, 0x1

    if-ge v8, v4, :cond_18

    .line 45
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x3

    if-ne v7, v10, :cond_15

    if-ne v9, v3, :cond_16

    .line 46
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x1f

    const/4 v10, 0x7

    if-ne v9, v10, :cond_14

    .line 47
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    add-int/2addr v5, v6

    .line 48
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 50
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_14
    const/4 v9, 0x1

    goto :goto_3

    :cond_15
    if-nez v9, :cond_16

    add-int/lit8 v7, v7, 0x1

    :cond_16
    :goto_3
    if-eqz v9, :cond_17

    const/4 v7, 0x0

    :cond_17
    move v5, v8

    goto :goto_2

    .line 52
    :cond_18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 51
    :goto_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 53
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_19

    return v3

    :cond_19
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->D:Z

    :cond_1a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 54
    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/he;->d:J

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->M:Lcom/google/ads/interactivemedia/v3/internal/nx;

    if-eqz v6, :cond_1b

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 55
    invoke-virtual {v6, v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/nx;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/he;)J

    move-result-wide v4

    :cond_1b
    move-wide v9, v4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 56
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->i:Ljava/util/ArrayList;

    .line 57
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ai:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->h:Lcom/google/ads/interactivemedia/v3/internal/ace;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 58
    invoke-virtual {v0, v9, v10, v4}, Lcom/google/ads/interactivemedia/v3/internal/ace;->a(JLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ai:Z

    :cond_1d
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->M:Lcom/google/ads/interactivemedia/v3/internal/nx;

    if-eqz v0, :cond_1e

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ae:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 59
    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/he;->d:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ae:J

    goto :goto_5

    .line 66
    :cond_1e
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ae:J

    .line 60
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ae:J

    .line 59
    :goto_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 61
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/he;->h()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 62
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->e()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->b(Lcom/google/ads/interactivemedia/v3/internal/he;)V

    :cond_1f
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/he;)V

    if-eqz v2, :cond_20

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->t:Lcom/google/ads/interactivemedia/v3/internal/ny;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Q:I

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 65
    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/he;->a:Lcom/google/ads/interactivemedia/v3/internal/hb;

    invoke-interface {v0, v2, v4, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/ny;->a(ILcom/google/ads/interactivemedia/v3/internal/hb;J)V

    goto :goto_6

    .line 70
    :cond_20
    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->t:Lcom/google/ads/interactivemedia/v3/internal/ny;

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Q:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->e:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 66
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v11, 0x0

    .line 66
    invoke-interface/range {v6 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/ny;->a(IIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :goto_6
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->U()V

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ab:Z

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 70
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->c:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->c:I

    return v3

    :catch_1
    move-exception v0

    .line 52
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/Exception;Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object v0

    throw v0

    :cond_21
    :goto_7
    return v1
.end method

.method private final X()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 313
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->r:F

    .line 314
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->u()[Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(F[Lcom/google/ads/interactivemedia/v3/internal/cz;)F

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->x:F

    cmpl-float v2, v1, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_2

    .line 315
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z()V

    return-void

    :cond_2
    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->d:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    .line 316
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 317
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    .line 318
    invoke-virtual {v2, v1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->x:F

    return-void
.end method

.method private final Y()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 13
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ab:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa:I

    return-void

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->ac()V

    return-void
.end method

.method private final Z()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ab:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa:I

    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->ab()V

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/hr;)Lcom/google/ads/interactivemedia/v3/internal/hs;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    const/4 p1, 0x0

    .line 78
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/hs;

    return-object p1
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/hr;Lcom/google/ads/interactivemedia/v3/internal/cz;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/hr;)Lcom/google/ads/interactivemedia/v3/internal/hs;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 170
    :try_start_0
    new-instance p1, Landroid/media/MediaCrypto;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 171
    invoke-virtual {p1, p2}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-virtual {p1}, Landroid/media/MediaCrypto;->release()V

    return p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/media/MediaCrypto;->release()V

    .line 173
    throw p2

    :catch_0
    :cond_0
    return v0
.end method

.method private final a(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->t()Lcom/google/ads/interactivemedia/v3/internal/da;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->f:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 219
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->f:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 220
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x5

    if-ne p1, v2, :cond_0

    .line 221
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/da;)V

    return v1

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->f:Lcom/google/ads/interactivemedia/v3/internal/he;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ag:Z

    .line 222
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final aa()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ah:Z

    .line 217
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->C()V

    return-void

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->ab()V

    return-void

    .line 215
    :cond_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->ac()V

    return-void

    .line 216
    :cond_2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->K()Z

    return-void
.end method

.method private final ab()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->J()V

    .line 224
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->D()V

    return-void
.end method

.method private final ac()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ap:Lcom/google/ads/interactivemedia/v3/internal/hr;

    .line 319
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/hr;)Lcom/google/ads/interactivemedia/v3/internal/hs;

    move-result-object v0

    if-nez v0, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->ab()V

    return-void

    .line 321
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/bk;->d:Ljava/util/UUID;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->ab()V

    return-void

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->p:Landroid/media/MediaCrypto;

    .line 324
    invoke-virtual {v0, v1}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ap:Lcom/google/ads/interactivemedia/v3/internal/hr;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa:I

    return-void

    :catch_0
    move-exception v0

    .line 324
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 325
    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/Exception;Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object v0

    throw v0
.end method

.method protected static c(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z
    .locals 1

    .line 311
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->E:Ljava/lang/Class;

    if-eqz p0, :cond_1

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/hs;

    .line 312
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected B()V
    .locals 0

    return-void
.end method

.method protected C()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    return-void
.end method

.method protected final D()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    if-nez v0, :cond_2d

    iget-boolean v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->V:Z

    if-nez v0, :cond_2d

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-nez v0, :cond_0

    goto/16 :goto_1a

    :cond_0
    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->ap:Lcom/google/ads/interactivemedia/v3/internal/hr;

    const/4 v8, 0x1

    if-nez v1, :cond_2

    .line 81
    invoke-virtual {v7, v0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->b(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 162
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->A()V

    .line 163
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->g:Lcom/google/ads/interactivemedia/v3/internal/nw;

    .line 168
    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/nw;->e(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->g:Lcom/google/ads/interactivemedia/v3/internal/nw;

    const/16 v1, 0x20

    .line 167
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/nw;->e(I)V

    .line 168
    :goto_0
    iput-boolean v8, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->V:Z

    return-void

    .line 167
    :cond_2
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->ap:Lcom/google/ads/interactivemedia/v3/internal/hr;

    iput-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 82
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    const/4 v9, 0x0

    if-eqz v1, :cond_6

    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->p:Landroid/media/MediaCrypto;

    if-nez v2, :cond_4

    .line 83
    invoke-direct {v7, v1}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/hr;)Lcom/google/ads/interactivemedia/v3/internal/hs;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    .line 87
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/hr;->a()Lcom/google/ads/interactivemedia/v3/internal/hl;

    goto :goto_1

    .line 84
    :cond_3
    :try_start_0
    new-instance v1, Landroid/media/MediaCrypto;

    invoke-direct {v1, v9, v9}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->p:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    invoke-virtual {v1, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->q:Z

    goto :goto_1

    :catch_0
    move-exception v0

    .line 121
    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 85
    invoke-virtual {v7, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/Exception;Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object v0

    throw v0

    .line 88
    :cond_4
    :goto_1
    sget-boolean v0, Lcom/google/ads/interactivemedia/v3/internal/hs;->a:Z

    if-nez v0, :cond_5

    goto :goto_2

    .line 86
    :cond_5
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    .line 161
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/hr;->a()Lcom/google/ads/interactivemedia/v3/internal/hl;

    move-result-object v0

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-virtual {v7, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/Exception;Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object v0

    throw v0

    .line 88
    :cond_6
    :goto_2
    :try_start_1
    iget-object v10, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->p:Landroid/media/MediaCrypto;

    iget-boolean v11, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->q:Z

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->y:Ljava/util/ArrayDeque;
    :try_end_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/ob; {:try_start_1 .. :try_end_1} :catch_6

    const-string v12, "MediaCodecRenderer"

    const/4 v13, 0x0

    if-nez v0, :cond_9

    :try_start_2
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->c:Lcom/google/ads/interactivemedia/v3/internal/oe;

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 89
    invoke-virtual {v7, v0, v1, v11}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v11, :cond_7

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->c:Lcom/google/ads/interactivemedia/v3/internal/oe;

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 91
    invoke-virtual {v7, v0, v1, v13}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 93
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x63

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Drm session requires secure decoder for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v1, Ljava/util/ArrayDeque;

    .line 95
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->y:Ljava/util/ArrayDeque;

    .line 96
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->y:Ljava/util/ArrayDeque;

    .line 97
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/oa;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_8
    iput-object v9, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->z:Lcom/google/ads/interactivemedia/v3/internal/ob;
    :try_end_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/ok; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/ob; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_3

    :catch_1
    move-exception v0

    .line 160
    :try_start_3
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ob;

    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    const v3, -0xc34e

    .line 98
    invoke-direct {v1, v2, v0, v11, v3}, Lcom/google/ads/interactivemedia/v3/internal/ob;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/Throwable;ZI)V

    throw v1

    .line 97
    :cond_9
    :goto_3
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->y:Ljava/util/ArrayDeque;

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    :goto_4
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    if-nez v0, :cond_2b

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->y:Ljava/util/ArrayDeque;

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/google/ads/interactivemedia/v3/internal/oa;

    .line 101
    invoke-virtual {v7, v14}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/oa;)Z

    move-result v0
    :try_end_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/ob; {:try_start_3 .. :try_end_3} :catch_6

    if-nez v0, :cond_a

    return-void

    .line 102
    :cond_a
    :try_start_4
    iget-object v0, v14, Lcom/google/ads/interactivemedia/v3/internal/oa;->a:Ljava/lang/String;

    .line 103
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v15, 0x17

    if-ge v1, v15, :cond_b

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_5

    .line 106
    :cond_b
    iget v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->r:F

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->u()[Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(F[Lcom/google/ads/interactivemedia/v3/internal/cz;)F

    move-result v1

    .line 103
    :goto_5
    iget v3, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->d:F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_c

    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_6

    :cond_c
    move v6, v1

    .line 105
    :goto_6
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-string v1, "createCodec:"

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 127
    :cond_d
    new-instance v2, Ljava/lang/String;

    .line 106
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_7
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;)V

    .line 107
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/oq;

    .line 108
    invoke-direct {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/oq;-><init>(Landroid/media/MediaCodec;)V

    .line 109
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/app;->b()V

    const-string v1, "configureCodec"

    .line 110
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v18, v3

    move-object v3, v4

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    move-object/from16 v18, v5

    move-object v5, v10

    move/from16 v20, v6

    .line 111
    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/ny;Lcom/google/ads/interactivemedia/v3/internal/cz;Landroid/media/MediaCrypto;F)V

    .line 112
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/app;->b()V

    const-string v1, "startCodec"

    .line 113
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;)V

    .line 114
    invoke-interface/range {v19 .. v19}, Lcom/google/ads/interactivemedia/v3/internal/ny;->a()V

    .line 115
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/app;->b()V

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_e

    .line 117
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->N:[Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->O:[Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_e
    move-object/from16 v1, v18

    :try_start_8
    iput-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    move-object/from16 v1, v19

    iput-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->t:Lcom/google/ads/interactivemedia/v3/internal/ny;

    iput-object v14, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->A:Lcom/google/ads/interactivemedia/v3/internal/oa;

    move/from16 v1, v20

    iput v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->x:F

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->u:Lcom/google/ads/interactivemedia/v3/internal/cz;

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    const-string v5, "OMX.Exynos.avc.dec.secure"

    const/16 v6, 0x19

    if-gt v1, v6, :cond_10

    .line 122
    :try_start_9
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    const-string v9, "SM-T585"

    .line 123
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    const-string v9, "SM-A510"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    const-string v9, "SM-A520"

    .line 124
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    const-string v9, "SM-J700"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v1, 0x2

    goto :goto_8

    .line 148
    :cond_10
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v9, 0x18

    if-ge v1, v9, :cond_13

    const-string v1, "OMX.Nvidia.h264.decode"

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_11
    const-string v1, "flounder"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 126
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "flounder_lte"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "grouper"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 127
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "tilapia"

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    const/4 v1, 0x1

    goto :goto_8

    :cond_13
    const/4 v1, 0x0

    .line 124
    :goto_8
    iput v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->B:I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    const-string v9, "SM-T230"

    .line 128
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_9

    :cond_14
    const/4 v1, 0x0

    :goto_9
    iput-boolean v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->C:Z

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->u:Lcom/google/ads/interactivemedia/v3/internal/cz;

    sget v9, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-ge v9, v2, :cond_15

    .line 129
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->D:Z

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v9, 0x13

    const/16 v13, 0x12

    if-lt v1, v13, :cond_18

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-ne v1, v13, :cond_16

    const-string v1, "OMX.SEC.avc.dec"

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_16
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-ne v1, v9, :cond_17

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    const-string v6, "SM-G800"

    .line 132
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "OMX.Exynos.avc.dec"

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    goto :goto_c

    :cond_18
    :goto_b
    const/4 v1, 0x1

    :goto_c
    iput-boolean v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->E:Z

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v5, 0x1d

    if-ne v1, v5, :cond_19

    const-string v1, "c2.android.aac.decoder"

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_d

    :cond_19
    const/4 v1, 0x0

    :goto_d
    iput-boolean v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->F:Z

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-gt v1, v15, :cond_1b

    const-string v1, "OMX.google.vorbis.decoder"

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_f

    :cond_1a
    :goto_e
    const/4 v1, 0x1

    goto :goto_10

    :cond_1b
    :goto_f
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-gt v1, v9, :cond_1d

    const-string v1, "hb2000"

    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    .line 136
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "stvm8"

    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/ach;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    const-string v1, "OMX.amlogic.avc.decoder.awesome"

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 138
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_e

    :cond_1d
    const/4 v1, 0x0

    :goto_10
    iput-boolean v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->G:Z

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-ne v1, v2, :cond_1e

    const-string v1, "OMX.google.aac.decoder"

    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_11

    :cond_1e
    const/4 v1, 0x0

    :goto_11
    iput-boolean v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->H:Z

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->u:Lcom/google/ads/interactivemedia/v3/internal/cz;

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-gt v2, v13, :cond_1f

    .line 140
    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    if-ne v1, v8, :cond_1f

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_12

    :cond_1f
    const/4 v1, 0x0

    :goto_12
    iput-boolean v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->I:Z

    .line 142
    iget-object v1, v14, Lcom/google/ads/interactivemedia/v3/internal/oa;->a:Ljava/lang/String;

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v6, 0x19

    if-gt v2, v6, :cond_21

    const-string v2, "OMX.rk.video_decoder.avc"

    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_14

    :cond_20
    :goto_13
    const/4 v1, 0x1

    goto :goto_15

    :cond_21
    :goto_14
    sget v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v6, 0x11

    if-gt v2, v6, :cond_22

    const-string v2, "OMX.allwinner.video.decoder.avc"

    .line 144
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_22
    sget v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-gt v2, v5, :cond_23

    const-string v2, "OMX.broadcom.video_decoder.tunnel"

    .line 145
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 146
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    :cond_23
    const-string v1, "Amazon"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->c:Ljava/lang/String;

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "AFTS"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, v14, Lcom/google/ads/interactivemedia/v3/internal/oa;->f:Z

    if-eqz v1, :cond_24

    goto :goto_13

    .line 148
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->E()Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_13

    :cond_25
    const/4 v1, 0x0

    .line 147
    :goto_15
    iput-boolean v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->L:Z

    const-string v1, "c2.android.mp3.decoder"

    .line 149
    iget-object v2, v14, Lcom/google/ads/interactivemedia/v3/internal/oa;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/nx;

    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/nx;-><init>()V

    iput-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->M:Lcom/google/ads/interactivemedia/v3/internal/nx;

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->ae()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    add-long/2addr v1, v5

    iput-wide v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->P:J

    :cond_27
    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 151
    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/hc;->a:I

    add-int/2addr v2, v8

    iput v2, v1, Lcom/google/ads/interactivemedia/v3/internal/hc;->a:I

    sub-long v5, v3, v16

    move-object/from16 v1, p0

    move-object v2, v0

    .line 152
    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Ljava/lang/String;JJ)V

    goto :goto_19

    :catch_2
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_16

    :catch_3
    move-exception v0

    move-object v1, v5

    :goto_16
    move-object v5, v1

    goto :goto_17

    :catch_4
    move-exception v0

    const/4 v5, 0x0

    :goto_17
    if-eqz v5, :cond_28

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->S()V

    .line 120
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    .line 121
    :cond_28
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    move-exception v0

    .line 153
    :try_start_a
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to initialize decoder: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->y:Ljava/util/ArrayDeque;

    .line 154
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ob;

    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 155
    invoke-direct {v1, v2, v0, v11, v14}, Lcom/google/ads/interactivemedia/v3/internal/ob;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/Throwable;ZLcom/google/ads/interactivemedia/v3/internal/oa;)V

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->z:Lcom/google/ads/interactivemedia/v3/internal/ob;

    if-nez v0, :cond_29

    iput-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->z:Lcom/google/ads/interactivemedia/v3/internal/ob;

    goto :goto_18

    .line 156
    :cond_29
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ob;->a(Lcom/google/ads/interactivemedia/v3/internal/ob;Lcom/google/ads/interactivemedia/v3/internal/ob;)Lcom/google/ads/interactivemedia/v3/internal/ob;

    move-result-object v0

    iput-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->z:Lcom/google/ads/interactivemedia/v3/internal/ob;

    .line 155
    :goto_18
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->y:Ljava/util/ArrayDeque;

    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    :goto_19
    const/4 v9, 0x0

    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_2a
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->z:Lcom/google/ads/interactivemedia/v3/internal/ob;

    .line 158
    throw v0

    :cond_2b
    move-object v1, v9

    .line 104
    iput-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->y:Ljava/util/ArrayDeque;

    return-void

    .line 98
    :cond_2c
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ob;

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    const v2, -0xc34f

    const/4 v3, 0x0

    .line 159
    invoke-direct {v0, v1, v3, v11, v2}, Lcom/google/ads/interactivemedia/v3/internal/ob;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/Throwable;ZI)V

    throw v0
    :try_end_a
    .catch Lcom/google/ads/interactivemedia/v3/internal/ob; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    move-exception v0

    .line 161
    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 160
    invoke-virtual {v7, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/Exception;Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object v0

    throw v0

    :cond_2d
    :goto_1a
    return-void
.end method

.method protected E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final F()Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-object v0
.end method

.method protected final G()Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->o:Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-object v0
.end method

.method protected final H()Landroid/media/MediaCodec;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected final I()Lcom/google/ads/interactivemedia/v3/internal/oa;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->A:Lcom/google/ads/interactivemedia/v3/internal/oa;

    return-object v0
.end method

.method protected final J()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 225
    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/hc;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/ads/interactivemedia/v3/internal/hc;->b:I

    .line 226
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->t:Lcom/google/ads/interactivemedia/v3/internal/ny;

    :try_start_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->p:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->p:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    .line 228
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->N()V

    return-void

    :catchall_0
    move-exception v1

    .line 230
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->p:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    .line 228
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->N()V

    .line 229
    throw v1

    :catchall_1
    move-exception v1

    .line 228
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->t:Lcom/google/ads/interactivemedia/v3/internal/ny;

    :try_start_2
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->p:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    .line 227
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 229
    :cond_2
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->p:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    .line 228
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->N()V

    .line 230
    throw v1

    :catchall_2
    move-exception v1

    .line 228
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->p:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->N()V

    .line 229
    throw v1
.end method

.method protected final K()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->D()V

    :cond_0
    return v0
.end method

.method protected final L()Z
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->E:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->F:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ad:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->G:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ac:Z

    if-nez v0, :cond_3

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->t:Lcom/google/ads/interactivemedia/v3/internal/ny;

    .line 74
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ny;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->M()V

    return v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->M()V

    .line 76
    throw v0

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->J()V

    const/4 v0, 0x1

    return v0
.end method

.method protected M()V
    .locals 4

    .line 302
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->U()V

    .line 303
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->V()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->P:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ac:Z

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ab:Z

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->J:Z

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->K:Z

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->T:Z

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->U:Z

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->i:Ljava/util/ArrayList;

    .line 304
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ae:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->af:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->M:Lcom/google/ads/interactivemedia/v3/internal/nx;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/nx;->a()V

    :cond_0
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z:I

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa:I

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->X:Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y:I

    return-void
.end method

.method protected final N()V
    .locals 2

    .line 306
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->M()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ak:Lcom/google/ads/interactivemedia/v3/internal/bo;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->M:Lcom/google/ads/interactivemedia/v3/internal/nx;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->y:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->A:Lcom/google/ads/interactivemedia/v3/internal/oa;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->u:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->v:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->w:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ad:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->x:F

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->B:I

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->C:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->D:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->E:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->F:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->G:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->H:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->I:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->L:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->X:Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y:I

    .line 307
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->S()V

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->q:Z

    return-void
.end method

.method protected final O()F
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->r:F

    return v0
.end method

.method protected final P()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->aj:Z

    return-void
.end method

.method protected final Q()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ae:J

    return-wide v0
.end method

.method protected final R()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->am:J

    return-wide v0
.end method

.method protected a(F[Lcom/google/ads/interactivemedia/v3/internal/cz;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->c:Lcom/google/ads/interactivemedia/v3/internal/oe;

    .line 309
    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/ok; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/Exception;Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object p1

    throw p1
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ok;
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Throwable;Lcom/google/ads/interactivemedia/v3/internal/oa;)Lcom/google/ads/interactivemedia/v3/internal/nz;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/nz;

    .line 10
    invoke-direct {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/nz;-><init>(Ljava/lang/Throwable;Lcom/google/ads/interactivemedia/v3/internal/oa;)V

    return-object v0
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/internal/oe;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/oe;",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/oa;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/ok;
        }
    .end annotation
.end method

.method protected final a(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->am:J

    const/4 v2, 0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->al:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 208
    :goto_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->al:J

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->am:J

    return-void

    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->an:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->l:[J

    array-length v3, v1

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 209
    aget-wide v0, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Too many stream changes, so dropping offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecRenderer"

    .line 210
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/2addr v0, v2

    .line 213
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->an:I

    .line 210
    :goto_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->k:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->an:I

    add-int/lit8 v1, v1, -0x1

    .line 211
    aput-wide p1, v0, v1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->l:[J

    .line 212
    aput-wide p3, p1, v1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->m:[J

    iget-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ae:J

    .line 213
    aput-wide p2, p1, v1

    return-void
.end method

.method protected a(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ag:Z

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ah:Z

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->aj:Z

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->V:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->g:Lcom/google/ads/interactivemedia/v3/internal/nw;

    .line 193
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nw;->i()V

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->K()Z

    .line 193
    :goto_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->h:Lcom/google/ads/interactivemedia/v3/internal/ace;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/ace;->b()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ai:Z

    :cond_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->h:Lcom/google/ads/interactivemedia/v3/internal/ace;

    .line 195
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/ace;->a()V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->an:I

    if-eqz p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->l:[J

    .line 196
    aget-wide v0, p3, p2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->am:J

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->k:[J

    .line 197
    aget-wide p2, p3, p2

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->al:J

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->an:I

    :cond_2
    return-void
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ak:Lcom/google/ads/interactivemedia/v3/internal/bo;

    return-void
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/internal/cz;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/internal/da;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ai:Z

    .line 176
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/da;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/da;->b:Lcom/google/ads/interactivemedia/v3/internal/hr;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ap:Lcom/google/ads/interactivemedia/v3/internal/hr;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->V:Z

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->W:Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    if-nez v2, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->D()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    if-nez v2, :cond_5

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->A:Lcom/google/ads/interactivemedia/v3/internal/oa;

    .line 179
    iget-boolean v2, v2, Lcom/google/ads/interactivemedia/v3/internal/oa;->f:Z

    if-nez v2, :cond_4

    .line 180
    invoke-direct {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/hr;Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    sget p1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v2, 0x17

    if-ge p1, v2, :cond_6

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ap:Lcom/google/ads/interactivemedia/v3/internal/hr;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    if-ne p1, v2, :cond_5

    goto :goto_0

    .line 192
    :cond_5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z()V

    return-void

    .line 180
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->A:Lcom/google/ads/interactivemedia/v3/internal/oa;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->u:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 181
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result p1

    if-eqz p1, :cond_f

    if-eq p1, v0, :cond_c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->u:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 182
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->X()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ap:Lcom/google/ads/interactivemedia/v3/internal/hr;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    if-eq p1, v0, :cond_d

    .line 183
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y()V

    return-void

    .line 190
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 191
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 189
    :cond_8
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->C:Z

    if-eqz p1, :cond_9

    .line 184
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z()V

    return-void

    :cond_9
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->X:Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->B:I

    const/4 v3, 0x0

    if-eq p1, v2, :cond_b

    if-ne p1, v0, :cond_a

    iget p1, v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->u:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 185
    iget v4, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    if-ne p1, v4, :cond_a

    iget p1, v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    if-ne p1, v2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_1
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->J:Z

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->u:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 186
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->X()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ap:Lcom/google/ads/interactivemedia/v3/internal/hr;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    if-eq p1, v0, :cond_d

    .line 187
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y()V

    return-void

    .line 183
    :cond_c
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->u:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 188
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->X()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ap:Lcom/google/ads/interactivemedia/v3/internal/hr;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    if-ne p1, v1, :cond_e

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ab:Z

    if-eqz p1, :cond_d

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa:I

    :cond_d
    return-void

    .line 189
    :cond_e
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->Y()V

    return-void

    .line 190
    :cond_f
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z()V

    return-void
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/internal/he;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/internal/oa;Lcom/google/ads/interactivemedia/v3/internal/ny;Lcom/google/ads/interactivemedia/v3/internal/cz;Landroid/media/MediaCrypto;F)V
.end method

.method protected a(Ljava/lang/String;JJ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected a(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/hc;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/hc;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    return-void
.end method

.method protected abstract a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIIJZZLcom/google/ads/interactivemedia/v3/internal/cz;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/internal/oa;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final b(JJ)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    move-object/from16 v15, p0

    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->aj:Z

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    iput-boolean v14, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->aj:Z

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa()V

    :cond_0
    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ak:Lcom/google/ads/interactivemedia/v3/internal/bo;

    const/4 v13, 0x0

    if-nez v0, :cond_2c

    const/16 v11, 0x15

    .line 232
    :try_start_0
    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ah:Z

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->C()V

    return-void

    :cond_1
    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 v12, 0x1

    if-nez v0, :cond_3

    .line 234
    invoke-direct {v15, v12}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 235
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->D()V

    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->V:Z

    const/4 v10, -0x3

    if-eqz v0, :cond_11

    const-string v0, "bypassRender"

    .line 236
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->g:Lcom/google/ads/interactivemedia/v3/internal/nw;

    iget-boolean v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ah:Z

    xor-int/2addr v1, v12

    .line 237
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->n()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/nw;->b:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->R:I

    const/4 v9, 0x0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->m()I

    move-result v16

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->l()J

    move-result-wide v17

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->b()Z

    move-result v19

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->c()Z

    move-result v20

    iget-object v4, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->o:Lcom/google/ads/interactivemedia/v3/internal/cz;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v21, v4

    move-wide/from16 v4, p3

    move/from16 v10, v16

    move-wide/from16 v11, v17

    move/from16 v13, v19

    move/from16 v14, v20

    move-object/from16 v15, v21

    .line 238
    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIIJZZLcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/nw;->d:J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v15, p0

    .line 239
    :try_start_2
    invoke-virtual {v15, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/oc;->d(J)V

    goto :goto_2

    :cond_4
    move-object/from16 v15, p0

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v14, 0x1

    iput-boolean v14, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ah:Z

    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_6
    const/4 v14, 0x1

    .line 240
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->j()V

    iget-boolean v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->W:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 241
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->A()V

    const/4 v13, 0x0

    iput-boolean v13, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->W:Z

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->D()V

    iget-boolean v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->V:Z

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_7
    const/4 v10, -0x3

    const/16 v11, 0x15

    const/4 v12, 0x1

    const/4 v13, 0x0

    :goto_4
    const/4 v14, 0x0

    goto :goto_1

    :cond_8
    const/4 v13, 0x0

    :goto_5
    iget-boolean v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ag:Z

    xor-int/2addr v1, v14

    .line 243
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->t()Lcom/google/ads/interactivemedia/v3/internal/da;

    move-result-object v1

    .line 245
    :goto_6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->o()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->c()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->k()Lcom/google/ads/interactivemedia/v3/internal/he;

    move-result-object v2

    .line 246
    invoke-virtual {v15, v1, v2, v13}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I

    move-result v2

    const/4 v3, -0x5

    if-eq v2, v3, :cond_b

    const/4 v3, -0x4

    if-eq v2, v3, :cond_a

    const/4 v11, -0x3

    if-ne v2, v11, :cond_9

    goto :goto_7

    .line 300
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 253
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    const/4 v11, -0x3

    .line 247
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->p()V

    goto :goto_6

    :cond_b
    const/4 v11, -0x3

    const/4 v2, 0x1

    goto :goto_8

    :cond_c
    const/4 v11, -0x3

    :goto_7
    const/4 v2, 0x0

    .line 246
    :goto_8
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->n()Z

    move-result v3

    if-nez v3, :cond_d

    iget-boolean v3, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ai:Z

    if-eqz v3, :cond_d

    iget-object v3, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 248
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->o:Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 v4, 0x0

    .line 249
    invoke-virtual {v15, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Landroid/media/MediaFormat;)V

    iput-boolean v13, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ai:Z

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    :goto_9
    if-eqz v2, :cond_e

    .line 250
    invoke-virtual {v15, v1}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/da;)V

    :cond_e
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/gz;->c()Z

    move-result v1

    if-eqz v1, :cond_f

    iput-boolean v14, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ag:Z

    :cond_f
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/nw;->n()Z

    move-result v1

    if-nez v1, :cond_10

    .line 251
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/he;->h()V

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/nw;->b:Ljava/nio/ByteBuffer;

    .line 252
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object v13, v4

    const/4 v10, -0x3

    const/16 v11, 0x15

    const/4 v12, 0x1

    goto :goto_4

    .line 254
    :cond_10
    :goto_a
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/app;->b()V

    return-void

    :cond_11
    const/4 v11, -0x3

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 247
    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    if-eqz v0, :cond_28

    const-string v0, "drainAndFeed"

    .line 255
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;)V

    :cond_12
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->T()Z

    move-result v0

    if-nez v0, :cond_22

    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->H:Z

    if-eqz v0, :cond_13

    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ac:Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6

    if-eqz v0, :cond_13

    :try_start_3
    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->t:Lcom/google/ads/interactivemedia/v3/internal/ny;

    iget-object v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 257
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ny;->a(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_c

    .line 284
    :catch_0
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa()V

    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ah:Z

    if-eqz v0, :cond_23

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->J()V

    goto/16 :goto_12

    .line 268
    :cond_13
    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->t:Lcom/google/ads/interactivemedia/v3/internal/ny;

    iget-object v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 256
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ny;->a(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_c
    if-gez v0, :cond_1a

    const/4 v1, -0x2

    if-ne v0, v1, :cond_16

    .line 257
    iput-boolean v14, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ad:Z

    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->t:Lcom/google/ads/interactivemedia/v3/internal/ny;

    .line 258
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ny;->c()Landroid/media/MediaFormat;

    move-result-object v0

    iget v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->B:I

    if-eqz v1, :cond_14

    const-string v1, "width"

    .line 259
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_14

    const-string v1, "height"

    .line 260
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_14

    iput-boolean v14, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->K:Z

    goto :goto_b

    :cond_14
    iget-boolean v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->I:Z

    if-eqz v1, :cond_15

    const-string v1, "channel-count"

    .line 261
    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_15
    iput-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->v:Landroid/media/MediaFormat;

    iput-boolean v14, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->w:Z

    goto :goto_b

    :cond_16
    if-ne v0, v11, :cond_17

    .line 262
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v12, 0x15

    if-ge v0, v12, :cond_12

    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    .line 263
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->O:[Ljava/nio/ByteBuffer;

    goto :goto_b

    :cond_17
    const/16 v12, 0x15

    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->L:Z

    if-nez v0, :cond_18

    goto/16 :goto_12

    .line 292
    :cond_18
    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ag:Z

    if-nez v0, :cond_19

    iget v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->Z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 286
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa()V

    goto/16 :goto_12

    :cond_1a
    const/16 v12, 0x15

    iget-boolean v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->K:Z

    if-eqz v1, :cond_1b

    iput-boolean v13, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->K:Z

    iget-object v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    .line 264
    invoke-virtual {v1, v0, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_b

    :cond_1b
    iget-object v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 265
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v1, :cond_1c

    iget-object v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1c

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa()V

    goto/16 :goto_12

    :cond_1c
    iput v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->R:I

    .line 266
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    if-lt v1, v12, :cond_1d

    iget-object v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    .line 267
    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_d

    .line 278
    :cond_1d
    iget-object v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->O:[Ljava/nio/ByteBuffer;

    .line 268
    aget-object v0, v1, v0

    .line 267
    :goto_d
    iput-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->S:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1e

    iget-object v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 269
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->S:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 270
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_1e
    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 271
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->i:Ljava/util/ArrayList;

    .line 272
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_20

    iget-object v4, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->i:Ljava/util/ArrayList;

    .line 273
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_1f

    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->i:Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_f

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_20
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->T:Z

    iget-wide v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->af:J

    iget-object v2, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 275
    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_21

    const/4 v0, 0x1

    goto :goto_10

    :cond_21
    const/4 v0, 0x0

    :goto_10
    iput-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->U:Z

    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 276
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/oc;->c(J)V

    goto :goto_11

    :cond_22
    const/16 v12, 0x15

    :goto_11
    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->H:Z

    if-eqz v0, :cond_24

    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ac:Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz v0, :cond_24

    :try_start_5
    iget-object v6, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    iget-object v7, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->S:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->R:I

    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 279
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v10, 0x1

    iget-object v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->T:Z

    iget-boolean v2, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->U:Z

    iget-object v3, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->o:Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-object/from16 v1, p0

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-wide/from16 v2, p1

    move-wide/from16 v18, v4

    move-wide/from16 v4, p3

    const/16 v20, -0x3

    move-wide/from16 v11, v18

    move v13, v0

    const/4 v0, 0x1

    move/from16 v14, v16

    move-object/from16 v15, v17

    .line 280
    invoke-virtual/range {v1 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIIJZZLcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_13

    .line 287
    :catch_1
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v15, p0

    :try_start_7
    iget-boolean v0, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->ah:Z

    if-eqz v0, :cond_23

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->J()V

    :cond_23
    :goto_12
    move-object v1, v15

    goto :goto_14

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_16

    :cond_24
    const/4 v0, 0x1

    const/16 v20, -0x3

    .line 289
    iget-object v6, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    iget-object v7, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->S:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->R:I

    iget-object v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 277
    iget v9, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v10, 0x1

    iget-object v1, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v11, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v13, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->T:Z

    iget-boolean v14, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->U:Z

    iget-object v4, v15, Lcom/google/ads/interactivemedia/v3/internal/oc;->o:Lcom/google/ads/interactivemedia/v3/internal/cz;
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v16, v4

    move-wide/from16 v4, p3

    move-object/from16 v15, v16

    .line 278
    :try_start_8
    invoke-virtual/range {v1 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIIJZZLcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3

    :goto_13
    if-eqz v1, :cond_26

    move-object/from16 v1, p0

    .line 280
    :try_start_9
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 281
    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/oc;->d(J)V

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/oc;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 282
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->V()V

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_25

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa()V

    goto :goto_14

    :cond_25
    move-object v15, v1

    const/4 v11, -0x3

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_b

    :cond_26
    move-object/from16 v1, p0

    .line 291
    :cond_27
    :goto_14
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->W()Z

    move-result v0

    if-nez v0, :cond_27

    .line 292
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/app;->b()V

    return-void

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_15

    :cond_28
    move-object v1, v15

    .line 256
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/oc;->a:Lcom/google/ads/interactivemedia/v3/internal/hc;

    .line 293
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->d:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/ads/interactivemedia/v3/internal/bj;->b(J)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/hc;->d:I
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_5

    const/4 v2, 0x0

    .line 294
    :try_start_a
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Z)Z
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_4

    return-void

    :catch_4
    move-exception v0

    goto :goto_16

    :catch_5
    move-exception v0

    goto :goto_15

    :catch_6
    move-exception v0

    move-object v1, v15

    :goto_15
    const/4 v2, 0x0

    .line 295
    :goto_16
    sget v3, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_29

    .line 296
    instance-of v3, v0, Landroid/media/MediaCodec$CodecException;

    if-nez v3, :cond_2a

    .line 297
    :cond_29
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 298
    array-length v4, v3

    if-lez v4, :cond_2b

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.MediaCodec"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_2a
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/oc;->A:Lcom/google/ads/interactivemedia/v3/internal/oa;

    .line 300
    invoke-virtual {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Ljava/lang/Throwable;Lcom/google/ads/interactivemedia/v3/internal/oa;)Lcom/google/ads/interactivemedia/v3/internal/nz;

    move-result-object v0

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-virtual {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/Exception;Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/bo;

    move-result-object v0

    throw v0

    .line 299
    :cond_2b
    throw v0

    :cond_2c
    move-object v4, v13

    move-object v1, v15

    .line 231
    iput-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/oc;->ak:Lcom/google/ads/interactivemedia/v3/internal/bo;

    .line 232
    throw v0
.end method

.method protected b(Lcom/google/ads/interactivemedia/v3/internal/he;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    return-void
.end method

.method protected b(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->r:F

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->s:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->aa:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->ae()I

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->X()V

    :cond_0
    return-void
.end method

.method protected final c(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bo;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->h:Lcom/google/ads/interactivemedia/v3/internal/ace;

    .line 326
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ace;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-nez p1, :cond_0

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->w:Z

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->h:Lcom/google/ads/interactivemedia/v3/internal/ace;

    .line 327
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ace;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/cz;

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->o:Lcom/google/ads/interactivemedia/v3/internal/cz;

    goto :goto_0

    .line 328
    :cond_1
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->w:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->o:Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-nez p1, :cond_2

    goto :goto_1

    .line 327
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->o:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->v:Landroid/media/MediaFormat;

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/oc;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Landroid/media/MediaFormat;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->w:Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected d(J)V
    .locals 6

    :goto_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->an:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->m:[J

    const/4 v2, 0x0

    .line 198
    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->k:[J

    .line 199
    aget-wide v3, v1, v2

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->al:J

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->l:[J

    .line 200
    aget-wide v4, v3, v2

    iput-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->am:J

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->an:I

    const/4 v3, 0x1

    .line 201
    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->l:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->an:I

    .line 202
    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->m:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->an:I

    .line 203
    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->B()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected r()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->al:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->am:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->an:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ap:Lcom/google/ads/interactivemedia/v3/internal/hr;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ao:Lcom/google/ads/interactivemedia/v3/internal/hr;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->L()Z

    return-void

    .line 174
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->s()V

    return-void
.end method

.method protected s()V
    .locals 2

    const/4 v0, 0x0

    .line 205
    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->A()V

    .line 206
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->J()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ap:Lcom/google/ads/interactivemedia/v3/internal/hr;

    return-void

    :catchall_0
    move-exception v1

    .line 206
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ap:Lcom/google/ads/interactivemedia/v3/internal/hr;

    .line 207
    throw v1
.end method

.method public y()Z
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->n:Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bj;->w()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/oc;->T()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->P:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->P:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :cond_2
    return v1
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/oc;->ah:Z

    return v0
.end method
