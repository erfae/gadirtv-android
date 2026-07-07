.class public Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;
.super Landroidx/leanback/app/GuidedStepSupportFragment;
.source "GuidedStepSettingsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GuidedStepSettingsFragment"


# instance fields
.field private AUTO_TIMEZONE_ID:I

.field private PASSWORD_ID:I

.field private PLAYER_ID:I

.field private PLAYER_SUBACTION:I

.field private RECEIVE_MESSAGES_ID:I

.field private SAVE_BUTTON:I

.field private TIMEZONE_ID:I

.field private TIMEZONE_SUBACTION:I

.field private activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

.field private currentPlayer:Ljava/lang/String;

.field private get_messages_value:Ljava/lang/String;

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

.field private password:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private playerChoices:[Ljava/lang/String;

.field playerSubActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private showAdult:Ljava/lang/String;

.field private timezoneChoices:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroidx/leanback/app/GuidedStepSupportFragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->parameters:Ljava/util/HashMap;

    const/4 v0, 0x6

    .line 53
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->TIMEZONE_SUBACTION:I

    const/4 v0, 0x7

    .line 54
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->PLAYER_SUBACTION:I

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->PASSWORD_ID:I

    const/4 v0, 0x2

    .line 56
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->TIMEZONE_ID:I

    const/4 v0, 0x3

    .line 57
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->PLAYER_ID:I

    const/4 v0, 0x4

    .line 58
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->AUTO_TIMEZONE_ID:I

    const/4 v0, 0x5

    .line 59
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->RECEIVE_MESSAGES_ID:I

    const/16 v0, 0xa

    .line 60
    iput v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->SAVE_BUTTON:I

    const-string v0, ""

    .line 67
    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->password:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->pin:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->showAdult:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->playerSubActions:Ljava/util/List;

    return-void
.end method

.method private getParameters()Ljava/util/HashMap;
    .locals 5
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

    .line 224
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    .line 227
    iget v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->RECEIVE_MESSAGES_ID:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->findActionById(J)Landroidx/leanback/widget/GuidedAction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/leanback/widget/GuidedAction;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->get_messages_value:Ljava/lang/String;

    .line 230
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->password:Ljava/lang/String;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SHOWADULT:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->showAdult:Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->pin:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 242
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->pin:Ljava/lang/String;

    const-string v3, "pin"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->showAdult:Ljava/lang/String;

    const-string v3, "show_adult"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->PLAYER_ID:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->findActionById(J)Landroidx/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "player"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->get_messages_value:Ljava/lang/String;

    const-string v3, "get_messages"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->password:Ljava/lang/String;

    const-string v3, "password"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "auto_timezone"

    .line 250
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private refreshData()V
    .locals 4

    .line 292
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYER:Ljava/lang/String;

    iget v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->PLAYER_ID:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->findActionById(J)Landroidx/leanback/widget/GuidedAction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/leanback/widget/GuidedAction;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SHOWADULT:Ljava/lang/String;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->showAdult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAccountSettings()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f14013d

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 258
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 259
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 261
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getParameters()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->setAccountSettingsObservable(Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    new-instance v2, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepSettingsFragment$WHa8UunEBBXubIC6LlUh2PjgJZE;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/account/tv_settings/-$$Lambda$GuidedStepSettingsFragment$WHa8UunEBBXubIC6LlUh2PjgJZE;-><init>(Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private setupPlayerSubActions()V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->playerSubActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->playerChoices:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->playerSubActions:Ljava/util/List;

    new-instance v2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->PLAYER_ID:I

    int-to-long v3, v3

    .line 211
    invoke-virtual {v2, v3, v4}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->playerChoices:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 212
    invoke-virtual {v2, v3}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 213
    invoke-virtual {v2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object v2

    .line 210
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$setAccountSettings$0$GuidedStepSettingsFragment(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 263
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 266
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getParameters()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->refreshData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 271
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    :goto_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getParameters()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "auto_timezone"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/magoware/magoware/webtv/global/Global;->auto_timezone:Z

    :cond_0
    const p1, 0x7f1400c0

    .line 280
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 282
    :cond_1
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 285
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 286
    iget-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3
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

    .line 75
    invoke-super {p0, p1}, Landroidx/leanback/app/GuidedStepSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    .line 77
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    .line 78
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->activity:Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 5
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

    .line 91
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "player"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->currentPlayer:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f03000f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->timezoneChoices:[Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f030010

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->playerChoices:[Ljava/lang/String;

    .line 94
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->timezoneChoices:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 98
    new-instance v2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->TIMEZONE_SUBACTION:I

    int-to-long v3, v3

    .line 99
    invoke-virtual {v2, v3, v4}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->timezoneChoices:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 100
    invoke-virtual {v2, v3}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v2

    check-cast v2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 101
    invoke-virtual {v2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object v2

    .line 98
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->setupPlayerSubActions()V

    .line 105
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v1}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1400c1

    .line 106
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget v1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->PASSWORD_ID:I

    int-to-long v1, v1

    .line 107
    invoke-virtual {p2, v1, v2}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 108
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->hasNext(Z)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 109
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 105
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    .line 130
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1403bf

    .line 131
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->currentPlayer:Ljava/lang/String;

    .line 132
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->description(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->playerSubActions:Ljava/util/List;

    .line 134
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->subActions(Ljava/util/List;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->PLAYER_ID:I

    int-to-long v0, v0

    .line 135
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 136
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 130
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1403bd

    .line 138
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 139
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "get_messages"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->checked(Z)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    const/4 v0, -0x1

    .line 141
    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->checkSetId(I)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->RECEIVE_MESSAGES_ID:I

    int-to-long v0, v0

    .line 142
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 143
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 137
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

    .line 150
    new-instance p2, Landroidx/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140394

    .line 151
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/GuidedAction$Builder;->title(Ljava/lang/CharSequence;)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->SAVE_BUTTON:I

    int-to-long v0, v0

    .line 152
    invoke-virtual {p2, v0, v1}, Landroidx/leanback/widget/GuidedAction$Builder;->id(J)Landroidx/leanback/widget/GuidedAction$BuilderBase;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GuidedAction$Builder;

    .line 153
    invoke-virtual {p2}, Landroidx/leanback/widget/GuidedAction$Builder;->build()Landroidx/leanback/widget/GuidedAction;

    move-result-object p2

    .line 150
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

    .line 85
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "fragment_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
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

    .line 159
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    iget v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->SAVE_BUTTON:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->setAccountSettings()V

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    iget p1, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->PASSWORD_ID:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 165
    new-instance v0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPasswordFragment;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPasswordFragment;-><init>()V

    .line 166
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 168
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "password"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "player"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "get_messages"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pin"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "show_adult"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "auto_timezone"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "timezone"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPasswordFragment;->setArguments(Landroid/os/Bundle;)V

    .line 178
    invoke-static {p1, v0}, Landroidx/leanback/app/GuidedStepSupportFragment;->add(Landroidx/fragment/app/FragmentManager;Landroidx/leanback/app/GuidedStepSupportFragment;)I

    :cond_1
    return-void
.end method

.method public onGuidedActionEditedAndProceed(Landroidx/leanback/widget/GuidedAction;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 219
    invoke-super {p0, p1}, Landroidx/leanback/app/GuidedStepSupportFragment;->onGuidedActionEditedAndProceed(Landroidx/leanback/widget/GuidedAction;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onSubGuidedActionClicked(Landroidx/leanback/widget/GuidedAction;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    iget v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->TIMEZONE_SUBACTION:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 187
    iget v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->TIMEZONE_ID:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->findActionById(J)Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    .line 188
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->notifyActionChanged(I)V

    .line 190
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    iget v2, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->PLAYER_ID:I

    int-to-long v3, v2

    const/4 v5, 0x1

    cmp-long v6, v0, v3

    if-nez v6, :cond_1

    int-to-long v0, v2

    .line 191
    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->findActionById(J)Landroidx/leanback/widget/GuidedAction;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {p1}, Landroidx/leanback/widget/GuidedAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->currentPlayer:Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->setupPlayerSubActions()V

    .line 194
    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->currentPlayer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/leanback/widget/GuidedAction;->setDescription(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p0, v5}, Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepSettingsFragment;->notifyActionChanged(I)V

    :cond_1
    return v5
.end method
