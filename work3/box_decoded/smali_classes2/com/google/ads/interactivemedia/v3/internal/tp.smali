.class public final Lcom/google/ads/interactivemedia/v3/internal/tp;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/st;
.implements Lcom/google/ads/interactivemedia/v3/internal/sv;
.implements Lcom/google/ads/interactivemedia/v3/internal/aak;
.implements Lcom/google/ads/interactivemedia/v3/internal/aao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/ads/interactivemedia/v3/internal/tq;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/internal/st;",
        "Lcom/google/ads/interactivemedia/v3/internal/sv;",
        "Lcom/google/ads/interactivemedia/v3/internal/aak;",
        "Lcom/google/ads/interactivemedia/v3/internal/aao;"
    }
.end annotation


# instance fields
.field public final a:I

.field b:Z

.field private final c:[I

.field private final d:[Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private final e:[Z

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/tq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/su;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/su<",
            "Lcom/google/ads/interactivemedia/v3/internal/tp<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/ry;

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/aar;

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/tm;

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/ads/interactivemedia/v3/internal/tg;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/tg;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/google/ads/interactivemedia/v3/internal/ss;

.field private final n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

.field private final o:Lcom/google/ads/interactivemedia/v3/internal/ti;

.field private p:Lcom/google/ads/interactivemedia/v3/internal/tl;

.field private q:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private r:Lcom/google/ads/interactivemedia/v3/internal/to;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/to<",
            "TT;>;"
        }
    .end annotation
.end field

.field private s:J

.field private t:J

.field private u:I

.field private v:Lcom/google/ads/interactivemedia/v3/internal/tg;

.field private final w:Lcom/google/ads/interactivemedia/v3/internal/aaa;


# direct methods
.method public constructor <init>(I[I[Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/tq;Lcom/google/ads/interactivemedia/v3/internal/su;Lcom/google/ads/interactivemedia/v3/internal/zt;JLcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;Lcom/google/ads/interactivemedia/v3/internal/aaa;Lcom/google/ads/interactivemedia/v3/internal/ry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->a:I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->c:[I

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->d:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->f:Lcom/google/ads/interactivemedia/v3/internal/tq;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->g:Lcom/google/ads/interactivemedia/v3/internal/su;

    iput-object p12, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->h:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iput-object p11, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->w:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    .line 1
    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/aar;

    const-string p4, "Loader:ChunkSampleStream"

    invoke-direct {p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/aar;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/tm;

    invoke-direct {p3}, Lcom/google/ads/interactivemedia/v3/internal/tm;-><init>()V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->j:Lcom/google/ads/interactivemedia/v3/internal/tm;

    new-instance p3, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 3
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->l:Ljava/util/List;

    .line 4
    array-length p2, p2

    new-array p3, p2, [Lcom/google/ads/interactivemedia/v3/internal/ss;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

    new-array p3, p2, [Z

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->e:[Z

    add-int/lit8 p3, p2, 0x1

    .line 5
    new-array p4, p3, [I

    .line 6
    new-array p3, p3, [Lcom/google/ads/interactivemedia/v3/internal/ss;

    new-instance p5, Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p11

    invoke-static {p11}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p5, p6, p11, p9, p10}, Lcom/google/ads/interactivemedia/v3/internal/ss;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zt;Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;)V

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    const/4 p9, 0x0

    .line 8
    aput p1, p4, p9

    .line 9
    aput-object p5, p3, p9

    :goto_0
    if-ge p9, p2, :cond_0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-static {p5}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p11, Lcom/google/ads/interactivemedia/v3/internal/hq;->a:Lcom/google/ads/interactivemedia/v3/internal/hq;

    .line 12
    invoke-direct {p1, p6, p5, p11, p10}, Lcom/google/ads/interactivemedia/v3/internal/ss;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zt;Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;)V

    iget-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 13
    aput-object p1, p5, p9

    add-int/lit8 p5, p9, 0x1

    .line 14
    aput-object p1, p3, p5

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->c:[I

    .line 15
    aget p1, p1, p9

    aput p1, p4, p5

    move p9, p5

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ti;

    .line 16
    invoke-direct {p1, p4, p3}, Lcom/google/ads/interactivemedia/v3/internal/ti;-><init>([I[Lcom/google/ads/interactivemedia/v3/internal/ss;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->o:Lcom/google/ads/interactivemedia/v3/internal/ti;

    iput-wide p7, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    iput-wide p7, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->t:J

    return-void
.end method

.method private final a(II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 75
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/tg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/tg;->a(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/tp;)Lcom/google/ads/interactivemedia/v3/internal/tg;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->v:Lcom/google/ads/interactivemedia/v3/internal/tg;

    return-object p0
.end method

.method private final a(I)Z
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/tg;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 56
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->h()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/tg;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-gt v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 57
    array-length v4, v2

    if-ge v0, v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    .line 58
    aget-object v0, v2, v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->h()I

    move-result v0

    invoke-virtual {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/tg;->a(I)I

    move-result v2

    if-gt v0, v2, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    return v1

    :cond_2
    return v3
.end method

.method private final b(I)Lcom/google/ads/interactivemedia/v3/internal/tg;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/tg;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/util/List;II)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->u:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->u:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/tg;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(I)V

    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 45
    array-length v2, p1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 46
    aget-object p1, p1, v1

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/tg;->a(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(I)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/tp;)[Z
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->e:[Z

    return-object p0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/tp;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->c:[I

    return-object p0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/internal/tp;)[Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->d:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-object p0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/internal/tp;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->t:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/ads/interactivemedia/v3/internal/tp;)Lcom/google/ads/interactivemedia/v3/internal/ry;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->h:Lcom/google/ads/interactivemedia/v3/internal/ry;

    return-object p0
.end method

.method private final i()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 100
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 101
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 102
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final j()V
    .locals 10

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 60
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->h()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->u:I

    add-int/lit8 v1, v1, -0x1

    .line 61
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(II)I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->u:I

    if-gt v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->u:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/tg;

    .line 63
    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/tg;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->q:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 64
    invoke-virtual {v9, v2}, Lcom/google/ads/interactivemedia/v3/internal/cz;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->h:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->a:I

    .line 65
    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/tg;->g:I

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/tg;->h:Ljava/lang/Object;

    iget-wide v7, v1, Lcom/google/ads/interactivemedia/v3/internal/tg;->i:J

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(ILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;J)V

    :cond_0
    iput-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->q:Lcom/google/ads/interactivemedia/v3/internal/cz;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final k()Lcom/google/ads/interactivemedia/v3/internal/tg;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/tg;

    return-object v0
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->b:Z

    .line 125
    invoke-virtual {v0, p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(JZ)I

    move-result p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->v:Lcom/google/ads/interactivemedia/v3/internal/tg;

    if-eqz p2, :cond_1

    .line 126
    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/tg;->a(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 127
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->h()I

    move-result v0

    sub-int/2addr p2, v0

    .line 128
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 129
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->d(I)V

    .line 130
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->j()V

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->g()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->v:Lcom/google/ads/interactivemedia/v3/internal/tg;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/tg;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 78
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->h()I

    move-result v2

    if-gt v0, v2, :cond_1

    return v1

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->j()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->b:Z

    .line 80
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;ZZ)I

    move-result p1

    return p1
.end method

.method public final a(JLcom/google/ads/interactivemedia/v3/internal/eg;)J
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->f:Lcom/google/ads/interactivemedia/v3/internal/tq;

    .line 47
    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/tq;->a(JLcom/google/ads/interactivemedia/v3/internal/eg;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJLjava/io/IOException;I)Lcom/google/ads/interactivemedia/v3/internal/aal;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    check-cast v7, Lcom/google/ads/interactivemedia/v3/internal/tl;

    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/tl;->d()J

    move-result-wide v1

    instance-of v8, v7, Lcom/google/ads/interactivemedia/v3/internal/tg;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v9, v3, -0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    if-eqz v8, :cond_1

    invoke-direct {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(I)Z

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
    new-instance v14, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide v1, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->c:J

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/tl;->e()Landroid/net/Uri;

    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/tl;->f()Ljava/util/Map;

    invoke-direct {v14}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/rl;

    iget v1, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->e:I

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->a:I

    iget-object v3, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v4, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->g:I

    iget-object v5, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->h:Ljava/lang/Object;

    iget-wide v10, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->i:J

    invoke-static {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v21

    iget-wide v10, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    invoke-static {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v23

    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v24}, Lcom/google/ads/interactivemedia/v3/internal/rl;-><init>(IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/aai;

    move-object/from16 v11, p6

    move/from16 v1, p7

    invoke-direct {v10, v11, v1}, Lcom/google/ads/interactivemedia/v3/internal/aai;-><init>(Ljava/io/IOException;I)V

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v12, :cond_2

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->a(Lcom/google/ads/interactivemedia/v3/internal/aai;)J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_2

    :cond_2
    move-wide v5, v15

    :goto_2
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->f:Lcom/google/ads/interactivemedia/v3/internal/tq;

    move-object v2, v7

    move v3, v12

    move-object/from16 v4, p6

    invoke-interface/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/tq;->a(Lcom/google/ads/interactivemedia/v3/internal/tl;ZLjava/lang/Exception;J)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v12, :cond_4

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/aar;->a:Lcom/google/ads/interactivemedia/v3/internal/aal;

    if-eqz v8, :cond_6

    invoke-direct {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/tp;->b(I)Lcom/google/ads/interactivemedia/v3/internal/tg;

    move-result-object v3

    if-ne v3, v7, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->t:J

    iput-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    goto :goto_4

    :cond_4
    const-string v1, "ChunkSampleStream"

    const-string v3, "Ignoring attempt to cancel non-cancelable load."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_4
    if-nez v1, :cond_8

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->b(Lcom/google/ads/interactivemedia/v3/internal/aai;)J

    move-result-wide v3

    cmp-long v1, v3, v15

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-static {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(ZJ)Lcom/google/ads/interactivemedia/v3/internal/aal;

    move-result-object v1

    goto :goto_5

    :cond_7
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/aar;->b:Lcom/google/ads/interactivemedia/v3/internal/aal;

    :cond_8
    :goto_5
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aal;->a()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->h:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget v15, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->e:I

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->a:I

    iget-object v5, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v6, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->g:I

    iget-object v8, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->h:Ljava/lang/Object;

    iget-wide v9, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->i:J

    move/from16 p2, v3

    iget-wide v2, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    move/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v8

    move-wide/from16 v20, v9

    move-wide/from16 v22, v2

    move-object/from16 v24, p6

    move/from16 v25, p2

    invoke-virtual/range {v13 .. v25}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz p2, :cond_9

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->p:Lcom/google/ads/interactivemedia/v3/internal/tl;

    iget-wide v2, v7, Lcom/google/ads/interactivemedia/v3/internal/tl;->c:J

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->g:Lcom/google/ads/interactivemedia/v3/internal/su;

    invoke-interface {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/su;->a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V

    :cond_9
    return-object v1
.end method

.method public final a(JI)Lcom/google/ads/interactivemedia/v3/internal/tn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/ads/interactivemedia/v3/internal/tn;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 118
    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->c:[I

    .line 119
    aget v1, v1, v0

    if-ne v1, p3, :cond_0

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->e:[Z

    .line 120
    aget-boolean p3, p3, v0

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->e:[Z

    .line 121
    aput-boolean v1, p3, v0

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 122
    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(JZ)Z

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/tn;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 123
    aget-object p2, p2, v0

    invoke-direct {p1, p0, p0, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/tn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/tp;Lcom/google/ads/interactivemedia/v3/internal/tp;Lcom/google/ads/interactivemedia/v3/internal/ss;I)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 124
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final a()Lcom/google/ads/interactivemedia/v3/internal/tq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->f:Lcom/google/ads/interactivemedia/v3/internal/tq;

    return-object v0
.end method

.method public final a(JZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->g()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 32
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/ss;->g()I

    move-result p3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 33
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(JZZ)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 34
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->g()I

    move-result p1

    if-le p1, p3, :cond_1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 35
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->m()J

    move-result-wide p2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 36
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 37
    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->e:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, p2, p3, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(JZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(II)I

    move-result p1

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->u:I

    .line 39
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 40
    invoke-static {p2, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/util/List;II)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->u:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->u:I

    :cond_2
    return-void
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/tl;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->p:Lcom/google/ads/interactivemedia/v3/internal/tl;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->f:Lcom/google/ads/interactivemedia/v3/internal/tq;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/tq;->a(Lcom/google/ads/interactivemedia/v3/internal/tl;)V

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->c:J

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->e()Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->f()Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->d()J

    invoke-direct {v4}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->c:J

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->h:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->e:I

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->a:I

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v8, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->g:I

    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->h:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->i:J

    iget-wide v12, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    invoke-virtual/range {v3 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/ry;->b(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->g:Lcom/google/ads/interactivemedia/v3/internal/su;

    invoke-interface {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/su;->a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/tl;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->p:Lcom/google/ads/interactivemedia/v3/internal/tl;

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->v:Lcom/google/ads/interactivemedia/v3/internal/tg;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->c:J

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->e()Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->f()Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->d()J

    invoke-direct {v4}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->c:J

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->h:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->e:I

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->a:I

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v8, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->g:I

    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->h:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->i:J

    iget-wide v12, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    invoke-virtual/range {v3 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/ry;->c(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->i()V

    goto :goto_0

    :cond_0
    instance-of v1, v1, Lcom/google/ads/interactivemedia/v3/internal/tg;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/tp;->b(I)Lcom/google/ads/interactivemedia/v3/internal/tg;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->t:J

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->g:Lcom/google/ads/interactivemedia/v3/internal/su;

    invoke-interface {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/su;->a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/to;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/to<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->r:Lcom/google/ads/interactivemedia/v3/internal/to;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 96
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->e()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 97
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 98
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->e()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 99
    invoke-virtual {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(Lcom/google/ads/interactivemedia/v3/internal/aao;)V

    return-void
.end method

.method public final b(J)V
    .locals 10

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->t:J

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->g()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/tg;

    .line 105
    iget-wide v4, v2, Lcom/google/ads/interactivemedia/v3/internal/tg;->i:J

    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    .line 106
    iget-wide v4, v2, Lcom/google/ads/interactivemedia/v3/internal/tg;->a:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v4, v7

    if-nez v9, :cond_0

    move-object v3, v2

    goto :goto_1

    :cond_0
    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 107
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/tg;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ss;->c(I)Z

    move-result v2

    goto :goto_3

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 108
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->e()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 109
    :goto_2
    invoke-virtual {v2, p1, p2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(JZ)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_6

    .line 107
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 110
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->h()I

    move-result v2

    .line 111
    invoke-direct {p0, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(II)I

    move-result v2

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->u:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 112
    array-length v3, v2

    :goto_4
    if-ge v0, v3, :cond_5

    aget-object v4, v2, v0

    .line 113
    invoke-virtual {v4, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(JZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->b:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->u:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 115
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->e()V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 116
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->c()V

    .line 117
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->i()V

    return-void

    .line 109
    :cond_8
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->b:Z

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 66
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 67
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->f()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->f:Lcom/google/ads/interactivemedia/v3/internal/tq;

    .line 68
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/tq;->a()V

    :cond_0
    return-void
.end method

.method public final c(J)Z
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    goto :goto_0

    .line 28
    :cond_1
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->l:Ljava/util/List;

    .line 18
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->k()Lcom/google/ads/interactivemedia/v3/internal/tg;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/ads/interactivemedia/v3/internal/tg;->j:J

    :goto_0
    move-object v11, v3

    move-wide v9, v4

    .line 17
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->f:Lcom/google/ads/interactivemedia/v3/internal/tq;

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->j:Lcom/google/ads/interactivemedia/v3/internal/tm;

    move-wide/from16 v7, p1

    .line 19
    invoke-interface/range {v6 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/tq;->a(JJLjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/tm;)V

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->j:Lcom/google/ads/interactivemedia/v3/internal/tm;

    iget-boolean v4, v3, Lcom/google/ads/interactivemedia/v3/internal/tm;->b:Z

    iget-object v5, v3, Lcom/google/ads/interactivemedia/v3/internal/tm;->a:Lcom/google/ads/interactivemedia/v3/internal/tl;

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/google/ads/interactivemedia/v3/internal/tm;->a:Lcom/google/ads/interactivemedia/v3/internal/tl;

    iput-boolean v2, v3, Lcom/google/ads/interactivemedia/v3/internal/tm;->b:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz v4, :cond_2

    iput-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    iput-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->b:Z

    return v3

    :cond_2
    if-nez v5, :cond_3

    return v2

    :cond_3
    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->p:Lcom/google/ads/interactivemedia/v3/internal/tl;

    .line 20
    instance-of v4, v5, Lcom/google/ads/interactivemedia/v3/internal/tg;

    if-eqz v4, :cond_6

    .line 21
    move-object v4, v5

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/tg;

    if-eqz v1, :cond_5

    iget-wide v8, v4, Lcom/google/ads/interactivemedia/v3/internal/tg;->i:J

    iget-wide v10, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 22
    invoke-virtual {v1, v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(J)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 23
    array-length v8, v1

    :goto_1
    if-ge v2, v8, :cond_4

    aget-object v9, v1, v2

    iget-wide v10, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    .line 24
    invoke-virtual {v9, v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iput-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    :cond_5
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->o:Lcom/google/ads/interactivemedia/v3/internal/ti;

    .line 25
    invoke-virtual {v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/tg;->a(Lcom/google/ads/interactivemedia/v3/internal/ti;)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :cond_6
    instance-of v1, v5, Lcom/google/ads/interactivemedia/v3/internal/tt;

    if-eqz v1, :cond_7

    .line 28
    move-object v1, v5

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/tt;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->o:Lcom/google/ads/interactivemedia/v3/internal/ti;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/tt;->a(Lcom/google/ads/interactivemedia/v3/internal/ti;)V

    .line 26
    :cond_7
    :goto_2
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->w:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iget v4, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->e:I

    .line 29
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->a(I)I

    move-result v2

    .line 30
    invoke-virtual {v1, v5, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(Lcom/google/ads/interactivemedia/v3/internal/aan;Lcom/google/ads/interactivemedia/v3/internal/aak;I)J

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->h:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 31
    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-direct {v7, v1}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    iget v8, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->e:I

    iget v9, v0, Lcom/google/ads/interactivemedia/v3/internal/tp;->a:I

    iget-object v10, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v11, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->g:I

    iget-object v12, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->h:Ljava/lang/Object;

    iget-wide v13, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->i:J

    iget-wide v1, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    move-wide v15, v1

    invoke-virtual/range {v6 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    return v3

    :cond_8
    :goto_3
    return v2
.end method

.method public final d()J
    .locals 4

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->b:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->t:J

    .line 48
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->k()Lcom/google/ads/interactivemedia/v3/internal/tg;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/tg;->h()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/tg;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, v2, Lcom/google/ads/interactivemedia/v3/internal/tg;->j:J

    .line 51
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 52
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->k()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->b:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 54
    :cond_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->k()Lcom/google/ads/interactivemedia/v3/internal/tg;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/tg;->j:J

    return-wide v0
.end method

.method public final f(J)V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->b()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->p:Lcom/google/ads/interactivemedia/v3/internal/tl;

    .line 81
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    instance-of v2, v0, Lcom/google/ads/interactivemedia/v3/internal/tg;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->f:Lcom/google/ads/interactivemedia/v3/internal/tq;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->l:Ljava/util/List;

    .line 84
    invoke-interface {v1, p1, p2, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/tq;->a(JLcom/google/ads/interactivemedia/v3/internal/tl;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 85
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->e()V

    if-eqz v2, :cond_3

    .line 86
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/tg;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->v:Lcom/google/ads/interactivemedia/v3/internal/tg;

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->f:Lcom/google/ads/interactivemedia/v3/internal/tq;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->l:Ljava/util/List;

    .line 87
    invoke-interface {v0, p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/tq;->a(JLjava/util/List;)I

    move-result p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_9

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 89
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_1
    if-ge p1, p2, :cond_5

    .line 91
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, -0x1

    :cond_6
    if-ne p1, v1, :cond_7

    goto :goto_2

    .line 92
    :cond_7
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->k()Lcom/google/ads/interactivemedia/v3/internal/tg;

    move-result-object p2

    iget-wide v4, p2, Lcom/google/ads/interactivemedia/v3/internal/tg;->j:J

    .line 93
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/tp;->b(I)Lcom/google/ads/interactivemedia/v3/internal/tg;

    move-result-object p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->k:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->t:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    :cond_8
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->b:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->h:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->a:I

    .line 95
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/tg;->i:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(IJJ)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->i:Lcom/google/ads/interactivemedia/v3/internal/aar;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result v0

    return v0
.end method

.method final g()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->s:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->m:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 69
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->n:[Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 70
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 71
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->f:Lcom/google/ads/interactivemedia/v3/internal/tq;

    .line 72
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/tq;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tp;->r:Lcom/google/ads/interactivemedia/v3/internal/to;

    if-eqz v0, :cond_1

    .line 73
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/to;->a(Lcom/google/ads/interactivemedia/v3/internal/tp;)V

    :cond_1
    return-void
.end method
