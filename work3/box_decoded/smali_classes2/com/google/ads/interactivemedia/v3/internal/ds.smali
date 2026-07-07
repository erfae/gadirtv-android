.class final Lcom/google/ads/interactivemedia/v3/internal/ds;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/dq;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/ads/interactivemedia/v3/internal/rn;",
            "Lcom/google/ads/interactivemedia/v3/internal/dq;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/ads/interactivemedia/v3/internal/dq;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/dr;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/ry;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/hn;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/ads/interactivemedia/v3/internal/dq;",
            "Lcom/google/ads/interactivemedia/v3/internal/dp;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/internal/dq;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/google/ads/interactivemedia/v3/internal/aay;

.field private k:Lcom/google/ads/interactivemedia/v3/internal/sw;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/dr;Lcom/google/ads/interactivemedia/v3/internal/ev;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->d:Lcom/google/ads/interactivemedia/v3/internal/dr;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 1
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/sw;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    new-instance p1, Ljava/util/IdentityHashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->b:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 5
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/ry;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->e:Lcom/google/ads/interactivemedia/v3/internal/ry;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/hn;

    .line 6
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/hn;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->f:Lcom/google/ads/interactivemedia/v3/internal/hn;

    new-instance v1, Ljava/util/HashMap;

    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->g:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->h:Ljava/util/Set;

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p1, p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/rz;)V

    .line 10
    invoke-virtual {v0, p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/hn;->a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/ho;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ds;)Lcom/google/ads/interactivemedia/v3/internal/ry;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->e:Lcom/google/ads/interactivemedia/v3/internal/ry;

    return-object p0
.end method

