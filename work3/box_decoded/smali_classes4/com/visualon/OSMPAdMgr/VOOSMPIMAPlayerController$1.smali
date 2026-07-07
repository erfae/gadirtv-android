.class Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$1;
.super Ljava/lang/Object;
.source "VOOSMPIMAPlayerController.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->loaderAddErrorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 468
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorCode()Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 469
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getErrorType()Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 470
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "@@@VOOSMPIMAPlayerController"

    const-string v1, "[Ads Error] AdsLoader %s\t %s\t %s "

    .line 467
    invoke-static {p1, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$600(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 473
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$2800(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V

    :cond_0
    return-void
.end method
