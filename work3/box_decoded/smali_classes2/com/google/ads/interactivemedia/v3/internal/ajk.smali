.class public final Lcom/google/ads/interactivemedia/v3/internal/ajk;
.super Lcom/google/ads/interactivemedia/v3/internal/ajv;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsManager;


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/ads/interactivemedia/v3/internal/akw;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aks;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/internal/aky;Landroid/content/Context;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ajv;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aks;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/internal/aky;Landroid/content/Context;Z)V

    move-object/from16 v0, p5

    iput-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/ajk;->g:Ljava/util/List;

    if-eqz v11, :cond_1

    .line 2
    invoke-interface/range {p6 .. p6}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v10, :cond_0

    .line 4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/alb;

    invoke-direct {v0, v10}, Lcom/google/ads/interactivemedia/v3/internal/alb;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;)V

    iput-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/ajk;->f:Lcom/google/ads/interactivemedia/v3/internal/alb;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/aka;

    .line 5
    invoke-direct {v0, p2, v11, p1}, Lcom/google/ads/interactivemedia/v3/internal/aka;-><init>(Lcom/google/ads/interactivemedia/v3/internal/aks;Ljava/util/SortedSet;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/ajk;->d:Lcom/google/ads/interactivemedia/v3/internal/aka;

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/ajk;->f:Lcom/google/ads/interactivemedia/v3/internal/alb;

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/ajk;->d:Lcom/google/ads/interactivemedia/v3/internal/aka;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/alb;->a(Lcom/google/ads/interactivemedia/v3/internal/ala;)V

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/ajk;->f:Lcom/google/ads/interactivemedia/v3/internal/alb;

    .line 7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/alb;->a()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->PLAYLIST_NO_CONTENT_TRACKING:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Unable to handle cue points, no content progress provider configured."

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/akw;

    move-object v1, p3

    .line 8
    invoke-direct {v0, p1, p2, p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/akw;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aks;Lcom/google/ads/interactivemedia/v3/internal/ajk;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)V

    iput-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/ajk;->h:Lcom/google/ads/interactivemedia/v3/internal/akw;

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/ajk;->h:Lcom/google/ads/interactivemedia/v3/internal/akw;

    .line 10
    invoke-virtual {p2, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Lcom/google/ads/interactivemedia/v3/internal/alh;Ljava/lang/String;)V

    return-void
.end method

.method private final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->e:Z

    .line 37
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->destroy:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->h:Lcom/google/ads/interactivemedia/v3/internal/akw;

    .line 31
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akw;->f()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->h:Lcom/google/ads/interactivemedia/v3/internal/akw;

    .line 30
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/akw;->a(Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V
    .locals 2

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/akp;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 20
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/akp;->b:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->h:Lcom/google/ads/interactivemedia/v3/internal/akw;

    .line 28
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akw;->a(Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->h:Lcom/google/ads/interactivemedia/v3/internal/akw;

    .line 23
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akw;->d()V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->h:Lcom/google/ads/interactivemedia/v3/internal/akw;

    .line 21
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akw;->d()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->h:Lcom/google/ads/interactivemedia/v3/internal/akw;

    .line 22
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akw;->a()V

    .line 29
    :goto_0
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    .line 24
    :cond_3
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->h:Lcom/google/ads/interactivemedia/v3/internal/akw;

    .line 25
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/akw;->b()V

    .line 26
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ajk;->e()V

    .line 27
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b()V

    return-void
.end method

.method public final clicked()V
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 11
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akj;->adsManager:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/akk;->click:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->f:Lcom/google/ads/interactivemedia/v3/internal/alb;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/alb;->b()V

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ajk;->e()V

    return-void
.end method

.method public final discardAdBreak()V
    .locals 1

    .line 14
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->discardAdBreak:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    return-void
.end method

.method public final getAdCuePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->g:Ljava/util/List;

    return-object v0
.end method

.method public final getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->e:Z

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->h:Lcom/google/ads/interactivemedia/v3/internal/akw;

    .line 16
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akw;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
    .locals 1

    .line 17
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->h:Lcom/google/ads/interactivemedia/v3/internal/akw;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->c:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    .line 18
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->getDisableUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/akw;->a(Z)V

    return-void
.end method

.method public final isCustomPlaybackUsed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->h:Lcom/google/ads/interactivemedia/v3/internal/akw;

    .line 19
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/akw;->c()Z

    move-result v0

    return v0
.end method

.method public final pause()V
    .locals 1

    .line 32
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->pause:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    return-void
.end method

.method public final requestNextAdBreak()V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->f:Lcom/google/ads/interactivemedia/v3/internal/alb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 33
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/akj;->contentTimeUpdate:Lcom/google/ads/interactivemedia/v3/internal/akj;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/akk;->contentTimeUpdate:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ajk;->f:Lcom/google/ads/interactivemedia/v3/internal/alb;

    .line 34
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/alb;->c()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v5

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/impl/data/bj;->create(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)Lcom/google/ads/interactivemedia/v3/impl/data/bj;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->requestNextAdBreak:Lcom/google/ads/interactivemedia/v3/internal/akk;

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    :cond_0
    return-void
.end method

.method public final resume()V
    .locals 1

    .line 36
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->resume:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    return-void
.end method

.method public final skip()V
    .locals 1

    .line 38
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->skip:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    return-void
.end method

.method public final start()V
    .locals 1

    .line 39
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->start:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    return-void
.end method
