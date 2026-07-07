.class Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "DashboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1571
    iput-object p1, p0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity$4;->this$0:Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
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

    .line 1575
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1576
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1578
    invoke-static {}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1579
    invoke-static {}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1581
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1583
    invoke-static {}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1584
    invoke-static {}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 1586
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1587
    invoke-static {}, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    :goto_0
    return-void
.end method
