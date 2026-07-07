.class public Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity$pallyconAction;
.super Ljava/util/TimerTask;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "pallyconAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity$pallyconAction;->this$0:Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$PlayerActivity$pallyconAction()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity$pallyconAction;->this$0:Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;

    const-string v1, "Ju lutem prisni"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity$pallyconAction;->this$0:Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$PlayerActivity$pallyconAction$GBu87XrPGAOREEbfD4ePi2H8r3I;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$PlayerActivity$pallyconAction$GBu87XrPGAOREEbfD4ePi2H8r3I;-><init>(Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity$pallyconAction;)V

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/default_player/PlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
