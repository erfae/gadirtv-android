.class public Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AccountMobileActivity.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/account/mobile/MenuFragment$onItemSelectedListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field account_toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b006f
    .end annotation
.end field

.field private firstFragment:Landroidx/fragment/app/Fragment;

.field private layout_mask:I

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field selectedFragment:Landroidx/fragment/app/Fragment;

.field toolbar_subscription_btn:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0b0671
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->selectedFragment:Landroidx/fragment/app/Fragment;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private initSubscription()V
    .locals 2

    .line 143
    new-instance v0, Lcom/magoware/magoware/webtv/account/mobile/SubscriptionFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/mobile/SubscriptionFragment;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->selectedFragment:Landroidx/fragment/app/Fragment;

    .line 144
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->toolbar_subscription_btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->toolbar_subscription_btn:Landroid/widget/Button;

    new-instance v1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$AccountMobileActivity$TvFwNa7ohMCXnp1Rvem3F9iGIsM;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$AccountMobileActivity$TvFwNa7ohMCXnp1Rvem3F9iGIsM;-><init>(Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .line 179
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils;->IS_MENU_LANGUAGE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->firstFragment:Landroidx/fragment/app/Fragment;

    .line 181
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b03f8

    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->firstFragment:Landroidx/fragment/app/Fragment;

    .line 182
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->setupMenuFragments()V

    :goto_0
    return-void
.end method

.method private setupMenuFragments()V
    .locals 3

    .line 172
    new-instance v0, Lcom/magoware/magoware/webtv/account/mobile/MenuFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/mobile/MenuFragment;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->firstFragment:Landroidx/fragment/app/Fragment;

    .line 173
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->firstFragment:Landroidx/fragment/app/Fragment;

    const v2, 0x7f0b03f8

    .line 175
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 54
    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->onAttach(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$initSubscription$3$AccountMobileActivity(Landroid/view/View;)V
    .locals 2

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ONLINE_PAYMENT_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&username="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$AccountMobileActivity(Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onItemSelected$1$AccountMobileActivity()V
    .locals 2

    .line 120
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->clearLoginData()V

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    const-class v1, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v1, 0x8000

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onItemSelected$2$AccountMobileActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 0

    .line 119
    new-instance p1, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$AccountMobileActivity$YJs76TfaUFsnl-D1iDixPu002VM;

    invoke-direct {p1, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$AccountMobileActivity$YJs76TfaUFsnl-D1iDixPu002VM;-><init>(Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->selectedFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->finish()V

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    :cond_0
    instance-of v0, v0, Lcom/magoware/magoware/webtv/account/mobile/SubscriptionFragment;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->toolbar_subscription_btn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isScreenRotationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->setRequestedOrientation(I)V

    .line 167
    :cond_2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->initializeGlobalVariables()V

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isScreenPortrait()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->get()Lcom/magoware/magoware/webtv/util/CustomConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/util/CustomConfigs;->isScreenRotationEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    const p1, 0x7f0e0024

    .line 67
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->setContentView(I)V

    .line 68
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 70
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->initUtil()V

    .line 71
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    if-eqz p1, :cond_2

    .line 72
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_2
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->initView()V

    .line 76
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 77
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->account_toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$AccountMobileActivity$p2BkWXZ0peOiFGYXlFFRUctPzwo;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$AccountMobileActivity$p2BkWXZ0peOiFGYXlFFRUctPzwo;-><init>(Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemSelected(I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const-string v0, ""

    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 88
    aget-object v3, v2, p1

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 91
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v6

    sget-object v7, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v7

    sget-object v8, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTED_LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v6, v0}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "User"

    .line 96
    :goto_0
    iget v6, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->layout_mask:I

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-le v6, v8, :cond_0

    .line 97
    aput-object v0, v2, v7

    :cond_0
    const/16 v0, 0x8

    if-nez v3, :cond_1

    .line 101
    new-instance v5, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;

    invoke-direct {v5}, Lcom/magoware/magoware/webtv/account/mobile/UserFragment;-><init>()V

    iput-object v5, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->selectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_1
    const-string v6, "position"

    if-ne v3, v5, :cond_2

    .line 103
    new-instance v5, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;

    invoke-direct {v5}, Lcom/magoware/magoware/webtv/account/mobile/SettingsFragment;-><init>()V

    iput-object v5, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->selectedFragment:Landroidx/fragment/app/Fragment;

    .line 104
    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    if-ne v3, v8, :cond_3

    .line 106
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->initSubscription()V

    goto :goto_1

    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 108
    new-instance v5, Lcom/magoware/magoware/webtv/account/mobile/PurchasesFragment;

    invoke-direct {v5}, Lcom/magoware/magoware/webtv/account/mobile/PurchasesFragment;-><init>()V

    iput-object v5, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->selectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_4
    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    .line 110
    new-instance v5, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;

    invoke-direct {v5}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;-><init>()V

    iput-object v5, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->selectedFragment:Landroidx/fragment/app/Fragment;

    .line 111
    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    .line 114
    new-instance v5, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;

    invoke-direct {v5}, Lcom/magoware/magoware/webtv/account/mobile/ParentingFragment;-><init>()V

    iput-object v5, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->selectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_6
    const/4 v5, 0x6

    if-ne v3, v5, :cond_7

    .line 116
    new-instance v5, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;

    invoke-direct {v5}, Lcom/magoware/magoware/webtv/account/mobile/LanguageFragment;-><init>()V

    iput-object v5, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->selectedFragment:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_7
    if-ne v3, v0, :cond_8

    .line 118
    iget-object v5, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v5}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->logoutObservable()Landroidx/lifecycle/LiveData;

    move-result-object v5

    new-instance v6, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$AccountMobileActivity$5TBGTqIgy23jERvqWRyfLSrsYZY;

    invoke-direct {v6, p0}, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$AccountMobileActivity$5TBGTqIgy23jERvqWRyfLSrsYZY;-><init>(Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;)V

    invoke-virtual {v5, p0, v6}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_1

    :cond_8
    const/16 v5, 0x9

    if-ne v3, v5, :cond_9

    .line 128
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/magoware/magoware/webtv/payment/ChoosePaymentActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_9
    :goto_1
    if-eq v3, v0, :cond_a

    .line 132
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->account_toolbar:Landroidx/appcompat/widget/Toolbar;

    aget-object p1, v2, p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->selectedFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0b03f8

    .line 136
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/AccountMobileActivity;->selectedFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 138
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_a
    return-void
.end method
