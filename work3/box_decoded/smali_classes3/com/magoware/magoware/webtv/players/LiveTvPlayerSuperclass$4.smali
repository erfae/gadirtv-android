.class Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$4;
.super Ljava/lang/Object;
.source "LiveTvPlayerSuperclass.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1698
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$4;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$4;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-wide v2, v2, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->liveTVStartupTime:J

    sub-long v5, v0, v2

    .line 1703
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$4;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    .line 1704
    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$700(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$4;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    .line 1706
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getChannel()Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    iget-object v7, v0, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$4;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    .line 1707
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getCurrentProgramId()I

    move-result v8

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$4;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playerOsd:Lcom/magoware/magoware/webtv/players/OsdBox;

    .line 1708
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/OsdBox;->getCurrentProgram()Ljava/lang/String;

    move-result-object v9

    .line 1709
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getPlayer()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$4;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    .line 1710
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getResolution()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$4;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    .line 1711
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->getBandwidth()Ljava/lang/String;

    move-result-object v12

    .line 1703
    invoke-static/range {v4 .. v12}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logLiveTVPlayTime(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$4;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->logPlayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$4;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget v1, v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->log_event_interval:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
