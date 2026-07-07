.class public interface abstract Lcom/visualon/OSMPAdMgr/VOOSMPAdMgr;
.super Ljava/lang/Object;
.source "VOOSMPAdMgr.java"


# virtual methods
.method public abstract disableSDK(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
.end method

.method public abstract enableSDK(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;Ljava/util/HashMap;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;"
        }
    .end annotation
.end method

.method public abstract execSDKAction(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
.end method

.method public abstract getAdPosition()J
.end method

.method public abstract getSDKParam(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract init(Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
.end method

.method public abstract onAppNotify(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_APP_NOTIFICATION_ID;Ljava/lang/Object;Ljava/lang/Object;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
.end method

.method public abstract requestAdPercentageViewedTrackingEvent(D)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
.end method

.method public abstract requestAdReachedPositionTrackingEvent(J)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
.end method

.method public abstract setAdCallUrl(Lcom/visualon/OSMPAdMgr/VOOSMPAdCallParam;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
.end method

.method public abstract setAdEventListener(Lcom/visualon/OSMPAdMgr/VOOSMPAdEventListener;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
.end method

.method public abstract setPlayer(Ljava/lang/Object;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
.end method

.method public abstract setSDKParam(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;Ljava/lang/String;Ljava/lang/Object;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
.end method

.method public abstract setSDKParams(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;Ljava/util/HashMap;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;"
        }
    .end annotation
.end method

.method public abstract setTrackingEventListener(Lcom/visualon/OSMPAdMgr/VOOSMPTrackingEventListener;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
.end method

.method public abstract skipAd()Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
.end method

.method public abstract unInit()Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
.end method
