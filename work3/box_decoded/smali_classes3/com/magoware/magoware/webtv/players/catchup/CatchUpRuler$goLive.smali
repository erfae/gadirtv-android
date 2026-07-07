.class public Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;
.super Ljava/util/TimerTask;
.source "CatchUpRuler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "goLive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1092
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$CatchUpRuler$goLive()V
    .locals 3

    .line 1096
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->access$300(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)I

    move-result v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getChannelByNumber(I)Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->access$200(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    const-string v2, "Catchup"

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->setAccessWay(Ljava/lang/String;)V

    .line 1099
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->access$200(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->playChannel(Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;)V

    .line 1100
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->access$200(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->sendLogLiveTVPlayTime()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1094
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->access$200(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$goLive$FSec8umfKfp8oj2q4W9Y6iBiK-0;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/catchup/-$$Lambda$CatchUpRuler$goLive$FSec8umfKfp8oj2q4W9Y6iBiK-0;-><init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$goLive;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
