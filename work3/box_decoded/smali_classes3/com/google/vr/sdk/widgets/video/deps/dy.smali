.class final Lcom/google/vr/sdk/widgets/video/deps/dy;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dy$e;,
        Lcom/google/vr/sdk/widgets/video/deps/dy$d;,
        Lcom/google/vr/sdk/widgets/video/deps/dy$b;,
        Lcom/google/vr/sdk/widgets/video/deps/dy$c;,
        Lcom/google/vr/sdk/widgets/video/deps/dy$f;,
        Lcom/google/vr/sdk/widgets/video/deps/dy$a;,
        Lcom/google/vr/sdk/widgets/video/deps/dy$g;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vide"

    .line 669
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->a:I

    const-string v0, "soun"

    .line 670
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->b:I

    const-string v0, "text"

    .line 671
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->c:I

    const-string v0, "sbtl"

    .line 672
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->d:I

    const-string v0, "subt"

    .line 673
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->e:I

    const-string v0, "clcp"

    .line 674
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->f:I

    const-string v0, "meta"

    .line 675
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->g:I

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;)J
    .locals 2

    const/16 v0, 0x8

    .line 245
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 246
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 247
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/dx;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 248
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 249
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dx$a;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 429
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->Q:I

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    .line 431
    :cond_0
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v0, 0x8

    .line 432
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 433
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    .line 434
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/dx;->a(I)I

    move-result v0

    .line 435
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v1

    .line 436
    new-array v2, v1, [J

    .line 437
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->x()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    .line 441
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->r()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    .line 442
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->k()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    .line 445
    invoke-virtual {p0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 444
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 447
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    .line 430
    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/google/vr/sdk/widgets/video/deps/pe;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/pe;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/vr/sdk/widgets/video/deps/ej;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v6, v4

    const/4 v5, -0x1

    const/4 v7, 0x0

    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    .line 598
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 599
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v8

    .line 600
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v9

    .line 601
    sget v10, Lcom/google/vr/sdk/widgets/video/deps/dx;->ab:I

    if-ne v9, v10, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .line 603
    :cond_0
    sget v10, Lcom/google/vr/sdk/widgets/video/deps/dx;->W:I

    if-ne v9, v10, :cond_1

    const/4 v4, 0x4

    .line 604
    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 605
    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->e(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 606
    :cond_1
    sget v10, Lcom/google/vr/sdk/widgets/video/deps/dx;->X:I

    if-ne v9, v10, :cond_2

    move v5, v0

    move v7, v8

    :cond_2
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    :cond_3
    const-string p1, "cenc"

    .line 611
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbc1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cens"

    .line 612
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbcs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v2

    :cond_5
    :goto_2
    const/4 p1, 0x1

    if-eqz v6, :cond_6

    const/4 p2, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    const-string v0, "frma atom is mandatory"

    .line 613
    invoke-static {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(ZLjava/lang/Object;)V

    if-eq v5, v1, :cond_7

    const/4 p2, 0x1

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    :goto_4
    const-string v0, "schi atom is mandatory"

    .line 614
    invoke-static {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(ZLjava/lang/Object;)V

    .line 615
    invoke-static {p0, v5, v7, v4}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;IILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ej;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v3, 0x1

    :cond_8
    const-string p1, "tenc atom is mandatory"

    .line 616
    invoke-static {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(ZLjava/lang/Object;)V

    .line 617
    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;IILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/cb;Z)Lcom/google/vr/sdk/widgets/video/deps/dy$c;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    move-object/from16 v10, p0

    const/16 v0, 0xc

    .line 305
    invoke-virtual {v10, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v11

    .line 307
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/dy$c;

    invoke-direct {v12, v11}, Lcom/google/vr/sdk/widgets/video/deps/dy$c;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_8

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v15

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v16

    if-lez v16, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize should be positive"

    .line 311
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(ZLjava/lang/Object;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 313
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->b:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->c:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->Z:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->al:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->d:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->e:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->f:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->aK:I

    if-eq v1, v0, :cond_6

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->aL:I

    if-ne v1, v0, :cond_1

    goto/16 :goto_4

    .line 315
    :cond_1
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->i:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->aa:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->n:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->p:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->r:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->u:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->s:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->t:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->ay:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->az:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->l:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->m:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->j:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->aO:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->aP:I

    if-eq v1, v0, :cond_5

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->aQ:I

    if-ne v1, v0, :cond_2

    goto :goto_3

    .line 317
    :cond_2
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->aj:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->au:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->av:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->aw:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->ax:I

    if-ne v1, v0, :cond_3

    goto :goto_2

    .line 319
    :cond_3
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->aN:I

    if-ne v1, v0, :cond_7

    .line 320
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "application/x-camera-motion"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    goto :goto_5

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    .line 318
    invoke-static/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;IIIILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dy$c;)V

    goto :goto_5

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v12

    move v9, v14

    .line 316
    invoke-static/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;IIIILjava/lang/String;ZLcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/dy$c;I)V

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v12

    move v8, v14

    .line 314
    invoke-static/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;IIIIILcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/dy$c;I)V

    :cond_7
    :goto_5
    add-int v15, v15, v16

    .line 321
    invoke-virtual {v10, v15}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v12
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;Lcom/google/vr/sdk/widgets/video/deps/dx$b;JLcom/google/vr/sdk/widgets/video/deps/cb;ZZ)Lcom/google/vr/sdk/widgets/video/deps/ei;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/dx;->E:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    move-result-object v1

    .line 2
    sget v2, Lcom/google/vr/sdk/widgets/video/deps/dx;->S:I

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/dy;->c(Lcom/google/vr/sdk/widgets/video/deps/pe;)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v5, v3, :cond_0

    return-object v2

    .line 5
    :cond_0
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->O:I

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v3

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/dy;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/dy$f;

    move-result-object v3

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    .line 7
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/dy$f;->a(Lcom/google/vr/sdk/widgets/video/deps/dy$f;)J

    move-result-wide v8

    move-object/from16 v4, p1

    move-wide v10, v8

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    .line 8
    :goto_0
    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)J

    move-result-wide v8

    cmp-long v4, v10, v6

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const-wide/32 v12, 0xf4240

    move-wide v14, v8

    .line 11
    invoke-static/range {v10 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v6

    :goto_1
    move-wide v10, v6

    .line 12
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/dx;->F:I

    invoke-virtual {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    move-result-object v4

    sget v6, Lcom/google/vr/sdk/widgets/video/deps/dx;->G:I

    .line 13
    invoke-virtual {v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    move-result-object v4

    .line 14
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/dx;->R:I

    invoke-virtual {v1, v6}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/dy;->d(Lcom/google/vr/sdk/widgets/video/deps/pe;)Landroid/util/Pair;

    move-result-object v1

    .line 15
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/dx;->T:I

    invoke-virtual {v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v4

    iget-object v12, v4, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/dy$f;->b(Lcom/google/vr/sdk/widgets/video/deps/dy$f;)I

    move-result v13

    .line 16
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/dy$f;->c(Lcom/google/vr/sdk/widgets/video/deps/dy$f;)I

    move-result v14

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, p4

    move/from16 v17, p6

    .line 17
    invoke-static/range {v12 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;IILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/cb;Z)Lcom/google/vr/sdk/widgets/video/deps/dy$c;

    move-result-object v4

    if-nez p5, :cond_3

    .line 21
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/dx;->P:I

    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->e(I)Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/dx$a;)Landroid/util/Pair;

    move-result-object v0

    .line 22
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 23
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    goto :goto_2

    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v16

    .line 24
    :goto_2
    iget-object v0, v4, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-nez v0, :cond_4

    goto :goto_3

    .line 25
    :cond_4
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/ei;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/dy$f;->b(Lcom/google/vr/sdk/widgets/video/deps/dy$f;)I

    move-result v0

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v13, v4, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->d:I

    iget-object v14, v4, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->a:[Lcom/google/vr/sdk/widgets/video/deps/ej;

    iget v15, v4, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->c:I

    move-object v3, v2

    move v4, v0

    invoke-direct/range {v3 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/ei;-><init>(IIJJJLcom/google/vr/sdk/widgets/video/deps/l;I[Lcom/google/vr/sdk/widgets/video/deps/ej;I[J[J)V

    :goto_3
    return-object v2
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;IILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ej;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    .line 621
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 622
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 623
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v3

    .line 624
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/dx;->Y:I

    if-ne v3, v4, :cond_3

    .line 625
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result p1

    .line 626
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/dx;->a(I)I

    move-result p1

    const/4 p2, 0x1

    .line 627
    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 631
    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 632
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 635
    :goto_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 636
    :goto_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    .line 638
    invoke-virtual {p0, v7, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    .line 641
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result p1

    .line 642
    new-array v2, p1, [B

    .line 643
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    :cond_2
    move-object v10, v2

    .line 644
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/ej;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/ej;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/dx$a;Lcom/google/vr/sdk/widgets/video/deps/cv;)Lcom/google/vr/sdk/widgets/video/deps/el;
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 27
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->aq:I

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 29
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/dy$d;

    invoke-direct {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/dy$d;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dx$b;)V

    goto :goto_0

    .line 30
    :cond_0
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->ar:I

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 33
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/dy$e;

    invoke-direct {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/dy$e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dx$b;)V

    .line 34
    :goto_0
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/dy$b;->a()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 36
    new-instance v9, Lcom/google/vr/sdk/widgets/video/deps/el;

    new-array v2, v5, [J

    new-array v3, v5, [I

    const/4 v4, 0x0

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/el;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ei;[J[II[J[IJ)V

    return-object v9

    .line 38
    :cond_1
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/dx;->as:I

    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    .line 41
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/dx;->at:I

    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 42
    :goto_1
    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 43
    sget v9, Lcom/google/vr/sdk/widgets/video/deps/dx;->ap:I

    invoke-virtual {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v9

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 44
    sget v10, Lcom/google/vr/sdk/widgets/video/deps/dx;->am:I

    invoke-virtual {v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v10

    iget-object v10, v10, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 45
    sget v11, Lcom/google/vr/sdk/widgets/video/deps/dx;->an:I

    invoke-virtual {v0, v11}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    .line 46
    iget-object v11, v11, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    goto :goto_2

    :cond_3
    move-object v11, v12

    .line 47
    :goto_2
    sget v13, Lcom/google/vr/sdk/widgets/video/deps/dx;->ao:I

    invoke-virtual {v0, v13}, Lcom/google/vr/sdk/widgets/video/deps/dx$a;->d(I)Lcom/google/vr/sdk/widgets/video/deps/dx$b;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 48
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    goto :goto_3

    :cond_4
    move-object v0, v12

    .line 49
    :goto_3
    new-instance v13, Lcom/google/vr/sdk/widgets/video/deps/dy$a;

    invoke-direct {v13, v9, v6, v8}, Lcom/google/vr/sdk/widgets/video/deps/dy$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/pe;Lcom/google/vr/sdk/widgets/video/deps/pe;Z)V

    const/16 v6, 0xc

    .line 50
    invoke-virtual {v10, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 51
    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v8

    sub-int/2addr v8, v7

    .line 52
    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v9

    .line 53
    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v14

    if-eqz v0, :cond_5

    .line 58
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 59
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v15

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    const/16 v16, -0x1

    if-eqz v11, :cond_6

    .line 63
    invoke-virtual {v11, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 64
    invoke-virtual {v11}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v6

    if-lez v6, :cond_7

    .line 66
    invoke-virtual {v11}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    move-object v12, v11

    goto :goto_5

    :cond_6
    move-object v12, v11

    const/4 v6, 0x0

    .line 69
    :cond_7
    :goto_5
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/dy$b;->c()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->f:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v11, v11, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    const-string v5, "audio/raw"

    .line 70
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v8, :cond_8

    if-nez v15, :cond_8

    if-nez v6, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    const-string v11, "AtomParsers"

    const-wide/16 v17, 0x0

    if-nez v5, :cond_17

    .line 74
    new-array v5, v3, [J

    .line 75
    new-array v7, v3, [I

    move/from16 p1, v6

    .line 76
    new-array v6, v3, [J

    move/from16 v20, v8

    .line 77
    new-array v8, v3, [I

    move-object/from16 v23, v10

    move v2, v14

    move-wide/from16 v24, v17

    move-wide/from16 v26, v24

    move/from16 v14, v20

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v39, v9

    move/from16 v9, p1

    move-object/from16 p1, v11

    move/from16 v11, v16

    move/from16 v16, v15

    move/from16 v15, v39

    :goto_7
    if-ge v1, v3, :cond_10

    :goto_8
    if-nez v22, :cond_9

    .line 82
    invoke-virtual {v13}, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->a()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    move/from16 v28, v14

    move/from16 v29, v15

    .line 83
    iget-wide v14, v13, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->d:J

    move-wide/from16 v26, v14

    .line 84
    iget v14, v13, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->c:I

    move/from16 v22, v14

    move/from16 v14, v28

    move/from16 v15, v29

    goto :goto_8

    :cond_9
    move/from16 v28, v14

    move/from16 v29, v15

    if-eqz v0, :cond_b

    :goto_9
    if-nez v20, :cond_a

    if-lez v16, :cond_a

    .line 87
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v20

    .line 88
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v21

    add-int/lit8 v16, v16, -0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v20, v20, -0x1

    :cond_b
    move/from16 v14, v21

    .line 91
    aput-wide v26, v5, v1

    .line 92
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/dy$b;->b()I

    move-result v15

    aput v15, v7, v1

    .line 93
    aget v15, v7, v1

    if-le v15, v10, :cond_c

    .line 94
    aget v10, v7, v1

    :cond_c
    move-object v15, v4

    move-object/from16 v21, v5

    int-to-long v4, v14

    add-long v4, v24, v4

    .line 95
    aput-wide v4, v6, v1

    if-nez v12, :cond_d

    const/4 v4, 0x1

    goto :goto_a

    :cond_d
    const/4 v4, 0x0

    .line 96
    :goto_a
    aput v4, v8, v1

    if-ne v1, v11, :cond_e

    const/4 v4, 0x1

    .line 98
    aput v4, v8, v1

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_e

    .line 101
    invoke-virtual {v12}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v5

    sub-int/2addr v5, v4

    move v11, v5

    :cond_e
    int-to-long v4, v2

    add-long v24, v24, v4

    add-int/lit8 v4, v29, -0x1

    if-nez v4, :cond_f

    if-lez v28, :cond_f

    .line 105
    invoke-virtual/range {v23 .. v23}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v2

    .line 106
    invoke-virtual/range {v23 .. v23}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v4

    add-int/lit8 v5, v28, -0x1

    move/from16 v28, v5

    move/from16 v39, v4

    move v4, v2

    move/from16 v2, v39

    .line 108
    :cond_f
    aget v5, v7, v1

    move/from16 v29, v4

    int-to-long v4, v5

    add-long v26, v26, v4

    add-int/lit8 v22, v22, -0x1

    add-int/lit8 v1, v1, 0x1

    move-object v4, v15

    move-object/from16 v5, v21

    move/from16 v15, v29

    move/from16 v21, v14

    move/from16 v14, v28

    goto/16 :goto_7

    :cond_10
    move/from16 v28, v14

    move/from16 v29, v15

    move/from16 v14, v21

    move-object/from16 v21, v5

    int-to-long v1, v14

    add-long v24, v24, v1

    if-nez v20, :cond_11

    const/4 v1, 0x1

    goto :goto_b

    :cond_11
    const/4 v1, 0x0

    .line 112
    :goto_b
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    :goto_c
    if-lez v16, :cond_13

    .line 114
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_d

    :cond_12
    const/4 v1, 0x0

    :goto_d
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 115
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_c

    :cond_13
    if-nez v9, :cond_15

    if-nez v29, :cond_15

    move/from16 v0, v22

    if-nez v0, :cond_16

    if-eqz v28, :cond_14

    goto :goto_e

    :cond_14
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto :goto_f

    :cond_15
    move/from16 v0, v22

    :cond_16
    :goto_e
    move-object/from16 v1, p0

    .line 118
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->a:I

    const/16 v4, 0xd7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Inconsistent stbl box for track "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v29

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    move-object v14, v6

    move-object v5, v7

    move-object v15, v8

    move v6, v10

    move-object/from16 v4, v21

    goto :goto_11

    :cond_17
    move-object v2, v11

    .line 120
    iget v0, v13, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->a:I

    new-array v0, v0, [J

    .line 121
    iget v4, v13, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->a:I

    new-array v4, v4, [I

    .line 122
    :goto_10
    invoke-virtual {v13}, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->a()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 123
    iget v5, v13, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->b:I

    iget-wide v6, v13, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->d:J

    aput-wide v6, v0, v5

    .line 124
    iget v5, v13, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->b:I

    iget v6, v13, Lcom/google/vr/sdk/widgets/video/deps/dy$a;->c:I

    aput v6, v4, v5

    goto :goto_10

    .line 125
    :cond_18
    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->f:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v5, v5, Lcom/google/vr/sdk/widgets/video/deps/l;->v:I

    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->f:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v6, v6, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    .line 126
    invoke-static {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b(II)I

    move-result v5

    int-to-long v6, v14

    .line 127
    invoke-static {v5, v0, v4, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/ea;->a(I[J[IJ)Lcom/google/vr/sdk/widgets/video/deps/ea$a;

    move-result-object v0

    .line 128
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ea$a;->a:[J

    .line 129
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ea$a;->b:[I

    .line 130
    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/ea$a;->c:I

    .line 131
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/ea$a;->d:[J

    .line 132
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/ea$a;->e:[I

    .line 133
    iget-wide v9, v0, Lcom/google/vr/sdk/widgets/video/deps/ea$a;->f:J

    move-object v14, v7

    move-object v15, v8

    move-wide/from16 v24, v9

    :goto_11
    const-wide/32 v9, 0xf4240

    .line 134
    iget-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    move-wide/from16 v7, v24

    invoke-static/range {v7 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v20

    .line 135
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->h:[J

    const-wide/32 v12, 0xf4240

    if-eqz v0, :cond_30

    invoke-virtual/range {p2 .. p2}, Lcom/google/vr/sdk/widgets/video/deps/cv;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_20

    .line 138
    :cond_19
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->h:[J

    array-length v0, v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1b

    iget v0, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->b:I

    if-ne v0, v7, :cond_1b

    array-length v0, v14

    const/4 v7, 0x2

    if-lt v0, v7, :cond_1b

    .line 139
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->i:[J

    const/4 v7, 0x0

    aget-wide v22, v0, v7

    .line 140
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->h:[J

    aget-wide v26, v0, v7

    iget-wide v7, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    iget-wide v9, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->d:J

    move-wide/from16 v28, v7

    move-wide/from16 v30, v9

    invoke-static/range {v26 .. v31}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v7

    add-long v26, v22, v7

    move-object v7, v14

    move-wide/from16 v8, v24

    move-wide/from16 v10, v22

    move-object/from16 p1, v2

    move v0, v3

    move-wide v2, v12

    move-wide/from16 v12, v26

    .line 141
    invoke-static/range {v7 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a([JJJJ)Z

    move-result v7

    if-eqz v7, :cond_1c

    sub-long v8, v24, v26

    const/4 v7, 0x0

    .line 143
    aget-wide v10, v14, v7

    sub-long v26, v22, v10

    iget-object v7, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->f:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v7, v7, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    int-to-long v10, v7

    iget-wide v12, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    invoke-static/range {v26 .. v31}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v12

    .line 144
    iget-object v7, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->f:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v7, v7, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    int-to-long v10, v7

    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    move/from16 v16, v6

    move-wide v6, v12

    move-wide v12, v2

    invoke-static/range {v8 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v2

    cmp-long v8, v6, v17

    if-nez v8, :cond_1a

    cmp-long v8, v2, v17

    if-eqz v8, :cond_1d

    :cond_1a
    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v6, v8

    if-gtz v10, :cond_1d

    cmp-long v10, v2, v8

    if-gtz v10, :cond_1d

    long-to-int v0, v6

    move-object/from16 v6, p2

    .line 146
    iput v0, v6, Lcom/google/vr/sdk/widgets/video/deps/cv;->b:I

    long-to-int v0, v2

    .line 147
    iput v0, v6, Lcom/google/vr/sdk/widgets/video/deps/cv;->c:I

    .line 148
    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    const-wide/32 v6, 0xf4240

    invoke-static {v14, v6, v7, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([JJJ)V

    .line 149
    new-instance v9, Lcom/google/vr/sdk/widgets/video/deps/el;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, v16

    move-object v5, v14

    move-object v6, v15

    move-wide/from16 v7, v20

    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/el;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ei;[J[II[J[IJ)V

    return-object v9

    :cond_1b
    move-object/from16 p1, v2

    move v0, v3

    :cond_1c
    move/from16 v16, v6

    .line 150
    :cond_1d
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->h:[J

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->h:[J

    const/4 v3, 0x0

    aget-wide v6, v2, v3

    cmp-long v2, v6, v17

    if-nez v2, :cond_1f

    .line 151
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->i:[J

    aget-wide v6, v0, v3

    const/4 v0, 0x0

    .line 152
    :goto_12
    array-length v2, v14

    if-ge v0, v2, :cond_1e

    .line 153
    aget-wide v2, v14, v0

    sub-long v8, v2, v6

    const-wide/32 v10, 0xf4240

    iget-wide v12, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    .line 154
    invoke-static/range {v8 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v2

    aput-wide v2, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1e
    sub-long v8, v24, v6

    const-wide/32 v10, 0xf4240

    .line 156
    iget-wide v12, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    .line 157
    invoke-static/range {v8 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v7

    .line 158
    new-instance v9, Lcom/google/vr/sdk/widgets/video/deps/el;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, v16

    move-object v5, v14

    move-object v6, v15

    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/el;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ei;[J[II[J[IJ)V

    return-object v9

    .line 159
    :cond_1f
    iget v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    const/4 v2, 0x1

    goto :goto_13

    :cond_20
    const/4 v2, 0x0

    :goto_13
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 163
    :goto_14
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->h:[J

    array-length v9, v9

    const-wide/16 v10, -0x1

    if-ge v7, v9, :cond_23

    .line 164
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->i:[J

    aget-wide v12, v9, v7

    cmp-long v9, v12, v10

    if-eqz v9, :cond_22

    .line 166
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->h:[J

    aget-wide v20, v9, v7

    iget-wide v9, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    iget-wide v4, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->d:J

    move-wide/from16 v22, v9

    move-wide/from16 v24, v4

    .line 167
    invoke-static/range {v20 .. v25}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v4

    const/4 v9, 0x1

    .line 168
    invoke-static {v14, v12, v13, v9, v9}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b([JJZZ)I

    move-result v10

    add-long/2addr v12, v4

    const/4 v4, 0x0

    .line 170
    invoke-static {v14, v12, v13, v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b([JJZZ)I

    move-result v5

    sub-int v4, v5, v10

    add-int/2addr v6, v4

    if-eq v8, v10, :cond_21

    const/4 v4, 0x1

    goto :goto_15

    :cond_21
    const/4 v4, 0x0

    :goto_15
    or-int/2addr v3, v4

    move v8, v5

    goto :goto_16

    :cond_22
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    :goto_16
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    goto :goto_14

    :cond_23
    move-object/from16 v26, v4

    move-object/from16 v27, v5

    if-eq v6, v0, :cond_24

    const/4 v4, 0x1

    goto :goto_17

    :cond_24
    const/4 v4, 0x0

    :goto_17
    or-int v0, v3, v4

    if-eqz v0, :cond_25

    .line 176
    new-array v3, v6, [J

    goto :goto_18

    :cond_25
    move-object/from16 v3, v26

    :goto_18
    if-eqz v0, :cond_26

    .line 177
    new-array v4, v6, [I

    goto :goto_19

    :cond_26
    move-object/from16 v4, v27

    :goto_19
    if-eqz v0, :cond_27

    const/16 v16, 0x0

    :cond_27
    if-eqz v0, :cond_28

    .line 179
    new-array v5, v6, [I

    move-object v7, v5

    goto :goto_1a

    :cond_28
    move-object v7, v15

    .line 180
    :goto_1a
    new-array v5, v6, [J

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 183
    :goto_1b
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->h:[J

    array-length v9, v9

    if-ge v6, v9, :cond_2f

    .line 184
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->i:[J

    aget-wide v12, v9, v6

    .line 185
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->h:[J

    aget-wide v28, v9, v6

    cmp-long v9, v12, v10

    if-eqz v9, :cond_2e

    .line 187
    iget-wide v10, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    move-object v9, v5

    move/from16 p2, v6

    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->d:J

    move-wide/from16 v20, v28

    move-wide/from16 v22, v10

    move-wide/from16 v24, v5

    .line 188
    invoke-static/range {v20 .. v25}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v5

    add-long/2addr v5, v12

    const/4 v10, 0x1

    .line 189
    invoke-static {v14, v12, v13, v10, v10}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b([JJZZ)I

    move-result v11

    const/4 v10, 0x0

    .line 190
    invoke-static {v14, v5, v6, v2, v10}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b([JJZZ)I

    move-result v5

    if-eqz v0, :cond_29

    sub-int v6, v5, v11

    move-object/from16 v10, v26

    .line 193
    invoke-static {v10, v11, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v26, v2

    move-object/from16 v2, v27

    .line 194
    invoke-static {v2, v11, v4, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    invoke-static {v15, v11, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1c

    :cond_29
    move-object/from16 v10, v26

    move/from16 v26, v2

    move-object/from16 v2, v27

    :goto_1c
    if-ge v11, v5, :cond_2b

    .line 196
    aget v6, v7, v8

    const/16 v19, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2a

    move-object/from16 v6, p1

    goto :goto_1d

    :cond_2a
    const-string v0, "Ignoring edit list: edit does not start with a sync sample."

    move-object/from16 v6, p1

    .line 197
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dy$g;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/dy$g;-><init>()V

    throw v0

    :cond_2b
    move-object/from16 v6, p1

    const/16 v19, 0x1

    :goto_1d
    move-object/from16 p1, v6

    move/from16 v6, v16

    :goto_1e
    if-ge v11, v5, :cond_2d

    const-wide/32 v22, 0xf4240

    move-object/from16 v32, v2

    move-object/from16 v27, v3

    .line 200
    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->d:J

    move-wide/from16 v20, v17

    move-wide/from16 v24, v2

    invoke-static/range {v20 .. v25}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v2

    .line 201
    aget-wide v20, v14, v11

    sub-long v33, v20, v12

    const-wide/32 v35, 0xf4240

    move-wide/from16 v20, v12

    iget-wide v12, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    move-wide/from16 v37, v12

    .line 202
    invoke-static/range {v33 .. v38}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v12

    add-long/2addr v2, v12

    .line 203
    aput-wide v2, v9, v8

    if-eqz v0, :cond_2c

    .line 204
    aget v2, v4, v8

    if-le v2, v6, :cond_2c

    .line 205
    aget v6, v32, v11

    :cond_2c
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v12, v20

    move-object/from16 v3, v27

    move-object/from16 v2, v32

    goto :goto_1e

    :cond_2d
    move-object/from16 v32, v2

    move-object/from16 v27, v3

    move/from16 v16, v6

    goto :goto_1f

    :cond_2e
    move-object v9, v5

    move/from16 p2, v6

    move-object/from16 v10, v26

    move-object/from16 v32, v27

    const/16 v19, 0x1

    move/from16 v26, v2

    move-object/from16 v27, v3

    :goto_1f
    add-long v17, v17, v28

    add-int/lit8 v6, p2, 0x1

    move-object v5, v9

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v27, v32

    move-object/from16 v26, v10

    const-wide/16 v10, -0x1

    goto/16 :goto_1b

    :cond_2f
    move-object/from16 v27, v3

    move-object v9, v5

    const-wide/32 v22, 0xf4240

    .line 210
    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    move-wide/from16 v20, v17

    move-wide/from16 v24, v2

    invoke-static/range {v20 .. v25}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(JJJ)J

    move-result-wide v10

    .line 211
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/el;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move-object v3, v4

    move/from16 v4, v16

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/el;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ei;[J[II[J[IJ)V

    return-object v12

    :cond_30
    :goto_20
    move-object v10, v4

    move-object/from16 v32, v5

    move/from16 v16, v6

    .line 136
    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/ei;->c:J

    const-wide/32 v4, 0xf4240

    invoke-static {v14, v4, v5, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([JJJ)V

    .line 137
    new-instance v9, Lcom/google/vr/sdk/widgets/video/deps/el;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v5, v32

    move-object v2, v10

    move-object v3, v5

    move/from16 v4, v16

    move-object v5, v14

    move-object v6, v15

    move-wide/from16 v7, v20

    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/el;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ei;[J[II[J[IJ)V

    return-object v9

    .line 32
    :cond_31
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/dx$b;Z)Lcom/google/vr/sdk/widgets/video/deps/gp;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/dx$b;->aS:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 p1, 0x8

    .line 215
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 216
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v1

    if-lt v1, p1, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v1

    .line 218
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v2

    .line 219
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v3

    .line 220
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/dx;->aB:I

    if-ne v3, v4, :cond_1

    .line 221
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    add-int/2addr v1, v2

    .line 222
    invoke-static {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, -0x8

    .line 223
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Lcom/google/vr/sdk/widgets/video/deps/gp;
    .locals 4

    const/16 v0, 0xc

    .line 226
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    .line 229
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 230
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v2

    .line 231
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->aC:I

    if-ne v2, v3, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    add-int/2addr v0, v1

    .line 233
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/dy;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, -0x8

    .line 234
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;IIIIILcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/dy$c;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    .line 348
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    const/16 v5, 0x10

    .line 349
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v11

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v12

    const/16 v5, 0x32

    .line 354
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v5

    .line 356
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/dx;->Z:I

    const/4 v7, 0x0

    move/from16 v8, p1

    if-ne v8, v6, :cond_2

    .line 357
    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dy;->c(Lcom/google/vr/sdk/widgets/video/deps/pe;II)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 359
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_0

    move-object v3, v7

    goto :goto_0

    .line 361
    :cond_0
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/vr/sdk/widgets/video/deps/ej;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/ej;->b:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/vr/sdk/widgets/video/deps/cb;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/cb;

    move-result-object v3

    .line 362
    :goto_0
    iget-object v9, v4, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->a:[Lcom/google/vr/sdk/widgets/video/deps/ej;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/ej;

    aput-object v6, v9, p8

    .line 363
    :cond_1
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    :cond_2
    move-object/from16 v20, v3

    const/4 v3, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v14, v7

    move-object/from16 v17, v14

    const/4 v3, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v18, -0x1

    :goto_1
    sub-int v9, v5, v1

    if-ge v9, v2, :cond_18

    .line 369
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v9

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v10

    if-nez v10, :cond_3

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v13

    sub-int/2addr v13, v1

    if-ne v13, v2, :cond_3

    goto/16 :goto_a

    :cond_3
    if-lez v10, :cond_4

    const/4 v15, 0x1

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    const-string v6, "childAtomSize should be positive"

    .line 374
    invoke-static {v15, v6}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(ZLjava/lang/Object;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v6

    .line 376
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/dx;->H:I

    const/4 v13, 0x3

    if-ne v6, v15, :cond_7

    if-nez v7, :cond_5

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 377
    :goto_3
    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    add-int/lit8 v9, v9, 0x8

    .line 379
    invoke-virtual {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 380
    invoke-static/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pv;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/pv;

    move-result-object v6

    .line 381
    iget-object v14, v6, Lcom/google/vr/sdk/widgets/video/deps/pv;->a:Ljava/util/List;

    .line 382
    iget v7, v6, Lcom/google/vr/sdk/widgets/video/deps/pv;->b:I

    iput v7, v4, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->c:I

    if-nez v3, :cond_6

    .line 384
    iget v6, v6, Lcom/google/vr/sdk/widgets/video/deps/pv;->e:F

    move/from16 v16, v6

    :cond_6
    const-string v7, "video/avc"

    goto/16 :goto_9

    .line 385
    :cond_7
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/dx;->I:I

    if-ne v6, v15, :cond_9

    if-nez v7, :cond_8

    const/4 v13, 0x1

    goto :goto_4

    :cond_8
    const/4 v13, 0x0

    .line 386
    :goto_4
    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    add-int/lit8 v9, v9, 0x8

    .line 388
    invoke-virtual {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 389
    invoke-static/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/py;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/py;

    move-result-object v6

    .line 390
    iget-object v14, v6, Lcom/google/vr/sdk/widgets/video/deps/py;->a:Ljava/util/List;

    .line 391
    iget v6, v6, Lcom/google/vr/sdk/widgets/video/deps/py;->b:I

    iput v6, v4, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->c:I

    const-string v7, "video/hevc"

    goto/16 :goto_9

    .line 392
    :cond_9
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/dx;->aM:I

    if-ne v6, v15, :cond_c

    if-nez v7, :cond_a

    const/4 v13, 0x1

    goto :goto_5

    :cond_a
    const/4 v13, 0x0

    .line 393
    :goto_5
    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 394
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/dx;->aK:I

    if-ne v8, v6, :cond_b

    const-string v6, "video/x-vnd.on2.vp8"

    goto :goto_6

    :cond_b
    const-string v6, "video/x-vnd.on2.vp9"

    :goto_6
    move-object v7, v6

    goto/16 :goto_9

    .line 395
    :cond_c
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/dx;->g:I

    if-ne v6, v15, :cond_e

    if-nez v7, :cond_d

    const/4 v13, 0x1

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    .line 396
    :goto_7
    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    const-string v7, "video/3gpp"

    goto :goto_9

    .line 398
    :cond_e
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/dx;->J:I

    if-ne v6, v15, :cond_10

    if-nez v7, :cond_f

    const/4 v13, 0x1

    goto :goto_8

    :cond_f
    const/4 v13, 0x0

    .line 399
    :goto_8
    invoke-static {v13}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 401
    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/dy;->d(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Landroid/util/Pair;

    move-result-object v6

    .line 402
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 403
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [B

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_9

    .line 404
    :cond_10
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/dx;->ai:I

    if-ne v6, v15, :cond_11

    .line 405
    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/dy;->c(Lcom/google/vr/sdk/widgets/video/deps/pe;I)F

    move-result v16

    const/4 v3, 0x1

    goto :goto_9

    .line 407
    :cond_11
    sget v15, Lcom/google/vr/sdk/widgets/video/deps/dx;->aI:I

    if-ne v6, v15, :cond_12

    .line 408
    invoke-static {v0, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/dy;->d(Lcom/google/vr/sdk/widgets/video/deps/pe;II)[B

    move-result-object v17

    goto :goto_9

    .line 409
    :cond_12
    sget v9, Lcom/google/vr/sdk/widgets/video/deps/dx;->aH:I

    if-ne v6, v9, :cond_17

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v6

    .line 411
    invoke-virtual {v0, v13}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    if-nez v6, :cond_17

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v6

    if-eqz v6, :cond_16

    const/4 v9, 0x1

    if-eq v6, v9, :cond_15

    const/4 v15, 0x2

    if-eq v6, v15, :cond_14

    if-eq v6, v13, :cond_13

    goto :goto_9

    :cond_13
    const/16 v18, 0x3

    goto :goto_9

    :cond_14
    const/16 v18, 0x2

    goto :goto_9

    :cond_15
    const/16 v18, 0x1

    goto :goto_9

    :cond_16
    const/16 v18, 0x0

    :cond_17
    :goto_9
    add-int/2addr v5, v10

    goto/16 :goto_1

    :cond_18
    :goto_a
    if-nez v7, :cond_19

    return-void

    .line 427
    :cond_19
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v19, 0x0

    move/from16 v15, p5

    invoke-static/range {v6 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/vr/sdk/widgets/video/deps/pw;Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    iput-object v0, v4, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;IIIILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/dy$c;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    .line 324
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 327
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->aj:I

    const-string v4, "application/ttml+xml"

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    if-ne v1, v3, :cond_0

    :goto_0
    move-object v9, v4

    move-object/from16 v18, v5

    move-wide/from16 v16, v6

    goto :goto_1

    .line 329
    :cond_0
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->au:I

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, p3, -0x8

    add-int/lit8 v1, v1, -0x8

    .line 332
    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 333
    invoke-virtual {v0, v3, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 334
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v4, "application/x-quicktime-tx3g"

    goto :goto_0

    .line 335
    :cond_1
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->av:I

    if-ne v1, v0, :cond_2

    const-string v4, "application/x-mp4-vtt"

    goto :goto_0

    .line 337
    :cond_2
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->aw:I

    if-ne v1, v0, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_0

    .line 340
    :cond_3
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dx;->ax:I

    if-ne v1, v0, :cond_4

    const/4 v0, 0x1

    .line 342
    iput v0, v2, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->d:I

    const-string v4, "application/x-mp4-cea-608"

    goto :goto_0

    .line 345
    :goto_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v13, p5

    .line 346
    invoke-static/range {v8 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/cb;JLjava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    iput-object v0, v2, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    return-void

    .line 343
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/pe;IIIILjava/lang/String;ZLcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/dy$c;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v14, p5

    move-object/from16 v3, p7

    move-object/from16 v15, p8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    .line 452
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    const/4 v4, 0x6

    const/4 v13, 0x0

    if-eqz p6, :cond_0

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v5

    .line 456
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    const/4 v5, 0x0

    :goto_0
    const/4 v12, 0x2

    const/16 v6, 0x10

    const/4 v11, 0x1

    if-eqz v5, :cond_3

    if-ne v5, v11, :cond_1

    goto :goto_1

    :cond_1
    if-ne v5, v12, :cond_2

    .line 465
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->z()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v4

    const/16 v6, 0x14

    .line 468
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    goto :goto_2

    :cond_2
    return-void

    .line 459
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v7

    .line 460
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->t()I

    move-result v4

    if-ne v5, v11, :cond_4

    .line 463
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    :cond_4
    move v5, v4

    move v4, v7

    .line 470
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v6

    .line 471
    sget v7, Lcom/google/vr/sdk/widgets/video/deps/dx;->aa:I

    const/16 v16, 0x0

    move/from16 v8, p1

    if-ne v8, v7, :cond_7

    .line 472
    invoke-static {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dy;->c(Lcom/google/vr/sdk/widgets/video/deps/pe;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 474
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v3, :cond_5

    move-object/from16 v3, v16

    goto :goto_3

    .line 476
    :cond_5
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/vr/sdk/widgets/video/deps/ej;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/ej;->b:Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/vr/sdk/widgets/video/deps/cb;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/cb;

    move-result-object v3

    .line 477
    :goto_3
    iget-object v9, v15, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->a:[Lcom/google/vr/sdk/widgets/video/deps/ej;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/vr/sdk/widgets/video/deps/ej;

    aput-object v7, v9, p9

    .line 478
    :cond_6
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    :cond_7
    move-object v10, v3

    .line 480
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->n:I

    const-string v9, "audio/raw"

    if-ne v8, v3, :cond_8

    const-string v3, "audio/ac3"

    goto/16 :goto_6

    .line 482
    :cond_8
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->p:I

    if-ne v8, v3, :cond_9

    const-string v3, "audio/eac3"

    goto :goto_6

    .line 484
    :cond_9
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->r:I

    if-ne v8, v3, :cond_a

    const-string v3, "audio/vnd.dts"

    goto :goto_6

    .line 486
    :cond_a
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->s:I

    if-eq v8, v3, :cond_15

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->t:I

    if-ne v8, v3, :cond_b

    goto :goto_5

    .line 488
    :cond_b
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->u:I

    if-ne v8, v3, :cond_c

    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_6

    .line 490
    :cond_c
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->ay:I

    if-ne v8, v3, :cond_d

    const-string v3, "audio/3gpp"

    goto :goto_6

    .line 492
    :cond_d
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->az:I

    if-ne v8, v3, :cond_e

    const-string v3, "audio/amr-wb"

    goto :goto_6

    .line 494
    :cond_e
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->l:I

    if-eq v8, v3, :cond_14

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->m:I

    if-ne v8, v3, :cond_f

    goto :goto_4

    .line 496
    :cond_f
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->j:I

    if-ne v8, v3, :cond_10

    const-string v3, "audio/mpeg"

    goto :goto_6

    .line 498
    :cond_10
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->aO:I

    if-ne v8, v3, :cond_11

    const-string v3, "audio/alac"

    goto :goto_6

    .line 500
    :cond_11
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->aP:I

    if-ne v8, v3, :cond_12

    const-string v3, "audio/g711-alaw"

    goto :goto_6

    .line 502
    :cond_12
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->aQ:I

    if-ne v8, v3, :cond_13

    const-string v3, "audio/g711-mlaw"

    goto :goto_6

    :cond_13
    move-object/from16 v3, v16

    goto :goto_6

    :cond_14
    :goto_4
    move-object v3, v9

    goto :goto_6

    :cond_15
    :goto_5
    const-string v3, "audio/vnd.dts.hd"

    :goto_6
    move-object v8, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move v7, v6

    move-object/from16 v19, v16

    :goto_7
    sub-int v3, v7, v1

    const/4 v4, -0x1

    if-ge v3, v2, :cond_20

    .line 506
    invoke-virtual {v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v6

    if-lez v6, :cond_16

    const/4 v3, 0x1

    goto :goto_8

    :cond_16
    const/4 v3, 0x0

    :goto_8
    const-string v5, "childAtomSize should be positive"

    .line 508
    invoke-static {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(ZLjava/lang/Object;)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v3

    .line 510
    sget v5, Lcom/google/vr/sdk/widgets/video/deps/dx;->J:I

    if-eq v3, v5, :cond_1d

    if-eqz p6, :cond_17

    sget v5, Lcom/google/vr/sdk/widgets/video/deps/dx;->k:I

    if-ne v3, v5, :cond_17

    goto/16 :goto_c

    .line 523
    :cond_17
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/dx;->o:I

    if-ne v3, v4, :cond_18

    add-int/lit8 v3, v7, 0x8

    .line 524
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 525
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lcom/google/vr/sdk/widgets/video/deps/ai;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v3

    iput-object v3, v15, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    :goto_9
    move v5, v6

    move v6, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    goto/16 :goto_b

    .line 526
    :cond_18
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/dx;->q:I

    if-ne v3, v4, :cond_19

    add-int/lit8 v3, v7, 0x8

    .line 527
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 528
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lcom/google/vr/sdk/widgets/video/deps/ai;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v3

    iput-object v3, v15, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    goto :goto_9

    .line 529
    :cond_19
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/dx;->v:I

    if-ne v3, v4, :cond_1a

    .line 530
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v4, v8

    move/from16 v24, v6

    move/from16 v6, v20

    move/from16 v25, v7

    move/from16 v7, v21

    move-object/from16 v26, v8

    move/from16 v8, v17

    move-object/from16 v27, v9

    move/from16 v9, v18

    move-object/from16 v20, v10

    move-object/from16 v10, v22

    const/16 v21, 0x1

    move-object/from16 v11, v20

    const/16 v22, 0x2

    move/from16 v12, v23

    const/4 v1, 0x0

    move-object/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v3

    iput-object v3, v15, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    move/from16 v5, v24

    goto :goto_a

    :cond_1a
    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    .line 531
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/dx;->aO:I

    move/from16 v5, v24

    if-ne v3, v4, :cond_1b

    .line 532
    new-array v3, v5, [B

    move/from16 v6, v25

    .line 533
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 534
    invoke-virtual {v0, v3, v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    move-object/from16 v19, v3

    goto :goto_b

    :cond_1b
    :goto_a
    move/from16 v6, v25

    :cond_1c
    :goto_b
    move-object/from16 v8, v26

    goto :goto_e

    :cond_1d
    :goto_c
    move v5, v6

    move v6, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    .line 511
    sget v7, Lcom/google/vr/sdk/widgets/video/deps/dx;->J:I

    if-ne v3, v7, :cond_1e

    move v7, v6

    goto :goto_d

    .line 512
    :cond_1e
    invoke-static {v0, v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/dy;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;II)I

    move-result v7

    :goto_d
    if-eq v7, v4, :cond_1c

    .line 515
    invoke-static {v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/dy;->d(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Landroid/util/Pair;

    move-result-object v3

    .line 516
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 517
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v3

    check-cast v19, [B

    const-string v3, "audio/mp4a-latm"

    .line 518
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 520
    invoke-static/range {v19 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/or;->a([B)Landroid/util/Pair;

    move-result-object v3

    .line 521
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 522
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :cond_1f
    :goto_e
    add-int v7, v6, v5

    move/from16 v1, p2

    move-object/from16 v10, v20

    move-object/from16 v9, v27

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_20
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/16 v22, 0x2

    .line 537
    iget-object v0, v15, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-nez v0, :cond_23

    move-object/from16 v8, v26

    if-eqz v8, :cond_23

    move-object/from16 v0, v27

    .line 538
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v7, 0x2

    goto :goto_f

    :cond_21
    const/4 v7, -0x1

    .line 539
    :goto_f
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    if-nez v19, :cond_22

    goto :goto_10

    .line 540
    :cond_22
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    :goto_10
    const/4 v10, 0x0

    move-object v1, v8

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v8, v16

    move-object/from16 v9, v20

    move-object/from16 v11, p5

    .line 541
    invoke-static/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    iput-object v0, v15, Lcom/google/vr/sdk/widgets/video/deps/dy$c;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    :cond_23
    return-void
.end method

.method private static a([JJJJ)Z
    .locals 7

    .line 664
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 665
    invoke-static {v2, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(III)I

    move-result v4

    .line 666
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 667
    invoke-static {v5, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(III)I

    move-result v0

    .line 668
    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_0

    aget-wide v4, p0, v4

    cmp-long v2, p3, v4

    if-gez v2, :cond_0

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_0

    cmp-long p0, p5, p1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/pe;II)I
    .locals 4

    .line 543
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 545
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 546
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 547
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(ZLjava/lang/Object;)V

    .line 548
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v2

    .line 549
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->J:I

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/dy$f;
    .locals 11

    const/16 v0, 0x8

    .line 250
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 251
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 252
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/dx;->a(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    .line 253
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 254
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v3

    const/4 v4, 0x4

    .line 255
    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 257
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v5

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    .line 260
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_2
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_4

    .line 265
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    .line 267
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->x()J

    move-result-wide v0

    :goto_3
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move-wide v7, v0

    .line 270
    :goto_4
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 271
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v0

    .line 272
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 273
    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 274
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v2

    .line 275
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result p0

    const/high16 v4, 0x10000

    const/high16 v5, -0x10000

    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-nez p0, :cond_7

    const/16 v6, 0x5a

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    if-ne v1, v5, :cond_8

    if-ne v2, v4, :cond_8

    if-nez p0, :cond_8

    const/16 v6, 0x10e

    goto :goto_5

    :cond_8
    if-ne v0, v5, :cond_9

    if-nez v1, :cond_9

    if-nez v2, :cond_9

    if-ne p0, v5, :cond_9

    const/16 v6, 0xb4

    .line 284
    :cond_9
    :goto_5
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/dy$f;

    invoke-direct {p0, v3, v7, v8, v6}, Lcom/google/vr/sdk/widgets/video/deps/dy$f;-><init>(IJI)V

    return-object p0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Lcom/google/vr/sdk/widgets/video/deps/gp;
    .locals 2

    const/16 v0, 0x8

    .line 237
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 240
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/ed;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/gp$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/gp;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gp;-><init>(Ljava/util/List;)V

    :goto_1
    return-object p0
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/pe;I)F
    .locals 0

    add-int/lit8 p1, p1, 0x8

    .line 448
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 449
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result p1

    .line 450
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/pe;)I
    .locals 1

    const/16 v0, 0x10

    .line 285
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 286
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result p0

    .line 287
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->b:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 289
    :cond_0
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->a:I

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 291
    :cond_1
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->c:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->d:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->e:I

    if-eq p0, v0, :cond_4

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->f:I

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 293
    :cond_2
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/dy;->g:I

    if-ne p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/pe;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/pe;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/vr/sdk/widgets/video/deps/ej;",
            ">;"
        }
    .end annotation

    .line 579
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 581
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 582
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 583
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(ZLjava/lang/Object;)V

    .line 584
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v2

    .line 585
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->V:I

    if-ne v2, v3, :cond_1

    .line 586
    invoke-static {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/pe;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/pe;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 296
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 297
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 298
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/dx;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 299
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 300
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v2

    if-nez v1, :cond_1

    const/4 v0, 0x4

    .line 301
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 302
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result p0

    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    const/4 v4, 0x3

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/pe;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 554
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    const/4 p1, 0x1

    .line 555
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 556
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/dy;->e(Lcom/google/vr/sdk/widgets/video/deps/pe;)I

    const/4 v0, 0x2

    .line 557
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 558
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 560
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 562
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 564
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 565
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 566
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/dy;->e(Lcom/google/vr/sdk/widgets/video/deps/pe;)I

    .line 567
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    .line 568
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/pb;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 569
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    .line 570
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    .line 571
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    .line 573
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 574
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 575
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/dy;->e(Lcom/google/vr/sdk/widgets/video/deps/pe;)I

    move-result p1

    .line 576
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 577
    invoke-virtual {p0, v1, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 578
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 572
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/pe;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 650
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 651
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v1

    .line 652
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v2

    .line 653
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/dx;->aJ:I

    if-ne v2, v3, :cond_0

    .line 654
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Lcom/google/vr/sdk/widgets/video/deps/pe;)I
    .locals 3

    .line 658
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
