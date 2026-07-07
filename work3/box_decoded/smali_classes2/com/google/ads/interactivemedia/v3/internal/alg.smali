.class public final Lcom/google/ads/interactivemedia/v3/internal/alg;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;
.implements Lcom/google/ads/interactivemedia/v3/internal/alh;
.implements Lcom/google/ads/interactivemedia/v3/internal/ala;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/aks;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ald;

.field private d:Z

.field private e:Lcom/google/ads/interactivemedia/v3/internal/ali;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/google/ads/interactivemedia/v3/internal/alb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aks;Lcom/google/ads/interactivemedia/v3/internal/ald;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->d:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->h:Z

    .line 1
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    if-eqz v1, :cond_0

    .line 2
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->c:Lcom/google/ads/interactivemedia/v3/internal/ald;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->g:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->d:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->i:Lcom/google/ads/interactivemedia/v3/internal/alb;

    .line 3
    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/alb;

    invoke-direct {p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/alb;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->i:Lcom/google/ads/interactivemedia/v3/internal/alb;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->e:Lcom/google/ads/interactivemedia/v3/internal/ali;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ali;

    .line 4
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b()Landroid/webkit/WebView;

    move-result-object p2

    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ali;-><init>(Landroid/webkit/WebView;Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->e:Lcom/google/ads/interactivemedia/v3/internal/ali;

    return-void

    .line 1
    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 2
    sget-object p2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object p3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string p4, "Server-side ad insertion player was not provided."

    invoke-direct {p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->h:Z

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akj;->videoDisplay:Lcom/google/ads/interactivemedia/v3/internal/akj;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akj;->videoDisplay1:Lcom/google/ads/interactivemedia/v3/internal/akj;

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 66
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/akl;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->f:Ljava/lang/String;

    invoke-direct {v2, v0, p1, v3, p2}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "Destroying StreamVideoDisplay"

    .line 5
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 6
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->i:Lcom/google/ads/interactivemedia/v3/internal/alb;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/alb;->b()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->i:Lcom/google/ads/interactivemedia/v3/internal/alb;

    .line 8
    invoke-virtual {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/alb;->b(Lcom/google/ads/interactivemedia/v3/internal/ala;)V

    :cond_0
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->i:Lcom/google/ads/interactivemedia/v3/internal/alb;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->e:Lcom/google/ads/interactivemedia/v3/internal/ali;

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ali;->b()V

    return-void
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 64
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->seek(J)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/bo;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/bn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 20
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/bn;->volumePercentage(I)Lcom/google/ads/interactivemedia/v3/impl/data/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/bn;->build()Lcom/google/ads/interactivemedia/v3/impl/data/bo;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/akk;->start:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-direct {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/alg;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->d:Z

    .line 22
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->timeupdate:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/bj;->create(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)Lcom/google/ads/interactivemedia/v3/impl/data/bj;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/alg;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/impl/data/c;)V
    .locals 0

    .line 67
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/c;->isLinear()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->e:Lcom/google/ads/interactivemedia/v3/internal/ali;

    .line 68
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ali;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Lcom/google/ads/interactivemedia/v3/impl/data/bd;)V
    .locals 7

    .line 24
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/akk;->activate:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/akk;->ordinal()I

    move-result p1

    const/16 p2, 0x2a

    if-eq p1, p2, :cond_2

    const/16 p2, 0x31

    if-eq p1, p2, :cond_1

    const/16 p2, 0x32

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 25
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->resume()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 26
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->pause()V

    return-void

    :cond_2
    if-eqz p3, :cond_d

    iget-object p1, p3, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->streamUrl:Ljava/lang/String;

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->d:Z

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->i:Lcom/google/ads/interactivemedia/v3/internal/alb;

    .line 28
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/alb;->a()V

    iget-object p2, p3, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->streamUrl:Ljava/lang/String;

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->g:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_4

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->g:Ljava/lang/String;

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_4

    .line 34
    :cond_5
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    .line 36
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 38
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "http://www.dom.com/path?"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_6
    new-instance v0, Ljava/lang/String;

    .line 39
    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    .line 41
    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 42
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 43
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 44
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 45
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 46
    :cond_8
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    .line 59
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_a

    const-string v2, "&"

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 56
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    :goto_3
    invoke-virtual {p2, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 29
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    iget-object p3, p3, Lcom/google/ads/interactivemedia/v3/impl/data/bd;->subtitles:Ljava/util/List;

    .line 60
    invoke-interface {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->loadUrl(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 39
    :cond_d
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->c:Lcom/google/ads/interactivemedia/v3/internal/ald;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/aix;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 27
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v2, "Load message must contain video url."

    invoke-direct {p3, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 14
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->onAdBreakStarted()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 12
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->onAdBreakEnded()V

    .line 13
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/alg;->h()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 16
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->onAdPeriodStarted()V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->h:Z

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 15
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->onAdPeriodEnded()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 63
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;)V

    return-void
.end method

.method public final getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    .line 10
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;->getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    return-object v0
.end method

.method final h()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->e:Lcom/google/ads/interactivemedia/v3/internal/ali;

    .line 69
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ali;->b()V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->i:Lcom/google/ads/interactivemedia/v3/internal/alb;

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/alb;->a(Lcom/google/ads/interactivemedia/v3/internal/ala;)V

    return-void
.end method

.method public final onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 0

    return-void
.end method

.method public final onContentComplete()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/alg;->b:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 17
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akj;->adsLoader:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/akk;->contentComplete:Lcom/google/ads/interactivemedia/v3/internal/akk;

    const-string v4, "*"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 18
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->pause:Lcom/google/ads/interactivemedia/v3/internal/akk;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/alg;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/Object;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 19
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->play:Lcom/google/ads/interactivemedia/v3/internal/akk;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/alg;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/Object;)V

    return-void
.end method

.method public final onUserTextReceived(Ljava/lang/String;)V
    .locals 1

    .line 23
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->timedMetadata:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/alf;->create(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/alf;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/alg;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/Object;)V

    return-void
.end method

.method public final onVolumeChanged(I)V
    .locals 1

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/bo;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/bn;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/bn;->volumePercentage(I)Lcom/google/ads/interactivemedia/v3/impl/data/bn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/bn;->build()Lcom/google/ads/interactivemedia/v3/impl/data/bo;

    move-result-object p1

    .line 62
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->volumeChange:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/alg;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/Object;)V

    return-void
.end method
