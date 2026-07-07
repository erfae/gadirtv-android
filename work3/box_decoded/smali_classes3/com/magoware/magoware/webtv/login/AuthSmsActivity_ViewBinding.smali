.class public Lcom/magoware/magoware/webtv/login/AuthSmsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AuthSmsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/login/AuthSmsActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/login/AuthSmsActivity_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/login/AuthSmsActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/login/AuthSmsActivity;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "source"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    .line 29
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0b00d4

    const-string v2, "field \'auth_sms_background\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_background:Landroid/widget/ImageView;

    .line 30
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0b00d5

    const-string v2, "field \'hotel_sms_code\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->hotel_sms_code:Landroid/widget/EditText;

    .line 31
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0b00d8

    const-string v2, "field \'auth_sms_next_btn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_next_btn:Landroid/widget/Button;

    .line 32
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0b00d9

    const-string v2, "field \'auth_sms_resend_btn\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_resend_btn:Landroid/widget/Button;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b00d7

    const-string v2, "field \'auth_sms_countdown\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_countdown:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity_ViewBinding;->target:Lcom/magoware/magoware/webtv/login/AuthSmsActivity;

    .line 43
    iput-object v1, v0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_background:Landroid/widget/ImageView;

    .line 44
    iput-object v1, v0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->hotel_sms_code:Landroid/widget/EditText;

    .line 45
    iput-object v1, v0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_next_btn:Landroid/widget/Button;

    .line 46
    iput-object v1, v0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_resend_btn:Landroid/widget/Button;

    .line 47
    iput-object v1, v0, Lcom/magoware/magoware/webtv/login/AuthSmsActivity;->auth_sms_countdown:Landroid/widget/TextView;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
