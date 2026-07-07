.class Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;
.super Ljava/lang/Object;
.source "VOVMXAdapter.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPAnalyticsExportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/VOVMXLibrary/VOVMXAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "voVMXAnalyticsExportListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$voVMXAnalyticsRunner;,
        Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$GetIpAddressTask;,
        Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOVMXAnalyticsExport"


# instance fields
.field private abr:I

.field private audioLang:Ljava/lang/String;

.field private commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

.field private delayedEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private fr:I

.field private frDrp:I

.field final genericAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private height:I

.field private ibr:I

.field final identifiedType:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

.field private isLiveStreaming:Z

.field private isPaused:Z

.field private m_heartbeatTimer:Ljava/util/Timer;

.field private mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

.field private offset:J

.field private openUri:Ljava/lang/String;

.field private playbackRequestedTs:J

.field private playingCnt:I

.field private runners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private startCnt:I

.field private stopRequested:Z

.field private streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

.field private streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

.field final synthetic this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

.field private vbr:I

.field private width:I


# direct methods
.method constructor <init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)V
    .locals 2

    .line 292
    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 266
    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    const/4 p1, 0x0

    .line 268
    iput-boolean p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isPaused:Z

    .line 269
    iput-boolean p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->stopRequested:Z

    .line 270
    iput-boolean p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    .line 271
    iput p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->startCnt:I

    .line 272
    iput p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->playingCnt:I

    const-string v0, ""

    .line 273
    iput-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->openUri:Ljava/lang/String;

    .line 274
    iput p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->vbr:I

    .line 275
    iput p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->abr:I

    .line 276
    iput p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->ibr:I

    .line 277
    iput p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->fr:I

    .line 278
    iput p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->frDrp:I

    const-wide/16 v0, 0x0

    .line 279
    iput-wide v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->offset:J

    .line 280
    iput p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->width:I

    .line 281
    iput p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->height:I

    const-string p1, "en"

    .line 282
    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->audioLang:Ljava/lang/String;

    .line 283
    iput-wide v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->playbackRequestedTs:J

    .line 284
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->delayedEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 285
    sget-object p1, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO_VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    .line 286
    sget-object p1, Lcom/verimatrix/vdc/Monitor$MediaType;->UNKNOWN:Lcom/verimatrix/vdc/Monitor$MediaType;

    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 288
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->genericAttributes:Ljava/util/Map;

    .line 289
    sget-object v0, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->URL:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    iput-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->identifiedType:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->runners:Ljava/util/ArrayList;

    .line 293
    sget-object v0, Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;->KEY_0:Lcom/verimatrix/vdc/Monitor$GenericAttributeKey;

    const-string v1, "GENERIC_ATTRIBUTE_1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;Lcom/verimatrix/vdc/Monitor$EndCause;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->stop(Lcom/verimatrix/vdc/Monitor$EndCause;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Z
    .locals 0

    .line 263
    iget-boolean p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isPaused:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)I
    .locals 0

    .line 263
    iget p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->abr:I

    return p0
.end method

.method static synthetic access$1300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)I
    .locals 0

    .line 263
    iget p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->ibr:I

    return p0
.end method

.method static synthetic access$1400(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)I
    .locals 0

    .line 263
    iget p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->vbr:I

    return p0
.end method

.method static synthetic access$1500(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Lcom/verimatrix/vdc/Monitor$StreamType;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)I
    .locals 0

    .line 263
    iget p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->fr:I

    return p0
.end method

.method static synthetic access$1700(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)I
    .locals 0

    .line 263
    iget p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->frDrp:I

    return p0
.end method

.method static synthetic access$1702(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;I)I
    .locals 0

    .line 263
    iput p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->frDrp:I

    return p1
.end method

