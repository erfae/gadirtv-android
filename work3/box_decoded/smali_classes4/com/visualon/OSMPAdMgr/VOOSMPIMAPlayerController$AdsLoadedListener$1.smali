.class Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$1;
.super Ljava/lang/Object;
.source "VOOSMPIMAPlayerController.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$1;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Ads Error] AdsManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMAPlayerController"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$1;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$600(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$1;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$1;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$800(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V

    :cond_0
    return-void
.end method
