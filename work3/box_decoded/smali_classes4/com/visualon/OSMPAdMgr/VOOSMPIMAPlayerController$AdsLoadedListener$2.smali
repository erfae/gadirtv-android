.class Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;
.super Ljava/lang/Object;
.source "VOOSMPIMAPlayerController.java"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;


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

    .line 171
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 6

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fire Event:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPIMAPlayerController"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$3;->$SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType:[I

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 262
    :pswitch_1
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getAdData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 264
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fire event LOG: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$2500(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    goto/16 :goto_3

    .line 256
    :pswitch_3
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$2400(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    goto/16 :goto_3

    .line 253
    :pswitch_4
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$2300(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    goto/16 :goto_3

    .line 250
    :pswitch_5
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1000(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    goto/16 :goto_3

    .line 231
    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAdHasError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1100(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mAdStarted: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :pswitch_7
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1100(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 236
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 237
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {v0, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$902(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Z)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1802(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Z)Z

    .line 238
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$2200(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V

    goto/16 :goto_3

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Ad has an error. Do not play"

    .line 242
    invoke-static {v3, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 203
    :pswitch_8
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1300(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 204
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1600(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1, v2}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1402(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Z)Z

    goto :goto_2

    .line 210
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$600(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 211
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Getting CONTENT_RESUME_REQUESTED without COMPLETED"

    .line 212
    invoke-static {v3, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1700(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V

    .line 214
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1000(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    goto :goto_1

    .line 216
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1800(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Getting CONTENT_RESUME_REQUESTED without ending ad break"

    .line 217
    invoke-static {v3, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1900(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V

    .line 220
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1802(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Z)Z

    .line 221
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1102(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Z)Z

    .line 222
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$2002(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Z)Z

    .line 224
    :cond_4
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$2100(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    .line 226
    :goto_2
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1300(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_3

    .line 197
    :pswitch_9
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1300(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 198
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1402(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Z)Z

    .line 199
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1500(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    .line 200
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1300(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    .line 183
    :pswitch_a
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$600(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 184
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$900(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Getting LOADED without COMPLETED"

    .line 185
    invoke-static {v3, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1000(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)V

    .line 188
    :cond_5
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1102(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;Z)Z

    .line 189
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {p1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$500(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->getAdCuePoints()Ljava/util/List;

    move-result-object p1

    .line 190
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_6
    iget-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object p1, p1, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener$2;->this$1:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController$AdsLoadedListener;->this$0:Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;

    invoke-static {v0}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$700(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;->access$1200(Lcom/visualon/OSMPAdMgr/VOOSMPIMAPlayerController;J)V

    :cond_7
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
