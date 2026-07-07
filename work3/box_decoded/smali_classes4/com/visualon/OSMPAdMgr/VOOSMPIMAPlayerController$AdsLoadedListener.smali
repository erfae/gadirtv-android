.class Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;
.super Ljava/lang/Object;
.source "VOOSMPIMAPlayerController.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdsLoadedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$1;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    return-void
.end method


# virtual methods
.method public onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;->getAdsManager()Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$502(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Lcom/google/ads/interactivemedia/v3/api/AdsManager;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 159
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$500(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$1;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;)V

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 171
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$500(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    new-instance v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;-><init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;)V

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 277
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$500(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$2600(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    .line 278
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$600(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$2700(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V

    :cond_0
    return-void
.end method
