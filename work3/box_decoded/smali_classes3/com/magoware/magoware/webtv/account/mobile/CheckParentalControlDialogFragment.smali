.class public Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "CheckParentalControlDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment$CheckParentalControlDialogListener;
    }
.end annotation


# instance fields
.field private forgotPIN:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private submitBtn:Landroid/widget/Button;

.field private user_typed_pin:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private forgotPin()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->resetParentPasswordObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$CheckParentalControlDialogFragment$HGsOoPgKy8rqnBQMLqDlu-52ZyE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$CheckParentalControlDialogFragment$HGsOoPgKy8rqnBQMLqDlu-52ZyE;-><init>(Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static synthetic lambda$onViewCreated$2(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;-><init>()V

    .line 41
    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private verifyPin(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user_typed_pin"
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public synthetic lambda$forgotPin$4$CheckParentalControlDialogFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const p1, 0x7f14037a

    .line 103
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$onViewCreated$0$CheckParentalControlDialogFragment(Landroid/view/View;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->user_typed_pin:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->verifyPin(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment$CheckParentalControlDialogListener;

    .line 67
    invoke-interface {p1}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment$CheckParentalControlDialogListener;->onParentalControlCheck()V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1401f7

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onViewCreated$1$CheckParentalControlDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->forgotPin()V

    return-void
.end method

.method public synthetic lambda$onViewCreated$3$CheckParentalControlDialogFragment(Landroid/view/View;)V
    .locals 2

    .line 73
    new-instance p1, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1401c7

    .line 74
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f14049c

    .line 75
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$CheckParentalControlDialogFragment$TZ1G2lmedQZehYd5sscSUhfEBzE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$CheckParentalControlDialogFragment$TZ1G2lmedQZehYd5sscSUhfEBzE;-><init>(Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1402e2

    .line 77
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$CheckParentalControlDialogFragment$ztYBQOxgVU5i-daUffqSn-PoIu0;->INSTANCE:Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$CheckParentalControlDialogFragment$ztYBQOxgVU5i-daUffqSn-PoIu0;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->mContext:Landroid/content/Context;

    .line 86
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0e0070

    .line 48
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 53
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p2

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 56
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const v0, 0x7f140166

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x7f0b0167

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->user_typed_pin:Landroid/widget/EditText;

    const p2, 0x7f0b0168

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->submitBtn:Landroid/widget/Button;

    const p2, 0x7f0b0169

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->forgotPIN:Landroid/widget/Button;

    .line 62
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->submitBtn:Landroid/widget/Button;

    new-instance p2, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$CheckParentalControlDialogFragment$JM1GMYTlf9PNGCgvVPbwnXP_xAc;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$CheckParentalControlDialogFragment$JM1GMYTlf9PNGCgvVPbwnXP_xAc;-><init>(Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->forgotPIN:Landroid/widget/Button;

    new-instance p2, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$CheckParentalControlDialogFragment$n8eAIWthuc8P9XMJSLRKpl5WFts;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$CheckParentalControlDialogFragment$n8eAIWthuc8P9XMJSLRKpl5WFts;-><init>(Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
