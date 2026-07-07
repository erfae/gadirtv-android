.class public Lcom/magoware/magoware/webtv/firebase/DoJobFromFirebase;
.super Ljava/lang/Object;
.source "DoJobFromFirebase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doJob(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "COMMAND",
            "SOFTWARE_INSTALL",
            "DELETE_SHP",
            "DELETE_DATA",
            "URL_DOWNLOAD",
            "NAME"
        }
    .end annotation

    const-string v0, "DELETE_DATA"

    .line 39
    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    const-string v0, "success"

    const-string v1, "failure"

    if-eqz p4, :cond_0

    .line 42
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p4

    const-string v2, "pm clear com.magoware.blingtv.stb"

    .line 43
    invoke-virtual {p4, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 44
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p4

    invoke-virtual {p4, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 47
    invoke-virtual {p4}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V

    :goto_0
    const/4 p4, 0x1

    .line 50
    sput-boolean p4, Lcom/magoware/magoware/webtv/login/LoginFragment;->from_GCM:Z

    :cond_0
    const-string p4, ""

    .line 53
    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 55
    :try_start_1
    invoke-static {p1}, Lcom/magoware/magoware/webtv/firebase/ExeCommand;->execCmd(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 59
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V

    :cond_1
    :goto_1
    const-string p1, "SOFTWARE_INSTALL"

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 66
    :try_start_2
    invoke-static {p0, p5, p6}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->downloadApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V

    :cond_2
    :goto_2
    const-string p1, "DELETE_SHP"

    .line 75
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 78
    :try_start_3
    sget-object p1, Lcom/magoware/magoware/webtv/global/Global;->shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    invoke-virtual {p1}, Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;->clearAll()V

    .line 81
    invoke-static {p0}, Lcom/magoware/magoware/webtv/util/Utils;->isMagoAppOnForeground(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 83
    const-class p2, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 87
    :cond_3
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static doJobTermination(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "jsonObject"
        }
    .end annotation

    const-string v0, "parameters"

    .line 98
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 100
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const-string v1, "none"

    :goto_0
    const-string v2, "termination"

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "success"

    const/high16 v4, 0x10000000

    const-string v5, "failure"

    const-string v6, "0"

    if-eqz v2, :cond_3

    .line 104
    :try_start_1
    sput-object v6, Lcom/magoware/magoware/webtv/global/Global;->settingsEtagAtMenu:Ljava/lang/String;

    .line 105
    sput-object v6, Lcom/magoware/magoware/webtv/global/Global;->mainMenuEtag:Ljava/lang/String;

    .line 106
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 107
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 111
    :cond_0
    const-class v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 112
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    const-class v0, Lcom/magoware/magoware/webtv/homepage/smarttv/MainActivity2SmartTv;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 114
    :cond_2
    const-class v0, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 115
    :goto_1
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    const-string v2, "lock_account"

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    :try_start_2
    sput-object v6, Lcom/magoware/magoware/webtv/global/Global;->settingsEtagAtMenu:Ljava/lang/String;

    .line 126
    sput-object v6, Lcom/magoware/magoware/webtv/global/Global;->mainMenuEtag:Ljava/lang/String;

    .line 127
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 128
    const-class v0, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 131
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    const-string v2, "logout_user"

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    :try_start_3
    sput-object v6, Lcom/magoware/magoware/webtv/global/Global;->settingsEtagAtMenu:Ljava/lang/String;

    .line 140
    sput-object v6, Lcom/magoware/magoware/webtv/global/Global;->mainMenuEtag:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->TIBOPASSWORD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->deleteKey(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->clearLoginData()V

    .line 145
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 146
    const-class v0, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->getInstance()Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareRepository;->sendSuccessTermination(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v2, "login_user"

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 161
    :try_start_4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "password"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 163
    sput-boolean v0, Lcom/magoware/magoware/webtv/global/Global;->first_time_run:Z

    const-string v2, "activity"

    .line 165
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 166
    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 168
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 169
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->REMOTE_LOGIN_USER:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->REMOTE_LOGIN_PASS:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_6

    .line 174
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/magoware/magoware/webtv/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_6
    const/high16 v0, 0x4000000

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception p0

    .line 181
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method
