.class public Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;
.super Lcom/magoware/magoware/webtv/CustomActivity;
.source "ResetPasswordActivity.java"


# instance fields
.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private resetPasswordBtn:Landroid/widget/Button;

.field private usernameTxt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/CustomActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ResetPasswordActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 46
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const p1, 0x7f14037a

    .line 47
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$ResetPasswordActivity(Landroid/view/View;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->usernameTxt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->usernameTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->resetPasswordObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/login/-$$Lambda$ResetPasswordActivity$gG2Dm1tJb2I7jgfSAeq_XJhNoxI;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$ResetPasswordActivity$gG2Dm1tJb2I7jgfSAeq_XJhNoxI;-><init>(Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 53
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->progressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 35
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e01b5

    .line 36
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->setContentView(I)V

    const p1, 0x7f140376

    .line 37
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->setTitle(I)V

    .line 38
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    const p1, 0x7f0b04bf

    .line 39
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->resetPasswordBtn:Landroid/widget/Button;

    const p1, 0x7f0b06b8

    .line 40
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->usernameTxt:Landroid/widget/EditText;

    .line 42
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->resetPasswordBtn:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/login/-$$Lambda$ResetPasswordActivity$R3Uy8UZp0IVpf7cP7IsiTcQtu24;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$ResetPasswordActivity$R3Uy8UZp0IVpf7cP7IsiTcQtu24;-><init>(Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/login/ResetPasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/magoware/magoware/webtv/CustomActivity;->onDestroy()V

    return-void
.end method