.method private final a(II)V
    .locals 3

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    .line 92
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/dq;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->c:Ljava/util/Map;

    .line 93
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dq;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dq;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/rk;->i()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v1

    neg-int v1, v1

    .line 96
    invoke-direct {p0, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ds;->b(II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dq;->e:Z

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->i:Z

    if-eqz v1, :cond_0

    .line 97
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->c(Lcom/google/ads/interactivemedia/v3/internal/dq;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->g:Ljava/util/HashMap;

    .line 48
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/dp;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/dp;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/dp;->b:Lcom/google/ads/interactivemedia/v3/internal/rp;

    .line 49
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->b(Lcom/google/ads/interactivemedia/v3/internal/rp;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/ds;)Lcom/google/ads/interactivemedia/v3/internal/hn;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->f:Lcom/google/ads/interactivemedia/v3/internal/hn;

    return-object p0
.end method

.method private final b(II)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/dq;

    .line 31
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dq;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dq;->d:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final b(Lcom/google/ads/interactivemedia/v3/internal/dq;)V
    .locals 5

    .line 70
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/dq;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dn;

    .line 71
    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/dn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ds;)V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/do;

    .line 72
    invoke-direct {v2, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/do;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ds;Lcom/google/ads/interactivemedia/v3/internal/dq;)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->g:Ljava/util/HashMap;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/dp;

    .line 73
    invoke-direct {v4, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/rq;Lcom/google/ads/interactivemedia/v3/internal/rp;Lcom/google/ads/interactivemedia/v3/internal/rz;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/rz;)V

    .line 75
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/ho;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->j:Lcom/google/ads/interactivemedia/v3/internal/aay;

    .line 76
    invoke-interface {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Lcom/google/ads/interactivemedia/v3/internal/rp;Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    return-void
.end method

.method private final c(Lcom/google/ads/interactivemedia/v3/internal/dq;)V
    .locals 3

    .line 57
    iget-boolean v0, p1, Lcom/google/ads/interactivemedia/v3/internal/dq;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/dq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->g:Ljava/util/HashMap;

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/dp;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dp;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dp;->b:Lcom/google/ads/interactivemedia/v3/internal/rp;

    .line 59
    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/rq;->c(Lcom/google/ads/interactivemedia/v3/internal/rp;)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dp;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dp;->c:Lcom/google/ads/interactivemedia/v3/internal/rz;

    .line 60
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Lcom/google/ads/interactivemedia/v3/internal/rz;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->h:Ljava/util/Set;

    .line 61
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private final g()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->h:Ljava/util/Set;

    .line 50
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 51
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/dq;

    .line 53
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/dq;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ds;->a(Lcom/google/ads/interactivemedia/v3/internal/dq;)V

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(IILcom/google/ads/interactivemedia/v3/internal/sw;)Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->b()I

    move-result v1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ds;->a(II)V

    .line 91
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->d()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/sw;)Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/dq;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/sw;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/er;"
        }
    .end annotation

    .line 11
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    move p3, p1

    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    .line 13
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/dq;

    if-lez p3, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    .line 14
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/dq;

    .line 15
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/dq;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/rk;->i()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v2

    .line 16
    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/dq;->d:I

    .line 17
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v2

    add-int/2addr v1, v2

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dq;->a(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dq;->a(I)V

    .line 19
    :goto_1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dq;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/rk;->i()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v1

    .line 21
    invoke-direct {p0, p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ds;->b(II)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    .line 22
    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->c:Ljava/util/Map;

    .line 23
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dq;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->i:Z

    if-eqz v1, :cond_2

    .line 24
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->b(Lcom/google/ads/interactivemedia/v3/internal/dq;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->b:Ljava/util/IdentityHashMap;

    .line 25
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->h:Ljava/util/Set;

    .line 26
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->a(Lcom/google/ads/interactivemedia/v3/internal/dq;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 28
    :cond_3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->d()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/sw;)Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->b()I

    move-result v0

    .line 101
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/sw;->a()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/sw;->d()Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object p1

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/sw;->a(II)Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 104
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->d()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/sw;)Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/dq;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/internal/sw;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/er;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->a(II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ds;->a(ILjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/sw;)Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)Lcom/google/ads/interactivemedia/v3/internal/rn;
    .locals 3

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 32
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/eb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 33
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object p1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->c:Ljava/util/Map;

    .line 35
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/dq;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->h:Ljava/util/Set;

    .line 36
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->g:Ljava/util/HashMap;

    .line 37
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/dp;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/dp;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/dp;->b:Lcom/google/ads/interactivemedia/v3/internal/rp;

    .line 38
    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Lcom/google/ads/interactivemedia/v3/internal/rp;)V

    :cond_0
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dq;->c:Ljava/util/List;

    .line 39
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dq;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    .line 40
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/rk;->b(Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)Lcom/google/ads/interactivemedia/v3/internal/rh;

    move-result-object p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->b:Ljava/util/IdentityHashMap;

    .line 41
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->g()V

    return-object p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->i:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 65
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->j:Lcom/google/ads/interactivemedia/v3/internal/aay;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    .line 67
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/dq;

    .line 68
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->b(Lcom/google/ads/interactivemedia/v3/internal/dq;)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->h:Ljava/util/Set;

    .line 69
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->i:Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->b:Ljava/util/IdentityHashMap;

    .line 83
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/dq;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dq;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    .line 84
    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/rk;->a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dq;->c:Ljava/util/List;

    .line 85
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/rh;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/rh;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->b:Ljava/util/IdentityHashMap;

    .line 86
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->g()V

    .line 88
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->c(Lcom/google/ads/interactivemedia/v3/internal/dq;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->i:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->g:Ljava/util/HashMap;

    .line 77
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/dp;

    .line 78
    :try_start_0
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/dp;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/dp;->b:Lcom/google/ads/interactivemedia/v3/internal/rp;

    invoke-interface {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/rq;->c(Lcom/google/ads/interactivemedia/v3/internal/rp;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    .line 79
    invoke-static {v3, v4, v2}, Lcom/google/ads/interactivemedia/v3/internal/abh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :goto_1
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/dp;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/dp;->c:Lcom/google/ads/interactivemedia/v3/internal/rz;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Lcom/google/ads/interactivemedia/v3/internal/rz;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->g:Ljava/util/HashMap;

    .line 81
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->h:Ljava/util/Set;

    .line 82
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->i:Z

    return-void
.end method

.method public final d()Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    .line 43
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    .line 44
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    .line 45
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/dq;

    iput v1, v2, Lcom/google/ads/interactivemedia/v3/internal/dq;->d:I

    .line 46
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/dq;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/rk;->i()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/eb;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 47
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/eb;-><init>(Ljava/util/Collection;Lcom/google/ads/interactivemedia/v3/internal/sw;)V

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/er;->a:Lcom/google/ads/interactivemedia/v3/internal/er;

    return-object v0
.end method

.method final synthetic e()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->d:Lcom/google/ads/interactivemedia/v3/internal/dr;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/dr;->f()V

    return-void
.end method

.method public final f()Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->b()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ds;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 64
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ds;->d()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v0

    return-object v0
.end method
