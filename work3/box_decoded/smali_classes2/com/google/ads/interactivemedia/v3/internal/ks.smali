.class public final Lcom/google/ads/interactivemedia/v3/internal/ks;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ih;


# static fields
.field private static final a:[B

.field private static final b:Lcom/google/ads/interactivemedia/v3/internal/cz;


# instance fields
.field private A:Lcom/google/ads/interactivemedia/v3/internal/kr;

.field private B:I

.field private C:I

.field private D:I

.field private E:Z

.field private F:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private G:[Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private H:[Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private I:Z

.field private final c:I

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/kr;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final i:[B

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final k:Lcom/google/ads/interactivemedia/v3/internal/acf;

.field private final l:Lcom/google/ads/interactivemedia/v3/internal/oy;

.field private final m:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final n:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/ads/interactivemedia/v3/internal/kd;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/ads/interactivemedia/v3/internal/kq;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private q:I

.field private r:I

.field private s:J

.field private t:I

.field private u:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private v:J

.field private w:I

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->a:[B

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    const-string v1, "application/x-emsg"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->b:Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ks;-><init>([B)V

    return-void
.end method

.method public constructor <init>(ILcom/google/ads/interactivemedia/v3/internal/acf;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/ads/interactivemedia/v3/internal/acf;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/ks;-><init>(ILcom/google/ads/interactivemedia/v3/internal/acf;Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/ix;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/ads/interactivemedia/v3/internal/acf;Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/ix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/ads/interactivemedia/v3/internal/acf;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/cz;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/ix;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->c:I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->k:Lcom/google/ads/interactivemedia/v3/internal/acf;

    .line 6
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->p:Lcom/google/ads/interactivemedia/v3/internal/ix;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/oy;

    .line 7
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/oy;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->l:Lcom/google/ads/interactivemedia/v3/internal/oy;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 p2, 0x10

    .line 8
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->m:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 9
    sget-object p3, Lcom/google/ads/interactivemedia/v3/internal/abp;->a:[B

    invoke-direct {p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->f:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 p3, 0x5

    .line 10
    invoke-direct {p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->g:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 11
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->i:[B

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 12
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->j:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 13
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->n:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 14
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->o:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    .line 15
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->y:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->x:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->z:J

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->G:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    new-array p1, p1, [Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->H:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 16
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ks;-><init>(ILcom/google/ads/interactivemedia/v3/internal/acf;Ljava/util/List;)V

    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/internal/hk;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ke;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/internal/hk;"
        }
    .end annotation

    .line 21
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 22
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/ke;

    .line 23
    iget v5, v4, Lcom/google/ads/interactivemedia/v3/internal/ke;->d:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    :cond_0
    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v4

    .line 26
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/la;->a([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 27
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/hj;

    const-string v7, "video/mp4"

    .line 28
    invoke-direct {v6, v5, v7, v4}, Lcom/google/ads/interactivemedia/v3/internal/hj;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    return-object v1

    :cond_4
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/hk;

    .line 29
    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/hk;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static final a(Landroid/util/SparseArray;I)Lcom/google/ads/interactivemedia/v3/internal/kn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/ads/interactivemedia/v3/internal/kn;",
            ">;I)",
            "Lcom/google/ads/interactivemedia/v3/internal/kn;"
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/kn;

    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/kn;

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->q:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->t:I

    return-void
.end method

.method private static a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected negtive value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final a(J)V
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->n:Ljava/util/ArrayDeque;

    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/kd;

    iget-wide v1, v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->a:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_4e

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->n:Ljava/util/ArrayDeque;

    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/kd;

    .line 53
    iget v1, v2, Lcom/google/ads/interactivemedia/v3/internal/kd;->d:I

    const v3, 0x6d6f6f76

    const/16 v6, 0xc

    const/16 v7, 0x8

    const/4 v10, 0x1

    if-ne v1, v3, :cond_8

    const-string v1, "Unexpected moov box."

    .line 54
    invoke-static {v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(ZLjava/lang/Object;)V

    .line 55
    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/kd;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/internal/hk;

    move-result-object v1

    const v3, 0x6d766578

    .line 56
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;->b(I)Lcom/google/ads/interactivemedia/v3/internal/kd;

    move-result-object v3

    new-instance v11, Landroid/util/SparseArray;

    .line 57
    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 58
    iget-object v8, v3, Lcom/google/ads/interactivemedia/v3/internal/kd;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v8, :cond_4

    .line 59
    iget-object v13, v3, Lcom/google/ads/interactivemedia/v3/internal/kd;->b:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/ads/interactivemedia/v3/internal/ke;

    .line 60
    iget v14, v13, Lcom/google/ads/interactivemedia/v3/internal/ke;->d:I

    const v15, 0x74726578

    if-ne v14, v15, :cond_1

    .line 61
    iget-object v13, v13, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 62
    invoke-virtual {v13, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 63
    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v14

    .line 64
    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v15

    .line 65
    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v6

    .line 66
    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v9

    .line 67
    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v13

    .line 68
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/kn;

    add-int/lit8 v15, v15, -0x1

    invoke-direct {v10, v15, v6, v9, v13}, Lcom/google/ads/interactivemedia/v3/internal/kn;-><init>(IIII)V

    invoke-static {v14, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 69
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/kn;

    invoke-virtual {v11, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const v6, 0x6d656864

    if-ne v14, v6, :cond_3

    .line 70
    iget-object v4, v13, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 71
    invoke-virtual {v4, v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 72
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v5

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/kf;->c(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 73
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->v()J

    move-result-wide v4

    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    const/16 v6, 0xc

    const/4 v10, 0x1

    goto :goto_1

    .line 74
    :cond_4
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/ip;

    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/internal/ip;-><init>()V

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/kp;

    invoke-direct {v8}, Lcom/google/ads/interactivemedia/v3/internal/kp;-><init>()V

    const/4 v7, 0x0

    move-object v6, v1

    .line 75
    invoke-static/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/km;->a(Lcom/google/ads/interactivemedia/v3/internal/kd;Lcom/google/ads/interactivemedia/v3/internal/ip;JLcom/google/ads/interactivemedia/v3/internal/hk;ZLcom/google/ads/interactivemedia/v3/internal/and;)Ljava/util/List;

    move-result-object v1

    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 77
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_6

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v2, :cond_5

    .line 78
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 79
    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/lf;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/kr;

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->F:Lcom/google/ads/interactivemedia/v3/internal/ii;

    iget v7, v4, Lcom/google/ads/interactivemedia/v3/internal/lc;->b:I

    .line 80
    invoke-interface {v6, v9, v7}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v6

    iget v7, v4, Lcom/google/ads/interactivemedia/v3/internal/lc;->a:I

    .line 81
    invoke-static {v11, v7}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a(Landroid/util/SparseArray;I)Lcom/google/ads/interactivemedia/v3/internal/kn;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Lcom/google/ads/interactivemedia/v3/internal/kr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/lf;Lcom/google/ads/interactivemedia/v3/internal/kn;)V

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/ads/interactivemedia/v3/internal/lc;->a:I

    .line 82
    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->y:J

    iget-wide v3, v4, Lcom/google/ads/interactivemedia/v3/internal/lc;->e:J

    .line 83
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->y:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->F:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 84
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->w()V

    goto/16 :goto_0

    :cond_6
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    :goto_4
    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v2, :cond_0

    .line 86
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 87
    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/lf;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/ads/interactivemedia/v3/internal/lc;->a:I

    .line 88
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/kr;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/lc;->a:I

    .line 89
    invoke-static {v11, v4}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a(Landroid/util/SparseArray;I)Lcom/google/ads/interactivemedia/v3/internal/kn;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/kr;->a(Lcom/google/ads/interactivemedia/v3/internal/lf;Lcom/google/ads/interactivemedia/v3/internal/kn;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_8
    const v3, 0x6d6f6f66

    if-ne v1, v3, :cond_4c

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->c:I

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->i:[B

    .line 90
    iget-object v8, v2, Lcom/google/ads/interactivemedia/v3/internal/kd;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_46

    .line 91
    iget-object v11, v2, Lcom/google/ads/interactivemedia/v3/internal/kd;->c:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/ads/interactivemedia/v3/internal/kd;

    .line 92
    iget v12, v11, Lcom/google/ads/interactivemedia/v3/internal/kd;->d:I

    const v13, 0x74726166

    if-ne v12, v13, :cond_45

    const v12, 0x74666864

    .line 93
    invoke-virtual {v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ke;

    move-result-object v12

    .line 94
    iget-object v12, v12, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 95
    invoke-virtual {v12, v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 96
    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v13

    invoke-static {v13}, Lcom/google/ads/interactivemedia/v3/internal/kf;->d(I)I

    move-result v13

    .line 97
    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v14

    .line 98
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v10, 0x1

    if-ne v15, v10, :cond_9

    const/4 v10, 0x0

    .line 99
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/ads/interactivemedia/v3/internal/kr;

    goto :goto_7

    .line 100
    :cond_9
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Lcom/google/ads/interactivemedia/v3/internal/kr;

    :goto_7
    if-nez v14, :cond_a

    const/4 v14, 0x0

    goto :goto_c

    :cond_a
    and-int/lit8 v10, v13, 0x1

    if-eqz v10, :cond_b

    .line 101
    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->v()J

    move-result-wide v4

    iget-object v10, v14, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    iput-wide v4, v10, Lcom/google/ads/interactivemedia/v3/internal/le;->c:J

    iput-wide v4, v10, Lcom/google/ads/interactivemedia/v3/internal/le;->d:J

    :cond_b
    iget-object v4, v14, Lcom/google/ads/interactivemedia/v3/internal/kr;->e:Lcom/google/ads/interactivemedia/v3/internal/kn;

    and-int/lit8 v5, v13, 0x2

    if-eqz v5, :cond_c

    .line 102
    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 103
    :cond_c
    iget v5, v4, Lcom/google/ads/interactivemedia/v3/internal/kn;->a:I

    :goto_8
    and-int/lit8 v10, v13, 0x8

    if-eqz v10, :cond_d

    .line 104
    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v10

    goto :goto_9

    .line 105
    :cond_d
    iget v10, v4, Lcom/google/ads/interactivemedia/v3/internal/kn;->b:I

    :goto_9
    and-int/lit8 v15, v13, 0x10

    if-eqz v15, :cond_e

    .line 106
    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v15

    goto :goto_a

    .line 107
    :cond_e
    iget v15, v4, Lcom/google/ads/interactivemedia/v3/internal/kn;->c:I

    :goto_a
    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_f

    .line 108
    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v4

    goto :goto_b

    .line 109
    :cond_f
    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/kn;->d:I

    .line 108
    :goto_b
    iget-object v12, v14, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/kn;

    .line 110
    invoke-direct {v13, v5, v10, v15, v4}, Lcom/google/ads/interactivemedia/v3/internal/kn;-><init>(IIII)V

    iput-object v13, v12, Lcom/google/ads/interactivemedia/v3/internal/le;->a:Lcom/google/ads/interactivemedia/v3/internal/kn;

    :goto_c
    if-nez v14, :cond_10

    goto/16 :goto_2c

    .line 99
    :cond_10
    iget-object v4, v14, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    .line 111
    iget-wide v12, v4, Lcom/google/ads/interactivemedia/v3/internal/le;->r:J

    .line 112
    iget-boolean v5, v4, Lcom/google/ads/interactivemedia/v3/internal/le;->s:Z

    .line 113
    invoke-virtual {v14}, Lcom/google/ads/interactivemedia/v3/internal/kr;->a()V

    .line 114
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/kr;->b(Lcom/google/ads/interactivemedia/v3/internal/kr;)V

    const v10, 0x74666474

    .line 115
    invoke-virtual {v11, v10}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ke;

    move-result-object v15

    if-eqz v15, :cond_12

    and-int/lit8 v15, v3, 0x2

    if-nez v15, :cond_12

    .line 116
    invoke-virtual {v11, v10}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ke;

    move-result-object v5

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 117
    invoke-virtual {v5, v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 118
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v10

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/kf;->c(I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_11

    .line 119
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->v()J

    move-result-wide v16

    goto :goto_d

    :cond_11
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v16

    :goto_d
    move v15, v8

    move-wide/from16 v7, v16

    iput-wide v7, v4, Lcom/google/ads/interactivemedia/v3/internal/le;->r:J

    iput-boolean v12, v4, Lcom/google/ads/interactivemedia/v3/internal/le;->s:Z

    goto :goto_e

    :cond_12
    move v15, v8

    iput-wide v12, v4, Lcom/google/ads/interactivemedia/v3/internal/le;->r:J

    iput-boolean v5, v4, Lcom/google/ads/interactivemedia/v3/internal/le;->s:Z

    .line 120
    :goto_e
    iget-object v5, v11, Lcom/google/ads/interactivemedia/v3/internal/kd;->b:Ljava/util/List;

    .line 121
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_f
    const v10, 0x7472756e

    if-ge v8, v7, :cond_14

    .line 122
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/ke;

    move/from16 v17, v15

    .line 123
    iget v15, v1, Lcom/google/ads/interactivemedia/v3/internal/ke;->d:I

    if-ne v15, v10, :cond_13

    .line 124
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v10, 0xc

    .line 125
    invoke-virtual {v1, v10}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 126
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v1

    if-lez v1, :cond_13

    add-int/2addr v13, v1

    add-int/lit8 v12, v12, 0x1

    :cond_13
    add-int/lit8 v8, v8, 0x1

    move/from16 v15, v17

    move-object/from16 v1, v18

    goto :goto_f

    :cond_14
    move-object/from16 v18, v1

    move/from16 v17, v15

    const/4 v1, 0x0

    iput v1, v14, Lcom/google/ads/interactivemedia/v3/internal/kr;->h:I

    iput v1, v14, Lcom/google/ads/interactivemedia/v3/internal/kr;->g:I

    iput v1, v14, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    iget-object v1, v14, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    iput v12, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->e:I

    iput v13, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->f:I

    iget-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->h:[I

    .line 127
    array-length v8, v8

    if-ge v8, v12, :cond_15

    new-array v8, v12, [J

    iput-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->g:[J

    new-array v8, v12, [I

    iput-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->h:[I

    :cond_15
    iget-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->i:[I

    .line 128
    array-length v8, v8

    if-ge v8, v13, :cond_16

    mul-int/lit8 v13, v13, 0x7d

    div-int/lit8 v13, v13, 0x64

    .line 129
    new-array v8, v13, [I

    iput-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->i:[I

    .line 130
    new-array v8, v13, [I

    iput-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->j:[I

    .line 131
    new-array v8, v13, [J

    iput-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->k:[J

    .line 132
    new-array v8, v13, [Z

    iput-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->l:[Z

    .line 133
    new-array v8, v13, [Z

    iput-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->n:[Z

    :cond_16
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_10
    const-wide/16 v19, 0x0

    if-ge v1, v7, :cond_27

    .line 134
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    check-cast v15, Lcom/google/ads/interactivemedia/v3/internal/ke;

    .line 135
    iget v13, v15, Lcom/google/ads/interactivemedia/v3/internal/ke;->d:I

    if-ne v13, v10, :cond_26

    add-int/lit8 v13, v12, 0x1

    .line 136
    iget-object v15, v15, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v10, 0x8

    .line 137
    invoke-virtual {v15, v10}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 138
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/kf;->d(I)I

    move-result v10

    move-object/from16 v16, v5

    iget-object v5, v14, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 139
    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/lf;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    move/from16 v22, v7

    iget-object v7, v14, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    move/from16 v23, v13

    .line 140
    iget-object v13, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->a:Lcom/google/ads/interactivemedia/v3/internal/kn;

    .line 141
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->h:[I

    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v24

    aput v24, v0, v12

    .line 142
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->g:[J

    move/from16 v25, v1

    move-object/from16 v24, v2

    iget-wide v1, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->c:J

    aput-wide v1, v0, v12

    and-int/lit8 v26, v10, 0x1

    if-eqz v26, :cond_17

    move/from16 v26, v9

    .line 143
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v9

    move/from16 v27, v8

    int-to-long v8, v9

    add-long/2addr v1, v8

    aput-wide v1, v0, v12

    goto :goto_11

    :cond_17
    move/from16 v27, v8

    move/from16 v26, v9

    :goto_11
    and-int/lit8 v0, v10, 0x4

    .line 144
    iget v1, v13, Lcom/google/ads/interactivemedia/v3/internal/kn;->d:I

    if-eqz v0, :cond_18

    .line 145
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v1

    :cond_18
    and-int/lit16 v2, v10, 0x100

    and-int/lit16 v8, v10, 0x200

    and-int/lit16 v9, v10, 0x400

    and-int/lit16 v10, v10, 0x800

    move/from16 v28, v1

    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/internal/lc;->h:[J

    if-eqz v1, :cond_1a

    move-object/from16 v29, v6

    array-length v6, v1

    move-object/from16 v30, v11

    const/4 v11, 0x1

    if-ne v6, v11, :cond_19

    const/4 v6, 0x0

    .line 146
    aget-wide v31, v1, v6

    cmp-long v1, v31, v19

    if-nez v1, :cond_19

    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/internal/lc;->i:[J

    .line 147
    aget-wide v31, v1, v6

    const-wide/32 v33, 0xf4240

    move v1, v10

    iget-wide v10, v5, Lcom/google/ads/interactivemedia/v3/internal/lc;->c:J

    move-wide/from16 v35, v10

    .line 148
    invoke-static/range {v31 .. v36}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v19

    goto :goto_12

    :cond_19
    move v1, v10

    goto :goto_12

    :cond_1a
    move-object/from16 v29, v6

    move v1, v10

    move-object/from16 v30, v11

    .line 149
    :goto_12
    iget-object v6, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->i:[I

    .line 150
    iget-object v10, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->j:[I

    .line 151
    iget-object v11, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->k:[J

    move-object/from16 v31, v4

    .line 152
    iget-object v4, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->l:[Z

    move-object/from16 v32, v4

    iget v4, v5, Lcom/google/ads/interactivemedia/v3/internal/lc;->b:I

    move-object/from16 v33, v6

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1b

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_13

    :cond_1b
    const/4 v4, 0x0

    .line 153
    :goto_13
    iget-object v6, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->h:[I

    aget v6, v6, v12

    add-int v6, v27, v6

    move/from16 v40, v3

    move/from16 v21, v4

    iget-wide v3, v5, Lcom/google/ads/interactivemedia/v3/internal/lc;->c:J

    move-object v5, v11

    .line 154
    iget-wide v11, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->r:J

    move-object/from16 v41, v14

    move/from16 v14, v27

    :goto_14
    if-ge v14, v6, :cond_25

    if-eqz v2, :cond_1c

    .line 155
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v27

    move/from16 v42, v2

    move/from16 v2, v27

    goto :goto_15

    :cond_1c
    move/from16 v42, v2

    iget v2, v13, Lcom/google/ads/interactivemedia/v3/internal/kn;->b:I

    :goto_15
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a(I)V

    if-eqz v8, :cond_1d

    .line 156
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v27

    move/from16 v43, v6

    goto :goto_16

    :cond_1d
    move/from16 v43, v6

    iget v6, v13, Lcom/google/ads/interactivemedia/v3/internal/kn;->c:I

    move/from16 v27, v6

    :goto_16
    invoke-static/range {v27 .. v27}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a(I)V

    if-eqz v9, :cond_1e

    .line 157
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v6

    goto :goto_17

    :cond_1e
    if-nez v14, :cond_20

    if-eqz v0, :cond_1f

    move/from16 v6, v28

    const/4 v14, 0x0

    goto :goto_17

    :cond_1f
    const/4 v14, 0x0

    .line 158
    :cond_20
    iget v6, v13, Lcom/google/ads/interactivemedia/v3/internal/kn;->d:I

    :goto_17
    if-eqz v1, :cond_21

    move/from16 v44, v0

    .line 159
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v0

    move/from16 v45, v1

    int-to-long v0, v0

    const-wide/32 v34, 0xf4240

    mul-long v0, v0, v34

    .line 160
    div-long/2addr v0, v3

    long-to-int v1, v0

    aput v1, v10, v14

    goto :goto_18

    :cond_21
    move/from16 v44, v0

    move/from16 v45, v1

    const/4 v0, 0x0

    .line 161
    aput v0, v10, v14

    :goto_18
    const-wide/32 v36, 0xf4240

    move-wide/from16 v34, v11

    move-wide/from16 v38, v3

    .line 162
    invoke-static/range {v34 .. v39}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v0

    sub-long v0, v0, v19

    aput-wide v0, v5, v14

    move-wide/from16 v34, v3

    .line 163
    iget-boolean v3, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->s:Z

    if-nez v3, :cond_22

    move-object/from16 v3, v41

    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    move/from16 v36, v8

    move/from16 v37, v9

    .line 164
    iget-wide v8, v4, Lcom/google/ads/interactivemedia/v3/internal/lf;->h:J

    add-long/2addr v0, v8

    aput-wide v0, v5, v14

    goto :goto_19

    :cond_22
    move/from16 v36, v8

    move/from16 v37, v9

    move-object/from16 v3, v41

    .line 165
    :goto_19
    aput v27, v33, v14

    const/16 v0, 0x10

    shr-int/lit8 v1, v6, 0x10

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_24

    if-eqz v21, :cond_23

    if-nez v14, :cond_24

    :cond_23
    const/4 v0, 0x1

    goto :goto_1a

    :cond_24
    const/4 v0, 0x0

    .line 166
    :goto_1a
    aput-boolean v0, v32, v14

    int-to-long v0, v2

    add-long/2addr v11, v0

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v41, v3

    move-wide/from16 v3, v34

    move/from16 v8, v36

    move/from16 v9, v37

    move/from16 v2, v42

    move/from16 v6, v43

    move/from16 v0, v44

    move/from16 v1, v45

    goto/16 :goto_14

    :cond_25
    move/from16 v43, v6

    move-object/from16 v3, v41

    .line 155
    iput-wide v11, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->r:J

    move/from16 v12, v23

    move/from16 v8, v43

    goto :goto_1b

    :cond_26
    move/from16 v25, v1

    move-object/from16 v24, v2

    move/from16 v40, v3

    move-object/from16 v31, v4

    move-object/from16 v16, v5

    move-object/from16 v29, v6

    move/from16 v22, v7

    move/from16 v27, v8

    move/from16 v26, v9

    move-object/from16 v30, v11

    move-object v3, v14

    :goto_1b
    add-int/lit8 v1, v25, 0x1

    move-object/from16 v0, p0

    move-object v14, v3

    move-object/from16 v5, v16

    move/from16 v7, v22

    move-object/from16 v2, v24

    move/from16 v9, v26

    move-object/from16 v6, v29

    move-object/from16 v11, v30

    move-object/from16 v4, v31

    move/from16 v3, v40

    const v10, 0x7472756e

    goto/16 :goto_10

    :cond_27
    move-object/from16 v24, v2

    move/from16 v40, v3

    move-object/from16 v31, v4

    move-object/from16 v29, v6

    move/from16 v26, v9

    move-object/from16 v30, v11

    move-object v3, v14

    iget-object v0, v3, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 167
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/lf;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    move-object/from16 v1, v31

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->a:Lcom/google/ads/interactivemedia/v3/internal/kn;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/kn;->a:I

    .line 168
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/lc;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ld;

    move-result-object v0

    const v2, 0x7361697a

    .line 169
    invoke-virtual {v11, v2}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ke;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 170
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ld;->d:I

    const/16 v4, 0x8

    .line 171
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 172
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v5

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/kf;->d(I)I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_28

    .line 173
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 174
    :cond_28
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v4

    .line 175
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v5

    .line 176
    iget v6, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->f:I

    if-gt v5, v6, :cond_2d

    if-nez v4, :cond_2b

    .line 177
    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->n:[Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1c
    if-ge v6, v5, :cond_2a

    .line 178
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v8

    add-int/2addr v7, v8

    if-le v8, v3, :cond_29

    const/4 v8, 0x1

    goto :goto_1d

    :cond_29
    const/4 v8, 0x0

    .line 179
    :goto_1d
    aput-boolean v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_2a
    const/4 v4, 0x0

    goto :goto_1f

    :cond_2b
    if-le v4, v3, :cond_2c

    const/4 v2, 0x1

    goto :goto_1e

    :cond_2c
    const/4 v2, 0x0

    :goto_1e
    mul-int v7, v4, v5

    .line 180
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->n:[Z

    const/4 v4, 0x0

    invoke-static {v3, v4, v5, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 181
    :goto_1f
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->n:[Z

    iget v3, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->f:I

    invoke-static {v2, v5, v3, v4}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v7, :cond_2e

    .line 182
    invoke-virtual {v1, v7}, Lcom/google/ads/interactivemedia/v3/internal/le;->a(I)V

    goto :goto_20

    .line 176
    :cond_2d
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x4e

    .line 244
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Saiz sample count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is greater than fragment sample count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    :goto_20
    const v2, 0x7361696f

    .line 183
    invoke-virtual {v11, v2}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ke;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v3, 0x8

    .line 184
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 185
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v4

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/kf;->d(I)I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2f

    .line 186
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 187
    :cond_2f
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v3

    if-ne v3, v6, :cond_31

    .line 188
    iget-wide v5, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->d:J

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/kf;->c(I)I

    move-result v3

    if-nez v3, :cond_30

    .line 189
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v2

    goto :goto_21

    :cond_30
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->v()J

    move-result-wide v2

    :goto_21
    add-long/2addr v5, v2

    iput-wide v5, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->d:J

    goto :goto_22

    .line 187
    :cond_31
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    .line 245
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected saio entry count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    :goto_22
    const v2, 0x73656e63

    .line 190
    invoke-virtual {v11, v2}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ke;

    move-result-object v2

    if-eqz v2, :cond_33

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v3, 0x0

    .line 191
    invoke-static {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;ILcom/google/ads/interactivemedia/v3/internal/le;)V

    :cond_33
    if-eqz v0, :cond_34

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ld;->b:Ljava/lang/String;

    move-object v4, v0

    goto :goto_23

    :cond_34
    const/4 v4, 0x0

    :goto_23
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 192
    :goto_24
    iget-object v5, v11, Lcom/google/ads/interactivemedia/v3/internal/kd;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_37

    .line 193
    iget-object v5, v11, Lcom/google/ads/interactivemedia/v3/internal/kd;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/ke;

    .line 194
    iget-object v6, v5, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 195
    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/ke;->d:I

    const v7, 0x73626770

    const v8, 0x73656967

    if-ne v5, v7, :cond_35

    const/16 v12, 0xc

    .line 196
    invoke-virtual {v6, v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 197
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v5

    if-ne v5, v8, :cond_36

    move-object v2, v6

    goto :goto_25

    :cond_35
    const/16 v12, 0xc

    const v7, 0x73677064

    if-ne v5, v7, :cond_36

    .line 198
    invoke-virtual {v6, v12}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 199
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v5

    if-ne v5, v8, :cond_36

    move-object v3, v6

    :cond_36
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_37
    const/16 v12, 0xc

    if-eqz v2, :cond_40

    if-nez v3, :cond_38

    goto/16 :goto_28

    :cond_38
    const/16 v0, 0x8

    .line 200
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 201
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v5

    const/4 v6, 0x4

    .line 202
    invoke-virtual {v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/kf;->c(I)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_39

    .line 203
    invoke-virtual {v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 204
    :cond_39
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v2

    if-ne v2, v7, :cond_3f

    .line 205
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 206
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/kf;->c(I)I

    move-result v0

    .line 207
    invoke-virtual {v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    if-ne v0, v7, :cond_3b

    .line 208
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v7

    cmp-long v0, v7, v19

    if-eqz v0, :cond_3a

    goto :goto_26

    .line 242
    :cond_3a
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    .line 247
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    const/4 v2, 0x2

    if-lt v0, v2, :cond_3c

    .line 209
    invoke-virtual {v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 210
    :cond_3c
    :goto_26
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v7

    const-wide/16 v13, 0x1

    cmp-long v0, v7, v13

    if-nez v0, :cond_3e

    const/4 v0, 0x1

    .line 211
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 212
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    and-int/lit16 v5, v2, 0xf0

    shr-int/lit8 v7, v5, 0x4

    and-int/lit8 v8, v2, 0xf

    .line 213
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    if-ne v2, v0, :cond_41

    .line 214
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v5

    const/16 v2, 0x10

    new-array v6, v2, [B

    const/4 v9, 0x0

    .line 215
    invoke-virtual {v3, v6, v9, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    if-nez v5, :cond_3d

    .line 216
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v2

    new-array v13, v2, [B

    .line 217
    invoke-virtual {v3, v13, v9, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    move-object v9, v13

    goto :goto_27

    :cond_3d
    const/4 v9, 0x0

    :goto_27
    iput-boolean v0, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->m:Z

    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/ld;

    const/4 v3, 0x1

    move-object v2, v13

    .line 218
    invoke-direct/range {v2 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/ld;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v13, v1, Lcom/google/ads/interactivemedia/v3/internal/le;->o:Lcom/google/ads/interactivemedia/v3/internal/ld;

    goto :goto_29

    .line 210
    :cond_3e
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    .line 248
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_3f
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    .line 246
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    :goto_28
    const/4 v0, 0x1

    .line 219
    :cond_41
    :goto_29
    iget-object v2, v11, Lcom/google/ads/interactivemedia/v3/internal/kd;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_44

    .line 220
    iget-object v4, v11, Lcom/google/ads/interactivemedia/v3/internal/kd;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/ke;

    .line 221
    iget v5, v4, Lcom/google/ads/interactivemedia/v3/internal/ke;->d:I

    const v6, 0x75756964

    if-ne v5, v6, :cond_42

    .line 222
    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v5, 0x8

    .line 223
    invoke-virtual {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    move-object/from16 v6, v29

    const/16 v7, 0x10

    const/4 v10, 0x0

    .line 224
    invoke-virtual {v4, v6, v10, v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/ks;->a:[B

    .line 225
    invoke-static {v6, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 226
    invoke-static {v4, v7, v1}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;ILcom/google/ads/interactivemedia/v3/internal/le;)V

    goto :goto_2b

    :cond_42
    move-object/from16 v6, v29

    const/16 v5, 0x8

    const/16 v7, 0x10

    const/4 v10, 0x0

    :cond_43
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v29, v6

    goto :goto_2a

    :cond_44
    move-object/from16 v6, v29

    const/16 v5, 0x8

    const/4 v10, 0x0

    goto :goto_2d

    :cond_45
    :goto_2c
    move-object/from16 v18, v1

    move-object/from16 v24, v2

    move/from16 v40, v3

    move/from16 v17, v8

    move/from16 v26, v9

    const/4 v0, 0x1

    const/16 v5, 0x8

    const/4 v10, 0x0

    const/16 v12, 0xc

    :goto_2d
    add-int/lit8 v9, v26, 0x1

    const/16 v7, 0x8

    move-object/from16 v0, p0

    move/from16 v8, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move/from16 v3, v40

    goto/16 :goto_6

    :cond_46
    move-object v1, v2

    const/4 v10, 0x0

    .line 227
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/kd;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/internal/hk;

    move-result-object v0

    move-object/from16 v2, p0

    if-eqz v0, :cond_48

    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 228
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v1, :cond_48

    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 229
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/kr;

    iget-object v5, v4, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 230
    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/lf;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    iget-object v6, v4, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/le;->a:Lcom/google/ads/interactivemedia/v3/internal/kn;

    iget v6, v6, Lcom/google/ads/interactivemedia/v3/internal/kn;->a:I

    .line 231
    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/lc;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ld;

    move-result-object v5

    if-eqz v5, :cond_47

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/ld;->b:Ljava/lang/String;

    goto :goto_2f

    :cond_47
    const/4 v5, 0x0

    .line 232
    :goto_2f
    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/hk;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/hk;

    move-result-object v5

    iget-object v6, v4, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    .line 233
    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/lf;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/lc;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 234
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()Lcom/google/ads/interactivemedia/v3/internal/cy;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/hk;)V

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v5

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/kr;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 235
    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_48
    iget-wide v0, v2, Lcom/google/ads/interactivemedia/v3/internal/ks;->x:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_4d

    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 236
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v9, 0x0

    :goto_30
    if-ge v9, v0, :cond_4b

    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 237
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/kr;

    iget-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/ks;->x:J

    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    :goto_31
    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    .line 238
    iget v7, v6, Lcom/google/ads/interactivemedia/v3/internal/le;->f:I

    if-ge v5, v7, :cond_4a

    .line 239
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/le;->b(I)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-gez v8, :cond_4a

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    .line 240
    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/le;->l:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_49

    iput v5, v1, Lcom/google/ads/interactivemedia/v3/internal/kr;->i:I

    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    :cond_4b
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/ks;->x:J

    goto :goto_32

    :cond_4c
    move-object v1, v2

    move-object v2, v0

    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/internal/ks;->n:Ljava/util/ArrayDeque;

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/internal/ks;->n:Ljava/util/ArrayDeque;

    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/kd;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(Lcom/google/ads/interactivemedia/v3/internal/kd;)V

    :cond_4d
    :goto_32
    move-object v0, v2

    goto/16 :goto_0

    :cond_4e
    move-object v2, v0

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a()V

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/abr;ILcom/google/ads/interactivemedia/v3/internal/le;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 41
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/kf;->d(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v1

    if-nez v1, :cond_1

    .line 44
    iget-object p0, p2, Lcom/google/ads/interactivemedia/v3/internal/le;->n:[Z

    iget p1, p2, Lcom/google/ads/interactivemedia/v3/internal/le;->f:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    .line 45
    :cond_1
    iget v2, p2, Lcom/google/ads/interactivemedia/v3/internal/le;->f:I

    if-ne v1, v2, :cond_2

    .line 47
    iget-object v2, p2, Lcom/google/ads/interactivemedia/v3/internal/le;->n:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 48
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/le;->a(I)V

    iget-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/le;->p:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object p1

    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/internal/le;->p:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v1

    .line 49
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    iget-object p0, p2, Lcom/google/ads/interactivemedia/v3/internal/le;->p:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iput-boolean v0, p2, Lcom/google/ads/interactivemedia/v3/internal/le;->q:Z

    return-void

    .line 45
    :cond_2
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x50

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Senc sample count "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is different from fragment sample count"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_3
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 42
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->q:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_31

    const-string v10, "FragmentedMp4Extractor"

    if-eq v2, v8, :cond_23

    const-wide v3, 0x7fffffffffffffffL

    const/4 v12, 0x3

    if-eq v2, v5, :cond_1e

    const/4 v13, 0x6

    if-ne v2, v12, :cond_f

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 249
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v14

    move-object v5, v6

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_3

    .line 250
    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lcom/google/ads/interactivemedia/v3/internal/kr;

    .line 251
    invoke-static {v11}, Lcom/google/ads/interactivemedia/v3/internal/kr;->a(Lcom/google/ads/interactivemedia/v3/internal/kr;)Z

    move-result v16

    if-nez v16, :cond_0

    iget v9, v11, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    iget-object v7, v11, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    iget v7, v7, Lcom/google/ads/interactivemedia/v3/internal/lf;->b:I

    if-eq v9, v7, :cond_2

    .line 252
    :cond_0
    invoke-static {v11}, Lcom/google/ads/interactivemedia/v3/internal/kr;->a(Lcom/google/ads/interactivemedia/v3/internal/kr;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v11, Lcom/google/ads/interactivemedia/v3/internal/kr;->h:I

    iget-object v9, v11, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    iget v9, v9, Lcom/google/ads/interactivemedia/v3/internal/le;->e:I

    if-ne v7, v9, :cond_1

    goto :goto_2

    .line 253
    :cond_1
    invoke-virtual {v11}, Lcom/google/ads/interactivemedia/v3/internal/kr;->c()J

    move-result-wide v19

    cmp-long v7, v19, v3

    if-gez v7, :cond_2

    move-object v5, v11

    move-wide/from16 v3, v19

    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_3
    if-nez v5, :cond_5

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->v:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_4

    .line 254
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a()V

    goto :goto_0

    .line 253
    :cond_4
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "Offset to end of mdat was negative."

    .line 335
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_5
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/kr;->c()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v14

    sub-long/2addr v2, v14

    long-to-int v3, v2

    if-gez v3, :cond_6

    const-string v2, "Ignoring negative offset to sample data."

    .line 337
    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 338
    :cond_6
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    :cond_7
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    .line 339
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/kr;->d()I

    move-result v2

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->B:I

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    .line 340
    iget v4, v3, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    iget v5, v3, Lcom/google/ads/interactivemedia/v3/internal/kr;->i:I

    if-ge v4, v5, :cond_c

    .line 341
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    .line 342
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/kr;->g()Lcom/google/ads/interactivemedia/v3/internal/ld;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_3

    .line 347
    :cond_8
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    .line 343
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/le;->p:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ld;->d:I

    if-eqz v2, :cond_9

    .line 344
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    :cond_9
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/kr;->f:I

    .line 345
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/le;->c(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 346
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->g()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 342
    :cond_a
    :goto_3
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    .line 347
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/kr;->f()Z

    move-result v1

    if-nez v1, :cond_b

    iput-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    :cond_b
    iput v12, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->q:I

    :goto_4
    const/4 v1, 0x0

    goto/16 :goto_e

    .line 348
    :cond_c
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/lf;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/lc;->g:I

    if-ne v3, v8, :cond_d

    add-int/lit8 v2, v2, -0x8

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->B:I

    const/16 v2, 0x8

    .line 349
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    :cond_d
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    .line 350
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/lf;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/lc;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->B:I

    const/4 v4, 0x7

    .line 351
    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/kr;->a(II)I

    move-result v2

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->C:I

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->B:I

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->j:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 352
    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/fd;->a(ILcom/google/ads/interactivemedia/v3/internal/abr;)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    .line 353
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/kr;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->j:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-interface {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->C:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->C:I

    const/4 v4, 0x0

    goto :goto_5

    .line 381
    :cond_e
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->B:I

    const/4 v4, 0x0

    .line 354
    invoke-virtual {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/kr;->a(II)I

    move-result v2

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->C:I

    .line 353
    :goto_5
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->B:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->B:I

    const/4 v2, 0x4

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->q:I

    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->D:I

    :cond_f
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    .line 355
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/kr;->d:Lcom/google/ads/interactivemedia/v3/internal/lf;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/lf;->a:Lcom/google/ads/interactivemedia/v3/internal/lc;

    .line 356
    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/internal/kr;->a:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 357
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/kr;->b()J

    move-result-wide v9

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->k:Lcom/google/ads/interactivemedia/v3/internal/acf;

    if-eqz v2, :cond_10

    .line 358
    invoke-virtual {v2, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/acf;->c(J)J

    move-result-wide v9

    :cond_10
    iget v2, v3, Lcom/google/ads/interactivemedia/v3/internal/lc;->j:I

    if-nez v2, :cond_11

    :goto_6
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->C:I

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->B:I

    if-ge v2, v3, :cond_18

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    .line 359
    invoke-interface {v4, v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result v3

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->C:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->C:I

    goto :goto_6

    :cond_11
    const/4 v2, 0x0

    .line 392
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->g:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 360
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    .line 361
    aput-byte v2, v5, v2

    .line 362
    aput-byte v2, v5, v8

    const/4 v7, 0x2

    .line 363
    aput-byte v2, v5, v7

    iget v2, v3, Lcom/google/ads/interactivemedia/v3/internal/lc;->j:I

    add-int/lit8 v7, v2, 0x1

    const/4 v11, 0x4

    rsub-int/lit8 v2, v2, 0x4

    :goto_7
    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->C:I

    iget v14, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->B:I

    if-ge v11, v14, :cond_18

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->D:I

    const-string v14, "video/hevc"

    if-nez v11, :cond_16

    .line 364
    invoke-virtual {v1, v5, v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->g:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v15, 0x0

    .line 365
    invoke-virtual {v11, v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->g:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 366
    invoke-virtual {v11}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v11

    if-lez v11, :cond_15

    add-int/lit8 v11, v11, -0x1

    .line 393
    iput v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->D:I

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->f:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 367
    invoke-virtual {v11, v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->f:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v15, 0x4

    .line 368
    invoke-interface {v4, v11, v15}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->g:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 369
    invoke-interface {v4, v11, v8}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->H:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 370
    array-length v11, v11

    if-lez v11, :cond_14

    iget-object v11, v3, Lcom/google/ads/interactivemedia/v3/internal/lc;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v11, v11, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    aget-byte v18, v5, v15

    .line 371
    sget-object v15, Lcom/google/ads/interactivemedia/v3/internal/abp;->a:[B

    const-string v15, "video/avc"

    .line 372
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    and-int/lit8 v15, v18, 0x1f

    if-eq v15, v13, :cond_12

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v11, 0x1

    goto :goto_a

    .line 373
    :cond_13
    :goto_9
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    and-int/lit8 v11, v18, 0x7e

    shr-int/2addr v11, v8

    const/16 v14, 0x27

    if-ne v11, v14, :cond_14

    goto :goto_8

    :cond_14
    const/4 v11, 0x0

    :goto_a
    iput-boolean v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->E:Z

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->C:I

    add-int/lit8 v11, v11, 0x5

    iput v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->C:I

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->B:I

    add-int/2addr v11, v2

    iput v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->B:I

    goto :goto_7

    .line 366
    :cond_15
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "Invalid NAL length"

    .line 393
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_16
    iget-boolean v15, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->E:Z

    if-eqz v15, :cond_17

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 374
    invoke-virtual {v15, v11}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 375
    invoke-virtual {v11}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v11

    iget v15, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->D:I

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v13, v15}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->D:I

    .line 376
    invoke-interface {v4, v11, v13}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->D:I

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 377
    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v13

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v15

    invoke-static {v13, v15}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([BI)I

    move-result v13

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object v8, v3, Lcom/google/ads/interactivemedia/v3/internal/lc;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 378
    iget-object v8, v8, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v15, v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 379
    invoke-virtual {v8, v13}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b(I)V

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->h:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->H:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 380
    invoke-static {v9, v10, v8, v13}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(JLcom/google/ads/interactivemedia/v3/internal/abr;[Lcom/google/ads/interactivemedia/v3/internal/ix;)V

    goto :goto_b

    :cond_17
    const/4 v8, 0x0

    .line 381
    invoke-interface {v4, v1, v11, v8}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result v11

    .line 380
    :goto_b
    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->C:I

    add-int/2addr v8, v11

    iput v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->C:I

    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->D:I

    sub-int/2addr v8, v11

    iput v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->D:I

    const/4 v8, 0x1

    const/4 v13, 0x6

    goto/16 :goto_7

    .line 359
    :cond_18
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    .line 382
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/kr;->e()I

    move-result v21

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    .line 383
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/kr;->g()Lcom/google/ads/interactivemedia/v3/internal/ld;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ld;->c:Lcom/google/ads/interactivemedia/v3/internal/iw;

    move-object/from16 v24, v1

    goto :goto_c

    :cond_19
    move-object/from16 v24, v6

    :goto_c
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->B:I

    const/16 v23, 0x0

    move-object/from16 v18, v4

    move-wide/from16 v19, v9

    move/from16 v22, v1

    .line 384
    invoke-interface/range {v18 .. v24}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    :cond_1a
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->o:Ljava/util/ArrayDeque;

    .line 385
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->o:Ljava/util/ArrayDeque;

    .line 386
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/kq;

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->w:I

    .line 387
    iget v3, v1, Lcom/google/ads/interactivemedia/v3/internal/kq;->b:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->w:I

    .line 388
    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/kq;->a:J

    add-long/2addr v2, v9

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->k:Lcom/google/ads/interactivemedia/v3/internal/acf;

    if-eqz v4, :cond_1b

    .line 389
    invoke-virtual {v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/acf;->c(J)J

    move-result-wide v2

    :cond_1b
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->G:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 390
    array-length v5, v4

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v5, :cond_1a

    aget-object v17, v4, v7

    const/16 v20, 0x1

    .line 391
    iget v8, v1, Lcom/google/ads/interactivemedia/v3/internal/kq;->b:I

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->w:I

    const/16 v23, 0x0

    move-wide/from16 v18, v2

    move/from16 v21, v8

    move/from16 v22, v11

    invoke-interface/range {v17 .. v23}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_1c
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    .line 392
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/kr;->f()Z

    move-result v1

    if-nez v1, :cond_1d

    iput-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    :cond_1d
    iput v12, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->q:I

    goto/16 :goto_4

    :goto_e
    return v1

    .line 263
    :cond_1e
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 328
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v2, :cond_20

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 329
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/kr;

    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    .line 330
    iget-boolean v8, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->q:Z

    if-eqz v8, :cond_1f

    iget-wide v7, v7, Lcom/google/ads/interactivemedia/v3/internal/le;->d:J

    cmp-long v9, v7, v3

    if-gez v9, :cond_1f

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 331
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/kr;

    move-object v6, v3

    move-wide v3, v7

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_20
    if-nez v6, :cond_21

    iput v12, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->q:I

    goto/16 :goto_0

    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v7

    sub-long/2addr v3, v7

    long-to-int v2, v3

    if-ltz v2, :cond_22

    .line 332
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    iget-object v2, v6, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/le;->p:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/internal/le;->p:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v4

    const/4 v5, 0x0

    .line 333
    invoke-virtual {v1, v3, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/le;->p:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 334
    invoke-virtual {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iput-boolean v5, v2, Lcom/google/ads/interactivemedia/v3/internal/le;->q:Z

    goto/16 :goto_0

    .line 331
    :cond_22
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "Offset to encryption data was negative."

    .line 399
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :cond_23
    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->s:J

    long-to-int v2, v5

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->t:I

    sub-int/2addr v2, v5

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->u:Lcom/google/ads/interactivemedia/v3/internal/abr;

    if-eqz v5, :cond_30

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    const/16 v6, 0x8

    .line 272
    invoke-virtual {v1, v5, v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ke;

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->r:I

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->u:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 273
    invoke-direct {v2, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/ke;-><init>(ILcom/google/ads/interactivemedia/v3/internal/abr;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v5

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->n:Ljava/util/ArrayDeque;

    .line 274
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_24

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->n:Ljava/util/ArrayDeque;

    .line 275
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/kd;

    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/kd;->a(Lcom/google/ads/interactivemedia/v3/internal/ke;)V

    goto/16 :goto_17

    .line 327
    :cond_24
    iget v7, v2, Lcom/google/ads/interactivemedia/v3/internal/ke;->d:I

    if-ne v7, v4, :cond_28

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v3, 0x8

    .line 276
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 277
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v3

    const/4 v4, 0x4

    .line 278
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 279
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v13

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/kf;->c(I)I

    move-result v3

    if-nez v3, :cond_25

    .line 280
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v3

    .line 281
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v7

    goto :goto_10

    .line 282
    :cond_25
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->v()J

    move-result-wide v3

    .line 283
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->v()J

    move-result-wide v7

    :goto_10
    add-long/2addr v5, v7

    const-wide/32 v9, 0xf4240

    move-wide v7, v3

    move-wide v11, v13

    .line 284
    invoke-static/range {v7 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v20

    const/4 v7, 0x2

    .line 285
    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 286
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->g()I

    move-result v15

    new-array v11, v15, [I

    new-array v12, v15, [J

    new-array v9, v15, [J

    new-array v10, v15, [J

    move-wide/from16 v22, v20

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v15, :cond_27

    .line 287
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v8

    const/high16 v16, -0x80000000

    and-int v16, v8, v16

    if-nez v16, :cond_26

    .line 288
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v24

    const v16, 0x7fffffff

    and-int v8, v8, v16

    .line 289
    aput v8, v11, v7

    .line 290
    aput-wide v5, v12, v7

    .line 291
    aput-wide v22, v10, v7

    add-long v3, v3, v24

    const-wide/32 v22, 0xf4240

    move/from16 v16, v7

    move-wide v7, v3

    move-wide/from16 v24, v3

    move-object v3, v9

    move-object v4, v10

    move-wide/from16 v9, v22

    move-object v1, v12

    move/from16 p2, v15

    move-object v15, v11

    move-wide v11, v13

    .line 292
    invoke-static/range {v7 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v22

    .line 293
    aget-wide v7, v4, v16

    sub-long v7, v22, v7

    aput-wide v7, v3, v16

    const/4 v7, 0x4

    .line 294
    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    .line 295
    aget v8, v15, v16

    int-to-long v8, v8

    add-long/2addr v5, v8

    add-int/lit8 v8, v16, 0x1

    move-object v12, v1

    move-object v9, v3

    move-object v10, v4

    move v7, v8

    move-object v11, v15

    move-wide/from16 v3, v24

    move-object/from16 v1, p1

    move/from16 v15, p2

    goto :goto_11

    .line 287
    :cond_26
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "Unhandled indirect reference"

    .line 398
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    move-object v3, v9

    move-object v4, v10

    move-object v15, v11

    move-object v1, v12

    .line 296
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/ic;

    invoke-direct {v5, v15, v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ic;-><init>([I[J[J[J)V

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 297
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->z:J

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->F:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 298
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/iu;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->I:Z

    goto/16 :goto_16

    :cond_28
    if-ne v7, v3, :cond_2f

    .line 283
    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/ke;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->G:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    if-eqz v2, :cond_2f

    array-length v2, v2

    if-eqz v2, :cond_2f

    const/16 v2, 0x8

    .line 299
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 300
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/kf;->c(I)I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2a

    const/4 v5, 0x1

    if-eq v2, v5, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    .line 324
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Skipping unsupported emsg version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 301
    :cond_29
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v5

    .line 302
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->v()J

    move-result-wide v17

    const-wide/32 v19, 0xf4240

    move-wide/from16 v21, v5

    invoke-static/range {v17 .. v22}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v7

    .line 303
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    invoke-static/range {v17 .. v22}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v5

    .line 304
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v9

    .line 305
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->w()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v2

    move-wide v14, v3

    move-wide/from16 v22, v5

    move-wide/from16 v24, v9

    move-object/from16 v21, v11

    goto :goto_13

    .line 307
    :cond_2a
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->w()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v12

    .line 310
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    move-wide v9, v12

    invoke-static/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v14

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->z:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_2b

    add-long/2addr v5, v14

    move-wide/from16 v17, v5

    goto :goto_12

    :cond_2b
    move-wide/from16 v17, v3

    .line 311
    :goto_12
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    move-wide v9, v12

    invoke-static/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v5

    .line 312
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v9

    move-object/from16 v20, v2

    move-wide/from16 v22, v5

    move-wide/from16 v24, v9

    move-object/from16 v21, v11

    move-wide/from16 v7, v17

    .line 313
    :goto_13
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v2

    new-array v2, v2, [B

    .line 314
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    .line 315
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ow;

    move-object/from16 v19, v1

    move-object/from16 v26, v2

    invoke-direct/range {v19 .. v26}, Lcom/google/ads/interactivemedia/v3/internal/ow;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->l:Lcom/google/ads/interactivemedia/v3/internal/oy;

    .line 316
    invoke-virtual {v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/oy;->a(Lcom/google/ads/interactivemedia/v3/internal/ow;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v1

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->G:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 317
    array-length v6, v5

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v6, :cond_2c

    aget-object v10, v5, v9

    const/4 v11, 0x0

    .line 318
    invoke-virtual {v2, v11}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    .line 319
    invoke-interface {v10, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_2c
    cmp-long v2, v7, v3

    if-nez v2, :cond_2d

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->o:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/kq;

    .line 320
    invoke-direct {v3, v14, v15, v1}, Lcom/google/ads/interactivemedia/v3/internal/kq;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->w:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->w:I

    goto :goto_16

    :cond_2d
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->k:Lcom/google/ads/interactivemedia/v3/internal/acf;

    if-eqz v2, :cond_2e

    .line 321
    invoke-virtual {v2, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/acf;->c(J)J

    move-result-wide v7

    :cond_2e
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->G:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 322
    array-length v3, v2

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v3, :cond_2f

    aget-object v17, v2, v9

    const/16 v20, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 v18, v7

    move/from16 v21, v1

    .line 323
    invoke-interface/range {v17 .. v23}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_2f
    :goto_16
    move-object/from16 v1, p1

    goto :goto_17

    .line 326
    :cond_30
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    .line 275
    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v2

    .line 327
    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a(J)V

    goto/16 :goto_0

    .line 354
    :cond_31
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->t:I

    if-nez v2, :cond_33

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->m:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 256
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    const/16 v5, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v5, v7}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_32

    const/4 v1, -0x1

    return v1

    :cond_32
    iput v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->t:I

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->m:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 257
    invoke-virtual {v2, v8}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->m:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 258
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->s:J

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->m:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 259
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->n()I

    move-result v2

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->r:I

    :cond_33
    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->s:J

    const-wide/16 v9, 0x1

    cmp-long v2, v7, v9

    if-nez v2, :cond_34

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->m:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 260
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v1, v2, v5, v5}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->t:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->t:I

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->m:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 261
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->v()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->s:J

    goto :goto_18

    :cond_34
    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_36

    .line 397
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-nez v2, :cond_35

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->n:Ljava/util/ArrayDeque;

    .line 262
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->n:Ljava/util/ArrayDeque;

    .line 263
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/kd;

    iget-wide v7, v2, Lcom/google/ads/interactivemedia/v3/internal/kd;->a:J

    :cond_35
    cmp-long v2, v7, v9

    if-eqz v2, :cond_36

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v9

    sub-long/2addr v7, v9

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->t:I

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->s:J

    .line 261
    :cond_36
    :goto_18
    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->s:J

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->t:I

    int-to-long v9, v2

    cmp-long v2, v7, v9

    if-ltz v2, :cond_43

    .line 394
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v7

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->t:I

    int-to-long v9, v2

    sub-long/2addr v7, v9

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->r:I

    const v5, 0x6d646174

    const v9, 0x6d6f6f66

    if-eq v2, v9, :cond_37

    if-ne v2, v5, :cond_38

    :cond_37
    iget-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->I:Z

    if-nez v2, :cond_38

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->F:Lcom/google/ads/interactivemedia/v3/internal/ii;

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/it;

    iget-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->y:J

    .line 264
    invoke-direct {v10, v11, v12, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/it;-><init>(JJ)V

    invoke-interface {v2, v10}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->I:Z

    :cond_38
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->r:I

    if-ne v2, v9, :cond_39

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 265
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_19
    if-ge v10, v2, :cond_39

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 266
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/ads/interactivemedia/v3/internal/kr;

    iget-object v11, v11, Lcom/google/ads/interactivemedia/v3/internal/kr;->b:Lcom/google/ads/interactivemedia/v3/internal/le;

    iput-wide v7, v11, Lcom/google/ads/interactivemedia/v3/internal/le;->b:J

    iput-wide v7, v11, Lcom/google/ads/interactivemedia/v3/internal/le;->d:J

    iput-wide v7, v11, Lcom/google/ads/interactivemedia/v3/internal/le;->c:J

    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    :cond_39
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->r:I

    if-ne v2, v5, :cond_3a

    iput-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->A:Lcom/google/ads/interactivemedia/v3/internal/kr;

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->s:J

    add-long/2addr v7, v2

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->v:J

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->q:I

    goto/16 :goto_0

    :cond_3a
    const v5, 0x6d6f6f76

    if-eq v2, v5, :cond_41

    const v5, 0x7472616b

    if-eq v2, v5, :cond_41

    const v5, 0x6d646961

    if-eq v2, v5, :cond_41

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_41

    const v5, 0x7374626c

    if-eq v2, v5, :cond_41

    if-eq v2, v9, :cond_41

    const v5, 0x74726166

    if-eq v2, v5, :cond_41

    const v5, 0x6d766578

    if-eq v2, v5, :cond_41

    const v5, 0x65647473

    if-ne v2, v5, :cond_3b

    goto/16 :goto_1b

    :cond_3b
    const v5, 0x68646c72    # 4.3148E24f

    const-wide/32 v7, 0x7fffffff

    if-eq v2, v5, :cond_3e

    const v5, 0x6d646864

    if-eq v2, v5, :cond_3e

    const v5, 0x6d766864

    if-eq v2, v5, :cond_3e

    if-eq v2, v4, :cond_3e

    const v4, 0x73747364

    if-eq v2, v4, :cond_3e

    const v4, 0x73747473

    if-eq v2, v4, :cond_3e

    const v4, 0x63747473

    if-eq v2, v4, :cond_3e

    const v4, 0x73747363

    if-eq v2, v4, :cond_3e

    const v4, 0x7374737a

    if-eq v2, v4, :cond_3e

    const v4, 0x73747a32

    if-eq v2, v4, :cond_3e

    const v4, 0x7374636f

    if-eq v2, v4, :cond_3e

    const v4, 0x636f3634

    if-eq v2, v4, :cond_3e

    const v4, 0x73747373

    if-eq v2, v4, :cond_3e

    const v4, 0x74666474

    if-eq v2, v4, :cond_3e

    const v4, 0x74666864

    if-eq v2, v4, :cond_3e

    const v4, 0x746b6864

    if-eq v2, v4, :cond_3e

    const v4, 0x74726578

    if-eq v2, v4, :cond_3e

    const v4, 0x7472756e

    if-eq v2, v4, :cond_3e

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_3e

    const v4, 0x7361697a

    if-eq v2, v4, :cond_3e

    const v4, 0x7361696f

    if-eq v2, v4, :cond_3e

    const v4, 0x73656e63

    if-eq v2, v4, :cond_3e

    const v4, 0x75756964

    if-eq v2, v4, :cond_3e

    const v4, 0x73626770

    if-eq v2, v4, :cond_3e

    const v4, 0x73677064

    if-eq v2, v4, :cond_3e

    const v4, 0x656c7374

    if-eq v2, v4, :cond_3e

    const v4, 0x6d656864

    if-eq v2, v4, :cond_3e

    if-ne v2, v3, :cond_3c

    goto :goto_1a

    .line 271
    :cond_3c
    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->s:J

    cmp-long v4, v2, v7

    if-gtz v4, :cond_3d

    .line 397
    iput-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->u:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->q:I

    goto/16 :goto_0

    .line 271
    :cond_3d
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "Skipping atom with length > 2147483647 (unsupported)."

    .line 397
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_3e
    :goto_1a
    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->t:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_40

    .line 395
    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->s:J

    cmp-long v4, v2, v7

    if-gtz v4, :cond_3f

    .line 396
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/abr;

    long-to-int v3, v2

    .line 270
    invoke-direct {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->u:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->m:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 271
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v2

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->u:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->q:I

    goto/16 :goto_0

    .line 395
    :cond_3f
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "Leaf atom with length > 2147483647 (unsupported)."

    .line 396
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_40
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "Leaf atom defines extended atom size (unsupported)."

    .line 395
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_41
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->s:J

    add-long/2addr v2, v4

    const-wide/16 v4, -0x8

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->n:Ljava/util/ArrayDeque;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/kd;

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->r:I

    .line 267
    invoke-direct {v5, v6, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/kd;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->s:J

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ks;->t:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_42

    .line 268
    invoke-direct {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a(J)V

    goto/16 :goto_0

    .line 269
    :cond_42
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a()V

    goto/16 :goto_0

    .line 261
    :cond_43
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "Atom size less than header length (unsupported)."

    .line 394
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(JJ)V
    .locals 2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 400
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->e:Landroid/util/SparseArray;

    .line 401
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/kr;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/kr;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->o:Ljava/util/ArrayDeque;

    .line 402
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->w:I

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->x:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->n:Ljava/util/ArrayDeque;

    .line 403
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 404
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ks;->a()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 6

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->F:Lcom/google/ads/interactivemedia/v3/internal/ii;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->G:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->p:Lcom/google/ads/interactivemedia/v3/internal/ix;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->c:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    const/16 v5, 0x64

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 31
    invoke-interface {p1, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object p1

    aput-object p1, v0, v1

    const/16 v5, 0x65

    move v1, v3

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->G:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 32
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->G:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 33
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/ks;->b:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 34
    invoke-interface {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->d:Ljava/util/List;

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/ads/interactivemedia/v3/internal/ix;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->H:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    :goto_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->H:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 36
    array-length p1, p1

    if-ge v2, p1, :cond_3

    add-int/lit8 p1, v5, 0x1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->F:Lcom/google/ads/interactivemedia/v3/internal/ii;

    const/4 v1, 0x3

    .line 37
    invoke-interface {v0, v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->d:Ljava/util/List;

    .line 38
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ks;->H:[Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 39
    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v5, p1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/lb;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