.method static synthetic access$1800(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->sendDataLoadServerResult(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;Lorg/json/JSONArray;)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->parseAnalyticsExport(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$700(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Lcom/visualon/OSMPPlayer/VOCommonPlayer;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)I
    .locals 0

    .line 263
    iget p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->playingCnt:I

    return p0
.end method

.method static synthetic access$900(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Z
    .locals 0

    .line 263
    iget-boolean p0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    return p0
.end method

.method private checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V
    .locals 2

    .line 776
    sget-object v0, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    if-eq p1, v0, :cond_0

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Monitor.Status is wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/verimatrix/vdc/Monitor$Status;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOVMXAnalyticsExport"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private handleQueuingEvent()V
    .locals 18

    move-object/from16 v0, p0

    .line 716
    :goto_0
    iget-object v1, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->delayedEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 717
    iget-object v1, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->delayedEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 718
    sget-object v2, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$1;->$SwitchMap$com$visualon$VOVMXLibrary$VOVMXAdapter$DELAY_EVENT:[I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    invoke-virtual {v3}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v4

    iget-object v2, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 765
    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v5

    sget-object v6, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->OTHER:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    const-wide/16 v7, 0x0

    .line 767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v2, v9

    .line 764
    invoke-virtual/range {v4 .. v10}, Lcom/verimatrix/vdc/MonitorAgent;->dataLoadErrorWithStreamHandle(ILcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    .line 769
    invoke-direct {v0, v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto :goto_0

    .line 756
    :cond_1
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v2

    iget-object v3, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 757
    invoke-static {v3}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v3

    sget-object v4, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->DATA_UNDERRUN:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    const-wide/16 v5, 0x0

    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 756
    invoke-virtual/range {v2 .. v8}, Lcom/verimatrix/vdc/MonitorAgent;->dataLoadErrorWithStreamHandle(ILcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    .line 761
    invoke-direct {v0, v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto :goto_0

    .line 749
    :cond_2
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v2

    iget-object v3, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 750
    invoke-static {v3}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v3

    .line 751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 749
    invoke-virtual {v2, v3, v4, v5}, Lcom/verimatrix/vdc/MonitorAgent;->dataLoadCompleteWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    .line 753
    invoke-direct {v0, v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_0

    .line 737
    :cond_3
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v2

    iget-object v3, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->identifiedType:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    iget-object v4, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->openUri:Ljava/lang/String;

    iget-object v5, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 740
    invoke-static {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v5

    iget-object v6, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    iget-object v7, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->openUri:Ljava/lang/String;

    iget-object v8, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->genericAttributes:Ljava/util/Map;

    .line 744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 737
    invoke-virtual/range {v2 .. v10}, Lcom/verimatrix/vdc/MonitorAgent;->dataLoadStartingWithStreamHandle(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;ILcom/verimatrix/vdc/Monitor$MediaType;Ljava/lang/String;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    .line 746
    invoke-direct {v0, v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_0

    .line 720
    :cond_4
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v2

    sget-object v3, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->URL:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    iget-object v4, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->openUri:Ljava/lang/String;

    iget-object v5, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 723
    invoke-static {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v5

    sget-object v6, Lcom/verimatrix/vdc/Monitor$DeliveryType;->STREAM:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    iget-object v7, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    iget-object v8, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v9, Lcom/verimatrix/vdc/Monitor$StartCause;->APP_USER_INPUT:Lcom/verimatrix/vdc/Monitor$StartCause;

    iget-object v10, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->openUri:Ljava/lang/String;

    iget-object v12, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->genericAttributes:Ljava/util/Map;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-string v11, ""

    .line 720
    invoke-virtual/range {v2 .. v15}, Lcom/verimatrix/vdc/MonitorAgent;->playbackRequestWithStreamHandle(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;ILcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v1

    .line 734
    invoke-direct {v0, v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private parseAnalyticsExport(Lorg/json/JSONArray;)V
    .locals 32

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 311
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4a

    .line 312
    sget-object v4, Lcom/verimatrix/vdc/Monitor$Status;->OK:Lcom/verimatrix/vdc/Monitor$Status;

    move-object/from16 v4, p1

    .line 313
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "t"

    .line 314
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "open"

    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "ts"

    if-eqz v7, :cond_2

    .line 317
    :try_start_1
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v7

    sget-object v9, Lcom/verimatrix/vdc/Monitor$StreamFunction;->DOWNLOAD_AND_PLAYBACK:Lcom/verimatrix/vdc/Monitor$StreamFunction;

    invoke-virtual {v7, v9}, Lcom/verimatrix/vdc/MonitorAgent;->getStreamHandle(Lcom/verimatrix/vdc/Monitor$StreamFunction;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$302(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;I)I

    .line 318
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v9

    sget-object v10, Lcom/verimatrix/vdc/Monitor$AreaType;->EPG:Lcom/verimatrix/vdc/Monitor$AreaType;

    sget-object v11, Lcom/verimatrix/vdc/Monitor$AppStatus;->ACTIVE:Lcom/verimatrix/vdc/Monitor$AppStatus;

    const/16 v12, 0xc8

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v13, v6, v13

    .line 318
    invoke-virtual/range {v9 .. v14}, Lcom/verimatrix/vdc/MonitorAgent;->applicationStatus(Lcom/verimatrix/vdc/Monitor$AreaType;Lcom/verimatrix/vdc/Monitor$AppStatus;IJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v6

    .line 324
    invoke-direct {v1, v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    const-string v6, "uri"

    .line 325
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->openUri:Ljava/lang/String;

    .line 326
    sget-object v6, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO_VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    iput-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    .line 327
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->isLiveStreaming()Z

    move-result v6

    iput-boolean v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    if-eqz v6, :cond_0

    .line 328
    sget-object v6, Lcom/verimatrix/vdc/Monitor$MediaType;->LINEAR_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    goto :goto_1

    :cond_0
    sget-object v6, Lcom/verimatrix/vdc/Monitor$MediaType;->ON_DEMAND:Lcom/verimatrix/vdc/Monitor$MediaType;

    :goto_1
    iput-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 330
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->delayedEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Landroid/util/Pair;

    sget-object v9, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->PLAYBACK_REQUESTED:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v7, v9, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 331
    iput v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->vbr:I

    .line 332
    iput v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->abr:I

    .line 333
    iget-object v5, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    if-nez v5, :cond_1

    .line 334
    new-instance v5, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-direct {v5, v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;-><init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)V

    iput-object v5, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    goto :goto_2

    .line 336
    :cond_1
    invoke-virtual {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->reset()V

    .line 338
    :goto_2
    iget-object v5, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->start()V

    goto :goto_3

    :cond_2
    const-string v7, "open_fin"

    .line 339
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_18

    :cond_3
    const-string v7, "start"

    .line 340
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_6

    .line 341
    iget v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->startCnt:I

    if-nez v6, :cond_5

    .line 342
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMaxPosition()J

    move-result-wide v6

    iget-object v11, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v11}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v11

    sub-long/2addr v6, v11

    iput-wide v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->offset:J

    .line 344
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    sget-object v7, Lcom/verimatrix/vdc/Monitor$MediaType;->ON_DEMAND:Lcom/verimatrix/vdc/Monitor$MediaType;

    if-ne v6, v7, :cond_4

    .line 345
    new-instance v6, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$GetIpAddressTask;

    invoke-direct {v6, v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$GetIpAddressTask;-><init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)V

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->openUri:Ljava/lang/String;

    aput-object v9, v7, v2

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v10

    invoke-virtual {v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$GetIpAddressTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 348
    :cond_4
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->openUri:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 349
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->delayedEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Landroid/util/Pair;

    sget-object v9, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->DATA_LOAD_STARTED:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v7, v9, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_5
    iget v5, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->startCnt:I

    add-int/2addr v5, v10

    iput v5, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->startCnt:I

    goto :goto_3

    :cond_6
    const-string v7, "playing"

    .line 354
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, "cat"

    const-string v13, "ps"

    const-wide/16 v14, 0x0

    if-eqz v7, :cond_1a

    .line 355
    :try_start_2
    invoke-static {}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$400()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/verimatrix/vdc/Monitor$StreamType;

    iput-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    .line 356
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->isLiveStreaming()Z

    move-result v6

    iput-boolean v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    if-eqz v6, :cond_7

    .line 357
    sget-object v6, Lcom/verimatrix/vdc/Monitor$MediaType;->LINEAR_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    goto :goto_4

    :cond_7
    sget-object v6, Lcom/verimatrix/vdc/Monitor$MediaType;->ON_DEMAND:Lcom/verimatrix/vdc/Monitor$MediaType;

    :goto_4
    iput-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->mediaType:Lcom/verimatrix/vdc/Monitor$MediaType;

    .line 358
    iget-boolean v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isPaused:Z

    if-eqz v6, :cond_13

    .line 359
    iput-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isPaused:Z

    .line 360
    iget-boolean v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    if-eqz v6, :cond_d

    .line 361
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getUTCPosition()J

    move-result-wide v6

    cmp-long v9, v6, v14

    if-gez v9, :cond_8

    .line 363
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    sub-long v12, v12, v16

    invoke-virtual {v6, v12, v13}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->getPosition(J)J

    move-result-wide v6

    goto :goto_5

    .line 365
    :cond_8
    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v9, v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->setPosition(J)V

    .line 366
    :goto_5
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v16

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 367
    invoke-static {v9}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v17

    sget-object v20, Lcom/verimatrix/vdc/Monitor$EndCause;->TERMINATED_BY_APP:Lcom/verimatrix/vdc/Monitor$EndCause;

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    sub-long v21, v12, v18

    move-wide/from16 v18, v6

    .line 366
    invoke-virtual/range {v16 .. v22}, Lcom/verimatrix/vdc/MonitorAgent;->playbackStoppedWithStreamHandle(IJLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v9

    .line 372
    invoke-direct {v1, v9}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    .line 373
    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v12

    sget-object v13, Lcom/verimatrix/vdc/Monitor$StreamFunction;->DOWNLOAD_AND_PLAYBACK:Lcom/verimatrix/vdc/Monitor$StreamFunction;

    invoke-virtual {v12, v13}, Lcom/verimatrix/vdc/MonitorAgent;->getStreamHandle(Lcom/verimatrix/vdc/Monitor$StreamFunction;)I

    move-result v12

    invoke-static {v9, v12}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$302(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;I)I

    .line 374
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v16

    sget-object v17, Lcom/verimatrix/vdc/Monitor$IdentifiedType;->URL:Lcom/verimatrix/vdc/Monitor$IdentifiedType;

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->openUri:Ljava/lang/String;

    iget-object v12, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 377
    invoke-static {v12}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v19

    sget-object v20, Lcom/verimatrix/vdc/Monitor$DeliveryType;->STREAM:Lcom/verimatrix/vdc/Monitor$DeliveryType;

    iget-object v12, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 379
    invoke-interface {v12}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMaxPosition()J

    move-result-wide v12

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v21

    sub-long v12, v12, v21

    iget-wide v10, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->offset:J

    const-wide/16 v21, 0x1388

    add-long v10, v10, v21

    cmp-long v18, v12, v10

    if-gtz v18, :cond_9

    sget-object v10, Lcom/verimatrix/vdc/Monitor$MediaType;->LINEAR_CHANNEL:Lcom/verimatrix/vdc/Monitor$MediaType;

    goto :goto_6

    :cond_9
    sget-object v10, Lcom/verimatrix/vdc/Monitor$MediaType;->NETWORK_PVR:Lcom/verimatrix/vdc/Monitor$MediaType;

    :goto_6
    move-object/from16 v21, v10

    iget-object v10, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v23, Lcom/verimatrix/vdc/Monitor$StartCause;->APP_USER_INPUT:Lcom/verimatrix/vdc/Monitor$StartCause;

    iget-object v11, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->openUri:Ljava/lang/String;

    const-string v25, ""

    iget-object v12, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->genericAttributes:Ljava/util/Map;

    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    sub-long v28, v28, v30

    move-object/from16 v18, v9

    move-object/from16 v22, v10

    move-object/from16 v24, v11

    move-object/from16 v26, v12

    .line 374
    invoke-virtual/range {v16 .. v29}, Lcom/verimatrix/vdc/MonitorAgent;->playbackRequestWithStreamHandle(Lcom/verimatrix/vdc/Monitor$IdentifiedType;Ljava/lang/String;ILcom/verimatrix/vdc/Monitor$DeliveryType;Lcom/verimatrix/vdc/Monitor$MediaType;Lcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$StartCause;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v9

    .line 388
    invoke-direct {v1, v9}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    .line 389
    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v10, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO_VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-eq v9, v10, :cond_a

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v10, Lcom/verimatrix/vdc/Monitor$StreamType;->VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-ne v9, v10, :cond_b

    .line 390
    :cond_a
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v16

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 391
    invoke-static {v9}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v17

    iget v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->width:I

    iget v10, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->height:I

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    sub-long v22, v11, v18

    move-wide/from16 v18, v6

    move/from16 v20, v9

    move/from16 v21, v10

    .line 390
    invoke-virtual/range {v16 .. v23}, Lcom/verimatrix/vdc/MonitorAgent;->playbackStartedVideoWithStreamHandle(IJIIJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v9

    .line 397
    invoke-direct {v1, v9}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    .line 399
    :cond_b
    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v10, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO_VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-eq v9, v10, :cond_c

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v10, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-ne v9, v10, :cond_12

    .line 400
    :cond_c
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v16

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 401
    invoke-static {v9}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v17

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->audioLang:Ljava/lang/String;

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long v21, v10, v12

    move-wide/from16 v18, v6

    move-object/from16 v20, v9

    .line 400
    invoke-virtual/range {v16 .. v22}, Lcom/verimatrix/vdc/MonitorAgent;->playbackStartedAudioWithStreamHandle(IJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v6

    .line 406
    invoke-direct {v1, v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_7

    .line 409
    :cond_d
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v16

    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 410
    invoke-static {v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v17

    .line 411
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long v20, v6, v9

    .line 409
    invoke-virtual/range {v16 .. v21}, Lcom/verimatrix/vdc/MonitorAgent;->playbackResumedWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v6

    .line 414
    invoke-direct {v1, v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    .line 415
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v6

    cmp-long v9, v6, v14

    if-gez v9, :cond_e

    .line 417
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-virtual {v6, v9, v10}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->getPosition(J)J

    move-result-wide v6

    .line 418
    :cond_e
    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v10, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO_VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-eq v9, v10, :cond_f

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v10, Lcom/verimatrix/vdc/Monitor$StreamType;->VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-ne v9, v10, :cond_10

    .line 419
    :cond_f
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v16

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v9}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v17

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long v20, v9, v11

    move-wide/from16 v18, v6

    .line 419
    invoke-virtual/range {v16 .. v21}, Lcom/verimatrix/vdc/MonitorAgent;->playbackResumedVideoWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v9

    .line 423
    invoke-direct {v1, v9}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    .line 425
    :cond_10
    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v10, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO_VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-eq v9, v10, :cond_11

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v10, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-ne v9, v10, :cond_12

    .line 426
    :cond_11
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v16

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v9}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v17

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long v20, v9, v11

    move-wide/from16 v18, v6

    .line 426
    invoke-virtual/range {v16 .. v21}, Lcom/verimatrix/vdc/MonitorAgent;->playbackResumedAudioWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v6

    .line 430
    invoke-direct {v1, v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    .line 433
    :cond_12
    :goto_7
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->start()V

    .line 435
    :cond_13
    iget v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->playingCnt:I

    if-nez v6, :cond_19

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->handleQueuingEvent()V

    .line 439
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    iput-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->m_heartbeatTimer:Ljava/util/Timer;

    .line 440
    new-instance v7, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;

    const/4 v9, 0x0

    invoke-direct {v7, v1, v9}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;-><init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;Lcom/visualon/VOVMXLibrary/VOVMXAdapter$1;)V

    const-wide/16 v18, 0x0

    sget-wide v20, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->REPORT_INTERVAL:J

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v16 .. v21}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 442
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v22

    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v23

    const-wide/16 v24, 0x0

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long v26, v6, v9

    .line 442
    invoke-virtual/range {v22 .. v27}, Lcom/verimatrix/vdc/MonitorAgent;->contentReadyToPlayWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v6

    .line 446
    invoke-direct {v1, v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    .line 449
    iget-boolean v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    if-eqz v6, :cond_14

    .line 450
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getUTCPosition()J

    move-result-wide v6

    cmp-long v9, v6, v14

    if-gtz v9, :cond_15

    .line 452
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-virtual {v6, v9, v10}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->getPosition(J)J

    move-result-wide v6

    goto :goto_8

    .line 454
    :cond_14
    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v6

    .line 457
    :cond_15
    :goto_8
    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v10, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO_VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-eq v9, v10, :cond_16

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v10, Lcom/verimatrix/vdc/Monitor$StreamType;->VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-ne v9, v10, :cond_17

    .line 458
    :cond_16
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v9

    iget-object v10, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v10}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v10

    iget v13, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->width:I

    iget v14, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->height:I

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    sub-long v15, v11, v15

    move-wide v11, v6

    .line 458
    invoke-virtual/range {v9 .. v16}, Lcom/verimatrix/vdc/MonitorAgent;->playbackStartedVideoWithStreamHandle(IJIIJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v9

    .line 464
    invoke-direct {v1, v9}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    .line 466
    :cond_17
    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v10, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO_VIDEO:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-eq v9, v10, :cond_18

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v10, Lcom/verimatrix/vdc/Monitor$StreamType;->AUDIO:Lcom/verimatrix/vdc/Monitor$StreamType;

    if-ne v9, v10, :cond_19

    .line 467
    :cond_18
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v9

    iget-object v10, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 468
    invoke-static {v10}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v10

    iget-object v13, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->audioLang:Ljava/lang/String;

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    sub-long v14, v11, v14

    move-wide v11, v6

    .line 467
    invoke-virtual/range {v9 .. v15}, Lcom/verimatrix/vdc/MonitorAgent;->playbackStartedAudioWithStreamHandle(IJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v5

    .line 473
    invoke-direct {v1, v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    .line 476
    :cond_19
    iget v5, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->playingCnt:I

    const/4 v2, 0x1

    add-int/2addr v5, v2

    iput v5, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->playingCnt:I

    goto/16 :goto_3

    :cond_1a
    const-string v7, "seek"

    .line 477
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 478
    iget-boolean v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isPaused:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "tps"

    if-nez v6, :cond_1f

    const/4 v2, 0x1

    .line 479
    :try_start_3
    iput-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isPaused:Z

    .line 481
    iget-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getUTCPosition()J

    move-result-wide v9

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    add-long/2addr v9, v11

    goto :goto_9

    :cond_1b
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    :goto_9
    cmp-long v2, v9, v14

    if-gez v2, :cond_1c

    .line 483
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-virtual {v2, v9, v10}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->getPosition(J)J

    move-result-wide v9

    goto :goto_a

    .line 485
    :cond_1c
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v2, v9, v10}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->setPosition(J)V

    :goto_a
    move-wide/from16 v18, v9

    .line 486
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v16

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 487
    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v17

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long v20, v9, v11

    .line 486
    invoke-virtual/range {v16 .. v21}, Lcom/verimatrix/vdc/MonitorAgent;->playbackPausedWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 491
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    .line 492
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-virtual {v2, v9, v10}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->seek(J)V

    .line 493
    iget-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getUTCPosition()J

    move-result-wide v6

    goto :goto_b

    :cond_1d
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_b
    cmp-long v2, v6, v14

    if-gez v2, :cond_1e

    .line 495
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v6, v9

    invoke-virtual {v2, v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->getPosition(J)J

    move-result-wide v6

    goto :goto_c

    .line 497
    :cond_1e
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v2, v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->setPosition(J)V

    :goto_c
    move-wide v11, v6

    .line 499
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v9

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 500
    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v10

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v13, v6, v13

    .line 499
    invoke-virtual/range {v9 .. v14}, Lcom/verimatrix/vdc/MonitorAgent;->playbackSeekWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 504
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_3

    .line 507
    :cond_1f
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-virtual {v2, v9, v10}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->seek(J)V

    .line 508
    iget-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getUTCPosition()J

    move-result-wide v6

    goto :goto_d

    :cond_20
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_d
    cmp-long v2, v6, v14

    if-gez v2, :cond_21

    .line 510
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v6, v9

    invoke-virtual {v2, v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->getPosition(J)J

    move-result-wide v6

    goto :goto_e

    .line 512
    :cond_21
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v2, v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->setPosition(J)V

    :goto_e
    move-wide v11, v6

    .line 513
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v9

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 514
    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v10

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v13, v6, v13

    .line 513
    invoke-virtual/range {v9 .. v14}, Lcom/verimatrix/vdc/MonitorAgent;->playbackSeekWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 518
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_3

    :cond_22
    const-string v7, "pause"

    .line 520
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v2, 0x1

    .line 521
    iput-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isPaused:Z

    .line 522
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->pause()V

    .line 523
    iget-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    if-eqz v2, :cond_23

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getUTCPosition()J

    move-result-wide v6

    goto :goto_f

    :cond_23
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_f
    cmp-long v2, v6, v14

    if-gez v2, :cond_24

    .line 525
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v6, v9

    invoke-virtual {v2, v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->getPosition(J)J

    move-result-wide v6

    :cond_24
    move-wide v11, v6

    .line 526
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v9

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 527
    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v10

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v13, v6, v13

    .line 526
    invoke-virtual/range {v9 .. v14}, Lcom/verimatrix/vdc/MonitorAgent;->playbackPausedWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 531
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_3

    :cond_25
    const-string v7, "stop"

    .line 532
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v10, "end"

    if-eqz v7, :cond_2b

    .line 533
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->handleQueuingEvent()V

    .line 535
    iget-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->stopRequested:Z

    if-nez v2, :cond_26

    .line 536
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v2

    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v6

    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    sub-long v14, v16, v18

    .line 536
    invoke-virtual {v2, v6, v14, v15}, Lcom/verimatrix/vdc/MonitorAgent;->playbackStopRequestedWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 538
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    .line 540
    :cond_26
    iget-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    if-eqz v2, :cond_27

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getUTCPosition()J

    move-result-wide v6

    goto :goto_10

    :cond_27
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_10
    const-wide/16 v13, 0x0

    cmp-long v2, v6, v13

    if-gtz v2, :cond_28

    .line 541
    iget-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    if-eqz v2, :cond_28

    .line 542
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v6, v13

    invoke-virtual {v2, v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->getPosition(J)J

    move-result-wide v6

    :cond_28
    move-wide v15, v6

    .line 543
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v13

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v14

    .line 545
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object v2, Lcom/verimatrix/vdc/Monitor$EndCause;->END_OF_ASSET:Lcom/verimatrix/vdc/Monitor$EndCause;

    goto :goto_11

    :cond_29
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$600(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)Lcom/verimatrix/vdc/Monitor$EndCause;

    move-result-object v2

    :goto_11
    move-object/from16 v17, v2

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long v18, v6, v9

    .line 543
    invoke-virtual/range {v13 .. v19}, Lcom/verimatrix/vdc/MonitorAgent;->playbackStoppedWithStreamHandle(IJLcom/verimatrix/vdc/Monitor$EndCause;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 548
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    .line 549
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->m_heartbeatTimer:Ljava/util/Timer;

    if-eqz v2, :cond_2a

    .line 550
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 551
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->m_heartbeatTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    const/4 v2, 0x0

    .line 552
    iput-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->m_heartbeatTimer:Ljava/util/Timer;

    .line 554
    :cond_2a
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->reset()V

    const/4 v2, 0x0

    .line 555
    iput v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->startCnt:I

    .line 556
    iput v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->playingCnt:I

    .line 557
    iput-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isPaused:Z

    .line 558
    iput-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->stopRequested:Z

    const-wide/16 v6, 0x0

    .line 559
    iput-wide v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->offset:J

    .line 560
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    sget-object v6, Lcom/verimatrix/vdc/Monitor$EndCause;->TERMINATED_BY_USER:Lcom/verimatrix/vdc/Monitor$EndCause;

    invoke-static {v2, v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$602(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;Lcom/verimatrix/vdc/Monitor$EndCause;)Lcom/verimatrix/vdc/Monitor$EndCause;

    .line 561
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    const/high16 v6, -0x80000000

    invoke-static {v2, v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$302(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;I)I

    .line 562
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->delayedEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 564
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v9

    sget-object v10, Lcom/verimatrix/vdc/Monitor$AreaType;->EPG:Lcom/verimatrix/vdc/Monitor$AreaType;

    sget-object v11, Lcom/verimatrix/vdc/Monitor$AppStatus;->INACTIVE:Lcom/verimatrix/vdc/Monitor$AppStatus;

    const/16 v12, 0xc8

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v13, v6, v13

    .line 564
    invoke-virtual/range {v9 .. v14}, Lcom/verimatrix/vdc/MonitorAgent;->applicationStatus(Lcom/verimatrix/vdc/Monitor$AreaType;Lcom/verimatrix/vdc/Monitor$AppStatus;IJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 569
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_3

    .line 570
    :cond_2b
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 571
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    sget-object v5, Lcom/verimatrix/vdc/Monitor$EndCause;->END_OF_ASSET:Lcom/verimatrix/vdc/Monitor$EndCause;

    invoke-static {v2, v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$602(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;Lcom/verimatrix/vdc/Monitor$EndCause;)Lcom/verimatrix/vdc/Monitor$EndCause;

    goto/16 :goto_3

    :cond_2c
    const-string v7, "buffer"

    .line 572
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 573
    iget v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->playingCnt:I

    if-lez v2, :cond_2d

    .line 574
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v9

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 575
    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v10

    sget-object v11, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->DATA_UNDERRUN:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    const-wide/16 v12, 0x0

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    sub-long v14, v6, v14

    .line 574
    invoke-virtual/range {v9 .. v15}, Lcom/verimatrix/vdc/MonitorAgent;->dataLoadErrorWithStreamHandle(ILcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 579
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_3

    .line 581
    :cond_2d
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->delayedEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->DATA_LOAD_BUFFER:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_2e
    const-string v7, "fail"

    .line 583
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    goto/16 :goto_3

    :cond_2f
    const-string v7, "suspend"

    .line 584
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    const/4 v2, 0x1

    .line 585
    iput-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isPaused:Z

    .line 586
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->pause()V

    .line 587
    iget-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    if-eqz v2, :cond_30

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getUTCPosition()J

    move-result-wide v6

    goto :goto_12

    :cond_30
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_12
    const-wide/16 v9, 0x0

    cmp-long v2, v6, v9

    if-gez v2, :cond_31

    .line 589
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v6, v9

    invoke-virtual {v2, v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->getPosition(J)J

    move-result-wide v6

    goto :goto_13

    .line 591
    :cond_31
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v2, v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->setPosition(J)V

    :goto_13
    move-wide v11, v6

    .line 592
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v9

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 593
    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v10

    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long v13, v6, v13

    .line 592
    invoke-virtual/range {v9 .. v14}, Lcom/verimatrix/vdc/MonitorAgent;->playbackPausedWithStreamHandle(IJJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 597
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_3

    :cond_32
    const-string v7, "wakeup"

    .line 598
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    goto/16 :goto_3

    :cond_33
    const-string v7, "coderr"

    .line 599
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 600
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v10

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 601
    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v11

    const/4 v12, 0x0

    iget-object v13, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v14, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->FRAME_ERROR:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const/4 v15, 0x1

    .line 600
    invoke-virtual/range {v10 .. v15}, Lcom/verimatrix/vdc/MonitorAgent;->playbackErrorReportWithStreamHandle(IILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;I)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 607
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_3

    :cond_34
    const-string v7, "sfr"

    .line 608
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    const-string v2, "fps"

    .line 609
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->fr:I

    goto/16 :goto_3

    :cond_35
    const-string v7, "frdrp"

    .line 610
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 611
    iget v5, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->frDrp:I

    const/4 v2, 0x1

    add-int/2addr v5, v2

    iput v5, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->frDrp:I

    .line 612
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v6

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 613
    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v7

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamType:Lcom/verimatrix/vdc/Monitor$StreamType;

    sget-object v10, Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;->FRAME_LOSS:Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;

    const/4 v11, 0x1

    .line 612
    invoke-virtual/range {v6 .. v11}, Lcom/verimatrix/vdc/MonitorAgent;->playbackErrorReportWithStreamHandle(IILcom/verimatrix/vdc/Monitor$StreamType;Lcom/verimatrix/vdc/Monitor$PlaybackErrorType;I)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 619
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_3

    :cond_36
    const-string v2, "pbr"

    .line 620
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v7, "br"

    if-eqz v2, :cond_37

    .line 621
    :try_start_5
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->ibr:I

    goto/16 :goto_3

    :cond_37
    const-string v2, "vidres"

    .line 622
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, "w"

    .line 623
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "h"

    .line 624
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 625
    iget v7, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->width:I

    if-ne v2, v7, :cond_38

    iget v7, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->height:I

    if-ne v6, v7, :cond_38

    goto/16 :goto_3

    .line 627
    :cond_38
    iput v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->width:I

    .line 628
    iput v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->height:I

    .line 630
    iget v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->playingCnt:I

    if-nez v2, :cond_39

    goto/16 :goto_3

    .line 632
    :cond_39
    iget-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    if-eqz v2, :cond_3a

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getUTCPosition()J

    move-result-wide v6

    goto :goto_14

    :cond_3a
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v6

    :goto_14
    const-wide/16 v9, 0x0

    cmp-long v2, v6, v9

    if-gez v2, :cond_3b

    .line 634
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v6, v9

    invoke-virtual {v2, v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->getPosition(J)J

    move-result-wide v6

    goto :goto_15

    .line 636
    :cond_3b
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v2, v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->setPosition(J)V

    :goto_15
    move-wide v11, v6

    .line 637
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v9

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 638
    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v10

    iget v13, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->width:I

    iget v14, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->height:I

    .line 642
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    sub-long/2addr v6, v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 637
    invoke-virtual/range {v9 .. v15}, Lcom/verimatrix/vdc/MonitorAgent;->playbackResolutionChangeWithStreamHandle(IJIILjava/lang/Long;)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 644
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_3

    :cond_3c
    const-string v2, "audlang"

    .line 645
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "lang"

    .line 646
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->audioLang:Ljava/lang/String;

    .line 648
    iget v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->playingCnt:I

    if-nez v2, :cond_3d

    goto/16 :goto_18

    .line 650
    :cond_3d
    iget-boolean v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->isLiveStreaming:Z

    if-eqz v2, :cond_3e

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getUTCPosition()J

    move-result-wide v6

    goto :goto_16

    :cond_3e
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v6

    :goto_16
    const-wide/16 v11, 0x0

    cmp-long v2, v6, v11

    if-gez v2, :cond_3f

    .line 652
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long/2addr v6, v11

    invoke-virtual {v2, v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->getPosition(J)J

    move-result-wide v6

    goto :goto_17

    .line 654
    :cond_3f
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->streamingTimer:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    invoke-virtual {v2, v6, v7}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->setPosition(J)V

    :goto_17
    move-wide v13, v6

    .line 655
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v11

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 656
    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v12

    iget-object v15, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->audioLang:Ljava/lang/String;

    .line 659
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v16, v6, v8

    .line 655
    invoke-virtual/range {v11 .. v17}, Lcom/verimatrix/vdc/MonitorAgent;->playbackLanguageChangeWithStreamHandle(IJLjava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 661
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_18

    :cond_40
    const/4 v10, 0x0

    const-string v2, "sublang"

    .line 662
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto/16 :goto_18

    :cond_41
    const-string v2, "sbr"

    .line 663
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v2, "vbr"

    .line 664
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->vbr:I

    const-string v2, "abr"

    .line 665
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->abr:I

    goto/16 :goto_18

    :cond_42
    const-string v2, "segdle"

    .line 668
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 669
    iget v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->playingCnt:I

    if-lez v2, :cond_43

    .line 670
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v2

    iget-object v6, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 671
    invoke-static {v6}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v6

    .line 672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v11, v7

    .line 670
    invoke-virtual {v2, v6, v11, v12}, Lcom/verimatrix/vdc/MonitorAgent;->dataLoadCompleteWithStreamHandle(IJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 674
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto/16 :goto_18

    .line 676
    :cond_43
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->delayedEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->DATA_LOAD_COMPLETE:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_44
    const-string v2, "segdla"

    .line 678
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 679
    iget v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->playingCnt:I

    if-lez v2, :cond_45

    .line 680
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v11

    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 681
    invoke-static {v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v12

    sget-object v13, Lcom/verimatrix/vdc/Monitor$LoadErrorType;->OTHER:Lcom/verimatrix/vdc/Monitor$LoadErrorType;

    const-wide/16 v14, 0x0

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v16, v6, v8

    .line 680
    invoke-virtual/range {v11 .. v17}, Lcom/verimatrix/vdc/MonitorAgent;->dataLoadErrorWithStreamHandle(ILcom/verimatrix/vdc/Monitor$LoadErrorType;JJ)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object v2

    .line 685
    invoke-direct {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    goto :goto_18

    .line 687
    :cond_45
    iget-object v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->delayedEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;->DATA_LOAD_ERROR:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$DELAY_EVENT;

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_46
    const-string v2, "hlsmaster"

    .line 691
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    goto :goto_18

    :cond_47
    const-string v2, "hlsmedia"

    .line 692
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 693
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->ibr:I

    goto :goto_18

    :cond_48
    const-string v2, "hlskey"

    .line 694
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_18

    :cond_49
    const-string v2, "hlsdcn"

    .line 695
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_18
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 703
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4a
    return-void
.end method

.method private sendDataLoadServerResult(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6

    .line 707
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 708
    invoke-static {v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v1

    .line 710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    move-object v2, p1

    move-object v3, p1

    .line 707
    invoke-virtual/range {v0 .. v5}, Lcom/verimatrix/vdc/MonitorAgent;->dataLoadServerWithStreamHandle(ILjava/lang/String;Ljava/lang/String;J)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    .line 712
    invoke-direct {p0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->checkRet(Lcom/verimatrix/vdc/Monitor$Status;)V

    return-void
.end method

.method private stop(Lcom/verimatrix/vdc/Monitor$EndCause;)Lcom/verimatrix/vdc/Monitor$Status;
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$602(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;Lcom/verimatrix/vdc/Monitor$EndCause;)Lcom/verimatrix/vdc/Monitor$EndCause;

    const/4 p1, 0x1

    .line 783
    iput-boolean p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->stopRequested:Z

    .line 784
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v0}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/verimatrix/vdc/MonitorAgent;->playbackStopRequestedWithStreamHandle(I)Lcom/verimatrix/vdc/Monitor$Status;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method destroy()V
    .locals 4

    .line 788
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-nez v0, :cond_0

    return-void

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->m_heartbeatTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 792
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 793
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->m_heartbeatTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 794
    iput-object v1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->m_heartbeatTimer:Ljava/util/Timer;

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getAnalyticsVoExportPacket()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 799
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 801
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 802
    invoke-direct {p0, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->parseAnalyticsExport(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 804
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 809
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->runners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 811
    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 815
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    .line 813
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 818
    :cond_3
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v0}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v0

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_4

    .line 819
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v0

    iget-object v3, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v3}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/verimatrix/vdc/MonitorAgent;->freeStreamHandle(I)V

    .line 820
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v0, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$302(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;I)I

    .line 822
    :cond_4
    iput-object v1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    return-void
.end method

.method public onVOAnalyticsEvent()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->runners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$200(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$voVMXAnalyticsRunner;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$voVMXAnalyticsRunner;-><init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;Lcom/visualon/VOVMXLibrary/VOVMXAdapter$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method setPlayer(Lcom/visualon/OSMPPlayer/VOCommonPlayer;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->commonPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    return-void
.end method
