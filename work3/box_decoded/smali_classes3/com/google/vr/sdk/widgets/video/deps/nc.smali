.class public Lcom/google/vr/sdk/widgets/video/deps/nc;
.super Lcom/google/vr/sdk/widgets/video/deps/ne;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/nc$a;,
        Lcom/google/vr/sdk/widgets/video/deps/nc$b;,
        Lcom/google/vr/sdk/widgets/video/deps/nc$d;,
        Lcom/google/vr/sdk/widgets/video/deps/nc$c;
    }
.end annotation


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcom/google/vr/sdk/widgets/video/deps/nf$a;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/vr/sdk/widgets/video/deps/nc$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 368
    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/nc;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/na$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/na$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/nc;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nf$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nf$a;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ne;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc;->b:Lcom/google/vr/sdk/widgets/video/deps/nf$a;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->a:Lcom/google/vr/sdk/widgets/video/deps/nc$c;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic a(II)I
    .locals 0

    .line 367
    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/nc;->c(II)I

    move-result p0

    return p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/iv;[IILjava/lang/String;IIILjava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/iv;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    :goto_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    move-object/from16 v2, p7

    .line 115
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p0

    .line 116
    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v5

    aget v7, p1, v3

    move-object v6, p3

    move v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;IIIII)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/iv;[ILcom/google/vr/sdk/widgets/video/deps/nc$a;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 221
    :goto_0
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ge v0, v2, :cond_1

    .line 222
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v2

    aget v3, p1, v0

    invoke-static {v2, v3, p2}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;ILcom/google/vr/sdk/widgets/video/deps/nc$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(ZIIII)Landroid/graphics/Point;
    .locals 3

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-le p3, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eq v1, p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_2
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_3

    .line 364
    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 365
    :cond_3
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/iw;[[IILcom/google/vr/sdk/widgets/video/deps/nc$c;Lcom/google/vr/sdk/widgets/video/deps/nf$a;Lcom/google/vr/sdk/widgets/video/deps/nn;)Lcom/google/vr/sdk/widgets/video/deps/nf;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 80
    iget-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->p:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 83
    :goto_0
    iget-boolean v3, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->o:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    and-int v3, p2, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x0

    .line 84
    :goto_2
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    if-ge v14, v3, :cond_3

    .line 85
    invoke-virtual {v0, v14}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v15

    .line 86
    aget-object v4, p1, v14

    iget v7, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->f:I

    iget v8, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->g:I

    iget v9, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->h:I

    iget v10, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->j:I

    iget v11, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->k:I

    iget-boolean v12, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->l:Z

    move-object v3, v15

    move v5, v13

    move v6, v2

    invoke-static/range {v3 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/iv;[IZIIIIIIZ)[I

    move-result-object v3

    .line 87
    array-length v4, v3

    if-lez v4, :cond_2

    .line 88
    invoke-static/range {p4 .. p4}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/nf$a;

    move-object/from16 v4, p5

    .line 89
    invoke-interface {v0, v15, v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/nf$a;->b(Lcom/google/vr/sdk/widgets/video/deps/iv;Lcom/google/vr/sdk/widgets/video/deps/nn;[I)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v0

    return-object v0

    :cond_2
    move-object/from16 v4, p5

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/iv;IIZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/iv;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 337
    :goto_0
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ge v2, v3, :cond_0

    .line 338
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_6

    if-ne p2, v2, :cond_1

    goto :goto_3

    :cond_1
    const v3, 0x7fffffff

    .line 343
    :goto_1
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ge v1, v4, :cond_3

    .line 344
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v4

    .line 345
    iget v5, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    if-lez v5, :cond_2

    iget v5, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    if-lez v5, :cond_2

    .line 346
    iget v5, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v6, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    invoke-static {p3, p1, p2, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(ZIIII)Landroid/graphics/Point;

    move-result-object v5

    .line 347
    iget v6, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v7, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    mul-int v6, v6, v7

    .line 348
    iget v7, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_2

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v9

    float-to-int v5, v5

    if-lt v4, v5, :cond_2

    if-ge v6, v3, :cond_2

    move v3, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eq v3, v2, :cond_6

    .line 352
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_6

    .line 353
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p2

    .line 354
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/l;->a()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_4

    if-le p2, v3, :cond_5

    .line 356
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/ne$a;[[[I[Lcom/google/vr/sdk/widgets/video/deps/ab;[Lcom/google/vr/sdk/widgets/video/deps/nf;I)V
    .locals 10

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 294
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->a()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_6

    .line 295
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->a(I)I

    move-result v5

    .line 296
    aget-object v7, p3, v2

    if-eq v5, v6, :cond_1

    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    :cond_1
    if-eqz v7, :cond_5

    .line 298
    aget-object v8, p1, v2

    .line 299
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->b(I)Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v9

    .line 300
    invoke-static {v8, v9, v7}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a([[ILcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nf;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v5, v6, :cond_3

    if-eq v4, v1, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    if-eq v3, v1, :cond_4

    :goto_1
    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    move v3, v2

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    :goto_3
    if-eq v4, v1, :cond_7

    if-eq v3, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    .line 313
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-direct {p0, p4}, Lcom/google/vr/sdk/widgets/video/deps/ab;-><init>(I)V

    .line 314
    aput-object p0, p2, v4

    .line 315
    aput-object p0, p2, v3

    :cond_8
    return-void
.end method

.method protected static a(IZ)Z
    .locals 1

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

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

.method protected static a(Lcom/google/vr/sdk/widgets/video/deps/l;)Z
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/l;ILcom/google/vr/sdk/widgets/video/deps/nc$a;)Z
    .locals 2

    const/4 v0, 0x0

    .line 226
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    iget v1, p2, Lcom/google/vr/sdk/widgets/video/deps/nc$a;->a:I

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    iget v1, p2, Lcom/google/vr/sdk/widgets/video/deps/nc$a;->b:I

    if-ne p1, v1, :cond_1

    iget-object p1, p2, Lcom/google/vr/sdk/widgets/video/deps/nc$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/vr/sdk/widgets/video/deps/nc$a;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    .line 227
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected static a(Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 333
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    .line 334
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;IIIII)Z
    .locals 2

    const/4 v0, 0x0

    .line 126
    invoke-static {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    and-int/2addr p2, p3

    if-eqz p2, :cond_4

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    .line 127
    invoke-static {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    if-gt p1, p4, :cond_4

    :cond_1
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    if-eq p1, p2, :cond_2

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    if-gt p1, p5, :cond_4

    :cond_2
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    if-eq p1, p2, :cond_3

    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    if-gt p0, p6, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private static a([[ILcom/google/vr/sdk/widgets/video/deps/iw;Lcom/google/vr/sdk/widgets/video/deps/nf;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 319
    :cond_0
    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/nf;->f()Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(Lcom/google/vr/sdk/widgets/video/deps/iv;)I

    move-result p1

    const/4 v1, 0x0

    .line 320
    :goto_0
    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/nf;->g()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 321
    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/nf;->b(I)I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/iv;[IZ)[I
    .locals 10

    .line 198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 199
    :goto_0
    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ge v3, v6, :cond_2

    .line 200
    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v6

    .line 201
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/nc$a;

    iget v8, v6, Lcom/google/vr/sdk/widgets/video/deps/l;->t:I

    iget v9, v6, Lcom/google/vr/sdk/widgets/video/deps/l;->u:I

    if-eqz p2, :cond_0

    move-object v6, v1

    goto :goto_1

    .line 202
    :cond_0
    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    :goto_1
    invoke-direct {v7, v8, v9, v6}, Lcom/google/vr/sdk/widgets/video/deps/nc$a;-><init>(IILjava/lang/String;)V

    .line 203
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 204
    invoke-static {p0, p1, v7}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/iv;[ILcom/google/vr/sdk/widgets/video/deps/nc$a;)I

    move-result v6

    if-le v6, v4, :cond_1

    move v4, v6

    move-object v5, v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    if-le v4, p2, :cond_5

    .line 210
    new-array p2, v4, [I

    const/4 v0, 0x0

    .line 212
    :goto_2
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ge v2, v1, :cond_4

    .line 214
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v1

    aget v3, p1, v2

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/nc$a;

    .line 215
    invoke-static {v1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;ILcom/google/vr/sdk/widgets/video/deps/nc$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 216
    aput v2, p2, v0

    move v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object p2

    .line 219
    :cond_5
    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/nc;->a:[I

    return-object p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/iv;[IZIIIIIIZ)[I
    .locals 16

    move-object/from16 v8, p0

    .line 93
    iget v0, v8, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    const/4 v9, 0x2

    if-ge v0, v9, :cond_0

    .line 94
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/nc;->a:[I

    return-object v0

    :cond_0
    move/from16 v0, p7

    move/from16 v1, p8

    move/from16 v2, p9

    .line 95
    invoke-static {v8, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/iv;IIZ)Ljava/util/List;

    move-result-object v10

    .line 96
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v9, :cond_1

    .line 97
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/nc;->a:[I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 100
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 102
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_3

    .line 103
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    invoke-virtual {v8, v0}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    .line 105
    invoke-virtual {v11, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v15

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v10

    .line 106
    invoke-static/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/iv;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v0

    if-le v0, v14, :cond_2

    move v14, v0

    move-object v12, v15

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v12

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v10

    .line 111
    invoke-static/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/nc;->b(Lcom/google/vr/sdk/widgets/video/deps/iv;[IILjava/lang/String;IIILjava/util/List;)V

    .line 112
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v9, :cond_5

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/nc;->a:[I

    goto :goto_2

    :cond_5
    invoke-static {v10}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/util/List;)[I

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private static b(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, p0, p1

    :cond_2
    :goto_0
    return v0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/iw;[[ILcom/google/vr/sdk/widgets/video/deps/nc$c;)Lcom/google/vr/sdk/widgets/video/deps/nf;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 134
    :goto_0
    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    if-ge v5, v11, :cond_f

    .line 135
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v11

    .line 136
    iget v12, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->j:I

    iget v13, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->k:I

    iget-boolean v14, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->l:Z

    invoke-static {v11, v12, v13, v14}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/iv;IIZ)Ljava/util/List;

    move-result-object v12

    .line 137
    aget-object v13, p1, v5

    const/4 v14, 0x0

    .line 138
    :goto_1
    iget v15, v11, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ge v14, v15, :cond_e

    .line 139
    aget v15, v13, v14

    iget-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->q:Z

    invoke-static {v15, v2}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 140
    invoke-virtual {v11, v14}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v2

    .line 141
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    if-eqz v15, :cond_3

    iget v15, v2, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    if-eq v15, v3, :cond_0

    iget v15, v2, Lcom/google/vr/sdk/widgets/video/deps/l;->l:I

    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->f:I

    if-gt v15, v4, :cond_3

    :cond_0
    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    if-eq v4, v3, :cond_1

    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/l;->m:I

    iget v15, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->g:I

    if-gt v4, v15, :cond_3

    :cond_1
    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    if-eq v4, v3, :cond_2

    iget v4, v2, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    iget v15, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->h:I

    if-gt v4, v15, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    .line 142
    iget-boolean v15, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->i:Z

    if-nez v15, :cond_4

    goto :goto_8

    :cond_4
    if-eqz v4, :cond_5

    const/4 v15, 0x2

    goto :goto_3

    :cond_5
    const/4 v15, 0x1

    .line 145
    :goto_3
    aget v3, v13, v14

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit16 v15, v15, 0x3e8

    :cond_6
    if-le v15, v8, :cond_7

    const/16 v17, 0x1

    goto :goto_4

    :cond_7
    const/16 v17, 0x0

    :goto_4
    if-ne v15, v8, :cond_c

    .line 150
    iget-boolean v0, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->m:Z

    if-eqz v0, :cond_9

    .line 151
    iget v0, v2, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    invoke-static {v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/nc;->b(II)I

    move-result v0

    if-gez v0, :cond_8

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    :goto_5
    move/from16 v17, v16

    goto :goto_7

    .line 152
    :cond_9
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/l;->a()I

    move-result v0

    if-eq v0, v9, :cond_a

    .line 154
    invoke-static {v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/nc;->b(II)I

    move-result v0

    goto :goto_6

    .line 155
    :cond_a
    iget v0, v2, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    invoke-static {v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/nc;->b(II)I

    move-result v0

    :goto_6
    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    if-lez v0, :cond_8

    goto :goto_5

    :cond_b
    if-gez v0, :cond_8

    goto :goto_5

    :cond_c
    :goto_7
    if-eqz v17, :cond_d

    .line 162
    iget v0, v2, Lcom/google/vr/sdk/widgets/video/deps/l;->c:I

    .line 163
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/l;->a()I

    move-result v2

    move v10, v0

    move v9, v2

    move-object v6, v11

    move v7, v14

    move v8, v15

    :cond_d
    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    const/4 v3, -0x1

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_f
    if-nez v6, :cond_10

    const/4 v2, 0x0

    goto :goto_9

    .line 167
    :cond_10
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/nd;

    invoke-direct {v2, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/nd;-><init>(Lcom/google/vr/sdk/widgets/video/deps/iv;I)V

    :goto_9
    return-object v2
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/iv;[IILjava/lang/String;IIILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/iv;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p7

    .line 120
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p0

    .line 122
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v4

    aget v6, p1, v2

    move-object v5, p3

    move v7, p2

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;IIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(II)I
    .locals 0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-le p1, p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected final a(Lcom/google/vr/sdk/widgets/video/deps/ne$a;[[[I[I)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ne$a;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/vr/sdk/widgets/video/deps/ab;",
            "[",
            "Lcom/google/vr/sdk/widgets/video/deps/nf;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;

    .line 8
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->a()I

    move-result v1

    .line 10
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/ne$a;[[[I[ILcom/google/vr/sdk/widgets/video/deps/nc$c;)[Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v1, :cond_4

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->a(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 13
    aput-object v4, p3, v3

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->b(I)Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v6

    .line 15
    invoke-virtual {v0, v3, v6}, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->a(ILcom/google/vr/sdk/widgets/video/deps/iw;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 16
    invoke-virtual {v0, v3, v6}, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->b(ILcom/google/vr/sdk/widgets/video/deps/iw;)Lcom/google/vr/sdk/widgets/video/deps/nc$d;

    move-result-object v7

    if-nez v7, :cond_1

    .line 18
    aput-object v4, p3, v3

    goto :goto_1

    .line 19
    :cond_1
    iget v4, v7, Lcom/google/vr/sdk/widgets/video/deps/nc$d;->c:I

    if-ne v4, v5, :cond_2

    .line 20
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/nd;

    iget v5, v7, Lcom/google/vr/sdk/widgets/video/deps/nc$d;->a:I

    .line 21
    invoke-virtual {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v5

    iget-object v6, v7, Lcom/google/vr/sdk/widgets/video/deps/nc$d;->b:[I

    aget v6, v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/nd;-><init>(Lcom/google/vr/sdk/widgets/video/deps/iv;I)V

    aput-object v4, p3, v3

    goto :goto_1

    .line 22
    :cond_2
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/nc;->b:Lcom/google/vr/sdk/widgets/video/deps/nf$a;

    .line 23
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/nf$a;

    iget v5, v7, Lcom/google/vr/sdk/widgets/video/deps/nc$d;->a:I

    .line 24
    invoke-virtual {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v5

    .line 25
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a()Lcom/google/vr/sdk/widgets/video/deps/nn;

    move-result-object v6

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/nc$d;->b:[I

    .line 26
    invoke-interface {v4, v5, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/nf$a;->b(Lcom/google/vr/sdk/widgets/video/deps/iv;Lcom/google/vr/sdk/widgets/video/deps/nn;[I)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v4

    aput-object v4, p3, v3

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 28
    :cond_4
    new-array v3, v1, [Lcom/google/vr/sdk/widgets/video/deps/ab;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_8

    .line 30
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->a(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 32
    invoke-virtual {p1, v6}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->a(I)I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_5

    aget-object v7, p3, v6

    if-eqz v7, :cond_6

    :cond_5
    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_7

    .line 33
    sget-object v7, Lcom/google/vr/sdk/widgets/video/deps/ab;->a:Lcom/google/vr/sdk/widgets/video/deps/ab;

    goto :goto_4

    :cond_7
    move-object v7, v4

    :goto_4
    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 35
    :cond_8
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->r:I

    invoke-static {p1, p2, v3, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/ne$a;[[[I[Lcom/google/vr/sdk/widgets/video/deps/ab;[Lcom/google/vr/sdk/widgets/video/deps/nf;I)V

    .line 36
    invoke-static {v3, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected a(ILcom/google/vr/sdk/widgets/video/deps/iw;[[ILcom/google/vr/sdk/widgets/video/deps/nc$c;)Lcom/google/vr/sdk/widgets/video/deps/nf;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 270
    :goto_0
    iget v5, p2, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    if-ge v1, v5, :cond_5

    .line 271
    invoke-virtual {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v5

    .line 272
    aget-object v6, p3, v1

    const/4 v7, 0x0

    .line 273
    :goto_1
    iget v8, v5, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ge v7, v8, :cond_4

    .line 274
    aget v8, v6, v7

    iget-boolean v9, p4, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->q:Z

    invoke-static {v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(IZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 275
    invoke-virtual {v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v8

    .line 276
    iget v8, v8, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_1

    const/4 v9, 0x2

    .line 278
    :cond_1
    aget v8, v6, v7

    invoke-static {v8, v0}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(IZ)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit16 v9, v9, 0x3e8

    :cond_2
    if-le v9, v4, :cond_3

    move-object v2, v5

    move v3, v7

    move v4, v9

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    goto :goto_3

    .line 287
    :cond_6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/nd;

    invoke-direct {p1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/nd;-><init>(Lcom/google/vr/sdk/widgets/video/deps/iv;I)V

    :goto_3
    return-object p1
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/iw;[[IILcom/google/vr/sdk/widgets/video/deps/nc$c;Lcom/google/vr/sdk/widgets/video/deps/nf$a;)Lcom/google/vr/sdk/widgets/video/deps/nf;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 73
    iget-boolean v0, p4, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p4, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->m:Z

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a()Lcom/google/vr/sdk/widgets/video/deps/nn;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 76
    invoke-static/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/iw;[[IILcom/google/vr/sdk/widgets/video/deps/nc$c;Lcom/google/vr/sdk/widgets/video/deps/nf$a;Lcom/google/vr/sdk/widgets/video/deps/nn;)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    .line 78
    invoke-static {p1, p2, p4}, Lcom/google/vr/sdk/widgets/video/deps/nc;->b(Lcom/google/vr/sdk/widgets/video/deps/iw;[[ILcom/google/vr/sdk/widgets/video/deps/nc$c;)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object p3

    :cond_1
    return-object p3
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/iw;[[ILcom/google/vr/sdk/widgets/video/deps/nc$c;)Lcom/google/vr/sdk/widgets/video/deps/nf;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 232
    :goto_0
    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    if-ge v4, v8, :cond_b

    .line 233
    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v8

    .line 234
    aget-object v9, p2, v4

    const/4 v10, 0x0

    .line 235
    :goto_1
    iget v11, v8, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ge v10, v11, :cond_a

    .line 236
    aget v11, v9, v10

    iget-boolean v12, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->q:Z

    invoke-static {v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(IZ)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 237
    invoke-virtual {v8, v10}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v11

    .line 238
    iget v12, v11, Lcom/google/vr/sdk/widgets/video/deps/l;->y:I

    iget v13, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->e:I

    not-int v13, v13

    and-int/2addr v12, v13

    and-int/lit8 v13, v12, 0x1

    const/4 v14, 0x1

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    goto :goto_2

    :cond_0
    const/4 v13, 0x0

    :goto_2
    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_3

    :cond_1
    const/4 v12, 0x0

    .line 241
    :goto_3
    iget-object v15, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->c:Ljava/lang/String;

    invoke-static {v11, v15}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 242
    iget-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->d:Z

    if-eqz v2, :cond_2

    .line 243
    invoke-static {v11}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v13, :cond_3

    const/4 v14, 0x3

    goto :goto_6

    :cond_3
    if-eqz v12, :cond_9

    .line 253
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->b:Ljava/lang/String;

    invoke-static {v11, v2}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v14, 0x2

    goto :goto_6

    :cond_4
    :goto_4
    if-eqz v13, :cond_5

    const/16 v2, 0x8

    goto :goto_5

    :cond_5
    if-nez v12, :cond_6

    const/4 v2, 0x6

    goto :goto_5

    :cond_6
    const/4 v2, 0x4

    :goto_5
    add-int v14, v2, v15

    .line 256
    :cond_7
    :goto_6
    aget v2, v9, v10

    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit16 v14, v14, 0x3e8

    :cond_8
    if-le v14, v7, :cond_9

    move-object v5, v8

    move v6, v10

    move v7, v14

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    if-nez v5, :cond_c

    const/4 v2, 0x0

    goto :goto_7

    .line 265
    :cond_c
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/nd;

    invoke-direct {v2, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/nd;-><init>(Lcom/google/vr/sdk/widgets/video/deps/iv;I)V

    :goto_7
    return-object v2
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/ne$a;[[[I[ILcom/google/vr/sdk/widgets/video/deps/nc$c;)[Lcom/google/vr/sdk/widgets/video/deps/nf;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->a()I

    move-result v9

    .line 38
    new-array v10, v9, [Lcom/google/vr/sdk/widgets/video/deps/nf;

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x2

    const/4 v15, 0x1

    if-ge v12, v9, :cond_4

    .line 42
    invoke-virtual {v7, v12}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->a(I)I

    move-result v1

    if-ne v14, v1, :cond_3

    if-nez v0, :cond_1

    .line 45
    invoke-virtual {v7, v12}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->b(I)Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v1

    aget-object v2, p2, v12

    aget v3, p3, v12

    iget-object v5, v6, Lcom/google/vr/sdk/widgets/video/deps/nc;->b:Lcom/google/vr/sdk/widgets/video/deps/nf$a;

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/iw;[[IILcom/google/vr/sdk/widgets/video/deps/nc$c;Lcom/google/vr/sdk/widgets/video/deps/nf$a;)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v0

    aput-object v0, v10, v12

    .line 47
    aget-object v0, v10, v12

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 48
    :cond_1
    :goto_1
    invoke-virtual {v7, v12}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->b(I)Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v1

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    or-int/2addr v13, v15

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v12, v9, :cond_b

    .line 53
    invoke-virtual {v7, v12}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->a(I)I

    move-result v1

    if-eq v1, v15, :cond_7

    if-eq v1, v14, :cond_a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 68
    invoke-virtual {v7, v12}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->b(I)Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v2

    aget-object v3, p2, v12

    .line 69
    invoke-virtual {v6, v1, v2, v3, v8}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(ILcom/google/vr/sdk/widgets/video/deps/iw;[[ILcom/google/vr/sdk/widgets/video/deps/nc$c;)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v1

    aput-object v1, v10, v12

    goto :goto_5

    :cond_5
    if-nez v16, :cond_a

    .line 64
    invoke-virtual {v7, v12}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->b(I)Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v1

    aget-object v2, p2, v12

    .line 65
    invoke-virtual {v6, v1, v2, v8}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/iw;[[ILcom/google/vr/sdk/widgets/video/deps/nc$c;)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v1

    aput-object v1, v10, v12

    .line 66
    aget-object v1, v10, v12

    if-eqz v1, :cond_6

    const/16 v16, 0x1

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    goto :goto_5

    :cond_7
    if-nez v0, :cond_a

    .line 58
    invoke-virtual {v7, v12}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;->b(I)Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v1

    aget-object v2, p2, v12

    aget v3, p3, v12

    if-eqz v13, :cond_8

    const/4 v0, 0x0

    goto :goto_4

    .line 59
    :cond_8
    iget-object v0, v6, Lcom/google/vr/sdk/widgets/video/deps/nc;->b:Lcom/google/vr/sdk/widgets/video/deps/nf$a;

    :goto_4
    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v4, p4

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/nc;->b(Lcom/google/vr/sdk/widgets/video/deps/iw;[[IILcom/google/vr/sdk/widgets/video/deps/nc$c;Lcom/google/vr/sdk/widgets/video/deps/nf$a;)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v0

    aput-object v0, v10, v12

    .line 61
    aget-object v0, v10, v12

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_b
    return-object v10
.end method

.method protected b(Lcom/google/vr/sdk/widgets/video/deps/iw;[[IILcom/google/vr/sdk/widgets/video/deps/nc$c;Lcom/google/vr/sdk/widgets/video/deps/nf$a;)Lcom/google/vr/sdk/widgets/video/deps/nf;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v8, v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v9, -0x1

    .line 172
    :goto_0
    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    if-ge v6, v10, :cond_3

    .line 173
    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v10

    .line 174
    aget-object v11, p2, v6

    const/4 v12, 0x0

    .line 175
    :goto_1
    iget v13, v10, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ge v12, v13, :cond_2

    .line 176
    aget v13, v11, v12

    iget-boolean v14, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->q:Z

    invoke-static {v13, v14}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(IZ)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 177
    invoke-virtual {v10, v12}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v13

    .line 178
    new-instance v14, Lcom/google/vr/sdk/widgets/video/deps/nc$b;

    aget v15, v11, v12

    invoke-direct {v14, v13, v1, v15}, Lcom/google/vr/sdk/widgets/video/deps/nc$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/nc$c;I)V

    if-eqz v8, :cond_0

    .line 179
    invoke-virtual {v14, v8}, Lcom/google/vr/sdk/widgets/video/deps/nc$b;->a(Lcom/google/vr/sdk/widgets/video/deps/nc$b;)I

    move-result v13

    if-lez v13, :cond_1

    :cond_0
    move v7, v6

    move v9, v12

    move-object v8, v14

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-ne v7, v5, :cond_4

    return-object v4

    .line 187
    :cond_4
    invoke-virtual {v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v0

    .line 188
    iget-boolean v3, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->n:Z

    if-nez v3, :cond_5

    iget-boolean v3, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->m:Z

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 189
    aget-object v3, p2, v7

    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->o:Z

    .line 190
    invoke-static {v0, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a(Lcom/google/vr/sdk/widgets/video/deps/iv;[IZ)[I

    move-result-object v1

    .line 191
    array-length v3, v1

    if-lez v3, :cond_5

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/nc;->a()Lcom/google/vr/sdk/widgets/video/deps/nn;

    move-result-object v3

    invoke-interface {v2, v0, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/nf$a;->b(Lcom/google/vr/sdk/widgets/video/deps/iv;Lcom/google/vr/sdk/widgets/video/deps/nn;[I)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v0

    return-object v0

    .line 195
    :cond_5
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/nd;

    invoke-direct {v1, v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/nd;-><init>(Lcom/google/vr/sdk/widgets/video/deps/iv;I)V

    return-object v1
.end method
