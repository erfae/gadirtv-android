.class public final Lcom/google/vr/sdk/widgets/video/deps/fj;
.super Ljava/lang/Object;
.source "H262Reader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fj$a;
    }
.end annotation


# static fields
.field private static final c:[D


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private d:Z

.field private e:J

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/gf;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final h:[Z

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/fj$a;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/fp;

.field private k:J

.field private l:Z

.field private m:J

.field private n:J

.field private o:J

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    .line 110
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->c:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fj;-><init>(Lcom/google/vr/sdk/widgets/video/deps/gf;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/gf;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->f:Lcom/google/vr/sdk/widgets/video/deps/gf;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 5
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->h:[Z

    .line 6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fj$a;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fj$a;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->i:Lcom/google/vr/sdk/widgets/video/deps/fj$a;

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fp;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fp;-><init>(II)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->j:Lcom/google/vr/sdk/widgets/video/deps/fp;

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->j:Lcom/google/vr/sdk/widgets/video/deps/fp;

    .line 11
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    :goto_0
    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/fj$a;Ljava/lang/String;)Landroid/util/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fj$a;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 81
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fj$a;->c:[B

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fj$a;->a:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/4 v2, 0x4

    .line 82
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x5

    .line 83
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x6

    .line 84
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v3, v2

    shr-int/lit8 v7, v5, 0x4

    or-int v13, v3, v7

    and-int/lit8 v3, v5, 0xf

    shl-int/lit8 v3, v3, 0x8

    or-int v14, v3, v6

    const/4 v3, 0x7

    .line 88
    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xf0

    shr-int/2addr v5, v2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    if-eq v5, v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    mul-int/lit8 v2, v14, 0x79

    int-to-float v2, v2

    mul-int/lit8 v5, v13, 0x64

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, v14, 0x10

    int-to-float v2, v2

    mul-int/lit8 v5, v13, 0x9

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, v14, 0x4

    int-to-float v2, v2

    mul-int/lit8 v5, v13, 0x3

    :goto_0
    int-to-float v5, v5

    div-float/2addr v2, v5

    move/from16 v18, v2

    :goto_1
    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/high16 v15, -0x40800000    # -1.0f

    .line 97
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, -0x1

    const/16 v19, 0x0

    const-string v9, "video/mpeg2"

    move-object/from16 v8, p1

    .line 98
    invoke-static/range {v8 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v2

    const-wide/16 v5, 0x0

    .line 100
    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    .line 101
    sget-object v7, Lcom/google/vr/sdk/widgets/video/deps/fj;->c:[D

    array-length v8, v7

    if-ge v3, v8, :cond_4

    .line 102
    aget-wide v5, v7, v3

    .line 103
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/fj$a;->b:I

    add-int/lit8 v0, v0, 0x9

    .line 104
    aget-byte v3, v1, v0

    and-int/lit8 v3, v3, 0x60

    shr-int/2addr v3, v4

    .line 105
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x1f

    if-eq v3, v0, :cond_3

    int-to-double v3, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v7

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    div-double/2addr v3, v0

    mul-double v5, v5, v3

    :cond_3
    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v5

    double-to-long v5, v0

    .line 109
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->h:[Z

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/pc;->a([Z)V

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->i:Lcom/google/vr/sdk/widgets/video/deps/fj$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fj$a;->a()V

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->f:Lcom/google/vr/sdk/widgets/video/deps/gf;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->j:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->k:J

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->l:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->m:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V
    .locals 2

    .line 20
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->a()V

    .line 21
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fj;->f:Lcom/google/vr/sdk/widgets/video/deps/gf;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gf;->a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v2

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v3

    .line 30
    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 31
    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->k:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->k:J

    .line 32
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 33
    :goto_0
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->h:[Z

    invoke-static {v4, v2, v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/pc;->a([BII[Z)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 35
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->d:Z

    if-nez v1, :cond_0

    .line 36
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->i:Lcom/google/vr/sdk/widgets/video/deps/fj$a;

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/fj$a;->a([BII)V

    .line 37
    :cond_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->f:Lcom/google/vr/sdk/widgets/video/deps/gf;

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->j:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a([BII)V

    :cond_1
    return-void

    .line 40
    :cond_2
    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    add-int/lit8 v7, v5, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sub-int v8, v5, v2

    .line 42
    iget-boolean v9, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->d:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_5

    if-lez v8, :cond_3

    .line 44
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->i:Lcom/google/vr/sdk/widgets/video/deps/fj$a;

    invoke-virtual {v9, v4, v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/fj$a;->a([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .line 46
    :goto_1
    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->i:Lcom/google/vr/sdk/widgets/video/deps/fj$a;

    invoke-virtual {v12, v6, v9}, Lcom/google/vr/sdk/widgets/video/deps/fj$a;->a(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 47
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->i:Lcom/google/vr/sdk/widgets/video/deps/fj$a;

    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->a:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/google/vr/sdk/widgets/video/deps/fj;->a(Lcom/google/vr/sdk/widgets/video/deps/fj$a;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 48
    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object v13, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-interface {v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 49
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->e:J

    .line 50
    iput-boolean v11, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->d:Z

    .line 51
    :cond_5
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->f:Lcom/google/vr/sdk/widgets/video/deps/gf;

    if-eqz v9, :cond_8

    if-lez v8, :cond_6

    .line 54
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->j:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v8, v4, v2, v5}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a([BII)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    neg-int v2, v8

    .line 56
    :goto_2
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->j:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v8, v2}, Lcom/google/vr/sdk/widgets/video/deps/fp;->b(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 57
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->j:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/fp;->a:[B

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->j:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget v8, v8, Lcom/google/vr/sdk/widgets/video/deps/fp;->b:I

    invoke-static {v2, v8}, Lcom/google/vr/sdk/widgets/video/deps/pc;->a([BI)I

    move-result v2

    .line 58
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->j:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/fp;->a:[B

    invoke-virtual {v8, v9, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 59
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->f:Lcom/google/vr/sdk/widgets/video/deps/gf;

    iget-wide v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->o:J

    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->g:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2, v8, v9, v12}, Lcom/google/vr/sdk/widgets/video/deps/gf;->a(JLcom/google/vr/sdk/widgets/video/deps/pe;)V

    :cond_7
    const/16 v2, 0xb2

    if-ne v6, v2, :cond_8

    .line 60
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    add-int/lit8 v8, v5, 0x2

    aget-byte v2, v2, v8

    if-ne v2, v11, :cond_8

    .line 61
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->j:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a(I)V

    :cond_8
    if-eqz v6, :cond_a

    const/16 v2, 0xb3

    if-ne v6, v2, :cond_9

    goto :goto_3

    :cond_9
    const/16 v2, 0xb8

    if-ne v6, v2, :cond_11

    .line 77
    iput-boolean v11, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->p:Z

    goto :goto_5

    :cond_a
    :goto_3
    sub-int v2, v3, v5

    .line 64
    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->l:Z

    if-eqz v5, :cond_b

    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->q:Z

    if-eqz v5, :cond_b

    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->d:Z

    if-eqz v5, :cond_b

    .line 65
    iget-boolean v15, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->p:Z

    .line 66
    iget-wide v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->k:J

    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->n:J

    sub-long/2addr v8, v12

    long-to-int v5, v8

    sub-int v16, v5, v2

    .line 67
    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->b:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-wide v13, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->o:J

    const/16 v18, 0x0

    move/from16 v17, v2

    invoke-interface/range {v12 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    .line 68
    :cond_b
    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->l:Z

    if-eqz v5, :cond_c

    iget-boolean v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->q:Z

    if-eqz v8, :cond_f

    .line 69
    :cond_c
    iget-wide v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->k:J

    int-to-long v12, v2

    sub-long/2addr v8, v12

    iput-wide v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->n:J

    .line 70
    iget-wide v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->m:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v8, v12

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    if-eqz v5, :cond_e

    .line 71
    iget-wide v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->o:J

    iget-wide v14, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->e:J

    add-long/2addr v8, v14

    goto :goto_4

    :cond_e
    const-wide/16 v8, 0x0

    :goto_4
    iput-wide v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->o:J

    .line 72
    iput-boolean v10, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->p:Z

    .line 73
    iput-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->m:J

    .line 74
    iput-boolean v11, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->l:Z

    :cond_f
    if-nez v6, :cond_10

    const/4 v10, 0x1

    .line 75
    :cond_10
    iput-boolean v10, v0, Lcom/google/vr/sdk/widgets/video/deps/fj;->q:Z

    :cond_11
    :goto_5
    move v2, v7

    goto/16 :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method
