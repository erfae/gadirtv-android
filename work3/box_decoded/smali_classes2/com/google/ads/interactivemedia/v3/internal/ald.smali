.class public final Lcom/google/ads/interactivemedia/v3/internal/ald;
.super Lcom/google/ads/interactivemedia/v3/internal/ajv;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/StreamManager;


# instance fields
.field private final g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/CuePoint;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/ads/interactivemedia/v3/internal/alg;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aks;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aky;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move v6, p8

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ajv;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aks;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/internal/aky;Landroid/content/Context;Z)V

    new-instance p5, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->h:Ljava/util/List;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->g:Ljava/lang/String;

    new-instance p5, Lcom/google/ads/interactivemedia/v3/internal/alg;

    move-object v0, p5

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/alg;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/aks;Lcom/google/ads/interactivemedia/v3/internal/ald;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->i:Lcom/google/ads/interactivemedia/v3/internal/alg;

    .line 4
    invoke-virtual {p5}, Lcom/google/ads/interactivemedia/v3/internal/alg;->g()V

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->i:Lcom/google/ads/interactivemedia/v3/internal/alg;

    .line 5
    invoke-virtual {p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->i:Lcom/google/ads/interactivemedia/v3/internal/alg;

    .line 6
    invoke-virtual {p2, p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/aks;->a(Lcom/google/ads/interactivemedia/v3/internal/alh;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/impl/data/ResizeAndPositionVideoMsgData;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V
    .locals 4

    .line 28
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/akp;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->i:Lcom/google/ads/interactivemedia/v3/internal/alg;

    .line 34
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/alg;->f()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->i:Lcom/google/ads/interactivemedia/v3/internal/alg;

    .line 35
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/alg;->d()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->i:Lcom/google/ads/interactivemedia/v3/internal/alg;

    .line 36
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/alg;->c()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->i:Lcom/google/ads/interactivemedia/v3/internal/alg;

    .line 37
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/alg;->b()V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/akp;->b:Lcom/google/ads/interactivemedia/v3/impl/data/c;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->i:Lcom/google/ads/interactivemedia/v3/internal/alg;

    .line 33
    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/alg;->a(Lcom/google/ads/interactivemedia/v3/impl/data/c;)V

    goto :goto_0

    .line 28
    :cond_1
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/akp;->f:D

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x36

    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Seek time when ad is skipped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMASDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/akp;->f:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->i:Lcom/google/ads/interactivemedia/v3/internal/alg;

    .line 31
    invoke-virtual {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/alg;->a(J)V

    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/akp;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->h:Ljava/util/List;

    goto :goto_0

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->i:Lcom/google/ads/interactivemedia/v3/internal/alg;

    .line 32
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/alg;->h()V

    .line 38
    :goto_0
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/internal/akp;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final destroy()V
    .locals 1

    .line 7
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/akk;->contentComplete:Lcom/google/ads/interactivemedia/v3/internal/akk;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a(Lcom/google/ads/interactivemedia/v3/internal/akk;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->e:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->i:Lcom/google/ads/interactivemedia/v3/internal/alg;

    .line 8
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/alg;->a()V

    .line 9
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b()V

    return-void
.end method

.method public final getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->e:Z

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->i:Lcom/google/ads/interactivemedia/v3/internal/alg;

    .line 11
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/alg;->getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getContentTimeForStreamTime(D)D
    .locals 11

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move-wide v3, p1

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 12
    check-cast v5, Lcom/google/ads/interactivemedia/v3/api/CuePoint;

    .line 13
    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v6

    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v8

    cmpl-double v10, v6, v8

    if-lez v10, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 14
    :cond_0
    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v6

    cmpl-double v8, p1, v6

    if-ltz v8, :cond_1

    .line 15
    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v6

    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v8

    sub-double/2addr v6, v8

    sub-double/2addr v3, v6

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v6

    cmpg-double v8, p1, v6

    if-gez v8, :cond_2

    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v6

    cmpl-double v8, p1, v6

    if-lez v8, :cond_2

    .line 17
    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v5

    sub-double v5, p1, v5

    sub-double/2addr v3, v5

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-wide v3
.end method

.method public final getCuePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/CuePoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->h:Ljava/util/List;

    .line 18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPreviousCuePointForStreamTime(D)Lcom/google/ads/interactivemedia/v3/api/CuePoint;
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 19
    check-cast v4, Lcom/google/ads/interactivemedia/v3/api/CuePoint;

    .line 20
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v5

    cmpg-double v7, v5, p1

    if-gez v7, :cond_0

    move-object v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public final getStreamId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getStreamTimeForContentTime(D)D
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ald;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide/from16 v6, p1

    move-wide v8, v3

    move-wide v10, v8

    :goto_0
    if-ge v5, v2, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 21
    check-cast v12, Lcom/google/ads/interactivemedia/v3/api/CuePoint;

    .line 22
    invoke-interface {v12}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v13

    invoke-interface {v12}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v15

    cmpl-double v17, v13, v15

    if-lez v17, :cond_0

    return-wide v3

    .line 23
    :cond_0
    invoke-interface {v12}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v13

    sub-double/2addr v13, v10

    add-double/2addr v8, v13

    cmpl-double v10, v8, p1

    if-lez v10, :cond_1

    return-wide v6

    .line 24
    :cond_1
    invoke-interface {v12}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v10

    invoke-interface {v12}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getStartTime()D

    move-result-wide v13

    sub-double/2addr v10, v13

    add-double/2addr v6, v10

    .line 25
    invoke-interface {v12}, Lcom/google/ads/interactivemedia/v3/api/CuePoint;->getEndTime()D

    move-result-wide v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-wide v6
.end method

.method public final init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ajv;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->i:Lcom/google/ads/interactivemedia/v3/internal/alg;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ald;->c:Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    .line 27
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;->getDisableUi()Z

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/alg;->i()V

    return-void
.end method

.method public final isCustomPlaybackUsed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final replaceAdTagParameters(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 39
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "adTagParameters"

    .line 40
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/akk;->replaceAdTagParameters:Lcom/google/ads/interactivemedia/v3/internal/akk;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->a:Lcom/google/ads/interactivemedia/v3/internal/aks;

    .line 42
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/akl;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/akj;->adsManager:Lcom/google/ads/interactivemedia/v3/internal/akj;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ajv;->b:Ljava/lang/String;

    invoke-direct {v2, v3, p1, v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/akl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/akj;Lcom/google/ads/interactivemedia/v3/internal/akk;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/aks;->b(Lcom/google/ads/interactivemedia/v3/internal/akl;)V

    return-void
.end method
