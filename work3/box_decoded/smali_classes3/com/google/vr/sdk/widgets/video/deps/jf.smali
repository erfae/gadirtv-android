.class public Lcom/google/vr/sdk/widgets/video/deps/jf;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/is;
.implements Lcom/google/vr/sdk/widgets/video/deps/it;
.implements Lcom/google/vr/sdk/widgets/video/deps/oj$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/oj$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/jf$a;,
        Lcom/google/vr/sdk/widgets/video/deps/jf$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/vr/sdk/widgets/video/deps/jg;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/is;",
        "Lcom/google/vr/sdk/widgets/video/deps/it;",
        "Lcom/google/vr/sdk/widgets/video/deps/oj$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/jc;",
        ">;",
        "Lcom/google/vr/sdk/widgets/video/deps/oj$e;"
    }
.end annotation


# instance fields
.field public final a:I

.field b:J

.field c:Z

.field private final d:[I

.field private final e:[Lcom/google/vr/sdk/widgets/video/deps/l;

.field private final f:[Z

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/it$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/it$a<",
            "Lcom/google/vr/sdk/widgets/video/deps/jf<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/oi;

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/oj;

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/je;

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/iz;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/iz;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/google/vr/sdk/widgets/video/deps/ir;

.field private final p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

.field private final q:Lcom/google/vr/sdk/widgets/video/deps/jb;

.field private r:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private s:Lcom/google/vr/sdk/widgets/video/deps/jf$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/jf$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private t:J

.field private u:J


# direct methods
.method public constructor <init>(I[I[Lcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/jg;Lcom/google/vr/sdk/widgets/video/deps/it$a;Lcom/google/vr/sdk/widgets/video/deps/nl;JLcom/google/vr/sdk/widgets/video/deps/oi;Lcom/google/vr/sdk/widgets/video/deps/ig$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            "TT;",
            "Lcom/google/vr/sdk/widgets/video/deps/it$a<",
            "Lcom/google/vr/sdk/widgets/video/deps/jf<",
            "TT;>;>;",
            "Lcom/google/vr/sdk/widgets/video/deps/nl;",
            "J",
            "Lcom/google/vr/sdk/widgets/video/deps/oi;",
            "Lcom/google/vr/sdk/widgets/video/deps/ig$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->d:[I

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->e:[Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->g:Lcom/google/vr/sdk/widgets/video/deps/jg;

    .line 6
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->h:Lcom/google/vr/sdk/widgets/video/deps/it$a;

    .line 7
    iput-object p10, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->i:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    .line 8
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->j:Lcom/google/vr/sdk/widgets/video/deps/oi;

    .line 9
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/oj;

    const-string p4, "Loader:ChunkSampleStream"

    invoke-direct {p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/oj;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->k:Lcom/google/vr/sdk/widgets/video/deps/oj;

    .line 10
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/je;

    invoke-direct {p3}, Lcom/google/vr/sdk/widgets/video/deps/je;-><init>()V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->l:Lcom/google/vr/sdk/widgets/video/deps/je;

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    .line 12
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->n:Ljava/util/List;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    .line 13
    :cond_0
    array-length p4, p2

    .line 14
    :goto_0
    new-array p5, p4, [Lcom/google/vr/sdk/widgets/video/deps/ir;

    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    .line 15
    new-array p5, p4, [Z

    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->f:[Z

    add-int/lit8 p5, p4, 0x1

    .line 16
    new-array p9, p5, [I

    .line 17
    new-array p5, p5, [Lcom/google/vr/sdk/widgets/video/deps/ir;

    .line 18
    new-instance p10, Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-direct {p10, p6}, Lcom/google/vr/sdk/widgets/video/deps/ir;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nl;)V

    iput-object p10, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    .line 19
    aput p1, p9, p3

    .line 20
    aput-object p10, p5, p3

    :goto_1
    if-ge p3, p4, :cond_1

    .line 22
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-direct {p1, p6}, Lcom/google/vr/sdk/widgets/video/deps/ir;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nl;)V

    .line 23
    iget-object p10, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aput-object p1, p10, p3

    add-int/lit8 p10, p3, 0x1

    .line 24
    aput-object p1, p5, p10

    .line 25
    aget p1, p2, p3

    aput p1, p9, p10

    move p3, p10

    goto :goto_1

    .line 27
    :cond_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/jb;

    invoke-direct {p1, p9, p5}, Lcom/google/vr/sdk/widgets/video/deps/jb;-><init>([I[Lcom/google/vr/sdk/widgets/video/deps/ir;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->q:Lcom/google/vr/sdk/widgets/video/deps/jb;

    .line 28
    iput-wide p7, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->t:J

    .line 29
    iput-wide p7, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->u:J

    return-void
.end method

.method private a(II)V
    .locals 2

    sub-int v0, p1, p2

    const/4 v1, 0x0

    .line 259
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/jf;->b(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    .line 261
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->b(II)I

    move-result p1

    :goto_0
    if-gt v0, p1, :cond_1

    .line 263
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(I)Z
    .locals 5

    .line 245
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/iz;

    .line 246
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->f()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/iz;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 249
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->f()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/iz;->a(I)I

    move-result v4

    if-le v2, v4, :cond_1

    return v3

    :cond_2
    return v1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/jc;)Z
    .locals 0

    .line 244
    instance-of p1, p1, Lcom/google/vr/sdk/widgets/video/deps/iz;

    return p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/jf;)[Z
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->f:[Z

    return-object p0
.end method

.method private b(II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 272
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/iz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/iz;->a(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    .line 276
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private b(I)V
    .locals 2

    const/4 v0, 0x0

    .line 255
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->b(II)I

    move-result p1

    if-lez p1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-static {v1, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/util/List;II)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/jf;)[I
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->d:[I

    return-object p0
.end method

.method private c(I)V
    .locals 8

    .line 266
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/iz;

    .line 267
    iget-object v7, p1, Lcom/google/vr/sdk/widgets/video/deps/iz;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 268
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->r:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {v7, v0}, Lcom/google/vr/sdk/widgets/video/deps/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->i:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->a:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/iz;->e:I

    iget-object v4, p1, Lcom/google/vr/sdk/widgets/video/deps/iz;->f:Ljava/lang/Object;

    iget-wide v5, p1, Lcom/google/vr/sdk/widgets/video/deps/iz;->g:J

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(ILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;J)V

    .line 270
    :cond_0
    iput-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->r:Lcom/google/vr/sdk/widgets/video/deps/l;

    return-void
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/jf;)[Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->e:[Lcom/google/vr/sdk/widgets/video/deps/l;

    return-object p0
.end method

.method static synthetic d(Lcom/google/vr/sdk/widgets/video/deps/jf;)J
    .locals 2

    .line 291
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->u:J

    return-wide v0
.end method

.method private d(I)Lcom/google/vr/sdk/widgets/video/deps/iz;
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/iz;

    .line 279
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/util/List;II)V

    .line 280
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/iz;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(I)V

    .line 281
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 282
    aget-object p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/iz;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic e(Lcom/google/vr/sdk/widgets/video/deps/jf;)Lcom/google/vr/sdk/widgets/video/deps/ig$a;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->i:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    return-object p0
.end method

.method private h()Lcom/google/vr/sdk/widgets/video/deps/iz;
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/iz;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I
    .locals 7

    .line 119
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->c:Z

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->b:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 122
    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;ZZJ)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_1

    .line 124
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->f()I

    move-result p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/jf;->a(II)V

    :cond_1
    return p1
.end method

.method public a(JLcom/google/vr/sdk/widgets/video/deps/ad;)J
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->g:Lcom/google/vr/sdk/widgets/video/deps/jg;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/jg;->a(JLcom/google/vr/sdk/widgets/video/deps/ad;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)Lcom/google/vr/sdk/widgets/video/deps/jf$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/vr/sdk/widgets/video/deps/jf$a;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->d:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_0

    .line 43
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->f:[Z

    aget-boolean p3, p3, v0

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 44
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->f:[Z

    aput-boolean v1, p3, v0

    .line 45
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object p3, p3, v0

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->k()V

    .line 46
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(JZZ)I

    .line 47
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/jf$a;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    aget-object p2, p2, v0

    invoke-direct {p1, p0, p0, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/jf$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/jf;Lcom/google/vr/sdk/widgets/video/deps/jf;Lcom/google/vr/sdk/widgets/video/deps/ir;I)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a()Lcom/google/vr/sdk/widgets/video/deps/jg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->g:Lcom/google/vr/sdk/widgets/video/deps/jg;

    return-object v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jc;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->e()J

    move-result-wide v25

    .line 157
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jf;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;)Z

    move-result v8

    .line 158
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x1

    add-int/lit8 v10, v1, -0x1

    const/4 v11, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, v25, v1

    if-eqz v3, :cond_1

    if-eqz v8, :cond_1

    .line 160
    invoke-direct {v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/jf;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x1

    :goto_1
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v12, :cond_2

    .line 162
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->j:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget v2, v7, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/oi;->a(IJLjava/io/IOException;I)J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_2

    :cond_2
    move-wide v5, v13

    :goto_2
    const/4 v15, 0x0

    .line 165
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->g:Lcom/google/vr/sdk/widgets/video/deps/jg;

    move-object/from16 v2, p1

    move v3, v12

    move-object/from16 v4, p6

    invoke-interface/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/jg;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;ZLjava/lang/Exception;J)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v12, :cond_4

    .line 167
    sget-object v15, Lcom/google/vr/sdk/widgets/video/deps/oj;->c:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    if-eqz v8, :cond_5

    .line 169
    invoke-direct {v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/jf;->d(I)Lcom/google/vr/sdk/widgets/video/deps/iz;

    move-result-object v1

    if-ne v1, v7, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 170
    :goto_3
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 171
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 172
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->u:J

    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->t:J

    goto :goto_4

    :cond_4
    const-string v1, "ChunkSampleStream"

    const-string v2, "Ignoring attempt to cancel non-cancelable load."

    .line 174
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    if-nez v15, :cond_7

    .line 176
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->j:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget v2, v7, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 177
    invoke-interface/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/oi;->b(IJLjava/io/IOException;I)J

    move-result-wide v1

    cmp-long v3, v1, v13

    if-eqz v3, :cond_6

    .line 179
    invoke-static {v11, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(ZJ)Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-result-object v1

    goto :goto_5

    .line 180
    :cond_6
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/oj;->d:Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    :goto_5
    move-object v15, v1

    :cond_7
    move-object v1, v15

    .line 181
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/oj$b;->a()Z

    move-result v2

    xor-int/2addr v2, v9

    move/from16 v28, v2

    .line 182
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->i:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v9, v7, Lcom/google/vr/sdk/widgets/video/deps/jc;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->f()Landroid/net/Uri;

    move-result-object v10

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->g()Ljava/util/Map;

    move-result-object v11

    iget v12, v7, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->a:I

    iget-object v14, v7, Lcom/google/vr/sdk/widgets/video/deps/jc;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v15, v7, Lcom/google/vr/sdk/widgets/video/deps/jc;->e:I

    iget-object v3, v7, Lcom/google/vr/sdk/widgets/video/deps/jc;->f:Ljava/lang/Object;

    move-object/from16 v16, v3

    iget-wide v3, v7, Lcom/google/vr/sdk/widgets/video/deps/jc;->g:J

    move-wide/from16 v17, v3

    iget-wide v3, v7, Lcom/google/vr/sdk/widgets/video/deps/jc;->h:J

    move-wide/from16 v19, v3

    move-wide/from16 v21, p2

    move-wide/from16 v23, p4

    move-object/from16 v27, p6

    .line 185
    invoke-virtual/range {v8 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v2, :cond_8

    .line 187
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->h:Lcom/google/vr/sdk/widgets/video/deps/it$a;

    invoke-interface {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/it$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    :cond_8
    return-object v1
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;
    .locals 0

    .line 285
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/jc;

    invoke-virtual/range {p0 .. p7}, Lcom/google/vr/sdk/widgets/video/deps/jf;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;JJLjava/io/IOException;I)Lcom/google/vr/sdk/widgets/video/deps/oj$b;

    move-result-object p1

    return-object p1
.end method

.method public a(J)V
    .locals 6

    .line 223
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->k:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->b()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->g:Lcom/google/vr/sdk/widgets/video/deps/jg;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->n:Ljava/util/List;

    invoke-interface {v1, p1, p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/jg;->a(JLjava/util/List;)I

    move-result p1

    if-gt v0, p1, :cond_1

    return-void

    :cond_1
    :goto_0
    if-ge p1, v0, :cond_3

    .line 231
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/jf;->a(I)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_1
    if-ne p1, v0, :cond_4

    return-void

    .line 237
    :cond_4
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->h()Lcom/google/vr/sdk/widgets/video/deps/iz;

    move-result-object p2

    iget-wide v4, p2, Lcom/google/vr/sdk/widgets/video/deps/iz;->h:J

    .line 238
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/jf;->d(I)Lcom/google/vr/sdk/widgets/video/deps/iz;

    move-result-object p1

    .line 239
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 240
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->u:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->t:J

    :cond_5
    const/4 p2, 0x0

    .line 241
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->c:Z

    .line 242
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->i:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->a:I

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/iz;->g:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(IJJ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(JZ)V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->e()I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(JZZ)V

    .line 33
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->e()I

    move-result p1

    if-le p1, v0, :cond_1

    .line 35
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->j()J

    move-result-wide v0

    const/4 p2, 0x0

    .line 36
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v3, v2

    if-ge p2, v3, :cond_0

    .line 37
    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->f:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v2, v0, v1, p3, v3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(JZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/jf;->b(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jc;JJ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 136
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->g:Lcom/google/vr/sdk/widgets/video/deps/jg;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/jg;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;)V

    .line 137
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->i:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->f()Landroid/net/Uri;

    move-result-object v4

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->g()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->a:I

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v9, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->e:I

    iget-object v10, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->f:Ljava/lang/Object;

    iget-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->g:J

    iget-wide v13, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->h:J

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->e()J

    move-result-wide v19

    .line 141
    invoke-virtual/range {v2 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJJ)V

    .line 142
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->h:Lcom/google/vr/sdk/widgets/video/deps/it$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/it$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jc;JJZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    .line 144
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->i:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->f()Landroid/net/Uri;

    move-result-object v4

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->g()Ljava/util/Map;

    move-result-object v5

    iget v6, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->a:I

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v9, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->e:I

    iget-object v10, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->f:Ljava/lang/Object;

    iget-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->g:J

    iget-wide v13, v1, Lcom/google/vr/sdk/widgets/video/deps/jc;->h:J

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/jc;->e()J

    move-result-wide v19

    .line 148
    invoke-virtual/range {v2 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->b(Lcom/google/vr/sdk/widgets/video/deps/nv;Landroid/net/Uri;Ljava/util/Map;IILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    .line 150
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a()V

    .line 151
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 152
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->h:Lcom/google/vr/sdk/widgets/video/deps/it$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/it$a;->a(Lcom/google/vr/sdk/widgets/video/deps/it;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/jf$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/jf$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->s:Lcom/google/vr/sdk/widgets/video/deps/jf$b;

    .line 101
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->m()V

    .line 102
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 103
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->m()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->k:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$e;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJ)V
    .locals 0

    .line 287
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/jc;

    invoke-virtual/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/jf;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;JJZ)V
    .locals 0

    .line 286
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/jc;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/jf;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;JJZ)V

    return-void
.end method

.method public b(J)V
    .locals 11

    .line 63
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->u:J

    .line 64
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->k()V

    .line 65
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->f()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 68
    :goto_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 69
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/iz;

    .line 70
    iget-wide v5, v4, Lcom/google/vr/sdk/widgets/video/deps/iz;->g:J

    cmp-long v7, v5, p1

    if-nez v7, :cond_1

    .line 71
    iget-wide v5, v4, Lcom/google/vr/sdk/widgets/video/deps/iz;->a:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v5, v8

    if-nez v10, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    if-lez v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 78
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    .line 79
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/iz;->a(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->c(I)Z

    move-result v0

    const-wide/high16 v3, -0x8000000000000000L

    .line 80
    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->b:J

    goto :goto_4

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    .line 82
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->e()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 83
    :goto_2
    invoke-virtual {v0, p1, p2, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(JZZ)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 84
    :goto_3
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->u:J

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->b:J

    :goto_4
    if-eqz v0, :cond_7

    .line 86
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_9

    aget-object v5, v0, v4

    .line 87
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/ir;->k()V

    .line 88
    invoke-virtual {v5, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(JZZ)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 90
    :cond_7
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->t:J

    .line 91
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->c:Z

    .line 92
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->k:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 94
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->k:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->c()V

    goto :goto_7

    .line 95
    :cond_8
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a()V

    .line 96
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length p2, p1

    :goto_6
    if-ge v2, p2, :cond_9

    aget-object v0, p1, v2

    .line 97
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    return-void
.end method

.method public b()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b_(J)I
    .locals 4

    .line 126
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->i()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 129
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->n()I

    move-result v1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    if-lez v1, :cond_3

    .line 134
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->f()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/jf;->a(II)V

    :cond_3
    return v1
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->k:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a()V

    .line 116
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->k:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/oj;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->g:Lcom/google/vr/sdk/widgets/video/deps/jg;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/jg;->a()V

    :cond_0
    return-void
.end method

.method public c(J)Z
    .locals 21

    move-object/from16 v0, p0

    .line 189
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->k:Lcom/google/vr/sdk/widgets/video/deps/oj;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/oj;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 191
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 194
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->t:J

    goto :goto_0

    .line 195
    :cond_1
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->n:Ljava/util/List;

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->h()Lcom/google/vr/sdk/widgets/video/deps/iz;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/vr/sdk/widgets/video/deps/iz;->h:J

    :goto_0
    move-object v11, v3

    move-wide v9, v4

    .line 197
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->g:Lcom/google/vr/sdk/widgets/video/deps/jg;

    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->l:Lcom/google/vr/sdk/widgets/video/deps/je;

    move-wide/from16 v7, p1

    invoke-interface/range {v6 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/jg;->a(JJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/je;)V

    .line 198
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->l:Lcom/google/vr/sdk/widgets/video/deps/je;

    iget-boolean v3, v3, Lcom/google/vr/sdk/widgets/video/deps/je;->b:Z

    .line 199
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->l:Lcom/google/vr/sdk/widgets/video/deps/je;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/je;->a:Lcom/google/vr/sdk/widgets/video/deps/jc;

    .line 200
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->l:Lcom/google/vr/sdk/widgets/video/deps/je;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/je;->a()V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    .line 202
    iput-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->t:J

    .line 203
    iput-boolean v7, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->c:Z

    return v7

    :cond_2
    if-nez v4, :cond_3

    return v2

    .line 207
    :cond_3
    invoke-direct {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/jf;->a(Lcom/google/vr/sdk/widgets/video/deps/jc;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 208
    move-object v3, v4

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/iz;

    if-eqz v1, :cond_6

    .line 210
    iget-wide v8, v3, Lcom/google/vr/sdk/widgets/video/deps/iz;->g:J

    iget-wide v10, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->t:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    const-wide/high16 v10, -0x8000000000000000L

    .line 211
    :cond_5
    iput-wide v10, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->b:J

    .line 212
    iput-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->t:J

    .line 213
    :cond_6
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->q:Lcom/google/vr/sdk/widgets/video/deps/jb;

    invoke-virtual {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/iz;->a(Lcom/google/vr/sdk/widgets/video/deps/jb;)V

    .line 214
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_7
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->k:Lcom/google/vr/sdk/widgets/video/deps/oj;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->j:Lcom/google/vr/sdk/widgets/video/deps/oi;

    iget v3, v4, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    .line 216
    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/oi;->a(I)I

    move-result v2

    .line 217
    invoke-virtual {v1, v4, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/oj;->a(Lcom/google/vr/sdk/widgets/video/deps/oj$d;Lcom/google/vr/sdk/widgets/video/deps/oj$a;I)J

    move-result-wide v19

    .line 218
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->i:Lcom/google/vr/sdk/widgets/video/deps/ig$a;

    iget-object v9, v4, Lcom/google/vr/sdk/widgets/video/deps/jc;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget v10, v4, Lcom/google/vr/sdk/widgets/video/deps/jc;->c:I

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/jf;->a:I

    iget-object v12, v4, Lcom/google/vr/sdk/widgets/video/deps/jc;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v13, v4, Lcom/google/vr/sdk/widgets/video/deps/jc;->e:I

    iget-object v14, v4, Lcom/google/vr/sdk/widgets/video/deps/jc;->f:Ljava/lang/Object;

    iget-wide v1, v4, Lcom/google/vr/sdk/widgets/video/deps/jc;->g:J

    iget-wide v3, v4, Lcom/google/vr/sdk/widgets/video/deps/jc;->h:J

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-virtual/range {v8 .. v20}, Lcom/google/vr/sdk/widgets/video/deps/ig$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;IILcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJ)V

    return v7

    :cond_8
    :goto_1
    return v2
.end method

.method public d()J
    .locals 4

    .line 51
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->c:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->t:J

    return-wide v0

    .line 55
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->u:J

    .line 56
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->h()Lcom/google/vr/sdk/widgets/video/deps/iz;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/iz;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 58
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/iz;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 60
    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/iz;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 61
    :cond_4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->i()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 220
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->t:J

    return-wide v0

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->c:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/jf;->h()Lcom/google/vr/sdk/widgets/video/deps/iz;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/iz;->h:J

    :goto_0
    return-wide v0
.end method

.method f()Z
    .locals 5

    .line 253
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->t:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->o:Lcom/google/vr/sdk/widgets/video/deps/ir;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a()V

    .line 108
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->p:[Lcom/google/vr/sdk/widgets/video/deps/ir;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 109
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/jf;->s:Lcom/google/vr/sdk/widgets/video/deps/jf$b;

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/jf$b;->a(Lcom/google/vr/sdk/widgets/video/deps/jf;)V

    :cond_1
    return-void
.end method
