.class public final Lcom/google/vr/sdk/widgets/video/deps/eb;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/eb$b;,
        Lcom/google/vr/sdk/widgets/video/deps/eb$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cu;

.field private static final b:I

.field private static final c:[B

.field private static final d:Lcom/google/vr/sdk/widgets/video/deps/l;


# instance fields
.field private A:J

.field private B:J

.field private C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private I:[Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private J:[Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private K:Z

.field private final e:I

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/ei;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/cb;

.field private final i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/eb$b;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final m:Lcom/google/vr/sdk/widgets/video/deps/pp;

.field private final n:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final o:[B

.field private final p:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/vr/sdk/widgets/video/deps/dx$a;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/vr/sdk/widgets/video/deps/eb$a;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private s:I

.field private t:I

.field private u:J

.field private v:I

.field private w:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private x:J

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 685
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ec;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    const-string v0, "seig"

    .line 686
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->b:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 687
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->c:[B

    const/4 v0, 0x0

    const-string v1, "application/x-emsg"

    const-wide v2, 0x7fffffffffffffffL

    .line 689
    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

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

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;-><init>(ILcom/google/vr/sdk/widgets/video/deps/pp;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/pp;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;-><init>(ILcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/cb;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/cb;)V
    .locals 6

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/eb;-><init>(ILcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/cb;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/cb;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/vr/sdk/widgets/video/deps/pp;",
            "Lcom/google/vr/sdk/widgets/video/deps/ei;",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/eb;-><init>(ILcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/cb;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/cb;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/dc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/vr/sdk/widgets/video/deps/pp;",
            "Lcom/google/vr/sdk/widgets/video/deps/ei;",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/dc;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->e:I

    .line 13
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->m:Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 14
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->f:Lcom/google/vr/sdk/widgets/video/deps/ei;

    .line 15
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->h:Lcom/google/vr/sdk/widgets/video/deps/cb;

    .line 16
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Ljava/util/List;

    .line 17
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->r:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 18
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 19
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    sget-object p3, Lcom/google/vr/sdk/widgets/video/deps/pc;->a:[B

    invoke-direct {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->j:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 20
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 21
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    new-array p1, p2, [B

    .line 22
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->o:[B

    .line 23
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Ljava/util/ArrayDeque;

    .line 24
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:Ljava/util/ArrayDeque;

    .line 25
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->A:J

    .line 27
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->z:J

    .line 28
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->B:J

    .line 29
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b()V

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/eb$b;IJILcom/google/vr/sdk/widgets/video/deps/pe;I)I
    .locals 31

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p5

    .line 394
    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 395
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 396
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/dx;->b(I)I

    move-result v1

    .line 397
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->c:Lcom/google/vr/sdk/widgets/video/deps/ei;

    .line 398
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    .line 399
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->a:Lcom/google/vr/sdk/widgets/video/deps/dz;

    .line 400
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->h:[I

    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v6

    aput v6, v5, p1

    .line 401
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:[J

    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->c:J

    aput-wide v6, v5, p1

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_0

    .line 403
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:[J

    aget-wide v6, v5, p1

    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v5, p1

    :cond_0
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 405
    :goto_0
    iget v8, v4, Lcom/google/vr/sdk/widgets/video/deps/dz;->d:I

    if-eqz v5, :cond_2

    .line 407
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v8

    :cond_2
    and-int/lit16 v9, v1, 0x100

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    and-int/lit16 v10, v1, 0x200

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 413
    :goto_4
    iget-object v12, v3, Lcom/google/vr/sdk/widgets/video/deps/ei;->h:[J

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_7

    iget-object v12, v3, Lcom/google/vr/sdk/widgets/video/deps/ei;->h:[J

    array-length v12, v12

    if-ne v12, v7, :cond_7

    iget-object v12, v3, Lcom/google/vr/sdk/widgets/video/deps/ei;->h:[J

    aget-wide v15, v12, v6

    cmp-long v12, v15, v13

    if-nez v12, :cond_7

    .line 414
    iget-object v12, v3, Lcom/google/vr/sdk/widgets/video/deps/ei;->i:[J

    aget-wide v13, v12, v6

    const-wide/16 v15, 0x3e8

    iget-wide v6, v3, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    move-wide/from16 v17, v6

    invoke-static/range {v13 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v13

    .line 415
    :cond_7
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->i:[I

    .line 416
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->j:[I

    .line 417
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->k:[J

    .line 418
    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->l:[Z

    .line 419
    iget v2, v3, Lcom/google/vr/sdk/widgets/video/deps/ei;->b:I

    move/from16 v17, v8

    const/4 v8, 0x2

    if-ne v2, v8, :cond_8

    const/4 v2, 0x1

    and-int/lit8 v8, p4, 0x1

    if-eqz v8, :cond_8

    const/16 v16, 0x1

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    .line 420
    :goto_5
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->h:[I

    aget v8, v8, p1

    add-int v8, p6, v8

    .line 421
    iget-wide v2, v3, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    move-wide/from16 v24, v13

    move-object v14, v12

    if-lez p1, :cond_9

    .line 422
    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->s:J

    goto :goto_6

    :cond_9
    move-wide/from16 v12, p2

    :goto_6
    move-wide/from16 p1, v12

    move/from16 v12, p6

    :goto_7
    if-ge v12, v8, :cond_11

    if-eqz v9, :cond_a

    .line 424
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v13

    goto :goto_8

    .line 425
    :cond_a
    iget v13, v4, Lcom/google/vr/sdk/widgets/video/deps/dz;->b:I

    :goto_8
    if-eqz v10, :cond_b

    .line 426
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v18

    move/from16 v26, v9

    move/from16 v9, v18

    goto :goto_9

    :cond_b
    move/from16 v26, v9

    iget v9, v4, Lcom/google/vr/sdk/widgets/video/deps/dz;->c:I

    :goto_9
    if-nez v12, :cond_c

    if-eqz v5, :cond_c

    move/from16 v27, v5

    move/from16 v5, v17

    goto :goto_a

    :cond_c
    if-eqz v11, :cond_d

    .line 428
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v18

    move/from16 v27, v5

    move/from16 v5, v18

    goto :goto_a

    :cond_d
    move/from16 v27, v5

    iget v5, v4, Lcom/google/vr/sdk/widgets/video/deps/dz;->d:I

    :goto_a
    if-eqz v1, :cond_e

    move/from16 v28, v1

    .line 430
    invoke-virtual/range {p5 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    move/from16 v29, v10

    move/from16 v30, v11

    int-to-long v10, v1

    const-wide/16 v18, 0x3e8

    mul-long v10, v10, v18

    .line 431
    div-long/2addr v10, v2

    long-to-int v1, v10

    aput v1, v7, v12

    const/4 v1, 0x0

    goto :goto_b

    :cond_e
    move/from16 v28, v1

    move/from16 v29, v10

    move/from16 v30, v11

    const/4 v1, 0x0

    .line 433
    aput v1, v7, v12

    :goto_b
    const-wide/16 v20, 0x3e8

    move-wide/from16 v18, p1

    move-wide/from16 v22, v2

    .line 435
    invoke-static/range {v18 .. v23}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v10

    sub-long v10, v10, v24

    aput-wide v10, v15, v12

    .line 436
    aput v9, v6, v12

    shr-int/lit8 v5, v5, 0x10

    const/4 v9, 0x1

    and-int/2addr v5, v9

    if-nez v5, :cond_10

    if-eqz v16, :cond_f

    if-nez v12, :cond_10

    :cond_f
    const/4 v5, 0x1

    goto :goto_c

    :cond_10
    const/4 v5, 0x0

    .line 437
    :goto_c
    aput-boolean v5, v14, v12

    int-to-long v10, v13

    move-wide/from16 v18, v2

    move-wide/from16 v1, p1

    add-long/2addr v1, v10

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 p1, v1

    move-wide/from16 v2, v18

    move/from16 v9, v26

    move/from16 v5, v27

    move/from16 v1, v28

    move/from16 v10, v29

    move/from16 v11, v30

    goto/16 :goto_7

    :cond_11
    move-wide/from16 v1, p1

    .line 440
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->s:J

    return v8
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;J)Landroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/pe;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/vr/sdk/widgets/video/deps/cm;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 501
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 503
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/dx;->a(I)I

    move-result v1

    const/4 v2, 0x4

    .line 504
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v9

    if-nez v1, :cond_0

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v3

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v5

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->x()J

    move-result-wide v3

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->x()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    .line 512
    invoke-static/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    .line 513
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v1

    .line 515
    new-array v7, v1, [I

    .line 516
    new-array v8, v1, [J

    .line 517
    new-array v5, v1, [J

    .line 518
    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide v3, v11

    move-wide/from16 v17, v15

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_2

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_1

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    .line 527
    aput v12, v7, v11

    .line 528
    aput-wide v13, v8, v11

    .line 529
    aput-wide v17, v6, v11

    add-long v17, v3, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    .line 531
    invoke-static/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v3

    .line 532
    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    .line 533
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 534
    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move-object v5, v12

    move-object/from16 v8, v22

    const/4 v2, 0x4

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_1

    .line 525
    :cond_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    .line 536
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/cm;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Lcom/google/vr/sdk/widgets/video/deps/cm;-><init>([I[J[J[J)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/cb;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/dx$b;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;"
        }
    .end annotation

    .line 669
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 671
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    .line 672
    iget v5, v4, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aR:I

    sget v6, Lcom/google/vr/sdk/widgets/video/deps/dx;->U:I

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    .line 674
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 675
    :cond_0
    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 676
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/eg;->a([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 678
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 679
    :cond_1
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    .line 681
    :cond_4
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/cb;

    invoke-direct {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/cb;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method private a(Landroid/util/SparseArray;I)Lcom/google/vr/sdk/widgets/video/deps/dz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/dz;",
            ">;I)",
            "Lcom/google/vr/sdk/widgets/video/deps/dz;"
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 191
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dz;

    return-object p1

    .line 192
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dz;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dz;

    return-object p1
.end method

.method private static a(Landroid/util/SparseArray;)Lcom/google/vr/sdk/widgets/video/deps/eb$b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/eb$b;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/eb$b;"
        }
    .end annotation

    .line 658
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 660
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    .line 661
    iget v6, v5, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->g:I

    iget-object v7, v5, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget v7, v7, Lcom/google/vr/sdk/widgets/video/deps/ek;->e:I

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 662
    :cond_0
    iget-object v6, v5, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:[J

    iget v7, v5, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->g:I

    aget-wide v7, v6, v7

    cmp-long v6, v7, v2

    if-gez v6, :cond_1

    move-object v1, v5

    move-wide v2, v7

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;Landroid/util/SparseArray;)Lcom/google/vr/sdk/widgets/video/deps/eb$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/pe;",
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/eb$b;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/eb$b;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 365
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 366
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    .line 367
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/dx;->b(I)I

    move-result v0

    .line 368
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 369
    invoke-static {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(Landroid/util/SparseArray;I)Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->x()J

    move-result-wide v1

    .line 374
    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iput-wide v1, v3, Lcom/google/vr/sdk/widgets/video/deps/ek;->c:J

    .line 375
    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iput-wide v1, v3, Lcom/google/vr/sdk/widgets/video/deps/ek;->d:J

    .line 376
    :cond_1
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->d:Lcom/google/vr/sdk/widgets/video/deps/dz;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dz;->a:I

    :goto_0
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    .line 380
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v3

    goto :goto_1

    :cond_3
    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/dz;->b:I

    :goto_1
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    .line 382
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v4

    goto :goto_2

    :cond_4
    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/dz;->c:I

    :goto_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 384
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result p0

    goto :goto_3

    :cond_5
    iget p0, v1, Lcom/google/vr/sdk/widgets/video/deps/dz;->d:I

    .line 385
    :goto_3
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dz;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/google/vr/sdk/widgets/video/deps/dz;-><init>(IIII)V

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->a:Lcom/google/vr/sdk/widgets/video/deps/dz;

    return-object p1
.end method

.method private a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aS:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b()V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 140
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aR:I

    sget v1, Lcom/google/vr/sdk/widgets/video/deps/dx;->B:I

    if-ne v0, v1, :cond_0

    .line 141
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(Lcom/google/vr/sdk/widgets/video/deps/dx$a;)V

    goto :goto_0

    .line 142
    :cond_0
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aR:I

    sget v1, Lcom/google/vr/sdk/widgets/video/deps/dx;->K:I

    if-ne v0, v1, :cond_1

    .line 143
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->c(Lcom/google/vr/sdk/widgets/video/deps/dx$a;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dx$a;",
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/eb$b;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aU:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 265
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aU:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    .line 266
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aR:I

    sget v4, Lcom/google/vr/sdk/widgets/video/deps/dx;->L:I

    if-ne v3, v4, :cond_0

    .line 267
    invoke-static {v2, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(Lcom/google/vr/sdk/widgets/video/deps/dx$a;Landroid/util/SparseArray;I[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;Lcom/google/vr/sdk/widgets/video/deps/eb$b;JI)V
    .locals 10

    .line 305
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aT:Ljava/util/List;

    .line 306
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 308
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    .line 309
    iget v6, v5, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aR:I

    sget v7, Lcom/google/vr/sdk/widgets/video/deps/dx;->z:I

    if-ne v6, v7, :cond_0

    .line 310
    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v6, 0xc

    .line 311
    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 312
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    :cond_1
    iput v1, p1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->g:I

    .line 318
    iput v1, p1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->f:I

    .line 319
    iput v1, p1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->e:I

    .line 320
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-virtual {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(II)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 324
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    .line 325
    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aR:I

    sget v5, Lcom/google/vr/sdk/widgets/video/deps/dx;->z:I

    if-ne v4, v5, :cond_2

    add-int/lit8 v9, v3, 0x1

    .line 326
    iget-object v7, v2, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/eb$b;IJILcom/google/vr/sdk/widgets/video/deps/pe;I)I

    move-result v2

    move v8, v2

    move v3, v9

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/dx$b;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$b;)V

    goto :goto_0

    .line 132
    :cond_0
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aR:I

    sget v1, Lcom/google/vr/sdk/widgets/video/deps/dx;->A:I

    if-ne v0, v1, :cond_1

    .line 133
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;J)Landroid/util/Pair;

    move-result-object p1

    .line 134
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->B:J

    .line 135
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Lcom/google/vr/sdk/widgets/video/deps/ct;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->K:Z

    goto :goto_0

    .line 137
    :cond_1
    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aR:I

    sget p3, Lcom/google/vr/sdk/widgets/video/deps/dx;->aG:I

    if-ne p2, p3, :cond_2

    .line 138
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/ej;Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/ek;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 329
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/ej;->d:I

    const/16 v0, 0x8

    .line 330
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 331
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 332
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/dx;->b(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 334
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 335
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    .line 336
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v1

    .line 337
    iget v3, p2, Lcom/google/vr/sdk/widgets/video/deps/ek;->f:I

    if-ne v1, v3, :cond_5

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 341
    iget-object v0, p2, Lcom/google/vr/sdk/widgets/video/deps/ek;->n:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 343
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 345
    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    mul-int v0, v0, v1

    add-int/lit8 v5, v0, 0x0

    .line 350
    iget-object p0, p2, Lcom/google/vr/sdk/widgets/video/deps/ek;->n:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 351
    :cond_4
    invoke-virtual {p2, v5}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(I)V

    return-void

    .line 338
    :cond_5
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/s;

    iget p1, p2, Lcom/google/vr/sdk/widgets/video/deps/ek;->f:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 12

    .line 228
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->I:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0xc

    .line 230
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 231
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v8

    .line 232
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->A()Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->A()Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v5

    .line 236
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v1

    .line 237
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->I:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 238
    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 239
    invoke-interface {v7, p1, v8}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 241
    :cond_1
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->B:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v3, v6

    if-eqz p1, :cond_3

    add-long/2addr v3, v1

    .line 243
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->m:Lcom/google/vr/sdk/widgets/video/deps/pp;

    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {p1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/pp;->c(J)J

    move-result-wide v3

    :cond_2
    move-wide v9, v3

    .line 245
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->I:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    array-length v0, p1

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v0, :cond_4

    aget-object v1, p1, v11

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v9

    move v5, v8

    .line 246
    invoke-interface/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 249
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eb$a;

    invoke-direct {v0, v1, v2, v8}, Lcom/google/vr/sdk/widgets/video/deps/eb$a;-><init>(JI)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 250
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->y:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->y:I

    :cond_4
    :goto_2
    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;ILcom/google/vr/sdk/widgets/video/deps/ek;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 450
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 451
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result p1

    .line 452
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/dx;->b(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 456
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v1

    .line 457
    iget v2, p2, Lcom/google/vr/sdk/widgets/video/deps/ek;->f:I

    if-ne v1, v2, :cond_1

    .line 459
    iget-object v2, p2, Lcom/google/vr/sdk/widgets/video/deps/ek;->n:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 460
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(I)V

    .line 461
    invoke-virtual {p2, p0}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    return-void

    .line 458
    :cond_1
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/s;

    iget p1, p2, Lcom/google/vr/sdk/widgets/video/deps/ek;->f:I

    const/16 p2, 0x29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length mismatch: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p0

    .line 454
    :cond_2
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/ek;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    const/16 v0, 0x8

    .line 353
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 354
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 355
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/dx;->b(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 357
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 361
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/dx;->a(I)I

    move-result v0

    .line 362
    iget-wide v1, p1, Lcom/google/vr/sdk/widgets/video/deps/ek;->d:J

    if-nez v0, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->x()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/google/vr/sdk/widgets/video/deps/ek;->d:J

    return-void

    .line 360
    :cond_2
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/s;

    const/16 p1, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unexpected saio entry count: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/ek;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    const/16 v0, 0x8

    .line 442
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 443
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 444
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->c:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 446
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;ILcom/google/vr/sdk/widgets/video/deps/ek;)V

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/pe;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/ek;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/16 v3, 0x8

    .line 463
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v4

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v5

    sget v6, Lcom/google/vr/sdk/widgets/video/deps/eb;->b:I

    if-eq v5, v6, :cond_0

    return-void

    .line 467
    :cond_0
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/dx;->a(I)I

    move-result v4

    const/4 v5, 0x4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    .line 468
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 469
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 471
    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    .line 473
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v3

    if-eq v3, v6, :cond_2

    return-void

    .line 475
    :cond_2
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/dx;->a(I)I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 477
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_3

    goto :goto_0

    .line 478
    :cond_3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v3, 0x2

    if-lt v0, v3, :cond_5

    .line 480
    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 481
    :cond_5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v3

    const-wide/16 v8, 0x1

    cmp-long v0, v3, v8

    if-nez v0, :cond_9

    .line 483
    invoke-virtual {v1, v7}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 484
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v13, v3, 0x4

    and-int/lit8 v14, v0, 0xf

    .line 487
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v7, :cond_6

    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_7

    return-void

    .line 490
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v11

    const/16 v0, 0x10

    new-array v12, v0, [B

    .line 492
    invoke-virtual {v1, v12, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    const/4 v0, 0x0

    if-eqz v9, :cond_8

    if-nez v11, :cond_8

    .line 495
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    .line 496
    new-array v4, v0, [B

    .line 497
    invoke-virtual {v1, v4, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    move-object v15, v4

    goto :goto_2

    :cond_8
    move-object v15, v0

    .line 498
    :goto_2
    iput-boolean v7, v2, Lcom/google/vr/sdk/widgets/video/deps/ek;->m:Z

    .line 499
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ej;

    move-object v8, v0

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/ej;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v2, Lcom/google/vr/sdk/widgets/video/deps/ek;->o:Lcom/google/vr/sdk/widgets/video/deps/ej;

    return-void

    .line 482
    :cond_9
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_a
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(I)Z
    .locals 1

    .line 682
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->S:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->R:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->C:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->A:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->T:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->w:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->x:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->O:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->y:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->z:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->U:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->ac:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->ad:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->ah:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->ag:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->ae:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->af:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->Q:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->N:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->aG:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static final synthetic a()[Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 684
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/eb;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/eb;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/pe;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/pe;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/vr/sdk/widgets/video/deps/dz;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 252
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 253
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    .line 254
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 255
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v2

    .line 256
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v3

    .line 257
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result p0

    .line 258
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/dz;

    invoke-direct {v4, v1, v2, v3, p0}, Lcom/google/vr/sdk/widgets/video/deps/dz;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/util/SparseArray;I)Lcom/google/vr/sdk/widgets/video/deps/eb$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/eb$b;",
            ">;I)",
            "Lcom/google/vr/sdk/widgets/video/deps/eb$b;"
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 388
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    return-object p0

    .line 389
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    return-object p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->s:I

    .line 61
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:I

    return-void
.end method

.method private b(J)V
    .locals 13

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/eb$a;

    .line 647
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->y:I

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb$a;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->y:I

    .line 648
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb$a;->a:J

    add-long/2addr v1, p1

    .line 649
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->m:Lcom/google/vr/sdk/widgets/video/deps/pp;

    if-eqz v3, :cond_1

    .line 650
    invoke-virtual {v3, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pp;->c(J)J

    move-result-wide v1

    .line 651
    :cond_1
    iget-object v10, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->I:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    array-length v11, v10

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v3, v10, v12

    const/4 v6, 0x1

    .line 652
    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/eb$a;->b:I

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->y:I

    const/4 v9, 0x0

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/dx$a;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 147
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->f:Lcom/google/vr/sdk/widgets/video/deps/ei;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Unexpected moov box."

    invoke-static {v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(ZLjava/lang/Object;)V

    .line 148
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->h:Lcom/google/vr/sdk/widgets/video/deps/cb;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 149
    :cond_1
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aT:Ljava/util/List;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/cb;

    move-result-object v2

    .line 150
    :goto_1
    sget v5, Lcom/google/vr/sdk/widgets/video/deps/dx;->M:I

    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    move-result-object v5

    .line 151
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 153
    iget-object v8, v5, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aT:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move-wide v13, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_4

    .line 155
    iget-object v7, v5, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aT:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    .line 156
    iget v9, v7, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aR:I

    sget v10, Lcom/google/vr/sdk/widgets/video/deps/dx;->y:I

    if-ne v9, v10, :cond_2

    .line 157
    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;)Landroid/util/Pair;

    move-result-object v7

    .line 158
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/vr/sdk/widgets/video/deps/dz;

    invoke-virtual {v12, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 159
    :cond_2
    iget v9, v7, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aR:I

    sget v10, Lcom/google/vr/sdk/widgets/video/deps/dx;->N:I

    if-ne v9, v10, :cond_3

    .line 160
    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/eb;->c(Lcom/google/vr/sdk/widgets/video/deps/pe;)J

    move-result-wide v9

    move-wide v13, v9

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 162
    :cond_4
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 163
    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aU:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_8

    .line 165
    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aU:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    .line 166
    iget v6, v5, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aR:I

    sget v7, Lcom/google/vr/sdk/widgets/video/deps/dx;->D:I

    if-ne v6, v7, :cond_6

    .line 167
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/dx;->C:I

    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v6

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->e:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    const/16 v17, 0x0

    move-wide v7, v13

    move-object v9, v2

    move/from16 v18, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;Lcom/google/vr/sdk/widgets/video/deps/dx$b;JLcom/google/vr/sdk/widgets/video/deps/cb;ZZ)Lcom/google/vr/sdk/widgets/video/deps/ei;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 169
    iget v6, v5, Lcom/google/vr/sdk/widgets/video/deps/ei;->a:I

    invoke-virtual {v15, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    move/from16 v18, v10

    move/from16 v16, v11

    :cond_7
    :goto_6
    add-int/lit8 v10, v18, 0x1

    move/from16 v11, v16

    goto :goto_4

    .line 171
    :cond_8
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 172
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_a

    :goto_7
    if-ge v4, v1, :cond_9

    .line 174
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ei;

    .line 175
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Lcom/google/vr/sdk/widgets/video/deps/ct;

    iget v6, v2, Lcom/google/vr/sdk/widgets/video/deps/ei;->b:I

    invoke-interface {v5, v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    .line 176
    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/ei;->a:I

    invoke-direct {v0, v12, v5}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Landroid/util/SparseArray;I)Lcom/google/vr/sdk/widgets/video/deps/dz;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a(Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/dz;)V

    .line 177
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    iget v6, v2, Lcom/google/vr/sdk/widgets/video/deps/ei;->a:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->A:J

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ei;->e:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->A:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 180
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->d()V

    .line 181
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    goto :goto_a

    .line 182
    :cond_a
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_b

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    :goto_9
    if-ge v4, v1, :cond_c

    .line 184
    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ei;

    .line 185
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/ei;->a:I

    .line 186
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/ei;->a:I

    .line 187
    invoke-direct {v0, v12, v5}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Landroid/util/SparseArray;I)Lcom/google/vr/sdk/widgets/video/deps/dz;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a(Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/dz;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    :goto_a
    return-void
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/dx$a;Landroid/util/SparseArray;I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dx$a;",
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/eb$b;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 270
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->x:I

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v0

    .line 271
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;Landroid/util/SparseArray;)Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    .line 275
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->s:J

    .line 276
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a()V

    .line 277
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->w:I

    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v3

    if-eqz v3, :cond_1

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_1

    .line 279
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/dx;->w:I

    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->d(Lcom/google/vr/sdk/widgets/video/deps/pe;)J

    move-result-wide v1

    .line 280
    :cond_1
    invoke-static {p0, p1, v1, v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;Lcom/google/vr/sdk/widgets/video/deps/eb$b;JI)V

    .line 281
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->c:Lcom/google/vr/sdk/widgets/video/deps/ei;

    iget-object p2, v0, Lcom/google/vr/sdk/widgets/video/deps/ek;->a:Lcom/google/vr/sdk/widgets/video/deps/dz;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/dz;->a:I

    .line 282
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ei;->a(I)Lcom/google/vr/sdk/widgets/video/deps/ej;

    move-result-object p1

    .line 283
    sget p2, Lcom/google/vr/sdk/widgets/video/deps/dx;->ac:I

    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 285
    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/ej;Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/ek;)V

    .line 286
    :cond_2
    sget p2, Lcom/google/vr/sdk/widgets/video/deps/dx;->ad:I

    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 288
    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/ek;)V

    .line 289
    :cond_3
    sget p2, Lcom/google/vr/sdk/widgets/video/deps/dx;->ah:I

    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 291
    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/ek;)V

    .line 292
    :cond_4
    sget p2, Lcom/google/vr/sdk/widgets/video/deps/dx;->ae:I

    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object p2

    .line 293
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/dx;->af:I

    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v1

    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    .line 295
    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ej;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/pe;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/ek;)V

    .line 296
    :cond_6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aT:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_8

    .line 298
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aT:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    .line 299
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aR:I

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->ag:I

    if-ne v2, v3, :cond_7

    .line 300
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {v1, v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/ek;[B)V

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/ek;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    const/4 v0, 0x0

    .line 448
    invoke-static {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;ILcom/google/vr/sdk/widgets/video/deps/ek;)V

    return-void
.end method

.method private static b(I)Z
    .locals 1

    .line 683
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->B:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->D:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->E:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->F:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->G:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->K:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->L:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->M:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->P:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v0, v2, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 66
    :cond_0
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:I

    .line 67
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 68
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:J

    .line 69
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:I

    .line 70
    :cond_1
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v0, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 73
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:I

    .line 74
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->x()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 76
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aS:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 80
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:J

    .line 81
    :cond_4
    :goto_0
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:J

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_e

    .line 83
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v4

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 84
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:I

    sget v6, Lcom/google/vr/sdk/widgets/video/deps/dx;->K:I

    if-ne v0, v6, :cond_5

    .line 85
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_5

    .line 87
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    .line 88
    iput-wide v4, v7, Lcom/google/vr/sdk/widgets/video/deps/ek;->b:J

    .line 89
    iput-wide v4, v7, Lcom/google/vr/sdk/widgets/video/deps/ek;->d:J

    .line 90
    iput-wide v4, v7, Lcom/google/vr/sdk/widgets/video/deps/ek;->c:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 92
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:I

    sget v6, Lcom/google/vr/sdk/widgets/video/deps/dx;->h:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_7

    .line 93
    iput-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    .line 94
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->x:J

    .line 95
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->K:Z

    if-nez p1, :cond_6

    .line 96
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Lcom/google/vr/sdk/widgets/video/deps/ct;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/da$b;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->A:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/da$b;-><init>(JJ)V

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    .line 97
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->K:Z

    :cond_6
    const/4 p1, 0x2

    .line 98
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->s:I

    return v3

    .line 100
    :cond_7
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:I

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 101
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    .line 102
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:I

    invoke-direct {v2, v4, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 103
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:J

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_8

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(J)V

    goto :goto_2

    .line 105
    :cond_8
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b()V

    goto :goto_2

    .line 106
    :cond_9
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:I

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_c

    .line 107
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:I

    if-ne p1, v1, :cond_b

    .line 109
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_a

    .line 111
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    long-to-int v0, v6

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->w:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 112
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->w:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->s:I

    goto :goto_2

    .line 110
    :cond_a
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_b
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_c
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_d

    .line 116
    iput-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->w:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 117
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->s:I

    :goto_2
    return v3

    .line 115
    :cond_d
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_e
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/pe;)J
    .locals 2

    const/16 v0, 0x8

    .line 259
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 260
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    .line 261
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/dx;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->x()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/cs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 119
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:J

    long-to-int v1, v0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:I

    sub-int/2addr v1, v0

    .line 120
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->w:Lcom/google/vr/sdk/widgets/video/deps/pe;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/16 v2, 0x8

    invoke-interface {p1, v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 122
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->w:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dx$b;-><init>(ILcom/google/vr/sdk/widgets/video/deps/pe;)V

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$b;J)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 124
    :goto_0
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(J)V

    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/dx$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->e:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->o:[B

    invoke-static {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;Landroid/util/SparseArray;I[B)V

    .line 194
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->h:Lcom/google/vr/sdk/widgets/video/deps/cb;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->aT:Ljava/util/List;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Ljava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/cb;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 199
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    invoke-virtual {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a(Lcom/google/vr/sdk/widgets/video/deps/cb;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 201
    :cond_1
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->z:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    .line 202
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->z:J

    invoke-virtual {v1, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 206
    :cond_2
    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->z:J

    :cond_3
    return-void
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/pe;)J
    .locals 2

    const/16 v0, 0x8

    .line 390
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 391
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    .line 392
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/dx;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->x()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private d()V
    .locals 8

    .line 208
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->I:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 209
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->I:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 211
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->r:Lcom/google/vr/sdk/widgets/video/deps/dc;

    if-eqz v3, :cond_0

    aput-object v3, v0, v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 213
    :goto_0
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->e:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 214
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Lcom/google/vr/sdk/widgets/video/deps/ct;

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    .line 215
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-interface {v6, v7, v5}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v5

    aput-object v5, v0, v3

    move v3, v4

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->I:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/sdk/widgets/video/deps/dc;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->I:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 217
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 218
    sget-object v6, Lcom/google/vr/sdk/widgets/video/deps/eb;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-interface {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->J:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    if-nez v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/dc;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->J:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 222
    :goto_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->J:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Lcom/google/vr/sdk/widgets/video/deps/ct;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v0

    .line 224
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-interface {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 225
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->J:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/cs;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 541
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    .line 542
    iget-boolean v6, v5, Lcom/google/vr/sdk/widgets/video/deps/ek;->r:Z

    if-eqz v6, :cond_0

    iget-wide v6, v5, Lcom/google/vr/sdk/widgets/video/deps/ek;->d:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_0

    .line 543
    iget-wide v1, v5, Lcom/google/vr/sdk/widgets/video/deps/ek;->d:J

    .line 544
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    move-wide v9, v1

    move-object v1, v3

    move-wide v2, v9

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x3

    .line 547
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->s:I

    return-void

    .line 549
    :cond_2
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-ltz v0, :cond_3

    .line 552
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 553
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ek;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)V

    return-void

    .line 551
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 555
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->s:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v4, :cond_7

    .line 556
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    if-nez v2, :cond_3

    .line 557
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Landroid/util/SparseArray;)Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    move-result-object v2

    if-nez v2, :cond_1

    .line 559
    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->x:J

    invoke-interface/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_0

    .line 562
    invoke-interface {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 563
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b()V

    return v7

    .line 561
    :cond_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v1

    .line 565
    :cond_1
    iget-object v8, v2, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v8, v8, Lcom/google/vr/sdk/widgets/video/deps/ek;->g:[J

    iget v9, v2, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->g:I

    aget-wide v9, v8, v9

    .line 566
    invoke-interface/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v8, v9

    if-gez v8, :cond_2

    const-string v8, "FragmentedMp4Extractor"

    const-string v9, "Ignoring negative offset to sample data."

    .line 568
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    .line 570
    :cond_2
    invoke-interface {v1, v8}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 571
    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    .line 572
    :cond_3
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ek;->i:[I

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget v8, v8, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->e:I

    aget v2, v2, v8

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:I

    .line 573
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->e:I

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget v8, v8, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->h:I

    if-ge v2, v8, :cond_5

    .line 574
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:I

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 575
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a(Lcom/google/vr/sdk/widgets/video/deps/eb$b;)V

    .line 576
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b()Z

    move-result v1

    if-nez v1, :cond_4

    .line 577
    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    .line 578
    :cond_4
    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->s:I

    return v6

    .line 580
    :cond_5
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->c:Lcom/google/vr/sdk/widgets/video/deps/ei;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ei;->g:I

    if-ne v2, v6, :cond_6

    .line 581
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:I

    const/16 v8, 0x8

    sub-int/2addr v2, v8

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:I

    .line 582
    invoke-interface {v1, v8}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 583
    :cond_6
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->c()I

    move-result v2

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:I

    .line 584
    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:I

    add-int/2addr v8, v2

    iput v8, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:I

    .line 585
    iput v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->s:I

    .line 586
    iput v7, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->F:I

    .line 587
    :cond_7
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/ek;

    .line 588
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget-object v8, v8, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->c:Lcom/google/vr/sdk/widgets/video/deps/ei;

    .line 589
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget-object v10, v9, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 590
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget v9, v9, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->e:I

    .line 591
    invoke-virtual {v2, v9}, Lcom/google/vr/sdk/widgets/video/deps/ek;->b(I)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    .line 592
    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->m:Lcom/google/vr/sdk/widgets/video/deps/pp;

    if-eqz v13, :cond_8

    .line 593
    invoke-virtual {v13, v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/pp;->c(J)J

    move-result-wide v11

    :cond_8
    move-wide v14, v11

    .line 594
    iget v11, v8, Lcom/google/vr/sdk/widgets/video/deps/ei;->j:I

    if-eqz v11, :cond_c

    .line 595
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v11, v11, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 596
    aput-byte v7, v11, v7

    .line 597
    aput-byte v7, v11, v6

    const/4 v12, 0x2

    .line 598
    aput-byte v7, v11, v12

    .line 599
    iget v12, v8, Lcom/google/vr/sdk/widgets/video/deps/ei;->j:I

    add-int/2addr v12, v6

    .line 600
    iget v13, v8, Lcom/google/vr/sdk/widgets/video/deps/ei;->j:I

    rsub-int/lit8 v13, v13, 0x4

    .line 601
    :goto_0
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:I

    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:I

    if-ge v4, v3, :cond_d

    .line 602
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->F:I

    if-nez v3, :cond_a

    .line 603
    invoke-interface {v1, v11, v13, v12}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 604
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v3, v7}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 605
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v3

    sub-int/2addr v3, v6

    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->F:I

    .line 606
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->j:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v3, v7}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 607
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->j:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {v10, v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 608
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {v10, v3, v6}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 609
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->J:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    array-length v3, v3

    if-lez v3, :cond_9

    iget-object v3, v8, Lcom/google/vr/sdk/widgets/video/deps/ei;->f:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    aget-byte v4, v11, v5

    .line 610
    invoke-static {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/pc;->a(Ljava/lang/String;B)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->G:Z

    .line 611
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:I

    .line 612
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:I

    add-int/2addr v3, v13

    iput v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:I

    const/4 v3, 0x0

    goto :goto_0

    .line 613
    :cond_a
    iget-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->G:Z

    if-eqz v4, :cond_b

    .line 614
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    .line 615
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->F:I

    invoke-interface {v1, v3, v7, v4}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BII)V

    .line 616
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->F:I

    invoke-interface {v10, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 617
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->F:I

    .line 618
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/pc;->a([BI)I

    move-result v4

    .line 619
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v6, v8, Lcom/google/vr/sdk/widgets/video/deps/ei;->f:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    const-string v7, "video/hevc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 620
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b(I)V

    .line 621
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->J:[Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-static {v14, v15, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/lz;->a(JLcom/google/vr/sdk/widgets/video/deps/pe;[Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    .line 623
    invoke-interface {v10, v1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I

    move-result v3

    .line 624
    :goto_2
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:I

    .line 625
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->F:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->F:I

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 628
    :cond_c
    :goto_3
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:I

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:I

    if-ge v3, v4, :cond_d

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    .line 629
    invoke-interface {v10, v1, v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I

    move-result v4

    .line 630
    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:I

    goto :goto_3

    .line 632
    :cond_d
    iget-object v1, v2, Lcom/google/vr/sdk/widgets/video/deps/ek;->l:[Z

    aget-boolean v1, v1, v9

    .line 635
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b(Lcom/google/vr/sdk/widgets/video/deps/eb$b;)Lcom/google/vr/sdk/widgets/video/deps/ej;

    move-result-object v2

    if-eqz v2, :cond_e

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v1, v3

    .line 638
    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ej;->c:Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    move v13, v1

    move-object/from16 v16, v2

    goto :goto_4

    :cond_e
    move v13, v1

    const/16 v16, 0x0

    .line 639
    :goto_4
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:I

    const/4 v2, 0x0

    move-wide v11, v14

    move-wide v3, v14

    move v14, v1

    move v15, v2

    invoke-interface/range {v10 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    .line 640
    invoke-direct {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(J)V

    .line 641
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->b()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x0

    .line 642
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    :cond_f
    const/4 v1, 0x3

    .line 643
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->s:I

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 51
    :cond_0
    :goto_0
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->s:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 58
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->e(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 56
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->d(Lcom/google/vr/sdk/widgets/video/deps/cs;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->c(Lcom/google/vr/sdk/widgets/video/deps/cs;)V

    goto :goto_0

    .line 52
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public a(JJ)V
    .locals 2

    .line 40
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 45
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->y:I

    .line 46
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->z:J

    .line 47
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 48
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V
    .locals 3

    .line 32
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Lcom/google/vr/sdk/widgets/video/deps/ct;

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->f:Lcom/google/vr/sdk/widgets/video/deps/ei;

    if-eqz v0, :cond_0

    .line 34
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/eb$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ei;->b:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    .line 35
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->f:Lcom/google/vr/sdk/widgets/video/deps/ei;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dz;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/dz;-><init>(IIII)V

    invoke-virtual {v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb$b;->a(Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/dz;)V

    .line 36
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->d()V

    .line 38
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/eh;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
