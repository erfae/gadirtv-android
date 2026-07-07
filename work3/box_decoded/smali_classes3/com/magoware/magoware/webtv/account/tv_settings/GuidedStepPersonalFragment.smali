.class public Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;
.super Landroidx/leanback/app/GuidedStepSupportFragment;
.source "GuidedStepPersonalFragment.java"


# static fields
.field public static final ADD_CHANNEL_ID:I = 0xc

.field static final DATE_TIME_SETTINGS:I = 0x14

.field public static final ENTER_PIN:I = 0x9

.field public static final FORGOT_PIN:I = 0xa

.field public static final HOTEL_BOOKING_INFO:I = 0xd

.field public static final HOTEL_BOOKING_ORDER:I = 0xe

.field public static final HOTEL_CHECKOUT:I = 0xa

.field public static final HOTEL_INFO_ID:I = 0x9

.field public static final LANGUAGE_ID:I = 0x6

.field public static final LOGOUT_ID:I = 0x8

.field public static final MY_CHANNELS_ID:I = 0x4

.field public static final PARENTING_ID:I = 0x5

.field public static final PURCHASES_ID:I = 0x3

.field public static final SETTINGS_ID:I = 0x1

.field public static final SUBSCRIPTION_ID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GuidedStepPersonalFragment"

.field public static final USER_ID:I = 0x0

.field public static final VIEW_CHANNELS_ID:I = 0xb


