.class Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$5;
.super Landroid/content/BroadcastReceiver;
.source "LiveTvPlayerSuperclass.java"


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

    .line 2101
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$5;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 2104
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$5;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$2200(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;->setVisibility(I)V

    .line 2105
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$5;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$2200(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;->removeAllViews()V

    .line 2106
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$5;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->access$2200(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/firebase/PushNotificationLayout;->initView(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method
