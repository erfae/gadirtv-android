.class public Lcom/magoware/magoware/webtv/login/AutoLogin;
.super Ljava/lang/Object;
.source "AutoLogin.java"


# instance fields
.field private autoLoginListener:Lcom/magoware/magoware/webtv/login/AutoLoginListener;

.field private context:Landroid/content/Context;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;Lcom/magoware/magoware/webtv/login/AutoLoginListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "magowareViewModel",
            "autoLoginListener"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/AutoLogin;->context:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/magoware/magoware/webtv/login/AutoLogin;->autoLoginListener:Lcom/magoware/magoware/webtv/login/AutoLoginListener;

    .line 40
    iput-object p2, p0, Lcom/magoware/magoware/webtv/login/AutoLogin;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    return-void
.end method

.method private getAuthParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->COMPANY_ID:Ljava/lang/String;

    sget v2, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/util/Utils;->getAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "auth"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object p1

    const-string p2, "macaddress"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object p1, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    const-string p2, "appid"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string p2, "appversion"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getAndroidVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "api_version"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AutoLogin;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "language"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getNetType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ntype"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->operating_system:Ljava/lang/String;

    const-string p2, "os"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->screensize:Ljava/lang/String;

    const-string p2, "screensize"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->devicebrand:Ljava/lang/String;

    const-string p2, "devicebrand"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->firmware_version:Ljava/lang/String;

    const-string p2, "firmwareversion"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isHDMIPluggedIn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "hdmi"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->getTimezone()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "device_timezone"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->applicationName:Ljava/lang/String;

    const-string p2, "app_name"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$tryAutoLogin$0$AutoLogin(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 50
    iget v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    iget-object v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/LoginObject;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->encryption_key:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v4

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTED_LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-static {v3, v4}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :goto_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->TIBOUSERNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/magoware/magoware/webtv/login/Login;->getSavedUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/magoware/magoware/webtv/login/Login;->getSavedPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/login/Login;->saveLoginParamsToPrefs(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/LoginObject;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/LoginObject;->encryption_key:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/login/Login;->setEncryptionKey(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AutoLogin;->autoLoginListener:Lcom/magoware/magoware/webtv/login/AutoLoginListener;

    invoke-interface {p1}, Lcom/magoware/magoware/webtv/login/AutoLoginListener;->onSuccessfulLogin()V

    goto :goto_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AutoLogin;->autoLoginListener:Lcom/magoware/magoware/webtv/login/AutoLoginListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/login/AutoLoginListener;->onFailedLogin(Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AutoLogin;->autoLoginListener:Lcom/magoware/magoware/webtv/login/AutoLoginListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isSuccessful()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/login/AutoLoginListener;->onFailedLogin(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_2
    iget-object p1, p0, Lcom/magoware/magoware/webtv/login/AutoLogin;->autoLoginListener:Lcom/magoware/magoware/webtv/login/AutoLoginListener;

    const-string v0, "Response is null"

    invoke-interface {p1, v0}, Lcom/magoware/magoware/webtv/login/AutoLoginListener;->onFailedLogin(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public tryAutoLogin()V
    .locals 3

    .line 44
    sget-boolean v0, Lcom/magoware/magoware/webtv/global/Global;->first_time_run:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AutoLogin;->autoLoginListener:Lcom/magoware/magoware/webtv/login/AutoLoginListener;

    const-string v1, "First time running"

    invoke-interface {v0, v1}, Lcom/magoware/magoware/webtv/login/AutoLoginListener;->onFailedLogin(Ljava/lang/String;)V

    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    invoke-static {}, Lcom/magoware/magoware/webtv/login/Login;->initVariables()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AutoLogin;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-static {}, Lcom/magoware/magoware/webtv/login/Login;->getSavedUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/magoware/magoware/webtv/login/Login;->getSavedPassword()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/magoware/magoware/webtv/login/AutoLogin;->getAuthParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "apiv2/credentials/login"

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->loginObservable(Ljava/lang/String;Ljava/util/HashMap;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/AutoLogin;->context:Landroid/content/Context;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/magoware/magoware/webtv/login/-$$Lambda$AutoLogin$jdU62x9iwlC-OGfIceMsfvtI_jI;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/login/-$$Lambda$AutoLogin$jdU62x9iwlC-OGfIceMsfvtI_jI;-><init>(Lcom/magoware/magoware/webtv/login/AutoLogin;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_1

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/AutoLogin;->autoLoginListener:Lcom/magoware/magoware/webtv/login/AutoLoginListener;

    const-string v1, "Can not initialize variables"

    invoke-interface {v0, v1}, Lcom/magoware/magoware/webtv/login/AutoLoginListener;->onFailedLogin(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
