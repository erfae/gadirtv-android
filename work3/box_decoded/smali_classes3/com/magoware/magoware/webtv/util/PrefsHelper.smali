.class public Lcom/magoware/magoware/webtv/util/PrefsHelper;
.super Ljava/lang/Object;
.source "PrefsHelper.java"


# static fields
.field static final EMPTY_BOOLEAN_VALUE:Ljava/lang/Boolean;

.field static final EMPTY_INTEGER_VALUE:Ljava/lang/Integer;

.field static final EMPTY_STRING_VALUE:Ljava/lang/String; = "empty"

.field private static instance:Lcom/magoware/magoware/webtv/util/PrefsHelper;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/util/PrefsHelper;->EMPTY_INTEGER_VALUE:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/util/PrefsHelper;->EMPTY_BOOLEAN_VALUE:Ljava/lang/Boolean;

    .line 20
    new-instance v0, Lcom/magoware/magoware/webtv/util/PrefsHelper;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/util/PrefsHelper;->instance:Lcom/magoware/magoware/webtv/util/PrefsHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/util/PrefsHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public static getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;
    .locals 1

    .line 29
    sget-object v0, Lcom/magoware/magoware/webtv/util/PrefsHelper;->instance:Lcom/magoware/magoware/webtv/util/PrefsHelper;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/magoware/magoware/webtv/util/PrefsHelper;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/util/PrefsHelper;->instance:Lcom/magoware/magoware/webtv/util/PrefsHelper;

    .line 32
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/util/PrefsHelper;->instance:Lcom/magoware/magoware/webtv/util/PrefsHelper;

    return-object v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/magoware/magoware/webtv/util/PrefsHelper;->context:Landroid/content/Context;

    const-string v1, "Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getSharedPrefsEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPrefsEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public clearLoginData()V
    .locals 1

    .line 132
    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->DATAVERSION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->DOWNLOADED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CATCHUP_CHANNEL_VIEWED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_VIEWED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADULT_CHANNEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADULT_MOVIE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 139
    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_CHANNEL_LOG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYING_CHANNEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SUBSCRIPTION_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LAST_UPDATE_DATE_OF_SUBSCRIPTION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    return-void
.end method

.method public deleteKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPrefsEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/PrefsHelper;->EMPTY_BOOLEAN_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "def_value"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getCompanyId()I
    .locals 3

    .line 105
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->COMPANY_ID:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/PrefsHelper;->EMPTY_INTEGER_VALUE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "def_value"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "empty"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "def_value"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUsername()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 115
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTED_LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v1, v0}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getVodMenuInformation()Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 45
    new-instance v1, Lcom/magoware/magoware/webtv/util/PrefsHelper$1;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper$1;-><init>(Lcom/magoware/magoware/webtv/util/PrefsHelper;)V

    .line 46
    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "prefs_vod_key"

    const-string v4, "-"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    return-object v0
.end method

.method public isLoggedIn()Z
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSet(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setCompanyId(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "companyId"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPrefsEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->COMPANY_ID:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPrefsEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPrefsEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPrefsEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setVodInformation(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
            ">;)V"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getSharedPrefsEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefs_vod_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
