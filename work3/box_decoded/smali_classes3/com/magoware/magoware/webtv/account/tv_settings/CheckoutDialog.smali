.class public Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "CheckoutDialog.java"


# instance fields
.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private setCheckoutDialog()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setGuestCheckoutObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$CheckoutDialog$7XsjchAXk0dehG2RmiFY0LD8qZY;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$CheckoutDialog$7XsjchAXk0dehG2RmiFY0LD8qZY;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateDialog$0$CheckoutDialog(Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;->setCheckoutDialog()V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$CheckoutDialog(Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$setCheckoutDialog$2$CheckoutDialog(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 45
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;->dismiss()V

    .line 47
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;->startActivity(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 51
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 27
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f15000f

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0071

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    const v1, 0x7f0b016c

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$CheckoutDialog$psk7cdfdQy1iSoOZjLoJtEIoMtg;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$CheckoutDialog$psk7cdfdQy1iSoOZjLoJtEIoMtg;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b016d

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$CheckoutDialog$TDS_FmwxGPqd4TOEO9jchCxCmNM;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$CheckoutDialog$TDS_FmwxGPqd4TOEO9jchCxCmNM;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 39
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
