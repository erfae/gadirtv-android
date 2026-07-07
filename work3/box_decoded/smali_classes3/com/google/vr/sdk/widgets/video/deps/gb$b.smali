.class Lcom/google/vr/sdk/widgets/video/deps/gb$b;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/gb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/vr/sdk/widgets/video/deps/gb;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/pd;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/gd;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/SparseIntArray;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/gb;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pd;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->c:Landroid/util/SparseArray;

    .line 4
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->d:Landroid/util/SparseIntArray;

    .line 5
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->e:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Lcom/google/vr/sdk/widgets/video/deps/gd$b;
    .locals 12

    .line 77
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    add-int/2addr p2, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v2, v1

    const/4 v3, -0x1

    .line 82
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v4

    if-ge v4, p2, :cond_9

    .line 83
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v4

    .line 84
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v5

    .line 85
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v6

    add-int/2addr v6, v5

    const/4 v5, 0x5

    const/16 v7, 0x59

    const/16 v8, 0x87

    const/16 v9, 0x81

    if-ne v4, v5, :cond_2

    .line 87
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->n()J

    move-result-wide v4

    .line 88
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b()J

    move-result-wide v10

    cmp-long v7, v4, v10

    if-nez v7, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gb;->d()J

    move-result-wide v9

    cmp-long v7, v4, v9

    if-nez v7, :cond_1

    goto :goto_2

    .line 92
    :cond_1
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gb;->e()J

    move-result-wide v7

    cmp-long v9, v4, v7

    if-nez v9, :cond_8

    const/16 v3, 0x24

    goto :goto_4

    :cond_2
    const/16 v5, 0x6a

    if-ne v4, v5, :cond_3

    :goto_1
    const/16 v3, 0x81

    goto :goto_4

    :cond_3
    const/16 v5, 0x7a

    if-ne v4, v5, :cond_4

    :goto_2
    const/16 v3, 0x87

    goto :goto_4

    :cond_4
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_5

    const/16 v3, 0x8a

    goto :goto_4

    :cond_5
    const/16 v5, 0xa

    const/4 v8, 0x3

    if-ne v4, v5, :cond_6

    .line 101
    invoke-virtual {p1, v8}, Lcom/google/vr/sdk/widgets/video/deps/pe;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    if-ne v4, v7, :cond_8

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    :goto_3
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v3

    if-ge v3, v6, :cond_7

    .line 106
    invoke-virtual {p1, v8}, Lcom/google/vr/sdk/widgets/video/deps/pe;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v4

    const/4 v5, 0x4

    new-array v9, v5, [B

    const/4 v10, 0x0

    .line 109
    invoke-virtual {p1, v9, v10, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 110
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/gd$a;

    invoke-direct {v5, v3, v4, v9}, Lcom/google/vr/sdk/widgets/video/deps/gd$a;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const/16 v3, 0x59

    .line 112
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v4

    sub-int/2addr v6, v4

    invoke-virtual {p1, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    goto/16 :goto_0

    .line 114
    :cond_9
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 115
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/gd$b;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 116
    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v4, v3, v1, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/gd$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    return-object v4
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gb;->c(Lcom/google/vr/sdk/widgets/video/deps/gb;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gb;->c(Lcom/google/vr/sdk/widgets/video/deps/gb;)I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gb;->d(Lcom/google/vr/sdk/widgets/video/deps/gb;)I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/pp;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    .line 14
    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/gb;->e(Lcom/google/vr/sdk/widgets/video/deps/gb;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/pp;->a()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/pp;-><init>(J)V

    .line 15
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/gb;->e(Lcom/google/vr/sdk/widgets/video/deps/gb;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gb;->e(Lcom/google/vr/sdk/widgets/video/deps/gb;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 16
    :goto_1
    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v6

    const/4 v7, 0x3

    .line 18
    invoke-virtual {v1, v7}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 19
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v1, v8, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(Lcom/google/vr/sdk/widgets/video/deps/pd;I)V

    .line 20
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v8, v7}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 21
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(Lcom/google/vr/sdk/widgets/video/deps/gb;I)I

    .line 22
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v1, v8, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(Lcom/google/vr/sdk/widgets/video/deps/pd;I)V

    .line 23
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 24
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v8

    .line 25
    invoke-virtual {v1, v8}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 26
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/gb;->c(Lcom/google/vr/sdk/widgets/video/deps/gb;)I

    move-result v8

    const/16 v12, 0x2000

    const/16 v13, 0x15

    if-ne v8, v3, :cond_3

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/gb;->f(Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/gd;

    move-result-object v8

    if-nez v8, :cond_3

    .line 27
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/gd$b;

    new-array v14, v4, [B

    const/4 v15, 0x0

    invoke-direct {v8, v13, v15, v15, v14}, Lcom/google/vr/sdk/widgets/video/deps/gd$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 28
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v14}, Lcom/google/vr/sdk/widgets/video/deps/gb;->g(Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/gd$c;

    move-result-object v15

    invoke-interface {v15, v13, v8}, Lcom/google/vr/sdk/widgets/video/deps/gd$c;->a(ILcom/google/vr/sdk/widgets/video/deps/gd$b;)Lcom/google/vr/sdk/widgets/video/deps/gd;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(Lcom/google/vr/sdk/widgets/video/deps/gb;Lcom/google/vr/sdk/widgets/video/deps/gd;)Lcom/google/vr/sdk/widgets/video/deps/gd;

    .line 29
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/gb;->f(Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/gd;

    move-result-object v8

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v14}, Lcom/google/vr/sdk/widgets/video/deps/gb;->h(Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/ct;

    move-result-object v14

    new-instance v15, Lcom/google/vr/sdk/widgets/video/deps/gd$d;

    invoke-direct {v15, v6, v13, v12}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;-><init>(III)V

    invoke-interface {v8, v2, v14, v15}, Lcom/google/vr/sdk/widgets/video/deps/gd;->a(Lcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V

    .line 30
    :cond_3
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 31
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v8

    :goto_2
    if-lez v8, :cond_a

    .line 34
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/4 v15, 0x5

    invoke-virtual {v1, v14, v15}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(Lcom/google/vr/sdk/widgets/video/deps/pd;I)V

    .line 35
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v14

    .line 36
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v15, v7}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 37
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v15, v10}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v15

    .line 38
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v7, v9}, Lcom/google/vr/sdk/widgets/video/deps/pd;->b(I)V

    .line 39
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->b:Lcom/google/vr/sdk/widgets/video/deps/pd;

    invoke-virtual {v7, v11}, Lcom/google/vr/sdk/widgets/video/deps/pd;->c(I)I

    move-result v7

    .line 40
    invoke-direct {v0, v1, v7}, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)Lcom/google/vr/sdk/widgets/video/deps/gd$b;

    move-result-object v9

    const/4 v10, 0x6

    if-ne v14, v10, :cond_4

    .line 42
    iget v14, v9, Lcom/google/vr/sdk/widgets/video/deps/gd$b;->a:I

    :cond_4
    add-int/lit8 v7, v7, 0x5

    sub-int/2addr v8, v7

    .line 44
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v7}, Lcom/google/vr/sdk/widgets/video/deps/gb;->c(Lcom/google/vr/sdk/widgets/video/deps/gb;)I

    move-result v7

    if-ne v7, v3, :cond_5

    move v7, v14

    goto :goto_3

    :cond_5
    move v7, v15

    .line 45
    :goto_3
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v10}, Lcom/google/vr/sdk/widgets/video/deps/gb;->i(Lcom/google/vr/sdk/widgets/video/deps/gb;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_5

    .line 47
    :cond_6
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v10}, Lcom/google/vr/sdk/widgets/video/deps/gb;->c(Lcom/google/vr/sdk/widgets/video/deps/gb;)I

    move-result v10

    if-ne v10, v3, :cond_7

    if-ne v14, v13, :cond_7

    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v9}, Lcom/google/vr/sdk/widgets/video/deps/gb;->f(Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/gd;

    move-result-object v9

    goto :goto_4

    .line 48
    :cond_7
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v10}, Lcom/google/vr/sdk/widgets/video/deps/gb;->g(Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/gd$c;

    move-result-object v10

    invoke-interface {v10, v14, v9}, Lcom/google/vr/sdk/widgets/video/deps/gd$c;->a(ILcom/google/vr/sdk/widgets/video/deps/gd$b;)Lcom/google/vr/sdk/widgets/video/deps/gd;

    move-result-object v9

    .line 49
    :goto_4
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v10}, Lcom/google/vr/sdk/widgets/video/deps/gb;->c(Lcom/google/vr/sdk/widgets/video/deps/gb;)I

    move-result v10

    if-ne v10, v3, :cond_8

    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->d:Landroid/util/SparseIntArray;

    .line 50
    invoke-virtual {v10, v7, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    if-ge v15, v10, :cond_9

    .line 51
    :cond_8
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v10, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    :goto_5
    const/4 v7, 0x3

    const/4 v9, 0x4

    const/16 v10, 0xd

    goto/16 :goto_2

    .line 54
    :cond_a
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v1, :cond_d

    .line 56
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 57
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 58
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v10}, Lcom/google/vr/sdk/widgets/video/deps/gb;->i(Lcom/google/vr/sdk/widgets/video/deps/gb;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v8, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 59
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v10}, Lcom/google/vr/sdk/widgets/video/deps/gb;->j(Lcom/google/vr/sdk/widgets/video/deps/gb;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 60
    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/vr/sdk/widgets/video/deps/gd;

    if-eqz v10, :cond_c

    .line 62
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v11}, Lcom/google/vr/sdk/widgets/video/deps/gb;->f(Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/gd;

    move-result-object v11

    if-eq v10, v11, :cond_b

    .line 63
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v11}, Lcom/google/vr/sdk/widgets/video/deps/gb;->h(Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/ct;

    move-result-object v11

    new-instance v13, Lcom/google/vr/sdk/widgets/video/deps/gd$d;

    invoke-direct {v13, v6, v8, v12}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;-><init>(III)V

    invoke-interface {v10, v2, v11, v13}, Lcom/google/vr/sdk/widgets/video/deps/gd;->a(Lcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V

    .line 64
    :cond_b
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(Lcom/google/vr/sdk/widgets/video/deps/gb;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 66
    :cond_d
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->c(Lcom/google/vr/sdk/widgets/video/deps/gb;)I

    move-result v1

    if-ne v1, v3, :cond_e

    .line 67
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->k(Lcom/google/vr/sdk/widgets/video/deps/gb;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 68
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->h(Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/ct;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    .line 69
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Lcom/google/vr/sdk/widgets/video/deps/gb;I)I

    .line 70
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(Lcom/google/vr/sdk/widgets/video/deps/gb;Z)Z

    goto :goto_8

    .line 71
    :cond_e
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(Lcom/google/vr/sdk/widgets/video/deps/gb;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->e:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 72
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->c(Lcom/google/vr/sdk/widgets/video/deps/gb;)I

    move-result v2

    if-ne v2, v5, :cond_f

    goto :goto_7

    :cond_f
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gb;->d(Lcom/google/vr/sdk/widgets/video/deps/gb;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_7
    invoke-static {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Lcom/google/vr/sdk/widgets/video/deps/gb;I)I

    .line 73
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->d(Lcom/google/vr/sdk/widgets/video/deps/gb;)I

    move-result v1

    if-nez v1, :cond_10

    .line 74
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->h(Lcom/google/vr/sdk/widgets/video/deps/gb;)Lcom/google/vr/sdk/widgets/video/deps/ct;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    .line 75
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/gb$b;->a:Lcom/google/vr/sdk/widgets/video/deps/gb;

    invoke-static {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(Lcom/google/vr/sdk/widgets/video/deps/gb;Z)Z

    :cond_10
    :goto_8
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V
    .locals 0

    return-void
.end method
