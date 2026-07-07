.class Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;
.super Ljava/lang/Object;
.source "VOOSMPIMAPlayerWithAdPlayback.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;


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

    .line 135
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$100(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPIMAPlayerWithAdPlayback"

    const-string v1, "add videoAdPlayerCallback"

    .line 140
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 8

    .line 194
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPIMAPlayerWithAdPlayback"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerGetAdDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerGetAdPosition()J

    move-result-wide v3

    .line 200
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerGetAdDuration()J

    move-result-wide v5

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAdProgress "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    return-object v0

    .line 195
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Z

    move-result v0

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdProgress not ready"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0
.end method

.method public getVolume()I
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$200(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerGetAdDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerGetVolume()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;)V
    .locals 1

    .line 145
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$202(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;Z)Z

    .line 146
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {p2, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$302(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 147
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 148
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {p2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerLoadAd(Ljava/lang/String;)V

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadAd:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPIMAPlayerWithAdPlayback"

    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public pauseAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerPauseAd()V

    .line 156
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_PAUSE:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$500(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPIMAPlayerWithAdPlayback"

    const-string v1, "pauseAd"

    .line 157
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public playAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$202(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;Z)Z

    .line 163
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$302(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;

    .line 165
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->isResume()Z

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerPlayAd()V

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_RESUME:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$500(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    sget-object v1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;->VO_OSMP_VIDEO_AD_PLAYER_CB_PLAY:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;

    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$500(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$VO_OSMP_VIDEO_AD_PLAYER_CB_OP;Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V

    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPIMAPlayerWithAdPlayback"

    const-string v1, "playAd"

    .line 172
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPIMAPlayerWithAdPlayback"

    const-string v2, "release"

    .line 177
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$100(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPIMAPlayerWithAdPlayback"

    const-string v1, "remove videoAdPlayerCallback"

    .line 183
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stopAd(Lcom/google/ads/interactivemedia/v3/api/player/AdMediaInfo;)V
    .locals 2

    .line 188
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback$1;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;->access$400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerWithAdPlayback;)Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->playerStopAd()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@VOOSMPIMAPlayerWithAdPlayback"

    const-string v1, "stopAd"

    .line 189
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
