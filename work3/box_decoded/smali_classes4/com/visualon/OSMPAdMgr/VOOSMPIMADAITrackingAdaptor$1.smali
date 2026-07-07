.class Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor$1;
.super Ljava/lang/Object;
.source "VOOSMPIMADAITrackingAdaptor.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->createVideoStreamPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v2, "[IMADAI: adding stream player Callback]"

    .line 506
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContentProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 9

    .line 570
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPIMADAITrackingAdaptor"

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IMADAI: not initialized, return VIDEO_TIME_NOT_READY (this: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getCurrPos()J

    move-result-wide v3

    .line 576
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->getMainStreamDuration()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "[IMADAI: pos is -1, return VIDEO_TIME_NOT_READY]"

    .line 578
    invoke-static {v2, v1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0

    .line 581
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[IMADAI: return VideoProgressUpdate("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ")]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IMADAI: Stream loaded, URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPIMADAITrackingAdaptor"

    .line 513
    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;

    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->access$100(Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "[IMADAI: failed to send stream data to app]"

    .line 517
    invoke-static {v3, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAdBreakEnded()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v2, "[IMADAI: ad break ended]"

    .line 529
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAdBreakStarted()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v2, "[IMADAI: ad break started]"

    .line 524
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAdPeriodEnded()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v2, "[IMADAI: ad period ended]"

    .line 539
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAdPeriodStarted()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v2, "[IMADAI: ad period started]"

    .line 534
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v2, "[IMADAI: pause]"

    .line 544
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoStreamPlayer$VideoStreamPlayerCallback;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v2, "[IMADAI: removing stream player Callback]"

    .line 550
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->access$000(Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resume()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMADAITrackingAdaptor"

    const-string v2, "[IMADAI: resume]"

    .line 556
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public seek(J)V
    .locals 0

    .line 562
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPIMADAITrackingAdaptor;)Z

    move-result p1

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method
