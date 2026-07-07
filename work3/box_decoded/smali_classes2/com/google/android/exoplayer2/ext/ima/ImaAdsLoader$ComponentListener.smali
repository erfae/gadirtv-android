.class final Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;
.super Ljava/lang/Object;
.source "ImaAdsLoader.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;
.implements Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)V
    .locals 0

    .line 1674
    iput-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$1;)V
    .locals 0

    .line 1674
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 1

    .line 1791
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1700(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 2

    .line 1801
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to getAdProgress when using preloading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 8

    .line 1717
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1100(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    move-result-object v0

    .line 1718
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$500(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v1, :cond_1

    .line 1719
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ImaAdsLoader"

    if-eqz v1, :cond_0

    const-string v1, "Content progress: not ready"

    .line 1720
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1726
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getCurrentTime()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->getDuration()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "Content progress: %.1f of %.1f s"

    .line 1724
    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1722
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1200(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 1734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v5, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v5}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1200(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0xfa0

    cmp-long v7, v1, v5

    if-ltz v7, :cond_2

    .line 1736
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v1, v3, v4}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1202(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;J)J

    .line 1737
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Ad preloading timed out"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1300(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/Exception;)V

    .line 1738
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1400(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)V

    :cond_2
    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1800(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)I

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V
    .locals 1

    .line 1812
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1900(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1814
    iget-object p2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    const-string v0, "loadAd"

    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1000(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 3

    .line 1764
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object p1

    .line 1765
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$500(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    const-string v1, "onAdError"

    if-eqz v0, :cond_0

    const-string v0, "ImaAdsLoader"

    .line 1766
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1768
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$400(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1770
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$302(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    sget-object v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$702(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1772
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$802(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Z)Z

    .line 1773
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$900(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)V

    goto :goto_0

    .line 1774
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/ima/ImaUtil;->isAdGroupLoadError(Lcom/google/ads/interactivemedia/v3/api/AdError;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1776
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1300(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1778
    iget-object v2, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1000(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1781
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1600(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1782
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;->createForAllAds(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1602(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;)Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;

    .line 1784
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1400(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)V

    return-void
.end method

.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 3

    .line 1749
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v0

    .line 1750
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$500(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->debugModeEnabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->AD_PROGRESS:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-eq v0, v1, :cond_0

    .line 1751
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "onAdEvent: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImaAdsLoader"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1500(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1756
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    const-string v1, "onAdEvent"

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1000(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 2

    .line 1685
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;->getAdsManager()Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    .line 1686
    iget-object v1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$300(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;->getUserRequestContext()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1687
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->destroy()V

    return-void

    .line 1690
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$302(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$402(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 1692
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 1693
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$500(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    if-eqz p1, :cond_1

    .line 1694
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$500(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdErrorListener:Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 1696
    :cond_1
    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 1697
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$500(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    if-eqz p1, :cond_2

    .line 1698
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$500(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/ext/ima/ImaUtil$Configuration;->applicationAdEventListener:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 1700
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$600(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1703
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    .line 1704
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getAdCuePoints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/ima/ImaUtil;->getInitialAdPlaybackStateForCuePoints(Ljava/util/List;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v0

    .line 1703
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$702(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 1705
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$802(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Z)Z

    .line 1706
    iget-object p1, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$900(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1708
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    const-string v1, "onAdsManagerLoaded"

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1000(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public pauseAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 2

    .line 1830
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$2100(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1832
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    const-string v1, "pauseAd"

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1000(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public playAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 2

    .line 1821
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$2000(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1823
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    const-string v1, "playAd"

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1000(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 1

    .line 1796
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1700(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public stopAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 2

    .line 1839
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$2200(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1841
    iget-object v0, p0, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;

    const-string v1, "stopAd"

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;->access$1000(Lcom/google/android/exoplayer2/ext/ima/ImaAdsLoader;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
