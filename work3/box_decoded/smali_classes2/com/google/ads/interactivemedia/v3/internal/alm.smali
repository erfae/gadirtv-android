.class final Lcom/google/ads/interactivemedia/v3/internal/alm;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ex;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/alo;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/alo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->b(Lcom/google/ads/interactivemedia/v3/internal/alo;)Ljava/util/HashSet;

    move-result-object v0

    .line 1
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->c(Lcom/google/ads/interactivemedia/v3/internal/alo;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onEnded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->b(Lcom/google/ads/interactivemedia/v3/internal/alo;)Ljava/util/HashSet;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 0

    return-void
.end method

.method public final B()V
    .locals 0

    return-void
.end method

.method public final C()V
    .locals 0

    return-void
.end method

.method public final D()V
    .locals 0

    return-void
.end method

.method public final E()V
    .locals 0

    return-void
.end method

.method public final F()V
    .locals 0

    return-void
.end method

.method public final G()V
    .locals 0

    return-void
.end method

.method public final H()V
    .locals 0

    return-void
.end method

.method public final I()V
    .locals 0

    return-void
.end method

.method public final J()V
    .locals 0

    return-void
.end method

.method public final K()V
    .locals 0

    return-void
.end method

.method public final L()V
    .locals 0

    return-void
.end method

.method public final M()V
    .locals 0

    return-void
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    .line 10
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->f(Lcom/google/ads/interactivemedia/v3/internal/alo;)Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_2

    .line 11
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/alm;->a(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/alo;->c(Lcom/google/ads/interactivemedia/v3/internal/alo;)Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 13
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onLoaded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/alo;->c(Lcom/google/ads/interactivemedia/v3/internal/alo;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 15
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onBuffering(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ew;Lcom/google/ads/interactivemedia/v3/internal/bo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    .line 5
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ew;->c:I

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/alo;->a(Lcom/google/ads/interactivemedia/v3/internal/alo;I)Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->b(Lcom/google/ads/interactivemedia/v3/internal/alo;)Ljava/util/HashSet;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->c(Lcom/google/ads/interactivemedia/v3/internal/alo;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 8
    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onError(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0xd

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Player Error:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IMASDK"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/alo;->d(Lcom/google/ads/interactivemedia/v3/internal/alo;)Lcom/google/ads/interactivemedia/v3/internal/ra;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "IMASDK"

    const-string v0, "Position discontinuity occurred when there is no active media source."

    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/alo;->e(Lcom/google/ads/interactivemedia/v3/internal/alo;)Lcom/google/ads/interactivemedia/v3/internal/ej;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->i()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    .line 18
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->a(Lcom/google/ads/interactivemedia/v3/internal/alo;I)Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    move-result-object v1

    .line 19
    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/alm;->a(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    .line 20
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/alo;->a(Lcom/google/ads/interactivemedia/v3/internal/alo;I)Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alm;->a:Lcom/google/ads/interactivemedia/v3/internal/alo;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/alo;->c(Lcom/google/ads/interactivemedia/v3/internal/alo;)Ljava/util/List;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 22
    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onLoaded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    .line 23
    invoke-interface {v1, p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPlay(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final m()V
    .locals 0

    return-void
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final q()V
    .locals 0

    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method

.method public final s()V
    .locals 0

    return-void
.end method

.method public final t()V
    .locals 0

    return-void
.end method

.method public final u()V
    .locals 0

    return-void
.end method

.method public final v()V
    .locals 0

    return-void
.end method

.method public final w()V
    .locals 0

    return-void
.end method

.method public final x()V
    .locals 0

    return-void
.end method

.method public final y()V
    .locals 0

    return-void
.end method

.method public final z()V
    .locals 0

    return-void
.end method
