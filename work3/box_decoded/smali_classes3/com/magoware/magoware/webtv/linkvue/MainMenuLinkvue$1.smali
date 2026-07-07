.class Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$1;
.super Ljava/util/TimerTask;
.source "MainMenuLinkvue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$1;->this$0:Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$MainMenuLinkvue$1()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$1;->this$0:Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->access$000(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isOnline()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$1;->this$0:Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;

    new-instance v1, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvue$1$r5lldEN8eZ4CyJVTTwDJaOCYFV8;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$MainMenuLinkvue$1$r5lldEN8eZ4CyJVTTwDJaOCYFV8;-><init>(Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue$1;)V

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
