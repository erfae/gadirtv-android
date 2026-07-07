.class public Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$myLogg;
.super Ljava/util/TimerTask;
.source "CatchUpRuler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "myLogg"
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

    .line 934
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$myLogg;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 936
    sget-object v0, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$myLogg;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget v1, v1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 937
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$myLogg;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget v2, v1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->kTimer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->kTimer:I

    .line 938
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$myLogg;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget v1, v1, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->kTimer:I

    const v2, 0x493e0

    mul-int v1, v1, v2

    int-to-long v1, v1

    .line 939
    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$myLogg;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->channelName:Ljava/lang/String;

    iget-object v4, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$myLogg;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v4, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getProgramName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$myLogg;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->myPlayer:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$myLogg;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-virtual {v2, v0}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->getProgramId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v1, v0}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logCatchupPlayTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
