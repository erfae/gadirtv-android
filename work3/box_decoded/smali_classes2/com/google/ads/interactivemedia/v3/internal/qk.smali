.class public abstract Lcom/google/ads/interactivemedia/v3/internal/qk;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/rq;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/ads/interactivemedia/v3/internal/rp;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/ads/interactivemedia/v3/internal/rp;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ry;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/hn;

.field private e:Landroid/os/Looper;

.field private f:Lcom/google/ads/interactivemedia/v3/internal/er;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->b:Ljava/util/HashSet;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 3
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/ry;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/hn;

    .line 4
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/hn;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->d:Lcom/google/ads/interactivemedia/v3/internal/hn;

    return-void
.end method


# virtual methods
.method protected final a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/hn;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->d:Lcom/google/ads/interactivemedia/v3/internal/hn;

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/hn;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/hn;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/ry;
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;J)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/ro;J)Lcom/google/ads/interactivemedia/v3/internal/ry;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;J)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/ho;)V
    .locals 1

    .line 5
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->d:Lcom/google/ads/interactivemedia/v3/internal/hn;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/hn;->a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/ho;)V

    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/rz;)V
    .locals 1

    .line 8
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/rz;)V

    return-void
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/er;)V
    .locals 4

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->f:Lcom/google/ads/interactivemedia/v3/internal/er;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 32
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/rp;

    .line 33
    invoke-interface {v3, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/rp;->a(Lcom/google/ads/interactivemedia/v3/internal/rq;Lcom/google/ads/interactivemedia/v3/internal/er;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->e:Landroid/os/Looper;

    .line 20
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->b:Ljava/util/HashSet;

    .line 21
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->b:Ljava/util/HashSet;

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rp;Lcom/google/ads/interactivemedia/v3/internal/aay;)V
    .locals 3

    .line 25
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->e:Landroid/os/Looper;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 26
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->f:Lcom/google/ads/interactivemedia/v3/internal/er;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->a:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->e:Landroid/os/Looper;

    if-nez v2, :cond_2

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->e:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->b:Ljava/util/HashSet;

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(Lcom/google/ads/interactivemedia/v3/internal/rp;)V

    .line 31
    invoke-interface {p1, p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/rp;->a(Lcom/google/ads/interactivemedia/v3/internal/rq;Lcom/google/ads/interactivemedia/v3/internal/er;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 39
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rz;)V

    return-void
.end method

.method protected final b(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/hn;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->d:Lcom/google/ads/interactivemedia/v3/internal/hn;

    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/hn;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/hn;

    move-result-object p1

    return-object p1
.end method

.method protected final b(ILcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/ry;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    const-wide/16 v1, 0x0

    .line 13
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;J)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object p1

    return-object p1
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/rp;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->b:Ljava/util/HashSet;

    .line 16
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->b:Ljava/util/HashSet;

    .line 17
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    xor-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->b:Ljava/util/HashSet;

    .line 18
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/qk;->b()V

    :cond_0
    return-void
.end method

.method protected abstract c()V
.end method

.method public final c(Lcom/google/ads/interactivemedia/v3/internal/rp;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->a:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->a:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->e:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->f:Lcom/google/ads/interactivemedia/v3/internal/er;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->b:Ljava/util/HashSet;

    .line 36
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 37
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/qk;->c()V

    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/qk;->b(Lcom/google/ads/interactivemedia/v3/internal/rp;)V

    return-void
.end method

.method protected final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qk;->b:Ljava/util/HashSet;

    .line 24
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
