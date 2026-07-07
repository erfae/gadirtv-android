.class public Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingsFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ARG_POSITION:Ljava/lang/String; = "position"


# instance fields
.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private player_adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field player_constraint:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0503
    .end annotation
.end field

.field progressDialog:Landroid/app/ProgressDialog;

.field settings_change_password:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b05ad
    .end annotation
.end field

.field settings_enable_notification:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b05af
    .end annotation
.end field

.field settings_frag_btnSubmit:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b05b0
    .end annotation
.end field

.field settings_spinner_player:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b05b6
    .end annotation
.end field

.field private thisActivity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private getAccountSettings()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14013d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 135
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 136
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 138
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getAccountSettingsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$SettingsFragment$PCOzd3z-dgKhYHd00rIavYUYPFw;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$SettingsFragment$PCOzd3z-dgKhYHd00rIavYUYPFw;-><init>(Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getParameters()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 98
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_enable_notification:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 104
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v3

    sget-object v4, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {v2, v3}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 107
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v4

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SHOWADULT:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :try_start_2
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v4

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v3, v0

    goto :goto_1

    :cond_0
    move-object v2, v0

    move-object v3, v2

    :goto_0
    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_2

    :catch_2
    move-exception v4

    move-object v2, v0

    move-object v3, v2

    .line 111
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    :goto_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "pin"

    .line 115
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "show_adult"

    .line 116
    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_spinner_player:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "player"

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "get_messages"

    .line 118
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    .line 119
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4
.end method

.method private initView()V
    .locals 4

    .line 74
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    .line 75
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e01d5

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->player_adapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 79
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_spinner_player:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->player_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_change_password:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f08006e

    .line 82
    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    .line 81
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_change_password:Landroid/widget/TextView;

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$SettingsFragment$3puIJVCyBwEAZcrC6SYCNFUWCoA;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$SettingsFragment$3puIJVCyBwEAZcrC6SYCNFUWCoA;-><init>(Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_frag_btnSubmit:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$SettingsFragment$ZZH9fwaVocdwTkbbNG8amiLTxp8;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$SettingsFragment$ZZH9fwaVocdwTkbbNG8amiLTxp8;-><init>(Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private populateForm(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    .line 127
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->player_adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->player:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_spinner_player:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 129
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->settings_enable_notification:Landroid/widget/CheckBox;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->get_messages:Z

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private setAccountSettings()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14013d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 155
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 156
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 158
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->getParameters()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setAccountSettingsObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$SettingsFragment$_K0wJVeyKHv3ko35bhTv4pUWsuE;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$SettingsFragment$_K0wJVeyKHv3ko35bhTv4pUWsuE;-><init>(Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$getAccountSettings$2$SettingsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 141
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->populateForm(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 146
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 147
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$initView$0$SettingsFragment(Landroid/view/View;)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0b03f8

    .line 87
    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/account/mobile/ChangePasswordFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 89
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public synthetic lambda$initView$1$SettingsFragment(Landroid/view/View;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->setAccountSettings()V

    return-void
.end method

.method public synthetic lambda$setAccountSettings$3$SettingsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 162
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->getParameters()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const p1, 0x7f1400c0

    .line 167
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 172
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
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

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    .line 58
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 59
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->thisActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

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

    const p3, 0x7f0e01cc

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 67
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->initView()V

    .line 68
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;->getAccountSettings()V

    return-object p1
.end method
