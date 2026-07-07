.class public Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;
.super Landroidx/leanback/app/GuidedStepSupportFragment;
.source "GuidedStepPinFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GuidedStepPinFragment"


# instance fields
.field private ENTER_PIN:I

.field private FORGOT_PIN:I

.field private SAVE_ID:I

.field private activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroidx/leanback/app/GuidedStepSupportFragment;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->ENTER_PIN:I

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->FORGOT_PIN:I

    const/4 v0, 0x3

    .line 32
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->SAVE_ID:I

    return-void
.end method

.method private forgotPin()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->resetParentPasswordObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v2, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPinFragment$d8NCPLx_B-kYo4OGdNhiKUME4BI;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPinFragment$d8NCPLx_B-kYo4OGdNhiKUME4BI;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getAccountSettings()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14013d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 113
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 114
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 116
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getAccountSettingsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPinFragment$koqjthSmuokPp-gyE3NAUnhm870;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPinFragment$koqjthSmuokPp-gyE3NAUnhm870;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$forgotPin$0$GuidedStepPinFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
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
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getString(I)Ljava/lang/String;

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

.method public synthetic lambda$getAccountSettings$1$GuidedStepPinFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 119
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;-><init>()V

    .line 121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->password:Ljava/lang/String;

    const-string v4, "password"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->timezone:Ljava/lang/String;

    const-string v4, "timezone"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->player:Ljava/lang/String;

    const-string v4, "player"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-boolean v3, v3, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->auto_timezone:Z

    const-string v4, "auto_timezone"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-boolean v3, v3, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->get_messages:Z

    const-string v4, "get_messages"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->pin:Ljava/lang/String;

    const-string v4, "pin"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->show_adult:Z

    const-string v2, "show_adult"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "fragment_title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->setArguments(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 136
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 137
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->progressDialog:Landroid/app/ProgressDialog;

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

    .line 48
    invoke-super {p0, p1}, Landroidx/leanback/app/GuidedStepSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    .line 50
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 51
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->progressDialog:Landroid/app/ProgressDialog;

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

    .line 56
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140157

    .line 57
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->descriptionEditable(Z)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    const/16 v0, 0x12

    .line 59
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->descriptionInputType(I)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 60
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->descriptionEditInputType(I)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->ENTER_PIN:I

    int-to-long v0, v0

    .line 61
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 62
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 56
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1401c6

    .line 65
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->FORGOT_PIN:I

    int-to-long v0, v0

    .line 66
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 67
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 64
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

    .line 92
    invoke-super {p0, p1, p2}, Landroidx/leanback/app/GuidedStepSupportFragment;->onCreateButtonActions(Ljava/util/List;Landroid/os/Bundle;)V

    .line 93
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140394

    .line 94
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->SAVE_ID:I

    int-to-long v0, v0

    .line 95
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 96
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 93
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

    .line 40
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "fragment_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    new-instance v0, Landroidx/leanback/widget/GuidanceStylist$Guidance;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v1, v2}, Landroidx/leanback/widget/GuidanceStylist$Guidance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public onGuidedActionClicked(Landroidx/leanback/widget/GuidedAction;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    iget v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->SAVE_ID:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 73
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->findActionPositionById(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->notifyActionChanged(I)V

    .line 75
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getActions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedAction;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedAction;

    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 77
    :goto_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUserPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getAccountSettings()V

    .line 79
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedAction;

    invoke-virtual {v0, v2}, Landroidx/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1401f7

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    iget p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->FORGOT_PIN:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    .line 86
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->forgotPin()V

    :cond_3
    return-void
.end method
