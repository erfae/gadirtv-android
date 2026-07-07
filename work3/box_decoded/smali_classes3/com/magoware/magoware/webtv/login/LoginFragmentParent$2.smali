.class Lcom/magoware/magoware/webtv/login/LoginFragmentParent$2;
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

    .line 203
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$2;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

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

    .line 206
    sget-object p1, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->username:Landroid/widget/EditText;

    const-string v0, "username"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$2;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->password:Landroid/widget/EditText;

    const-string v0, "password"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$2;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->userAuthentication()V

    return-void
.end method
