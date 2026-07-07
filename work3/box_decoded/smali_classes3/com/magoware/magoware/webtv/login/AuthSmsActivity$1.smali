.class Lcom/magoware/magoware/webtv/login/AuthSmsActivity$1;
.super Landroid/os/CountDownTimer;
.source "AuthSmsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->initCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/login/AuthSmsActivity;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "millisInFuture",
            "countDownInterval"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity$1;->this$0:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity$1;->this$0:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_countdown:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity$1;->this$0:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_resend_btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity$1;->this$0:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_resend_btn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity$1;->this$0:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_countdown:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity$1;->this$0:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    const v4, 0x7f1403a5

    .line 121
    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-wide/16 v5, 0x3e8

    div-long/2addr p1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "%s%d"

    .line 120
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity$1;->this$0:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_countdown:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity$1;->this$0:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_resend_btn:Landroid/widget/Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity$1;->this$0:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_resend_btn:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setFocusable(Z)V

    return-void
.end method
