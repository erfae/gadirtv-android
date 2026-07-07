.class public abstract Lcom/google/ads/interactivemedia/v3/internal/qs;
.super Lcom/google/ads/interactivemedia/v3/internal/qk;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/qk;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lcom/google/ads/interactivemedia/v3/internal/qr;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/aay;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/qk;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    return p2
.end method

.method protected a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/ro;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/internal/ro;"
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected a()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->a:Ljava/util/HashMap;

    .line 9
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

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/qr;

    .line 10
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/qr;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/qr;->b:Lcom/google/ads/interactivemedia/v3/internal/rp;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Lcom/google/ads/interactivemedia/v3/internal/rp;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/internal/aay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->c:Lcom/google/ads/interactivemedia/v3/internal/aay;

    .line 22
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->b:Landroid/os/Handler;

    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->a:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/qr;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/qr;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/qr;->b:Lcom/google/ads/interactivemedia/v3/internal/rp;

    .line 8
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Lcom/google/ads/interactivemedia/v3/internal/rp;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/er;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/ads/interactivemedia/v3/internal/er;",
            ")V"
        }
    .end annotation
.end method

.method protected final a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/rq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/ads/interactivemedia/v3/internal/rq;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->a:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/qp;

    .line 14
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/qp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/qs;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/qq;

    .line 15
    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/qq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/qs;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->a:Ljava/util/HashMap;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/qr;

    .line 16
    invoke-direct {v3, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/qr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/rq;Lcom/google/ads/interactivemedia/v3/internal/rp;Lcom/google/ads/interactivemedia/v3/internal/rz;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->b:Landroid/os/Handler;

    .line 17
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/rz;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->b:Landroid/os/Handler;

    .line 18
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/ho;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->c:Lcom/google/ads/interactivemedia/v3/internal/aay;

    .line 19
    invoke-interface {p2, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Lcom/google/ads/interactivemedia/v3/internal/rp;Lcom/google/ads/interactivemedia/v3/internal/aay;)V

    .line 20
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/qk;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 21
    invoke-interface {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/rq;->b(Lcom/google/ads/interactivemedia/v3/internal/rp;)V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->a:Ljava/util/HashMap;

    .line 5
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

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/qr;

    .line 6
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/qr;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/qr;->b:Lcom/google/ads/interactivemedia/v3/internal/rp;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->b(Lcom/google/ads/interactivemedia/v3/internal/rp;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/qr;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/qr;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/qr;->b:Lcom/google/ads/interactivemedia/v3/internal/rp;

    .line 4
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->b(Lcom/google/ads/interactivemedia/v3/internal/rp;)V

    return-void
.end method

.method protected c()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->a:Ljava/util/HashMap;

    .line 26
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

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/qr;

    .line 27
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/qr;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/qr;->b:Lcom/google/ads/interactivemedia/v3/internal/rp;

    invoke-interface {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/rq;->c(Lcom/google/ads/interactivemedia/v3/internal/rp;)V

    .line 28
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/qr;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/qr;->c:Lcom/google/ads/interactivemedia/v3/internal/rz;

    invoke-interface {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Lcom/google/ads/interactivemedia/v3/internal/rz;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->a:Ljava/util/HashMap;

    .line 29
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected final c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->a:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/qr;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/qr;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/qr;->b:Lcom/google/ads/interactivemedia/v3/internal/rp;

    .line 24
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->c(Lcom/google/ads/interactivemedia/v3/internal/rp;)V

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/qr;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/qr;->c:Lcom/google/ads/interactivemedia/v3/internal/rz;

    .line 25
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->a(Lcom/google/ads/interactivemedia/v3/internal/rz;)V

    return-void
.end method

.method public g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qs;->a:Ljava/util/HashMap;

    .line 11
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

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/qr;

    .line 12
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/qr;->a:Lcom/google/ads/interactivemedia/v3/internal/rq;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/rq;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method
