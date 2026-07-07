.class Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;
.super Landroid/content/BroadcastReceiver;
.source "LoginFragmentParent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/login/LoginFragmentParent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

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

    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 188
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/NetworkUtils;->getConnectivityStatusString(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 190
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$000(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$000(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$100(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 194
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$102(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Z)Z

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$200(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 196
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$300(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$400(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$500(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$600(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$1;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$700(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method
