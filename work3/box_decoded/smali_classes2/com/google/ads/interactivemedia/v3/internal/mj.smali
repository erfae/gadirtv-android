.class public final Lcom/google/ads/interactivemedia/v3/internal/mj;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/me;


# static fields
.field private static final a:[F


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/internal/nn;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private final d:[Z

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/mh;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/ms;

.field private g:Lcom/google/ads/interactivemedia/v3/internal/mi;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private k:Z

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->a:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/mj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/nn;)V

    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/nn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->b:Lcom/google/ads/interactivemedia/v3/internal/nn;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->d:[Z

    .line 2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/mh;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/mh;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->e:Lcom/google/ads/interactivemedia/v3/internal/mh;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ms;

    const/16 v0, 0xb2

    .line 3
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 4
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->d:[Z

    .line 88
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->e:Lcom/google/ads/interactivemedia/v3/internal/mh;

    .line 89
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/mh;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->g:Lcom/google/ads/interactivemedia/v3/internal/mi;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/mi;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->h:J

    return-void
.end method

.method public final a(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->l:J

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->g:Lcom/google/ads/interactivemedia/v3/internal/mi;

    .line 5
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->j:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 6
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v1

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->h:J

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->h:J

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->j:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->d:[Z

    .line 12
    invoke-static {v3, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->k:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->e:Lcom/google/ads/interactivemedia/v3/internal/mh;

    .line 80
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/mh;->a([BII)V

    :cond_0
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->g:Lcom/google/ads/interactivemedia/v3/internal/mi;

    .line 81
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/mi;->a([BII)V

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    if-eqz v4, :cond_1

    .line 82
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a([BII)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v5, v4, 0x3

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v7

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->k:Z

    if-nez v9, :cond_e

    if-lez v8, :cond_3

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->e:Lcom/google/ads/interactivemedia/v3/internal/mh;

    .line 14
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/mh;->a([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->e:Lcom/google/ads/interactivemedia/v3/internal/mh;

    .line 15
    invoke-virtual {v12, v7, v9}, Lcom/google/ads/interactivemedia/v3/internal/mh;->a(II)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->j:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->e:Lcom/google/ads/interactivemedia/v3/internal/mh;

    .line 16
    iget v13, v12, Lcom/google/ads/interactivemedia/v3/internal/mh;->b:I

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->i:Ljava/lang/String;

    .line 17
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v15, v12, Lcom/google/ads/interactivemedia/v3/internal/mh;->c:[B

    iget v12, v12, Lcom/google/ads/interactivemedia/v3/internal/mh;->a:I

    invoke-static {v15, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 19
    invoke-direct {v15, v12}, Lcom/google/ads/interactivemedia/v3/internal/abq;-><init>([B)V

    .line 20
    invoke-virtual {v15, v13}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d(I)V

    const/4 v13, 0x4

    .line 21
    invoke-virtual {v15, v13}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d(I)V

    .line 22
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    const/16 v10, 0x8

    .line 23
    invoke-virtual {v15, v10}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 24
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v16

    const/4 v11, 0x3

    if-eqz v16, :cond_5

    .line 25
    invoke-virtual {v15, v13}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 26
    invoke-virtual {v15, v11}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 27
    :cond_5
    invoke-virtual {v15, v13}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v13

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v11, "Invalid aspect ratio"

    const-string v10, "H263Reader"

    move/from16 v17, v5

    const/16 v5, 0xf

    if-ne v13, v5, :cond_7

    const/16 v5, 0x8

    .line 28
    invoke-virtual {v15, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v13

    .line 29
    invoke-virtual {v15, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v5

    if-nez v5, :cond_6

    .line 30
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    int-to-float v11, v13

    int-to-float v5, v5

    div-float v16, v11, v5

    goto :goto_2

    .line 55
    :cond_7
    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/mj;->a:[F

    array-length v6, v5

    if-ge v13, v6, :cond_8

    .line 31
    aget v16, v5, v13

    :goto_2
    move/from16 v5, v16

    goto :goto_4

    .line 32
    :cond_8
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    .line 33
    :goto_4
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v6

    const/4 v11, 0x2

    if-eqz v6, :cond_9

    .line 34
    invoke-virtual {v15, v11}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    const/4 v6, 0x1

    .line 35
    invoke-virtual {v15, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 36
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0xf

    .line 37
    invoke-virtual {v15, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 38
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    .line 39
    invoke-virtual {v15, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 40
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    .line 41
    invoke-virtual {v15, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 42
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    const/4 v13, 0x3

    .line 43
    invoke-virtual {v15, v13}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    const/16 v13, 0xb

    .line 44
    invoke-virtual {v15, v13}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 45
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    .line 46
    invoke-virtual {v15, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 47
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    .line 48
    :cond_9
    invoke-virtual {v15, v11}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "Unhandled video object layer shape"

    .line 49
    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_a
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    const/16 v6, 0x10

    .line 51
    invoke-virtual {v15, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v6

    .line 52
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    .line 53
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v11

    if-eqz v11, :cond_d

    if-nez v6, :cond_b

    const-string v6, "Invalid vop_increment_time_resolution"

    .line 54
    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    add-int/lit8 v6, v6, -0x1

    const/4 v10, 0x0

    :goto_5
    if-lez v6, :cond_c

    add-int/lit8 v10, v10, 0x1

    shr-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 55
    :cond_c
    invoke-virtual {v15, v10}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    .line 56
    :cond_d
    :goto_6
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    const/16 v6, 0xd

    .line 57
    invoke-virtual {v15, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v10

    .line 58
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    .line 59
    invoke-virtual {v15, v6}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v6

    .line 60
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    .line 61
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c()V

    new-instance v11, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 62
    invoke-direct {v11}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    .line 63
    invoke-virtual {v11, v14}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    const-string v13, "video/mp4v-es"

    .line 64
    invoke-virtual {v11, v13}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v11, v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;->p(I)V

    .line 66
    invoke-virtual {v11, v6}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(I)V

    .line 67
    invoke-virtual {v11, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->b(F)V

    .line 68
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/util/List;)V

    .line 69
    invoke-virtual {v11}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v5

    .line 16
    invoke-interface {v9, v5}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->k:Z

    goto :goto_7

    :cond_e
    move/from16 v17, v5

    :goto_7
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->g:Lcom/google/ads/interactivemedia/v3/internal/mi;

    .line 70
    invoke-virtual {v5, v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/mi;->a([BII)V

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    const/16 v6, 0xb2

    if-eqz v5, :cond_12

    if-lez v8, :cond_f

    .line 71
    invoke-virtual {v5, v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a([BII)V

    const/4 v10, 0x0

    goto :goto_8

    :cond_f
    neg-int v10, v8

    :goto_8
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 72
    invoke-virtual {v1, v10}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 73
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    invoke-static {v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([BI)I

    move-result v1

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 74
    sget v8, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v8, v8, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    invoke-virtual {v5, v8, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->b:Lcom/google/ads/interactivemedia/v3/internal/nn;

    iget-wide v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->l:J

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->c:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 75
    invoke-virtual {v1, v8, v9, v5}, Lcom/google/ads/interactivemedia/v3/internal/nn;->a(JLcom/google/ads/interactivemedia/v3/internal/abr;)V

    :cond_10
    if-ne v7, v6, :cond_12

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v1

    add-int/lit8 v5, v4, 0x2

    aget-byte v1, v1, v5

    const/4 v5, 0x1

    if-ne v1, v5, :cond_11

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->f:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 77
    invoke-virtual {v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a(I)V

    :cond_11
    const/16 v7, 0xb2

    :cond_12
    sub-int v1, v2, v4

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->h:J

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->g:Lcom/google/ads/interactivemedia/v3/internal/mi;

    int-to-long v8, v1

    sub-long/2addr v4, v8

    iget-boolean v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->k:Z

    .line 78
    invoke-virtual {v6, v4, v5, v1, v8}, Lcom/google/ads/interactivemedia/v3/internal/mi;->a(JIZ)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->g:Lcom/google/ads/interactivemedia/v3/internal/mi;

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mj;->l:J

    .line 79
    invoke-virtual {v1, v7, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/mi;->a(IJ)V

    move-object/from16 v6, p1

    move/from16 v1, v17

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V
    .locals 2

    .line 83
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->a()V

    .line 84
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->i:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->j:Lcom/google/ads/interactivemedia/v3/internal/ix;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/mi;

    .line 86
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/mi;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ix;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->g:Lcom/google/ads/interactivemedia/v3/internal/mi;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mj;->b:Lcom/google/ads/interactivemedia/v3/internal/nn;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/nn;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
