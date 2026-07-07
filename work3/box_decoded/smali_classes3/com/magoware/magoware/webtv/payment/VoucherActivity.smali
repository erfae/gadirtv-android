.class public Lcom/magoware/magoware/webtv/payment/VoucherActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VoucherActivity.java"


# instance fields
.field magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field voucher_code:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b06ed
    .end annotation
.end field

.field voucher_next_button:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b06f0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private setVoucherCode()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/magoware/magoware/webtv/payment/VoucherActivity;->voucher_code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/magoware/magoware/webtv/payment/VoucherActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setVoucherCodeObservable(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/payment/-$$Lambda$VoucherActivity$mG2sChsQGYXStjNBrpi3LYOAqDw;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/payment/-$$Lambda$VoucherActivity$mG2sChsQGYXStjNBrpi3LYOAqDw;-><init>(Lcom/magoware/magoware/webtv/payment/VoucherActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$VoucherActivity(Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/payment/VoucherActivity;->setVoucherCode()V

    return-void
.end method

.method public synthetic lambda$setVoucherCode$1$VoucherActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 75
    sget-object p1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/payment/VoucherActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/payment/VoucherActivity;->finish()V

    goto :goto_0

    .line 79
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/payment/VoucherActivity;->startActivity(Landroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/payment/VoucherActivity;->finish()V

    goto :goto_0

    .line 83
    :cond_1
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0045

    .line 34
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/payment/VoucherActivity;->setContentView(I)V

    .line 35
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 37
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/payment/VoucherActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 39
    iget-object p1, p0, Lcom/magoware/magoware/webtv/payment/VoucherActivity;->voucher_code:Landroid/widget/EditText;

    new-instance v0, Lcom/magoware/magoware/webtv/payment/VoucherActivity$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/payment/VoucherActivity$1;-><init>(Lcom/magoware/magoware/webtv/payment/VoucherActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    iget-object p1, p0, Lcom/magoware/magoware/webtv/payment/VoucherActivity;->voucher_next_button:Landroid/widget/Button;

    new-instance v0, Lcom/magoware/magoware/webtv/payment/-$$Lambda$VoucherActivity$jcYQ1T0l5KLR9q4T99Zj3eY5B0Q;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/payment/-$$Lambda$VoucherActivity$jcYQ1T0l5KLR9q4T99Zj3eY5B0Q;-><init>(Lcom/magoware/magoware/webtv/payment/VoucherActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
