.class public final Lcom/google/vr/sdk/widgets/video/deps/ff;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/gd$c;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ff;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "application/cea-608"

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ff;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ff;->a:I

    .line 10
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ff;->b:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gd$b;)Lcom/google/vr/sdk/widgets/video/deps/fx;
    .locals 1

    .line 35
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fx;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ff;->c(Lcom/google/vr/sdk/widgets/video/deps/gd$b;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fx;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private a(I)Z
    .locals 1

    .line 70
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ff;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/gd$b;)Lcom/google/vr/sdk/widgets/video/deps/gf;
    .locals 1

    .line 36
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gf;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ff;->c(Lcom/google/vr/sdk/widgets/video/deps/gd$b;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gf;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private c(Lcom/google/vr/sdk/widgets/video/deps/gd$b;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/gd$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x20

    .line 37
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ff;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ff;->b:Ljava/util/List;

    return-object v1

    .line 39
    :cond_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    move-object/from16 v2, p1

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/gd$b;->d:[B

    invoke-direct {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    .line 40
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/ff;->b:Ljava/util/List;

    .line 41
    :goto_0
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v3

    if-lez v3, :cond_6

    .line 42
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v3

    .line 43
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v4

    .line 44
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v5

    add-int/2addr v5, v4

    const/16 v4, 0x86

    if-ne v3, v4, :cond_5

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v3

    and-int/lit8 v3, v3, 0x1f

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_5

    const/4 v7, 0x3

    .line 49
    invoke-virtual {v1, v7}, Lcom/google/vr/sdk/widgets/video/deps/pe;->e(I)Ljava/lang/String;

    move-result-object v13

    .line 50
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v7

    and-int/lit16 v8, v7, 0x80

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_2

    and-int/lit8 v7, v7, 0x3f

    const-string v10, "application/cea-708"

    move v14, v7

    move-object v7, v10

    goto :goto_3

    :cond_2
    const-string v7, "application/cea-608"

    const/4 v14, 0x1

    .line 57
    :goto_3
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v10

    int-to-byte v10, v10

    .line 58
    invoke-virtual {v1, v9}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    const/4 v11, 0x0

    if-eqz v8, :cond_4

    and-int/lit8 v8, v10, 0x40

    if-eqz v8, :cond_3

    goto :goto_4

    :cond_3
    const/4 v9, 0x0

    .line 62
    :goto_4
    invoke-static {v9}, Lcom/google/vr/sdk/widgets/video/deps/lw;->a(Z)Ljava/util/List;

    move-result-object v8

    move-object/from16 v18, v8

    goto :goto_5

    :cond_4
    move-object/from16 v18, v11

    :goto_5
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    const-wide v16, 0x7fffffffffffffffL

    move-object v9, v7

    .line 64
    invoke-static/range {v8 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/cb;JLjava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v7

    .line 65
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 67
    :cond_5
    invoke-virtual {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    goto :goto_0

    :cond_6
    return-object v2
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/gd;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public a(ILcom/google/vr/sdk/widgets/video/deps/gd$b;)Lcom/google/vr/sdk/widgets/video/deps/gd;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-eq p1, v2, :cond_b

    const/16 v2, 0x11

    if-eq p1, v2, :cond_9

    const/16 v0, 0x15

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x24

    if-eq p1, v0, :cond_5

    const/16 v0, 0x59

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x81

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_3

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    const/16 v0, 0x87

    if-eq p1, v0, :cond_2

    return-object v3

    :cond_0
    const/16 p1, 0x10

    .line 29
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ff;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fw;

    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fy;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>()V

    invoke-direct {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/fw;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    :goto_0
    return-object v3

    .line 21
    :cond_2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fq;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fb;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gd$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/fb;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fi;)V

    return-object p1

    .line 22
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fq;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fg;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gd$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/fg;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fi;)V

    return-object p1

    .line 33
    :cond_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fq;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fh;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gd$b;->c:Ljava/util/List;

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/fh;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fi;)V

    return-object p1

    .line 28
    :cond_5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fq;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fl;

    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ff;->a(Lcom/google/vr/sdk/widgets/video/deps/gd$b;)Lcom/google/vr/sdk/widgets/video/deps/fx;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/fl;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fx;)V

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fi;)V

    return-object p1

    .line 24
    :cond_6
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ff;->a(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 25
    :cond_7
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fq;

    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fk;

    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ff;->a(Lcom/google/vr/sdk/widgets/video/deps/gd$b;)Lcom/google/vr/sdk/widgets/video/deps/fx;

    move-result-object p2

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ff;->a(I)Z

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ff;->a(I)Z

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fk;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fx;ZZ)V

    invoke-direct {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/fq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fi;)V

    :goto_1
    return-object v3

    .line 32
    :cond_8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fq;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/fm;

    invoke-direct {p2}, Lcom/google/vr/sdk/widgets/video/deps/fm;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fi;)V

    return-object p1

    .line 18
    :cond_9
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ff;->a(I)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    .line 19
    :cond_a
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fq;

    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fn;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gd$b;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fn;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/fq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fi;)V

    :goto_2
    return-object v3

    .line 15
    :cond_b
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ff;->a(I)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    .line 16
    :cond_c
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/fq;

    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fe;

    const/4 v0, 0x0

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gd$b;->b:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/fe;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/fq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fi;)V

    :goto_3
    return-object v3

    .line 14
    :cond_d
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fq;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fo;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gd$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/fo;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fi;)V

    return-object p1

    .line 23
    :cond_e
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fq;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fj;

    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ff;->b(Lcom/google/vr/sdk/widgets/video/deps/gd$b;)Lcom/google/vr/sdk/widgets/video/deps/gf;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/fj;-><init>(Lcom/google/vr/sdk/widgets/video/deps/gf;)V

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fq;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fi;)V

    return-object p1
.end method
