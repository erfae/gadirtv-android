.class public Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;
.super Landroidx/fragment/app/Fragment;
.source "ParentingFragment.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment$CheckParentalControlDialogListener;


# instance fields
.field private btnSubmit:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private dialogFragment:Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private pin:Landroid/widget/EditText;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private show_adult:Landroid/widget/CheckBox;

.field private userSettings:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getAccountSettings()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14013d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 110
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 111
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 113
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getAccountSettingsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$ParentingFragment$-IZJO5xxRjN1bcUbkK8PZHSjWZE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$ParentingFragment$-IZJO5xxRjN1bcUbkK8PZHSjWZE;-><init>(Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getParameters()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->pin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pin"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->userSettings:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->timezone:Ljava/lang/String;

    const-string v2, "timezone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->userSettings:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->auto_timezone:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto_timezone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->show_adult:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "show_adult"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->userSettings:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-object v1, v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->player:Ljava/lang/String;

    const-string v2, "player"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->userSettings:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->get_messages:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "get_messages"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getPassword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private populateForm(Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settings"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->pin:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->show_adult:Landroid/widget/CheckBox;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->show_adult:Z

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private setAccountSettings()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14013d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 131
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 132
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 134
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->getParameters()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setAccountSettingsObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$ParentingFragment$8uWW-dtlfAOqTGMtXW8x8pSHu7M;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$ParentingFragment$8uWW-dtlfAOqTGMtXW8x8pSHu7M;-><init>(Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$getAccountSettings$1$ParentingFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->userSettings:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    .line 117
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->populateForm(Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 122
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$onCreateView$0$ParentingFragment(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->userSettings:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    if-eqz p1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->setAccountSettings()V

    goto :goto_0

    :cond_0
    const p1, 0x7f14045b

    .line 62
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setAccountSettings$2$ParentingFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 137
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SHOWADULT:Ljava/lang/String;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->getParameters()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "show_adult"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->getParameters()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "pin"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f1400c0

    .line 139
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 144
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 145
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
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

    .line 82
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 83
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 44
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    const p3, 0x7f0e019c

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->view:Landroid/view/View;

    const p2, 0x7f0b04dc

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->pin:Landroid/widget/EditText;

    .line 51
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->view:Landroid/view/View;

    const p2, 0x7f0b04dd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->show_adult:Landroid/widget/CheckBox;

    .line 52
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->view:Landroid/view/View;

    const p2, 0x7f0b04db

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->btnSubmit:Landroid/widget/Button;

    .line 54
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->pin:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 55
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->show_adult:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 56
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 58
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->btnSubmit:Landroid/widget/Button;

    new-instance p2, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$ParentingFragment$MPVThEUIoP9DWA30MMS5l7HQIMk;

    invoke-direct {p2, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$ParentingFragment$MPVThEUIoP9DWA30MMS5l7HQIMk;-><init>(Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->showCheckParentalControlDialog()V

    .line 66
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->getAccountSettings()V

    .line 67
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 68
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onParentalControlCheck()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->dialogFragment:Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->dismiss()V

    .line 75
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->pin:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->show_adult:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public showCheckParentalControlDialog()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->context:Landroid/content/Context;

    check-cast v0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 152
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->newInstance(Landroid/os/Bundle;)Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->dialogFragment:Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;

    const/16 v2, 0x12c

    .line 153
    invoke-virtual {v1, p0, v2}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 154
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;->dialogFragment:Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;

    const-string v2, "check_parental_control_frag"

    invoke-virtual {v1, v0, v2}, Lcom/magoware/magoware/webtv/account/mobile/CheckParentalControlDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
