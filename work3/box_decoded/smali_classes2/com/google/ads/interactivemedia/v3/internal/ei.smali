.class final Lcom/google/ads/interactivemedia/v3/internal/ei;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/ads/interactivemedia/v3/internal/adh;
.implements Lcom/google/ads/interactivemedia/v3/internal/fs;
.implements Lcom/google/ads/interactivemedia/v3/internal/be;
.implements Lcom/google/ads/interactivemedia/v3/internal/ba;
.implements Lcom/google/ads/interactivemedia/v3/internal/ek;
.implements Lcom/google/ads/interactivemedia/v3/internal/dw;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/ej;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ej;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(F)V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 23
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->n(Lcom/google/ads/interactivemedia/v3/internal/ej;)V

    return-void
.end method

.method public final a(IIIF)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/acx;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/acx;->a(IIIF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/adh;

    .line 56
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(IIIF)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/adh;

    .line 19
    invoke-interface {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IJJ)V
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->d(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/fs;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 17
    invoke-interface/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a(IJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(JI)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/adh;

    .line 48
    invoke-interface {v1, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(JI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->c(Lcom/google/ads/interactivemedia/v3/internal/ej;)Landroid/view/Surface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/acx;

    .line 25
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/acx;->d()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/adh;

    .line 27
    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(Landroid/view/Surface;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/bo;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 49
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/adh;

    .line 51
    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/dg;I)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/dv;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/er;I)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/er;->b()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 36
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/eq;

    invoke-direct {p2}, Lcom/google/ads/interactivemedia/v3/internal/eq;-><init>()V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/er;->a(ILcom/google/ads/interactivemedia/v3/internal/eq;)Lcom/google/ads/interactivemedia/v3/internal/eq;

    move-result-object p1

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/eq;->d:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 44
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/adh;

    .line 46
    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/tb;Lcom/google/ads/interactivemedia/v3/internal/ys;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/adh;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 39
    invoke-interface/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/adh;->a(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->o(Lcom/google/ads/interactivemedia/v3/internal/ej;)Lcom/google/ads/interactivemedia/v3/internal/app;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->m(Lcom/google/ads/interactivemedia/v3/internal/ej;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    throw v0

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->m(Lcom/google/ads/interactivemedia/v3/internal/ej;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(ZI)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 11
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->d(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/fs;

    .line 13
    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/fs;->b(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/adh;

    .line 41
    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/adh;->b(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    const/4 v0, 0x0

    .line 42
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 43
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->d(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/fs;

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 2
    invoke-interface/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/fs;->b(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 0

    return-void
.end method

.method public final b(ZI)V
    .locals 0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 22
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->n(Lcom/google/ads/interactivemedia/v3/internal/ej;)V

    return-void
.end method

.method public final c(I)V
    .locals 0

    return-void
.end method

.method public final c(Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 8
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->d(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/fs;

    .line 10
    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/fs;->c(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->g(Lcom/google/ads/interactivemedia/v3/internal/ej;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 28
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;Z)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 29
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->h(Lcom/google/ads/interactivemedia/v3/internal/ej;)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->e(Lcom/google/ads/interactivemedia/v3/internal/ej;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 14
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 15
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->f(Lcom/google/ads/interactivemedia/v3/internal/ej;)V

    return-void
.end method

.method public final d(Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->d(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/fs;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/fs;->d(Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    const/4 v0, 0x0

    .line 5
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 6
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/hc;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;I)V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    new-instance v1, Landroid/view/Surface;

    .line 30
    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 31
    invoke-static {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;II)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 32
    invoke-static {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    const/4 v0, 0x0

    .line 33
    invoke-static {p1, v0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;II)V

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 34
    invoke-static {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;II)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 57
    invoke-static {p1, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;II)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 58
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;Landroid/view/Surface;Z)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-static {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei;->a:Lcom/google/ads/interactivemedia/v3/internal/ej;

    .line 60
    invoke-static {p1, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Lcom/google/ads/interactivemedia/v3/internal/ej;II)V

    return-void
.end method
