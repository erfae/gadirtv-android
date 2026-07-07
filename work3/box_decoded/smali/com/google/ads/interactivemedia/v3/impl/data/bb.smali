.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/bb;
.super Ljava/lang/Object;
.source "IMASDK"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/ads/interactivemedia/v3/impl/data/ba;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/y;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/y;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/as;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/internal/ajh;ZLcom/google/ads/interactivemedia/v3/internal/alu;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)Lcom/google/ads/interactivemedia/v3/impl/data/bb;
    .locals 16

    .line 1
    invoke-interface/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdsResponse()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getExtraParameters()Ljava/util/Map;

    move-result-object v2

    .line 4
    move-object/from16 v3, p0

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/ajp;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ajp;->a()Lcom/google/ads/interactivemedia/v3/internal/ajm;

    move-result-object v4

    .line 5
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ajp;->b()Lcom/google/ads/interactivemedia/v3/internal/ajo;

    move-result-object v5

    .line 6
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ajp;->c()Lcom/google/ads/interactivemedia/v3/internal/ajn;

    move-result-object v6

    .line 7
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ajp;->d()Ljava/lang/Float;

    move-result-object v7

    .line 8
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ajp;->e()Ljava/util/List;

    move-result-object v8

    .line 9
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ajp;->f()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ajp;->g()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ajp;->h()Ljava/lang/Float;

    move-result-object v11

    .line 12
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ajp;->i()Ljava/lang/Float;

    move-result-object v3

    .line 13
    move-object/from16 v12, p8

    check-cast v12, Lcom/google/ads/interactivemedia/v3/internal/aiw;

    invoke-static {v12}, Lcom/google/ads/interactivemedia/v3/impl/data/bb;->getCompanionSlots(Lcom/google/ads/interactivemedia/v3/internal/aju;)Ljava/util/Map;

    move-result-object v12

    .line 14
    invoke-interface/range {p8 .. p8}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v13

    .line 15
    invoke-interface/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getForcedExperimentId()Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/ane;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ane;

    move-result-object v14

    sget-object v15, Lcom/google/ads/interactivemedia/v3/impl/data/ay;->$instance:Lcom/google/ads/interactivemedia/v3/internal/and;

    .line 16
    invoke-virtual {v14, v15}, Lcom/google/ads/interactivemedia/v3/internal/ane;->a(Lcom/google/ads/interactivemedia/v3/internal/and;)Lcom/google/ads/interactivemedia/v3/internal/ane;

    move-result-object v14

    .line 17
    invoke-virtual {v14}, Lcom/google/ads/interactivemedia/v3/internal/ane;->a()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/ads/interactivemedia/v3/internal/aou;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/bb;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    move-result-object v15

    .line 18
    invoke-interface {v15, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->adTagUrl(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 19
    invoke-interface {v15, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->adsResponse(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 20
    invoke-interface {v15, v12}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->companionSlots(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    move-object/from16 v0, p2

    .line 21
    invoke-interface {v15, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->consentSettings(Lcom/google/ads/interactivemedia/v3/impl/data/as;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 22
    invoke-interface {v15, v7}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->contentDuration(Ljava/lang/Float;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 23
    invoke-interface {v15, v8}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->contentKeywords(Ljava/util/List;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 24
    invoke-interface {v15, v9}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->contentTitle(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 25
    invoke-interface {v15, v10}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->contentUrl(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    move-object/from16 v0, p1

    .line 26
    invoke-interface {v15, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->env(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 27
    invoke-interface {v15, v14}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->experimentState(Lcom/google/ads/interactivemedia/v3/internal/aou;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 28
    invoke-interface {v15, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->extraParameters(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    move-object/from16 v0, p7

    .line 29
    invoke-interface {v15, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->identifierInfo(Lcom/google/ads/interactivemedia/v3/internal/alu;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 30
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->isTv(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 31
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->linearAdSlotWidth(Ljava/lang/Integer;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 32
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->linearAdSlotHeight(Ljava/lang/Integer;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 33
    invoke-interface {v15, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->liveStreamPrefetchSeconds(Ljava/lang/Float;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    move-object/from16 v1, p5

    .line 34
    invoke-interface {v15, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->marketAppInfo(Lcom/google/ads/interactivemedia/v3/internal/ajh;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    move-object/from16 v1, p3

    .line 35
    invoke-interface {v15, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->network(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    const/4 v1, 0x1

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->omidAdSessionsOnStartedOnly(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    move-object/from16 v2, p4

    .line 37
    invoke-interface {v15, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->settings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    xor-int/lit8 v2, p6, 0x1

    .line 38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v15, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->supportsExternalNavigation(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 39
    invoke-interface {v15, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->supportsIconClickFallback(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 40
    invoke-interface/range {p8 .. p8}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/api/player/ResizablePlayer;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->supportsResizing(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 41
    invoke-interface/range {p8 .. p8}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    instance-of v0, v0, Lcom/google/ads/interactivemedia/v3/internal/alp;

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->usesCustomVideoPlayback(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 42
    invoke-interface {v15, v11}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->vastLoadTimeout(Ljava/lang/Float;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 43
    invoke-interface {v15, v6}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->videoContinuousPlay(Lcom/google/ads/interactivemedia/v3/internal/ajn;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 44
    invoke-interface {v15, v4}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->videoPlayActivation(Lcom/google/ads/interactivemedia/v3/internal/ajm;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 45
    invoke-interface {v15, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->videoPlayMuted(Lcom/google/ads/interactivemedia/v3/internal/ajo;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 46
    invoke-interface {v15}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->build()Lcom/google/ads/interactivemedia/v3/impl/data/bb;

    move-result-object v0

    return-object v0
.end method

.method public static createFromStreamRequest(Lcom/google/ads/interactivemedia/v3/api/StreamRequest;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/data/as;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;Lcom/google/ads/interactivemedia/v3/internal/ajh;ZLjava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/alu;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;)Lcom/google/ads/interactivemedia/v3/impl/data/bb;
    .locals 6

    .line 47
    move-object v0, p9

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/alc;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/bb;->getCompanionSlots(Lcom/google/ads/interactivemedia/v3/internal/aju;)Ljava/util/Map;

    move-result-object v0

    .line 48
    invoke-interface {p9}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 49
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getForcedExperimentId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ane;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ane;

    move-result-object v2

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/data/az;->$instance:Lcom/google/ads/interactivemedia/v3/internal/and;

    .line 50
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ane;->a(Lcom/google/ads/interactivemedia/v3/internal/and;)Lcom/google/ads/interactivemedia/v3/internal/ane;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ane;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/aou;

    .line 52
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getFormat()Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    move-result-object v3

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;->DASH:Lcom/google/ads/interactivemedia/v3/api/StreamRequest$StreamFormat;

    if-ne v3, v4, :cond_0

    const-string v3, "dash"

    goto :goto_0

    :cond_0
    const-string v3, "hls"

    :goto_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/bb;->builder()Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    move-result-object v4

    .line 53
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getAdTagParameters()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->adTagParameters(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 54
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getApiKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->apiKey(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 55
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getAssetKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->assetKey(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 56
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->authToken(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 57
    invoke-interface {v4, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->companionSlots(Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 58
    invoke-interface {v4, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->consentSettings(Lcom/google/ads/interactivemedia/v3/impl/data/as;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 59
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getContentSourceId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->contentSourceId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 60
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getContentUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->contentUrl(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 61
    invoke-interface {v4, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->env(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 62
    invoke-interface {v4, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->experimentState(Lcom/google/ads/interactivemedia/v3/internal/aou;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 63
    invoke-interface {v4, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->format(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 64
    invoke-interface {v4, p8}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->identifierInfo(Lcom/google/ads/interactivemedia/v3/internal/alu;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 65
    invoke-interface {v4, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->network(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 66
    invoke-interface {v4, p4}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->settings(Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 67
    invoke-interface {v4, p5}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->marketAppInfo(Lcom/google/ads/interactivemedia/v3/internal/ajh;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 68
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->isTv(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 69
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v4, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->linearAdSlotWidth(Ljava/lang/Integer;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 70
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v4, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->linearAdSlotHeight(Ljava/lang/Integer;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 71
    invoke-interface {v4, p7}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->msParameter(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    const/4 p2, 0x1

    .line 72
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {v4, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->omidAdSessionsOnStartedOnly(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 73
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getStreamActivityMonitorId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v4, p3}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->streamActivityMonitorId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    xor-int/2addr p2, p6

    .line 74
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v4, p2}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->supportsExternalNavigation(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 75
    invoke-interface {v4, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->supportsIconClickFallback(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 76
    invoke-interface {p9}, Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;->getVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;

    move-result-object p1

    instance-of p1, p1, Lcom/google/ads/interactivemedia/v3/api/player/ResizablePlayer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->supportsResizing(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 77
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getUseQAStreamBaseUrl()Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->useQAStreamBaseUrl(Ljava/lang/Boolean;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 78
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/StreamRequest;->getVideoId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->videoId(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/ba;

    .line 79
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/impl/data/ba;->build()Lcom/google/ads/interactivemedia/v3/impl/data/bb;

    move-result-object p0

    return-object p0
.end method

.method private static getCompanionSlots(Lcom/google/ads/interactivemedia/v3/internal/aju;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/aju;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/aju;->a()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aos;

    .line 81
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/aos;-><init>()V

    .line 82
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    .line 84
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getWidth()I

    move-result v4

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getHeight()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x17

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aos;->a()Lcom/google/ads/interactivemedia/v3/internal/aou;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static final synthetic lambda$create$0$GsonAdsRequest(Ljava/lang/Integer;)Lcom/google/ads/interactivemedia/v3/internal/aou;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->create(I)Lcom/google/ads/interactivemedia/v3/internal/aou;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$createFromStreamRequest$1$GsonAdsRequest(Ljava/lang/Integer;)Lcom/google/ads/interactivemedia/v3/internal/aou;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->create(I)Lcom/google/ads/interactivemedia/v3/internal/aou;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract adTagParameters()Lcom/google/ads/interactivemedia/v3/internal/aou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aou<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract adTagUrl()Ljava/lang/String;
.end method

.method public abstract adsResponse()Ljava/lang/String;
.end method

.method public abstract apiKey()Ljava/lang/String;
.end method

.method public abstract assetKey()Ljava/lang/String;
.end method

.method public abstract authToken()Ljava/lang/String;
.end method

.method public abstract companionSlots()Lcom/google/ads/interactivemedia/v3/internal/aou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aou<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract consentSettings()Lcom/google/ads/interactivemedia/v3/impl/data/as;
.end method

.method public abstract contentDuration()Ljava/lang/Float;
.end method

.method public abstract contentKeywords()Lcom/google/ads/interactivemedia/v3/internal/aop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aop<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract contentSourceId()Ljava/lang/String;
.end method

.method public abstract contentTitle()Ljava/lang/String;
.end method

.method public abstract contentUrl()Ljava/lang/String;
.end method

.method public abstract env()Ljava/lang/String;
.end method

.method public abstract experimentState()Lcom/google/ads/interactivemedia/v3/internal/aou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aou<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/impl/data/au;",
            ">;"
        }
    .end annotation
.end method

.method public abstract extraParameters()Lcom/google/ads/interactivemedia/v3/internal/aou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/internal/aou<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract format()Ljava/lang/String;
.end method

.method public abstract identifierInfo()Lcom/google/ads/interactivemedia/v3/internal/alu;
.end method

.method public abstract isTv()Ljava/lang/Boolean;
.end method

.method public abstract linearAdSlotHeight()Ljava/lang/Integer;
.end method

.method public abstract linearAdSlotWidth()Ljava/lang/Integer;
.end method

.method public abstract liveStreamPrefetchSeconds()Ljava/lang/Float;
.end method

.method public abstract marketAppInfo()Lcom/google/ads/interactivemedia/v3/internal/ajh;
.end method

.method public abstract msParameter()Ljava/lang/String;
.end method

.method public abstract network()Ljava/lang/String;
.end method

.method public abstract omidAdSessionsOnStartedOnly()Ljava/lang/Boolean;
.end method

.method public abstract settings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
.end method

.method public abstract streamActivityMonitorId()Ljava/lang/String;
.end method

.method public abstract supportsExternalNavigation()Ljava/lang/Boolean;
.end method

.method public abstract supportsIconClickFallback()Ljava/lang/Boolean;
.end method

.method public abstract supportsResizing()Ljava/lang/Boolean;
.end method

.method public abstract useQAStreamBaseUrl()Ljava/lang/Boolean;
.end method

.method public abstract usesCustomVideoPlayback()Ljava/lang/Boolean;
.end method

.method public abstract vastLoadTimeout()Ljava/lang/Float;
.end method

.method public abstract videoContinuousPlay()Lcom/google/ads/interactivemedia/v3/internal/ajn;
.end method

.method public abstract videoId()Ljava/lang/String;
.end method

.method public abstract videoPlayActivation()Lcom/google/ads/interactivemedia/v3/internal/ajm;
.end method

.method public abstract videoPlayMuted()Lcom/google/ads/interactivemedia/v3/internal/ajo;
.end method
