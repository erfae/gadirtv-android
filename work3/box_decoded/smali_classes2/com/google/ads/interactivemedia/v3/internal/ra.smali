.class public final Lcom/google/ads/interactivemedia/v3/internal/ra;
.super Lcom/google/ads/interactivemedia/v3/internal/qs;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/internal/qs<",
        "Lcom/google/ads/interactivemedia/v3/internal/qy;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/ads/interactivemedia/v3/internal/dg;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/qy;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/internal/qx;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/qy;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/ads/interactivemedia/v3/internal/rn;",
            "Lcom/google/ads/interactivemedia/v3/internal/qy;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/ads/interactivemedia/v3/internal/qy;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/internal/qy;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/internal/qx;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/google/ads/interactivemedia/v3/internal/sw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dc;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/dc;-><init>()V

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/dc;->a()Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ra;->a:Lcom/google/ads/interactivemedia/v3/internal/dg;

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/sw;[Lcom/google/ads/interactivemedia/v3/internal/rq;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/qs;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/sw;->a()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/sw;->d()Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    new-instance p1, Ljava/util/IdentityHashMap;

    .line 7
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->f:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/HashMap;

    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->g:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->e:Ljava/util/List;

    new-instance p1, Ljava/util/HashSet;

    .line 11
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->j:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    .line 12
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->c:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    .line 13
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->h:Ljava/util/Set;

    .line 14
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(Ljava/util/Collection;)V

    return-void
.end method

.method private final a(III)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->e:Ljava/util/List;

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->e:Ljava/util/List;

    .line 46
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/qy;

    .line 47
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->d:I

    .line 48
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->e:I

    add-int/2addr v1, p3

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->e:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final a(ILjava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/ads/interactivemedia/v3/internal/qy;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/qy;

    add-int/lit8 v1, p1, 0x1

    if-lez p1, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->e:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    .line 21
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/qy;

    .line 22
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/qy;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/rk;->i()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v3

    .line 23
    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/qy;->e:I

    .line 24
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v3

    add-int/2addr v2, v3

    .line 23
    invoke-virtual {v0, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/qy;->a(II)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/qy;->a(II)V

    .line 26
    :goto_1
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/rk;->i()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(III)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->e:Ljava/util/List;

    .line 28
    invoke-interface {v2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->g:Ljava/util/Map;

    .line 29
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->b:Ljava/lang/Object;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/qs;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/rq;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/qk;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->h:Ljava/util/Set;

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/qs;->b(Ljava/lang/Object;)V

    :goto_2
    move p1, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/qx;)V
    .locals 1

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->i:Z

    if-nez p1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ra;->l()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->i:Z

    :cond_0
    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/qy;)V
    .locals 1

    .line 78
    iget-boolean v0, p1, Lcom/google/ads/interactivemedia/v3/internal/qy;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/qy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->h:Ljava/util/Set;

    .line 79
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/qs;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/qy;Lcom/google/ads/interactivemedia/v3/internal/er;)V
    .locals 2

    .line 109
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/qy;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->e:Ljava/util/List;

    .line 110
    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/qy;->d:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/qy;

    .line 111
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result p2

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->e:I

    iget v1, p1, Lcom/google/ads/interactivemedia/v3/internal/qy;->e:I

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    if-eqz p2, :cond_0

    .line 112
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/qy;->d:I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(III)V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ra;->j()V

    return-void
.end method

.method private final declared-synchronized a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/internal/qx;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->c:Ljava/util/Set;

    .line 70
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 69
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/qx;

    const/4 p1, 0x0

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final b(ILjava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/google/ads/interactivemedia/v3/internal/rq;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 34
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->d:Landroid/os/Handler;

    .line 35
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/rq;

    .line 36
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/rq;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/qy;

    .line 39
    invoke-direct {v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/qy;-><init>(Lcom/google/ads/interactivemedia/v3/internal/rq;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->b:Ljava/util/List;

    .line 40
    invoke-interface {v2, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    if-eqz v0, :cond_2

    .line 41
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/qz;

    const/4 v2, 0x0

    .line 42
    invoke-direct {p2, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/qz;-><init>(ILjava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/qx;)V

    const/4 p1, 0x0

    .line 43
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method static synthetic i()Lcom/google/ads/interactivemedia/v3/internal/dg;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ra;->a:Lcom/google/ads/interactivemedia/v3/internal/dg;

    return-object v0
.end method

.method private final j()V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(Lcom/google/ads/interactivemedia/v3/internal/qx;)V

    return-void
.end method

.method private final k()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->i:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->j:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    .line 114
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->j:Ljava/util/Set;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/qv;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 115
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/qv;-><init>(Ljava/util/Collection;Lcom/google/ads/interactivemedia/v3/internal/sw;)V

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(Lcom/google/ads/interactivemedia/v3/internal/er;)V

    .line 116
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ra;->l()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    .line 117
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private final l()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->d:Landroid/os/Handler;

    .line 77
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final m()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->h:Ljava/util/Set;

    .line 63
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/qy;

    .line 66
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/qy;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/qs;->b(Ljava/lang/Object;)V

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;I)I
    .locals 0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/qy;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/qy;->e:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)Lcom/google/ads/interactivemedia/v3/internal/rn;
    .locals 3

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 49
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/qv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 50
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/qv;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object p1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->g:Ljava/util/Map;

    .line 52
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/qy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/qy;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/qw;

    const/4 v2, 0x0

    .line 53
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/qw;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/qy;-><init>(Lcom/google/ads/interactivemedia/v3/internal/rq;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->f:Z

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/qs;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/rq;)V

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->h:Ljava/util/Set;

    .line 55
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/qs;->a(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->c:Ljava/util/List;

    .line 57
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    .line 58
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/rk;->b(Lcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/zt;J)Lcom/google/ads/interactivemedia/v3/internal/rh;

    move-result-object p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->f:Ljava/util/IdentityHashMap;

    .line 59
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ra;->m()V

    return-object p1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/ro;
    .locals 7

    const/4 v0, 0x0

    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/qy;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/qy;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/qy;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-wide v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    iget-wide v4, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/qy;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final declared-synchronized a(I)Lcom/google/ads/interactivemedia/v3/internal/rq;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->b:Ljava/util/List;

    .line 76
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/qy;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/qy;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final a()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a(ILcom/google/ads/interactivemedia/v3/internal/rq;)V
    .locals 0

    monitor-enter p0

    .line 15
    :try_start_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ra;->b(ILjava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V
    .locals 2

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/qs;->a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    new-instance p1, Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/qu;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/qu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ra;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->d:Landroid/os/Handler;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->b:Ljava/util/List;

    .line 83
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ra;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->b:Ljava/util/List;

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/sw;->a(II)Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->b:Ljava/util/List;

    .line 86
    invoke-direct {p0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(ILjava/util/Collection;)V

    .line 87
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ra;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->f:Ljava/util/IdentityHashMap;

    .line 88
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/qy;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    .line 89
    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/rk;->a(Lcom/google/ads/interactivemedia/v3/internal/rn;)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->c:Ljava/util/List;

    .line 90
    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/rh;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/rh;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->f:Ljava/util/IdentityHashMap;

    .line 91
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ra;->m()V

    .line 93
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(Lcom/google/ads/interactivemedia/v3/internal/qy;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/ads/interactivemedia/v3/internal/rq;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->b:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(ILcom/google/ads/interactivemedia/v3/internal/rq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/er;)V
    .locals 0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/qy;

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(Lcom/google/ads/interactivemedia/v3/internal/qy;Lcom/google/ads/interactivemedia/v3/internal/er;)V

    return-void
.end method

.method public final declared-synchronized a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/ads/interactivemedia/v3/internal/rq;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->b:Ljava/util/List;

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 19
    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ra;->b(ILjava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final bridge synthetic a(Landroid/os/Message;)Z
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    check-cast p1, Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(Ljava/util/Set;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ra;->k()V

    goto/16 :goto_4

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/qz;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/qz;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/sw;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    goto/16 :goto_3

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/qz;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/qz;->a:I

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/sw;->b(II)Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/qz;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/sw;->a(II)Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/qz;->a:I

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/qz;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->e:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/qy;

    iget v6, v6, Lcom/google/ads/interactivemedia/v3/internal/qy;->e:I

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->e:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/qy;

    invoke-interface {v7, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    if-gt v4, v5, :cond_8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/qy;

    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->d:I

    iput v6, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->e:I

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/qy;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/rk;->i()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v0

    add-int/2addr v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/qz;

    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/qz;->a:I

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/qz;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/sw;->a()I

    move-result v0

    if-ne v3, v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/sw;->d()Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    invoke-virtual {v4, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/sw;->b(II)Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object v4

    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    move v4, v0

    :goto_1
    const/4 v0, -0x1

    add-int/2addr v3, v0

    :goto_2
    if-lt v3, v4, :cond_8

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->e:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/qy;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->g:Ljava/util/Map;

    iget-object v7, v5, Lcom/google/ads/interactivemedia/v3/internal/qy;->b:Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/google/ads/interactivemedia/v3/internal/qy;->a:Lcom/google/ads/interactivemedia/v3/internal/rk;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/rk;->i()Lcom/google/ads/interactivemedia/v3/internal/er;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result v6

    neg-int v6, v6

    invoke-direct {p0, v3, v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(III)V

    iput-boolean v2, v5, Lcom/google/ads/interactivemedia/v3/internal/qy;->f:Z

    invoke-direct {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(Lcom/google/ads/interactivemedia/v3/internal/qy;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/qz;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/internal/qz;->a:I

    iget-object v4, p1, Lcom/google/ads/interactivemedia/v3/internal/qz;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/sw;->a(II)Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/qz;->a:I

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/qz;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-direct {p0, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(ILjava/util/Collection;)V

    :cond_8
    :goto_3
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/qz;->c:Lcom/google/ads/interactivemedia/v3/internal/qx;

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(Lcom/google/ads/interactivemedia/v3/internal/qx;)V

    :goto_4
    return v2
.end method

.method protected final b()V
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/qs;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->h:Ljava/util/Set;

    .line 62
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final declared-synchronized b(I)V
    .locals 5

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(I)Lcom/google/ads/interactivemedia/v3/internal/rq;

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    .line 103
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->d:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->b:Ljava/util/List;

    .line 104
    invoke-static {v3, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/util/List;II)V

    if-eqz v2, :cond_0

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/qz;

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v3, p1, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/qz;-><init>(ILjava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/qx;)V

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/qs;->c()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->e:Ljava/util/List;

    .line 95
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->h:Ljava/util/Set;

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->g:Ljava/util/Map;

    .line 97
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 98
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/sw;->d()Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->d:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->i:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->j:Ljava/util/Set;

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->c:Ljava/util/Set;

    .line 101
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ra;->a(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 71
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/sw;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 72
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/sw;->d()Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->b:Ljava/util/List;

    .line 73
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/sw;->a(II)Lcom/google/ads/interactivemedia/v3/internal/sw;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->k:Lcom/google/ads/interactivemedia/v3/internal/sw;

    .line 74
    :goto_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/qv;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ra;->b:Ljava/util/List;

    .line 75
    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/qv;-><init>(Ljava/util/Collection;Lcom/google/ads/interactivemedia/v3/internal/sw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Lcom/google/ads/interactivemedia/v3/internal/dg;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ra;->a:Lcom/google/ads/interactivemedia/v3/internal/dg;

    return-object v0
.end method
