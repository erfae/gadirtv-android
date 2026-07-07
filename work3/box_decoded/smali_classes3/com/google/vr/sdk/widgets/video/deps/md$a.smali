.class final Lcom/google/vr/sdk/widgets/video/deps/md$a;
.super Ljava/lang/Object;
.source "PgsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/md;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final b:[I

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->b:[I

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/md$a;Lcom/google/vr/sdk/widgets/video/deps/pe;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 5
    rem-int/lit8 v1, p2, 0x5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 8
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->b:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 9
    div-int/lit8 v2, p2, 0x5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v5

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v6

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v7

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v8

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v9

    int-to-double v10, v6

    const-wide v12, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v7, v7, -0x80

    int-to-double v6, v7

    mul-double v12, v12, v6

    add-double/2addr v12, v10

    double-to-int v12, v12

    const-wide v13, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v8, v8, -0x80

    move/from16 p2, v4

    int-to-double v3, v8

    mul-double v13, v13, v3

    sub-double v13, v10, v13

    const-wide v15, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v6, v6, v15

    sub-double/2addr v13, v6

    double-to-int v6, v13

    const-wide v7, 0x3ffc5a1cac083127L    # 1.772

    mul-double v3, v3, v7

    add-double/2addr v10, v3

    double-to-int v3, v10

    .line 19
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->b:[I

    shl-int/lit8 v7, v9, 0x18

    const/16 v8, 0xff

    const/4 v9, 0x0

    .line 20
    invoke-static {v12, v9, v8}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(III)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v7, v10

    .line 21
    invoke-static {v6, v9, v8}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(III)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v7

    .line 22
    invoke-static {v3, v9, v8}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(III)I

    move-result v3

    or-int/2addr v3, v6

    aput v3, v4, v5

    add-int/lit8 v4, p2, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->c:Z

    return-void
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/md$a;Lcom/google/vr/sdk/widgets/video/deps/pe;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/md$a;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 28
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 29
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 p2, p2, -0x4

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    if-ge p2, v1, :cond_2

    return-void

    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->l()I

    move-result v1

    if-ge v1, v0, :cond_3

    return-void

    .line 37
    :cond_3
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->h:I

    .line 38
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v2

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->i:I

    .line 39
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    add-int/lit8 p2, p2, -0x7

    .line 41
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v1

    if-ge v0, v1, :cond_5

    if-lez p2, :cond_5

    sub-int/2addr v1, v0

    .line 44
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 45
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-virtual {p1, v1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 46
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    :cond_5
    return-void
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/md$a;Lcom/google/vr/sdk/widgets/video/deps/pe;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/md$a;->c(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    return-void
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V
    .locals 1

    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result p2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->d:I

    .line 51
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result p2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->e:I

    const/16 p2, 0xb

    .line 52
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 53
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result p2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->f:I

    .line 54
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->g:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/vr/sdk/widgets/video/deps/li;
    .locals 12

    .line 56
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->d:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->e:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->h:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->i:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 57
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 58
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->c:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 61
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->h:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->i:I

    mul-int v0, v0, v2

    new-array v2, v0, [I

    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-ge v3, v0, :cond_5

    .line 64
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 66
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->b:[I

    aget v4, v6, v4

    aput v4, v2, v3

    :goto_1
    move v3, v5

    goto :goto_0

    .line 67
    :cond_2
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v4

    if-eqz v4, :cond_1

    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_3

    and-int/lit8 v5, v4, 0x3f

    goto :goto_2

    :cond_3
    and-int/lit8 v5, v4, 0x3f

    shl-int/lit8 v5, v5, 0x8

    .line 71
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v6

    or-int/2addr v5, v6

    :goto_2
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    .line 72
    :cond_4
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->b:[I

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v6

    aget v4, v4, v6

    :goto_3
    add-int/2addr v5, v3

    .line 73
    invoke-static {v2, v3, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    .line 76
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->h:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->i:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 77
    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 78
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/li;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->d:I

    int-to-float v3, v2

    div-float v6, v1, v3

    const/4 v7, 0x0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->g:I

    int-to-float v1, v1

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->e:I

    int-to-float v4, v3

    div-float v8, v1, v4

    const/4 v9, 0x0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->h:I

    int-to-float v1, v1

    int-to-float v2, v2

    div-float v10, v1, v2

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->i:I

    int-to-float v1, v1

    int-to-float v2, v3

    div-float v11, v1, v2

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/li;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    return-object v0

    :cond_6
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->d:I

    .line 80
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->e:I

    .line 81
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->f:I

    .line 82
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->g:I

    .line 83
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->h:I

    .line 84
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->i:I

    .line 85
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->a:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    .line 86
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/md$a;->c:Z

    return-void
.end method