# instance fields
.field private MenuItems:[Ljava/lang/String;

.field private activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

.field private currentLanguage:Ljava/lang/String;

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private fragment_title_child:Ljava/lang/String;

.field private languageMenu:Z

.field private mContext:Landroid/content/Context;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private settingsBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroidx/leanback/app/GuidedStepSupportFragment;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->languageMenu:Z

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    return-void
.end method

.method private forgotPin()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->resetParentPasswordObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v2, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPersonalFragment$lI3p2zVmMvsT9P8C16ycFr_v8hA;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPersonalFragment$lI3p2zVmMvsT9P8C16ycFr_v8hA;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getAccountSettings()V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14013d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 378
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 379
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 381
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getAccountSettingsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v2, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPersonalFragment$LtGHcr4KgSl-HzGvIAQwxQpJgfs;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPersonalFragment$LtGHcr4KgSl-HzGvIAQwxQpJgfs;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getLanguageDisplayName()Ljava/lang/String;
    .locals 4

    .line 307
    invoke-static {}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->getLocale()Ljava/util/Locale;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserData()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14013d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 339
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 340
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 342
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getAccountUserDataObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v2, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPersonalFragment$IA3XaEoxWc8WdTIm06qOB2Ac_9k;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPersonalFragment$IA3XaEoxWc8WdTIm06qOB2Ac_9k;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
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

    const-string v0, ""

    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 327
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 331
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public synthetic lambda$forgotPin$3$GuidedStepPersonalFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 408
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const p1, 0x7f14037a

    .line 409
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$getAccountSettings$2$GuidedStepPersonalFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 383
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 384
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    .line 386
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    .line 388
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->password:Ljava/lang/String;

    const-string v3, "password"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->timezone:Ljava/lang/String;

    const-string v3, "timezone"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->player:Ljava/lang/String;

    const-string v3, "player"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->auto_timezone:Z

    const-string v3, "auto_timezone"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-boolean v2, v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->get_messages:Z

    const-string v3, "get_messages"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->pin:Ljava/lang/String;

    const-string v3, "pin"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;

    iget-boolean p1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserSettingsObject;->show_adult:Z

    const-string v1, "show_adult"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 395
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->fragment_title_child:Ljava/lang/String;

    const-string v1, "fragment_title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 399
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 400
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public synthetic lambda$getUserData$1$GuidedStepPersonalFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 344
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 345
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    .line 347
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 352
    new-instance v1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepUserFragment;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepUserFragment;-><init>()V

    .line 353
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    .line 355
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->firstname:Ljava/lang/String;

    const-string v5, "firstname"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->lastname:Ljava/lang/String;

    const-string v5, "lastname"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->email:Ljava/lang/String;

    const-string v5, "email"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->address:Ljava/lang/String;

    const-string v5, "address"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->city:Ljava/lang/String;

    const-string v5, "city"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->country:Ljava/lang/String;

    const-string v5, "country"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserInfoObject;->telephone:Ljava/lang/String;

    const-string v3, "telephone"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->fragment_title_child:Ljava/lang/String;

    const-string v3, "fragment_title"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepUserFragment;->setArguments(Landroid/os/Bundle;)V

    .line 365
    invoke-static {v0, v1}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    goto :goto_0

    .line 367
    :cond_1
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 369
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 370
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public synthetic lambda$onGuidedActionClicked$0$GuidedStepPersonalFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 209
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 210
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 211
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    .line 212
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    .line 216
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 217
    new-instance v0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;-><init>()V

    .line 218
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 219
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->fragment_title_child:Ljava/lang/String;

    const-string v3, "fragment_title"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepChannelsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 221
    invoke-static {p1, v0}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 224
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

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

    .line 91
    invoke-super {p0, p1}, Landroidx/leanback/app/GuidedStepSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    .line 93
    invoke-static {p1}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/FragmentActivity;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 94
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 95
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 12
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

    const-string p2, ":"

    .line 113
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/Utils;->IS_MENU_LANGUAGE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->languageMenu:Z

    .line 114
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->MenuItems:[Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 118
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    const-wide/16 v7, 0x6

    if-ge v6, v5, :cond_0

    aget-object v9, v3, v6

    .line 121
    new-instance v10, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v10, v7, v8}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v7

    check-cast v7, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 123
    invoke-virtual {v7, v9}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v7

    check-cast v7, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 124
    invoke-virtual {v7}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object v7

    .line 121
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-boolean v3, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->languageMenu:Z

    if-nez v3, :cond_3

    .line 127
    new-instance v3, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v5, 0x9

    .line 128
    invoke-virtual {v3, v5, v6}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/GuidedAction$Builder;

    const v5, 0x7f140157

    .line 129
    invoke-virtual {p0, v5}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/GuidedAction$Builder;

    const/4 v5, 0x1

    .line 130
    invoke-virtual {v3, v5}, Landroidx/leanback/widget/GuidedAction$Builder;->descriptionEditable(Z)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/GuidedAction$Builder;

    const/16 v6, 0x81

    .line 131
    invoke-virtual {v3, v6}, Landroidx/leanback/widget/GuidedAction$Builder;->descriptionEditInputType(I)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 132
    invoke-virtual {v3, v6}, Landroidx/leanback/widget/GuidedAction$Builder;->descriptionInputType(I)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 133
    invoke-virtual {v3}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object v3

    .line 127
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v3, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v9, 0xa

    .line 136
    invoke-virtual {v3, v9, v10}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/GuidedAction$Builder;

    const v6, 0x7f1401c6

    .line 137
    invoke-virtual {p0, v6}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v3

    check-cast v3, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 138
    invoke-virtual {v3}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object v3

    .line 135
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v9, 0xb

    .line 141
    invoke-virtual {v0, v9, v10}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedAction$Builder;

    const-string v3, "View channels"

    .line 142
    invoke-virtual {v0, v3}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 143
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    .line 140
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v0, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v9, 0xc

    .line 146
    invoke-virtual {v0, v9, v10}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedAction$Builder;

    const-string v3, "Add channel"

    .line 147
    invoke-virtual {v0, v3}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 148
    invoke-virtual {v0}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    .line 145
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 150
    :goto_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->MenuItems:[Ljava/lang/String;

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 153
    :try_start_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .line 157
    :goto_2
    new-instance v3, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v3, v6}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    int-to-long v9, v1

    .line 158
    invoke-virtual {v3, v9, v10}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedAction$Builder;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->MenuItems:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 159
    invoke-virtual {v3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 160
    invoke-virtual {v1, v5}, Landroidx/leanback/widget/GuidedAction$Builder;->hasNext(Z)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 161
    invoke-virtual {v1, v2}, Landroidx/leanback/widget/GuidedAction$Builder;->editable(Z)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 162
    invoke-virtual {v1, v5}, Landroidx/leanback/widget/GuidedAction$Builder;->focusable(Z)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 163
    invoke-virtual {v1}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object v1

    .line 157
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedAction;

    invoke-virtual {v1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-nez v1, :cond_1

    .line 165
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedAction;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getLanguageDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    .line 166
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/GuidedAction;

    invoke-virtual {v1, v4}, Landroidx/leanback/widget/GuidedAction;->setSubActions(Ljava/util/List;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_2
    sget-object p2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {p2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-gt p2, v0, :cond_4

    .line 171
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x14

    .line 172
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    const v0, 0x7f14010e

    .line 173
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 174
    invoke-virtual {p2, v2}, Landroidx/leanback/widget/GuidedAction$Builder;->editable(Z)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p2, v5}, Landroidx/leanback/widget/GuidedAction$Builder;->focusable(Z)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 175
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 171
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 179
    :cond_3
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1403bc

    .line 180
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 181
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getLanguageDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->description(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 182
    invoke-virtual {p2, v4}, Landroidx/leanback/widget/GuidedAction$Builder;->subActions(Ljava/util/List;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 183
    invoke-virtual {p2, v7, v8}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 184
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 179
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    return-void
.end method

.method public onCreateActionsStylist()Landroidx/leanback/widget/GuidedActionsStylist;
    .locals 1

    .line 319
    new-instance v0, Landroidx/leanback/widget/GuidedActionsStylist;

    invoke-direct {v0}, Landroidx/leanback/widget/GuidedActionsStylist;-><init>()V

    return-object v0
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

    const p1, 0x7f140111

    .line 107
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 108
    new-instance v0, Landroidx/leanback/widget/GuidanceStylist$Guidance;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v1, v2}, Landroidx/leanback/widget/GuidanceStylist$Guidance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public onGuidedActionClicked(Landroidx/leanback/widget/GuidedAction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->fragment_title_child:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 235
    :pswitch_0
    new-instance p1, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;-><init>()V

    .line 236
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "checkout_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/CheckoutDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :pswitch_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepHotelInfoFragment;-><init>()V

    invoke-static {p1, v0}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    goto :goto_0

    .line 232
    :pswitch_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->logoutUserObservable(Landroid/content/Context;)V

    goto :goto_0

    .line 249
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.DATE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 251
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingOrders;-><init>()V

    invoke-static {p1, v0}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    goto :goto_0

    .line 239
    :cond_2
    new-instance p1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingsFragment;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepBookingsFragment;-><init>()V

    .line 240
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, p1}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->openPinFragment()V

    goto :goto_0

    .line 206
    :cond_4
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getCustomerChannelCategoryObservable()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v1, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPersonalFragment$GsgxiFqwWJZJzqfe-6oVslDy_0U;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepPersonalFragment$GsgxiFqwWJZJzqfe-6oVslDy_0U;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 203
    :cond_5
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPurchasesFragment;-><init>()V

    invoke-static {p1, v0}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    goto :goto_0

    .line 200
    :cond_6
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSubscriptionFragment;-><init>()V

    invoke-static {p1, v0}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    goto :goto_0

    .line 197
    :cond_7
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->openSettingsFragment()V

    goto :goto_0

    .line 194
    :cond_8
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getUserData()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onGuidedActionEditCanceled(Landroidx/leanback/widget/GuidedAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 313
    invoke-super {p0, p1}, Landroidx/leanback/app/GuidedStepSupportFragment;->onGuidedActionEditCanceled(Landroidx/leanback/widget/GuidedAction;)V

    const/4 p1, 0x6

    .line 314
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->notifyActionChanged(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 100
    invoke-super {p0}, Landroidx/leanback/app/GuidedStepSupportFragment;->onResume()V

    .line 101
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getAccountSettings()V

    return-void
.end method

.method public onSubGuidedActionClicked(Landroidx/leanback/widget/GuidedAction;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->forgotPin()V

    goto/16 :goto_1

    .line 260
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    const-wide/16 v3, 0x9

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    .line 262
    invoke-virtual {p1, v1}, Landroidx/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    .line 263
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->verifyPin(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 265
    new-instance p1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;-><init>()V

    .line 266
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepParentalFragment;->setArguments(Landroid/os/Bundle;)V

    .line 267
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v0, p1}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    goto/16 :goto_1

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1401f7

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 272
    :cond_2
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    const-wide/16 v3, 0xb

    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    goto/16 :goto_1

    .line 274
    :cond_3
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    const-wide/16 v3, 0xc

    cmp-long v5, v0, v3

    if-nez v5, :cond_4

    .line 275
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 276
    new-instance v0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepAddChannelFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepAddChannelFragment;-><init>()V

    .line 277
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 278
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepAddChannelFragment;->setArguments(Landroid/os/Bundle;)V

    .line 279
    invoke-static {p1, v0}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    goto/16 :goto_1

    .line 281
    :cond_4
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    const-wide/16 v3, 0x6

    cmp-long v5, v0, v3

    if-nez v5, :cond_b

    .line 282
    invoke-virtual {p0, v3, v4}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->findActionById(J)Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->notifyActionChanged(I)V

    .line 284
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "english"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "en"

    .line 285
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->currentLanguage:Ljava/lang/String;

    goto :goto_0

    .line 286
    :cond_5
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "albanian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "sq"

    .line 287
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->currentLanguage:Ljava/lang/String;

    goto :goto_0

    .line 288
    :cond_6
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spanish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "es"

    .line 289
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->currentLanguage:Ljava/lang/String;

    goto :goto_0

    .line 290
    :cond_7
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "italian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "it"

    .line 291
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->currentLanguage:Ljava/lang/String;

    goto :goto_0

    .line 292
    :cond_8
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "portuguese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "pt"

    .line 293
    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->currentLanguage:Ljava/lang/String;

    .line 294
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->currentLanguage:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->setLocale(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    .line 295
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->languageMenu:Z

    if-eqz v0, :cond_a

    .line 298
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->IS_MENU_LANGUAGE:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a
    const/high16 v0, 0x4000000

    .line 299
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 301
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->startActivity(Landroid/content/Intent;)V

    :cond_b
    :goto_1
    return v2
.end method

.method openPinFragment()V
    .locals 2

    .line 424
    new-instance v0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;-><init>()V

    .line 425
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPinFragment;->setArguments(Landroid/os/Bundle;)V

    .line 426
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v1, v0}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    :cond_0
    return-void
.end method

.method openSettingsFragment()V
    .locals 2

    .line 417
    new-instance v0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;-><init>()V

    .line 418
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 419
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->settingsBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v1, v0}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    :cond_0
    return-void
.end method
