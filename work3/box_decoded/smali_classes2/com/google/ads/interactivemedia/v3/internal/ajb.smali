.class final Lcom/google/ads/interactivemedia/v3/internal/ajb;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/aja;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/aja;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->d:Z

    new-instance v0, Landroid/os/Handler;

    .line 1
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a:Lcom/google/ads/interactivemedia/v3/internal/aja;

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->c:Ljava/util/HashMap;

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aiz;

    .line 22
    invoke-direct {v0, p2, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/aiz;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->b:Landroid/os/Handler;

    const/4 p2, 0x1

    .line 23
    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->d:Z

    return-void
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->d:Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 3
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/anh;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/aiz;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a:Lcom/google/ads/interactivemedia/v3/internal/aja;

    .line 5
    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/aiz;->b:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/aiz;->a:Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/aiz;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/aja;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onAdProgress(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->c:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 7
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->start:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->c:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->timeupdate:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/impl/data/bj;->create(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)Lcom/google/ads/interactivemedia/v3/impl/data/bj;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final onBuffering(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->waiting:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void
.end method

.method public final onContentComplete()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a:Lcom/google/ads/interactivemedia/v3/internal/aja;

    .line 11
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akj;->adsLoader:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akk;->contentComplete:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aja;->a(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    return-void
.end method

.method public final onEnded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->end:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->c:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onError(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->error:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->c:Ljava/util/HashMap;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onLoaded(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->loaded:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void
.end method

.method public final onPause(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->pause:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void
.end method

.method public final onPlay(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 0

    return-void
.end method

.method public final onResume(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->play:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    return-void
.end method

.method public final onVolumeChanged(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajb;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/bo;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/bn;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/bn;->volumePercentage(I)Lcom/google/ads/interactivemedia/v3/impl/data/bn;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/data/bn;->build()Lcom/google/ads/interactivemedia/v3/impl/data/bo;

    move-result-object p2

    .line 20
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->volumeChange:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ajb;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Ljava/lang/Object;)V

    return-void
.end method
