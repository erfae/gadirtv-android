.class Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$2;
.super Ljava/lang/Object;
.source "VOOSMPIMAPlayerController.java"

# interfaces
.implements Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$OnContentCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->setupVideoPlayerWithAdPlayback()V
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

    .line 490
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentComplete()V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$3000(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->contentComplete()V

    return-void
.end method
