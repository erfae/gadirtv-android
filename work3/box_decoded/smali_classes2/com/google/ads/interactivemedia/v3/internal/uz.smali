.class public final Lcom/google/ads/interactivemedia/v3/internal/uz;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ux;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/ox;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/ads/interactivemedia/v3/internal/vb;

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private j:Z

.field private final k:Lcom/google/ads/interactivemedia/v3/internal/zt;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/vb;Lcom/google/ads/interactivemedia/v3/internal/ux;Lcom/google/ads/interactivemedia/v3/internal/zt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->e:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->a:Lcom/google/ads/interactivemedia/v3/internal/ux;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->k:Lcom/google/ads/interactivemedia/v3/internal/zt;

    new-instance p1, Ljava/util/TreeMap;

    .line 1
    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->d:Ljava/util/TreeMap;

    .line 2
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->c:Landroid/os/Handler;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ox;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/ox;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->b:Lcom/google/ads/interactivemedia/v3/internal/ox;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->g:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->h:J

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/uz;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/uz;)Lcom/google/ads/interactivemedia/v3/internal/ox;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->b:Lcom/google/ads/interactivemedia/v3/internal/ox;

    return-object p0
.end method

.method private final c()V
    .locals 5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->g:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->i:Z

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->g:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->h:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->a:Lcom/google/ads/interactivemedia/v3/internal/ux;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/ug;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ug;->a:Lcom/google/ads/interactivemedia/v3/internal/uo;

    .line 10
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/uo;->i()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/uy;
    .locals 2

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/uy;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->k:Lcom/google/ads/interactivemedia/v3/internal/zt;

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/uy;-><init>(Lcom/google/ads/interactivemedia/v3/internal/uz;Lcom/google/ads/interactivemedia/v3/internal/zt;)V

    return-object v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/vb;)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->f:J

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->e:Lcom/google/ads/interactivemedia/v3/internal/vb;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->d:Ljava/util/TreeMap;

    .line 25
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->e:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 29
    iget-wide v2, v2, Lcom/google/ads/interactivemedia/v3/internal/vb;->h:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(J)Z
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->e:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 11
    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->i:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    return v3

    .line 12
    :cond_1
    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/vb;->h:J

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->d:Ljava/util/TreeMap;

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-gez v1, :cond_2

    .line 15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->f:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->a:Lcom/google/ads/interactivemedia/v3/internal/ux;

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/ug;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ug;->a:Lcom/google/ads/interactivemedia/v3/internal/uo;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/uo;->a(J)V

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 17
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/uz;->c()V

    :cond_3
    return v2
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/internal/tl;)Z
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->e:Lcom/google/ads/interactivemedia/v3/internal/vb;

    .line 18
    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/internal/vb;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->i:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->g:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 19
    iget-wide v5, p1, Lcom/google/ads/interactivemedia/v3/internal/tl;->i:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    .line 20
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/uz;->c()V

    return v2

    :cond_2
    return v1
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->j:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method final b(Lcom/google/ads/interactivemedia/v3/internal/tl;)V
    .locals 5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 22
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 23
    :cond_1
    :goto_0
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->g:J

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/uw;

    .line 5
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/uw;->a:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/uw;->b:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->d:Ljava/util/TreeMap;

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->d:Ljava/util/TreeMap;

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uz;->d:Ljava/util/TreeMap;

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return v1
.end method
