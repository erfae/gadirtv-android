.class final Lcom/google/ads/interactivemedia/v3/internal/ajd;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ako;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/ajj;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ajj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/util/Map;

    move-result-object v0

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->g(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object p1

    .line 2
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aix;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 4
    invoke-direct {v1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->f(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/akc;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/util/Map;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/util/Map;

    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->g(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/util/Map;

    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object p1

    .line 7
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aix;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/api/AdError;

    const-string v2, "adsLoaded message did not contain cue points."

    .line 9
    invoke-direct {v1, p2, p3, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->f(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/akc;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14

    move-object v1, p0

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->g(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/util/Map;

    move-result-object v0

    move-object v3, p1

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/aky;

    move-result-object v0

    .line 22
    invoke-interface {v11}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getContentUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aky;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/aky;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aky;->e()V

    :try_start_0
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    new-instance v12, Lcom/google/ads/interactivemedia/v3/internal/ajl;

    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/ald;

    .line 24
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->c(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/aks;

    move-result-object v4

    .line 25
    invoke-interface {v11}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getManifestSuffix()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/aky;

    move-result-object v7

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    .line 26
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Landroid/content/Context;

    move-result-object v8

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    .line 27
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->h(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;

    move-result-object v5

    .line 28
    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    move-object v2, v13

    move-object v3, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    .line 29
    invoke-direct/range {v2 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ald;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aks;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aky;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 30
    invoke-interface {v11}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v12, v13, v2}, Lcom/google/ads/interactivemedia/v3/internal/ajl;-><init>(Lcom/google/ads/interactivemedia/v3/api/StreamManager;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v0, v12}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/api/AdError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->f(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/akc;

    move-result-object v2

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/aix;

    .line 32
    invoke-interface {v11}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Ljava/util/SortedSet;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    move-object v1, p0

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v3, p1

    .line 11
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/aky;

    move-result-object v0

    .line 12
    move-object v2, v12

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/ajp;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ajp;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aky;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/ajl;

    new-instance v14, Lcom/google/ads/interactivemedia/v3/internal/ajk;

    .line 13
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->c(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/aks;

    move-result-object v4

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    .line 14
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->d(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v5

    .line 15
    invoke-interface {v12}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    move-result-object v6

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->b(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/aky;

    move-result-object v9

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    .line 16
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->e(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Landroid/content/Context;

    move-result-object v10

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v11, p4

    .line 17
    invoke-direct/range {v2 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/ajk;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aks;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/internal/aky;Landroid/content/Context;Z)V

    .line 18
    invoke-interface {v12}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v13, v14, v2}, Lcom/google/ads/interactivemedia/v3/internal/ajl;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdsManager;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0, v13}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->a(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/api/AdError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ajd;->a:Lcom/google/ads/interactivemedia/v3/internal/ajj;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ajj;->f(Lcom/google/ads/interactivemedia/v3/internal/ajj;)Lcom/google/ads/interactivemedia/v3/internal/akc;

    move-result-object v2

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/aix;

    .line 20
    invoke-interface {v12}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/aix;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/akc;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    return-void
.end method
