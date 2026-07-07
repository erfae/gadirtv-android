.class public final Lcom/google/ads/interactivemedia/v3/internal/ajp;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsRequest;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/ajm;

.field private f:Lcom/google/ads/interactivemedia/v3/internal/ajo;

.field private g:Lcom/google/ads/interactivemedia/v3/internal/ajn;

.field private h:Ljava/lang/Float;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/Float;

.field private n:Ljava/lang/Float;

.field private transient o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ajm;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/internal/ajm;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->e:Lcom/google/ads/interactivemedia/v3/internal/ajm;

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ajo;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/internal/ajo;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->f:Lcom/google/ads/interactivemedia/v3/internal/ajo;

    .line 3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ajn;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/internal/ajn;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->g:Lcom/google/ads/interactivemedia/v3/internal/ajn;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/ajm;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->e:Lcom/google/ads/interactivemedia/v3/internal/ajm;

    return-object v0
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/internal/ajo;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->f:Lcom/google/ads/interactivemedia/v3/internal/ajo;

    return-object v0
.end method

.method public final c()Lcom/google/ads/interactivemedia/v3/internal/ajn;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->g:Lcom/google/ads/interactivemedia/v3/internal/ajn;

    return-object v0
.end method

.method public final d()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->h:Ljava/lang/Float;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->i:Ljava/util/List;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final forceExperimentId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->l:Ljava/lang/Integer;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdTagUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdsResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentProgressProvider()Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->d:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-object v0
.end method

.method public final getExtraParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getExtraParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final getForcedExperimentId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserRequestContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public final h()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->m:Ljava/lang/Float;

    return-object v0
.end method

.method public final i()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->n:Ljava/lang/Float;

    return-object v0
.end method

.method public final setAdTagUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->a:Ljava/lang/String;

    return-void
.end method

.method public final setAdWillAutoPlay(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ajm;->AUTO:Lcom/google/ads/interactivemedia/v3/internal/ajm;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ajm;->CLICK:Lcom/google/ads/interactivemedia/v3/internal/ajm;

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->e:Lcom/google/ads/interactivemedia/v3/internal/ajm;

    return-void
.end method

.method public final setAdWillPlayMuted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ajo;->MUTED:Lcom/google/ads/interactivemedia/v3/internal/ajo;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ajo;->UNMUTED:Lcom/google/ads/interactivemedia/v3/internal/ajo;

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->f:Lcom/google/ads/interactivemedia/v3/internal/ajo;

    return-void
.end method

.method public final setAdsResponse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->c:Ljava/lang/String;

    return-void
.end method

.method public final setContentDuration(F)V
    .locals 0

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->h:Ljava/lang/Float;

    return-void
.end method

.method public final setContentKeywords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->i:Ljava/util/List;

    return-void
.end method

.method public final setContentProgressProvider(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->d:Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;

    return-void
.end method

.method public final setContentTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->j:Ljava/lang/String;

    return-void
.end method

.method public final setContentUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->k:Ljava/lang/String;

    return-void
.end method

.method public final setContinuousPlayback(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 8
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ajn;->ON:Lcom/google/ads/interactivemedia/v3/internal/ajn;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/ajn;->OFF:Lcom/google/ads/interactivemedia/v3/internal/ajn;

    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->g:Lcom/google/ads/interactivemedia/v3/internal/ajn;

    return-void
.end method

.method public final setExtraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->b:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->b:Ljava/util/Map;

    .line 10
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setLiveStreamPrefetchSeconds(F)V
    .locals 0

    .line 11
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->n:Ljava/lang/Float;

    return-void
.end method

.method public final setUserRequestContext(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->o:Ljava/lang/Object;

    return-void
.end method

.method public final setVastLoadTimeout(F)V
    .locals 0

    .line 12
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajp;->m:Ljava/lang/Float;

    return-void
.end method
