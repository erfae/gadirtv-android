.class public Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;
.super Lcom/magoware/magoware/webtv/activities/CustomActivity;
.source "ResetPasswordActivity.java"


# instance fields
.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private resetPasswordBtn:Landroid/widget/Button;

.field private usernameTxt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ResetPasswordActivity(Landroid/view/View;)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$ResetPasswordActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const p1, 0x7f14037a

    .line 40
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$onCreate$2$ResetPasswordActivity(Landroid/view/View;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->usernameTxt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->usernameTxt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->resetPasswordObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/activities/-$$Lambda$ResetPasswordActivity$hYt0-QTjpYDbB2NSoI50aND5WNQ;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/activities/-$$Lambda$ResetPasswordActivity$hYt0-QTjpYDbB2NSoI50aND5WNQ;-><init>(Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

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

    .line 27
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0e01b6

    goto :goto_0

    :cond_0
    const p1, 0x7f0e01b5

    :goto_0
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->setContentView(I)V

    const p1, 0x7f0b053a

    .line 30
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/magoware/magoware/webtv/activities/-$$Lambda$ResetPasswordActivity$q1cdcajjaTlVbi7prdCSLYYuLvQ;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/activities/-$$Lambda$ResetPasswordActivity$q1cdcajjaTlVbi7prdCSLYYuLvQ;-><init>(Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    const p1, 0x7f0b04bf

    .line 32
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->resetPasswordBtn:Landroid/widget/Button;

    const p1, 0x7f0b06b8

    .line 33
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->usernameTxt:Landroid/widget/EditText;

    .line 34
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 35
    iget-object p1, p0, Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;->resetPasswordBtn:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/activities/-$$Lambda$ResetPasswordActivity$iL8eiFz8_9zMZJsDJGF5BCDDGwY;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/activities/-$$Lambda$ResetPasswordActivity$iL8eiFz8_9zMZJsDJGF5BCDDGwY;-><init>(Lcom/magoware/magoware/webtv/activities/ResetPasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 22
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onDestroy()V

    return-void
.end method
