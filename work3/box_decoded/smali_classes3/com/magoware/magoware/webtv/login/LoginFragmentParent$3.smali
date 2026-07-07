.class Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;
.super Landroid/os/CountDownTimer;
.source "LoginFragmentParent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->startCountDownTimer(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;JJLandroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "millisInFuture",
            "countDownInterval",
            "val$dialog"
        }
    .end annotation

    .line 1243
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    iput-object p6, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1249
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$800(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f14037e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1250
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$800(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1251
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$900(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 1252
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$1000(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1253
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$102(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Z)Z

    .line 1254
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;->val$dialog:Landroid/app/Dialog;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$1100(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;Landroid/app/Dialog;)V

    .line 1256
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->userAuthentication()V

    goto :goto_0

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/LoginFragmentParent$3;->this$0:Lcom/magoware/magoware/webtv/login/LoginFragmentParent;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->access$800(Lcom/magoware/magoware/webtv/login/LoginFragmentParent;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f1402d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    return-void
.end method
