.class Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$UpdateBackgroundTask;
.super Ljava/util/TimerTask;
.source "GlideBackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateBackgroundTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$UpdateBackgroundTask;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$1;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$UpdateBackgroundTask;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$GlideBackgroundManager$UpdateBackgroundTask()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$UpdateBackgroundTask;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->access$200(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$UpdateBackgroundTask;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->updateBackground()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$UpdateBackgroundTask;->this$0:Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;->access$100(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/-$$Lambda$GlideBackgroundManager$UpdateBackgroundTask$sgkfBZplGVdGtcytzAjNx7Md03A;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/vod/bigscreen/utils/-$$Lambda$GlideBackgroundManager$UpdateBackgroundTask$sgkfBZplGVdGtcytzAjNx7Md03A;-><init>(Lcom/magoware/magoware/webtv/vod/bigscreen/utils/GlideBackgroundManager$UpdateBackgroundTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
