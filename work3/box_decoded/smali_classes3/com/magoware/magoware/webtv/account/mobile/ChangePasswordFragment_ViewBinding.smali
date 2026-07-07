.class public Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment_ViewBinding;
.super Ljava/lang/Object;
.source "ChangePasswordFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;Landroid/view/View;)V
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment_ViewBinding;->target:Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;

    .line 22
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0b0051

    const-string v2, "field \'account_old_password\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;->account_old_password:Landroid/widget/EditText;

    .line 23
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0b004e

    const-string v2, "field \'account_new_password\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;->account_new_password:Landroid/widget/EditText;

    .line 24
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0b003f

    const-string v2, "field \'account_confirm_password\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;->account_confirm_password:Landroid/widget/EditText;

    .line 25
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0b0061

    const-string v2, "field \'account_save_password\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;->account_save_password:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment_ViewBinding;->target:Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment_ViewBinding;->target:Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;

    .line 35
    iput-object v1, v0, Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;->account_old_password:Landroid/widget/EditText;

    .line 36
    iput-object v1, v0, Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;->account_new_password:Landroid/widget/EditText;

    .line 37
    iput-object v1, v0, Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;->account_confirm_password:Landroid/widget/EditText;

    .line 38
    iput-object v1, v0, Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;->account_save_password:Landroid/widget/Button;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
