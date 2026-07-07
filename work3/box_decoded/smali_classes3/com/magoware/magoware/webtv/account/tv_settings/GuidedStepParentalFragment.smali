.class public Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;
.super Landroidx/leanback/app/GuidedStepSupportFragment;
.source "GuidedStepParentalFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GuidedStepParentalFragment"


# instance fields
.field private PIN_ID:I

.field private SAVE_BUTTON:I

.field private SHOW_ADULT_ID:I

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/leanback/app/GuidedStepSupportFragment;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->parameters:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->PIN_ID:I

    const/4 v0, 0x2

    .line 35
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->SHOW_ADULT_ID:I

    const/16 v0, 0xa

    .line 36
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->SAVE_BUTTON:I

    return-void
.end method

.method private getParameters()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->PIN_ID:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->findActionById(J)Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->PIN_ID:I

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->findActionById(J)Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->PIN_ID:I

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->findActionById(J)Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0, v2}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->notifyActionChanged(I)V

    .line 103
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 107
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v2, v1

    .line 110
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "pin"

    .line 111
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "timezone"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "auto_timezone"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->SHOW_ADULT_ID:I

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->findActionById(J)Landroidx/leanback/widget/GuidedAction;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/leanback/widget/GuidedAction;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "show_adult"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "player"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "get_messages"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    .line 117
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method private refreshData()V
    .locals 4

    .line 144
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SHOWADULT:Ljava/lang/String;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getParameters()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "show_adult"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getParameters()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "pin"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->PIN_ID:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->findActionById(J)Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAccountSettings()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14013d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 125
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 126
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 128
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getParameters()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setAccountSettingsObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepParentalFragment$ajnr9_Q_ivmz9pngHT9JjCy2cIs;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepParentalFragment$ajnr9_Q_ivmz9pngHT9JjCy2cIs;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setAccountSettings$0$GuidedStepParentalFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->refreshData()V

    const p1, 0x7f1400c0

    .line 132
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 137
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 138
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
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

    .line 42
    invoke-super {p0, p1}, Landroidx/leanback/app/GuidedStepSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 44
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actions",
            "savedInstanceState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 57
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1400c2

    .line 58
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->PIN_ID:I

    int-to-long v0, v0

    .line 59
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->descriptionEditable(Z)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    const/16 v0, 0x12

    .line 61
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->descriptionInputType(I)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 62
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->descriptionEditInputType(I)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 63
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 57
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1403b9

    .line 66
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 67
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_adult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->checked(Z)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    const/4 v0, -0x1

    .line 68
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->checkSetId(I)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->SHOW_ADULT_ID:I

    int-to-long v0, v0

    .line 69
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 70
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 65
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateButtonActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actions",
            "savedInstanceState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 75
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140394

    .line 76
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->SAVE_BUTTON:I

    int-to-long v0, v0

    .line 77
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 78
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 75
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateGuidance(Landroid/os/Bundle;)Landroidx/leanback/widget/GuidanceStylist$Guidance;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "fragment_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 52
    :goto_0
    new-instance v1, Landroidx/leanback/widget/GuidanceStylist$Guidance;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v0, v2}, Landroidx/leanback/widget/GuidanceStylist$Guidance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public onGuidedActionClicked(Landroidx/leanback/widget/GuidedAction;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->findActionPositionById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->notifyActionChanged(I)V

    .line 84
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    iget p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->SAVE_BUTTON:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->setAccountSettings()V

    :cond_0
    return-void
.end method

.method public onGuidedActionEditCanceled(Landroidx/leanback/widget/GuidedAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 92
    invoke-super {p0, p1}, Landroidx/leanback/app/GuidedStepSupportFragment;->onGuidedActionEditCanceled(Landroidx/leanback/widget/GuidedAction;)V

    .line 93
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->findActionPositionById(J)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->notifyActionChanged(I)V

    return-void
.end method
