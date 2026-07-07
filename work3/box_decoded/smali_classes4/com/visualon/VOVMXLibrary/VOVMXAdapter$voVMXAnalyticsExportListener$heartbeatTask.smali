.class Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;
.super Ljava/util/TimerTask;
.source "VOVMXAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "heartbeatTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;


# direct methods
.method private constructor <init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;Lcom/visualon/VOVMXLibrary/VOVMXAdapter$1;)V
    .locals 0

    .line 825
    invoke-direct {p0, p1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;-><init>(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v0, p0

    .line 829
    iget-object v1, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$700(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    iget-object v1, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    invoke-static {v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_5

    iget-object v1, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$800(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 832
    :cond_0
    iget-object v1, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$900(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$700(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getUTCPosition()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$700(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v1

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 834
    iget-object v1, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1000(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->getPosition()J

    move-result-wide v1

    goto :goto_1

    .line 836
    :cond_2
    iget-object v5, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1000(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsLiveStreamingTimer;->setPosition(J)V

    :goto_1
    move-wide v8, v1

    .line 838
    invoke-static {}, Lcom/verimatrix/vdc/MonitorAgent;->getInstance()Lcom/verimatrix/vdc/MonitorAgent;

    move-result-object v6

    iget-object v1, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    iget-object v1, v1, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->this$0:Lcom/visualon/VOVMXLibrary/VOVMXAdapter;

    .line 839
    invoke-static {v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter;->access$300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter;)I

    move-result v7

    iget-object v1, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    .line 841
    invoke-static {v1}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$700(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getDuration()J

    move-result-wide v1

    const-wide/16 v10, 0x3e8

    div-long/2addr v1, v10

    iget-object v5, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    .line 842
    invoke-static {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1100(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Z

    move-result v5

    xor-int/lit8 v12, v5, 0x1

    iget-object v5, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    .line 844
    invoke-static {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1100(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1200(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v3, v5

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x0

    :goto_2
    iget-object v5, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    .line 845
    invoke-static {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1300(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v13, v5

    iget-object v5, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    .line 846
    invoke-static {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1100(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1400(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v10, v5

    move-wide/from16 v26, v10

    goto :goto_3

    :cond_4
    const-wide/16 v26, 0x0

    :goto_3
    iget-object v5, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    .line 847
    invoke-static {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1500(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)Lcom/verimatrix/vdc/Monitor$StreamType;

    move-result-object v21

    iget-object v5, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    .line 848
    invoke-static {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1600(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)I

    move-result v5

    int-to-long v10, v5

    move-wide/from16 v22, v10

    iget-object v5, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    .line 849
    invoke-static {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1600(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)I

    move-result v5

    int-to-long v10, v5

    iget-object v5, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    invoke-static {v5}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1700(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;)I

    move-result v5

    move-wide v15, v13

    int-to-long v13, v5

    sget-wide v24, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$VOVMXConfiguration;->REPORT_INTERVAL:J

    const-wide/16 v19, 0x3e8

    div-long v24, v24, v19

    div-long v13, v13, v24

    sub-long v24, v10, v13

    move-wide v10, v1

    move-wide/from16 v17, v15

    const-wide/16 v1, 0x0

    move-wide v13, v1

    move-wide v15, v3

    move-wide/from16 v19, v26

    .line 838
    invoke-virtual/range {v6 .. v25}, Lcom/verimatrix/vdc/MonitorAgent;->playbackProgressWithStreamHandle(IJJZJJJJLcom/verimatrix/vdc/Monitor$StreamType;JJ)Lcom/verimatrix/vdc/Monitor$Status;

    .line 852
    iget-object v1, v0, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener$heartbeatTask;->this$1:Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;->access$1702(Lcom/visualon/VOVMXLibrary/VOVMXAdapter$voVMXAnalyticsExportListener;I)I

    :cond_5
    :goto_4
    return-void
.end method
