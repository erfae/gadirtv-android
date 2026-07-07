.class Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$2;
.super Ljava/lang/Object;
.source "VOOSMPIMAPlayerWithAdPlayback.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/ContentProgressProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->init(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 7

    .line 216
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerGetContentDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerGetContentPosition()J

    move-result-wide v0

    .line 220
    iget-object v2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$2;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerGetContentDuration()J

    move-result-wide v2

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContentProgress "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "@@@VOOSMPIMAPlayerWithAdPlayback"

    invoke-static {v6, v4, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    new-instance v4, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    return-object v4

    .line 217
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0
.end method
