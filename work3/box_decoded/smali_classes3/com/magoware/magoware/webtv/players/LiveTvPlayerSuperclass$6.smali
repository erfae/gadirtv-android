.class Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$6;
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

    .line 2110
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$6;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

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

    if-eqz p2, :cond_0

    .line 2113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "channel-category-update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2114
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass$6;->this$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    const/4 v0, 0x0

    const-string v1, "current-category"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->current_category_id:I

    :cond_0
    return-void
.end method
