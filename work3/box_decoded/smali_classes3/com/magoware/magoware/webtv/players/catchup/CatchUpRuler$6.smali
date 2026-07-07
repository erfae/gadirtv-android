.class Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$6;
.super Ljava/util/TimerTask;
.source "CatchUpRuler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->lambda$onFinishInflate$29(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$text"
        }
    .end annotation

    .line 853
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$6;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$6;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 856
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$6;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget v0, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->firsTimeRunning:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 857
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$6;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->access$400(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;)I

    move-result v2

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$6;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->tv:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->getRequiredTimeAndDateInSeconds(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/magoware/magoware/webtv/players/catchup/HelloWorldEvent1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 858
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$6;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    sget-object v1, Lcom/magoware/magoware/webtv/players/catchup/RuleView;->horizontalScrollView:Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/catchup/MyHorizontalScrollView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$6;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget v2, v2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->startX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->helperVar:I

    .line 859
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$6;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    const/4 v1, 0x0

    iput v1, v0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->firsTimeRunning:I

    .line 860
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$6;->this$0:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler;->tv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$6;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
