.class public Lcom/nettv/livestore/MainActivity;
.super Lcom/nettv/livestore/apps/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;


# instance fields
.field public appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

.field public currentUrlModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

.field public description:Ljava/lang/String;

.field public descriptionDlgFragment:Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;

.field public exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

.field public failed_count:I

.field public image_loader:Lpl/droidsonroids/gif/GifImageView;

.field public playlist_position:I

.field public preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

.field public subscription:Ljava/lang/String;

.field public wordModels:Lcom/nettv/livestore/models/WordModels;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/apps/BaseActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/nettv/livestore/MainActivity;->subscription:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/nettv/livestore/MainActivity;->description:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/nettv/livestore/models/WordModels;

    invoke-direct {v0}, Lcom/nettv/livestore/models/WordModels;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/nettv/livestore/MainActivity;->failed_count:I

    .line 6
    iput v0, p0, Lcom/nettv/livestore/MainActivity;->playlist_position:I

    return-void
.end method

.method private CheckSDK23Permission()V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/nettv/livestore/MainActivity;->addPermission(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "READ / WRITE SD CARD"

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x7c

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 7
    :cond_2f
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->getMacAddress()V

    return-void
.end method

.method public static synthetic access$000(Lcom/nettv/livestore/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->goToWebsite()V

    return-void
.end method

.method public static synthetic access$100(Lcom/nettv/livestore/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->loadingData()V

    return-void
.end method

.method public static synthetic access$200(Lcom/nettv/livestore/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->finishApp()V

    return-void
.end method

.method private addPermission(Ljava/util/List;Ljava/lang/String;)Z
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, p2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x0

    return p1

    :cond_11
    const/4 p1, 0x1

    return p1
.end method

.method private checkAppInfoModel(Lcom/nettv/livestore/models/AppInfoModel;)V
    .registers 13

    .line 1
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getWordModel(Landroid/content/Context;)Lcom/nettv/livestore/models/WordModels;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/nettv/livestore/MainActivity;->failed_count:I

    .line 3
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 4
    :try_start_12
    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->getExpiredDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    move-wide v4, v2

    .line 6
    :goto_20
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/32 v8, 0x240c8400

    cmp-long v1, v6, v8

    if-gez v1, :cond_11c

    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->isIs_google_pay()Z

    move-result v1

    if-eqz v1, :cond_3a

    goto/16 :goto_11c

    .line 7
    :cond_3a
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-string v1, " "

    cmp-long v10, v6, v2

    if-lez v10, :cond_d1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v4, v2

    cmp-long v6, v2, v8

    if-gez v6, :cond_d1

    .line 8
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v4, v2

    const-wide/16 v2, 0xe10

    div-long/2addr v4, v2

    const-wide/16 v2, 0x18

    div-long/2addr v4, v2

    long-to-int v2, v4

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/WordModels;->getSub_remaining()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getDays()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_bb

    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 11
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getTo_add_manage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/MainActivity;->description:Ljava/lang/String;

    goto :goto_c3

    .line 12
    :cond_bb
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getNo_playlist_description()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/MainActivity;->description:Ljava/lang/String;

    .line 13
    :goto_c3
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->description:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, v1, v0, p1}, Lcom/nettv/livestore/MainActivity;->showDescriptionDlgFragment(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_13b

    .line 14
    :cond_d1
    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->getIs_trial()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e1

    .line 15
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getTrial_ended()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/MainActivity;->subscription:Ljava/lang/String;

    goto :goto_e9

    .line 16
    :cond_e1
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getTv_mac_expired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/MainActivity;->subscription:Ljava/lang/String;

    .line 17
    :goto_e9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v2}, Lcom/nettv/livestore/models/WordModels;->getTo_continue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u20ac"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->getPrice()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getVia_website()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/MainActivity;->description:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->subscription:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/nettv/livestore/MainActivity;->showDescriptionDlgFragment(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_13b

    .line 19
    :cond_11c
    :goto_11c
    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_12a

    .line 20
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->loadingData()V

    goto :goto_13b

    :cond_12a
    const-string p1, ""

    .line 21
    iput-object p1, p0, Lcom/nettv/livestore/MainActivity;->subscription:Ljava/lang/String;

    .line 22
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/WordModels;->getNo_playlist_description()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/MainActivity;->description:Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->subscription:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/nettv/livestore/MainActivity;->showDescriptionDlgFragment(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_13b
    return-void
.end method

.method private checkLocalStorageAccount()V
    .registers 8

    .line 1
    invoke-static {}, Lcom/nettv/livestore/utils/Utils;->ReadFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Network Error! Please check your internet connection!"

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_30

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceAppInfo()Lcom/nettv/livestore/models/AppInfoModel;

    move-result-object v0

    iput-object v0, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    if-nez v0, :cond_2c

    .line 3
    iget v0, p0, Lcom/nettv/livestore/MainActivity;->failed_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nettv/livestore/MainActivity;->failed_count:I

    if-ge v0, v2, :cond_24

    .line 4
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->getUserInfoModel()V

    goto :goto_84

    .line 5
    :cond_24
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_84

    .line 6
    :cond_2c
    invoke-direct {p0, v0}, Lcom/nettv/livestore/MainActivity;->checkAppInfoModel(Lcom/nettv/livestore/models/AppInfoModel;)V

    goto :goto_84

    .line 7
    :cond_30
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Ljava/lang/String;

    invoke-static {}, Lcom/nettv/livestore/utils/Utils;->ReadFile()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/nettv/livestore/MainActivity$1;

    invoke-direct {v5}, Lcom/nettv/livestore/MainActivity$1;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nettv/livestore/models/AppInfoModel;

    iput-object v0, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    if-eqz v0, :cond_71

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceAppInfo(Lcom/nettv/livestore/models/AppInfoModel;)V

    .line 9
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-direct {p0, v0}, Lcom/nettv/livestore/MainActivity;->checkAppInfoModel(Lcom/nettv/livestore/models/AppInfoModel;)V

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel;->getMac_address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceMacAddress(Ljava/lang/String;)V

    goto :goto_84

    .line 11
    :cond_71
    iget v0, p0, Lcom/nettv/livestore/MainActivity;->failed_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nettv/livestore/MainActivity;->failed_count:I

    if-ge v0, v2, :cond_7d

    .line 12
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->getUserInfoModel()V

    goto :goto_84

    .line 13
    :cond_7d
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_84
    return-void
.end method

.method private finishApp()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 3
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    const-string v1, "activity"

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_2b

    .line 5
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2b

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V

    .line 8
    :cond_2b
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private getMacAddress()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLanguageCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLanguageCode()Ljava/lang/String;

    goto :goto_1b

    .line 3
    :cond_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLanguageCode(Ljava/lang/String;)V

    .line 5
    :goto_1b
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceSubtitleSize()I

    move-result v0

    if-nez v0, :cond_45

    .line 6
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 7
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSubtitleSize(I)V

    goto :goto_38

    .line 8
    :cond_31
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSubtitleSize(I)V

    .line 9
    :goto_38
    invoke-static {}, Lcom/nettv/livestore/utils/Utils;->IsAmazonDevice()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 10
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceSubtitleSize(I)V

    .line 11
    :cond_45
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->instance:Lcom/nettv/livestore/apps/LTVApp;

    invoke-virtual {v0}, Lcom/nettv/livestore/apps/LTVApp;->versionCheck()V

    .line 12
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->instance:Lcom/nettv/livestore/apps/LTVApp;

    invoke-virtual {v0}, Lcom/nettv/livestore/apps/LTVApp;->loadVersion()V

    .line 13
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->getUserInfoModel()V

    return-void
.end method

.method private getUserInfoModel()V
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nettv/livestore/apps/LTVApp;->version_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceDeviceType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/nettv/livestore/utils/Security;->getStringData(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/nettv/livestore/remote/GetDataRequest;

    const/16 v2, 0x3e8

    invoke-direct {v1, p0, v2}, Lcom/nettv/livestore/remote/GetDataRequest;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-static {v0}, Lcom/nettv/livestore/utils/Security;->getJsonData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/nettv/livestore/apps/Constants;->second_response_url:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nettv/livestore/remote/GetDataRequest;->getResponse(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p0}, Lcom/nettv/livestore/remote/GetDataRequest;->setOnGetResponseListener(Lcom/nettv/livestore/remote/GetDataRequest$OnGetResponseListener;)V

    return-void
.end method

.method private goToWebsite()V
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->isTVDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->finishApp()V

    goto :goto_20

    .line 3
    :cond_a
    :try_start_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://iboapp.com/manage-playlists/login/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v1, 0x10808000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_20

    :catch_20
    :goto_20
    return-void
.end method

.method private loadingData()V
    .registers 5

    .line 1
    const-class v0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->image_loader:Lpl/droidsonroids/gif/GifImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-static {p0}, Lcom/nettv/livestore/helper/GetSharedInfo;->getPlaylistPosition(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/nettv/livestore/MainActivity;->playlist_position:I

    .line 3
    :try_start_e
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    if-eqz v1, :cond_98

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_98

    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_98

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel;->getResult()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/nettv/livestore/MainActivity;->playlist_position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    iput-object v1, p0, Lcom/nettv/livestore/MainActivity;->currentUrlModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    .line 5
    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "username"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceISM3U(Z)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->currentUrlModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p0, v1, v2}, Lcom/nettv/livestore/apps/BaseActivity;->goToLogin(Ljava/lang/String;Lcom/nettv/livestore/models/WordModels;)V

    goto :goto_af

    .line 8
    :cond_69
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->currentUrlModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nettv/livestore/helper/GetSharedInfo;->checkXUILink(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 9
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {v1, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceISM3U(Z)V

    .line 10
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->currentUrlModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p0, v1, v2}, Lcom/nettv/livestore/apps/BaseActivity;->goToXUILogin(Ljava/lang/String;Lcom/nettv/livestore/models/WordModels;)V

    goto :goto_af

    .line 11
    :cond_86
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceISM3U(Z)V

    .line 12
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->currentUrlModel:Lcom/nettv/livestore/models/AppInfoModel$UrlModel;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/AppInfoModel$UrlModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {p0, v1, v2}, Lcom/nettv/livestore/apps/BaseActivity;->reloadM3UData(Ljava/lang/String;Lcom/nettv/livestore/models/WordModels;)V

    goto :goto_af

    .line 13
    :cond_98
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_a3} :catch_a4

    goto :goto_af

    .line 16
    :catch_a4
    :try_start_a4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_af} :catch_af

    :catch_af
    :goto_af
    return-void
.end method

.method private showDescriptionDlgFragment(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->image_loader:Lpl/droidsonroids/gif/GifImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_description"

    .line 4
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_1c

    const/4 p1, 0x0

    .line 5
    invoke-static {v1, v3, p1}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/nettv/livestore/MainActivity;->descriptionDlgFragment:Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;

    .line 7
    new-instance p2, Lcom/nettv/livestore/MainActivity$2;

    invoke-direct {p2, p0, p3}, Lcom/nettv/livestore/MainActivity$2;-><init>(Lcom/nettv/livestore/MainActivity;I)V

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;->setButtonClickListener(Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment$ButtonClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->descriptionDlgFragment:Lcom/nettv/livestore/dlgfragment/DescriptionDlgFragment;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showExitDlgFragment()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "fragment_exit"

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v3, v0}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_15
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v1}, Lcom/nettv/livestore/models/WordModels;->getExit()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v3}, Lcom/nettv/livestore/models/WordModels;->getExit_description()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v4}, Lcom/nettv/livestore/models/WordModels;->getStr_yes()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v5}, Lcom/nettv/livestore/models/WordModels;->getNo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/nettv/livestore/MainActivity;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    .line 6
    new-instance v3, Lcom/nettv/livestore/MainActivity$3;

    invoke-direct {v3, p0}, Lcom/nettv/livestore/MainActivity$3;-><init>(Lcom/nettv/livestore/MainActivity;)V

    invoke-virtual {v1, v3}, Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;->setOkButtonClickListener(Lcom/nettv/livestore/dlgfragment/ExitDlgFragment$OkButtonClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/nettv/livestore/MainActivity;->exitDlgFragment:Lcom/nettv/livestore/dlgfragment/ExitDlgFragment;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public OnGetResponseResult(Lorg/json/JSONObject;I)V
    .registers 4

    if-eqz p1, :cond_83

    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_86

    const-string p2, "data"

    .line 1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2
    :try_start_e
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nettv/livestore/utils/Security;->getDecodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_7b

    .line 3
    :try_start_16
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 5
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nettv/livestore/models/AppInfoModel;

    iput-object p1, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p2, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceAppInfo(Lcom/nettv/livestore/models/AppInfoModel;)V

    .line 7
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceIsPlaylistChanged(Z)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceFirstLunch(Z)V

    .line 9
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p2, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/AppInfoModel;->getMac_address()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceMacAddress(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p2, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/AppInfoModel;->getDevice_key()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceDeviceKey(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p1}, Lcom/nettv/livestore/models/AppInfoModel;->getParent_synced()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_68

    .line 12
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    iget-object p2, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-virtual {p2}, Lcom/nettv/livestore/models/AppInfoModel;->getParent_control()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceParentPassword(Ljava/lang/String;)V

    .line 13
    :cond_68
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-static {p1}, Lcom/nettv/livestore/utils/Utils;->saveToFile(Lcom/nettv/livestore/models/AppInfoModel;)V

    .line 14
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->appInfoModel:Lcom/nettv/livestore/models/AppInfoModel;

    invoke-direct {p0, p1}, Lcom/nettv/livestore/MainActivity;->checkAppInfoModel(Lcom/nettv/livestore/models/AppInfoModel;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_72} :catch_73

    goto :goto_86

    :catch_73
    move-exception p1

    .line 15
    :try_start_74
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->checkLocalStorageAccount()V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7a} :catch_7b

    goto :goto_86

    .line 17
    :catch_7b
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->checkLocalStorageAccount()V

    goto :goto_86

    .line 18
    :cond_7f
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->checkLocalStorageAccount()V

    goto :goto_86

    .line 19
    :cond_83
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->checkLocalStorageAccount()V

    :cond_86
    :goto_86
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2e

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 3
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->image_loader:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_27

    .line 4
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/apps/BaseActivity;->setStop(Z)V

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2d

    .line 8
    :cond_27
    invoke-virtual {p0, v0}, Lcom/nettv/livestore/apps/BaseActivity;->setStop(Z)V

    .line 9
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->showExitDlgFragment()V

    :goto_2d
    return v0

    .line 10
    :cond_2e
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final doNextTask(Z)V
    .registers 6

    if-eqz p1, :cond_19

    .line 1
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLastPlaylistDate(J)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/HomeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_49

    .line 4
    :cond_19
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->image_loader:Lpl/droidsonroids/gif/GifImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nettv/livestore/MainActivity;->wordModels:Lcom/nettv/livestore/models/WordModels;

    invoke-virtual {v0}, Lcom/nettv/livestore/models/WordModels;->getPlaylist_is_not_working()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nettv/livestore/activities/ChangePlaylistActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8
    :goto_49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/nettv/livestore/apps/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0027

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->FullScreenCall(Landroid/app/Activity;)V

    .line 4
    new-instance p1, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {p1, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const p1, 0x7f0b01db

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/droidsonroids/gif/GifImageView;

    iput-object p1, p0, Lcom/nettv/livestore/MainActivity;->image_loader:Lpl/droidsonroids/gif/GifImageView;

    const p1, 0x7f0b03f2

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, ""

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-virtual {p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceDeviceType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_49

    .line 9
    invoke-static {p0}, Lcom/nettv/livestore/utils/Utils;->checkIsTelevision(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 10
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const-string v0, "tv"

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceDeviceType(Ljava/lang/String;)V

    goto :goto_49

    .line 11
    :cond_42
    iget-object p1, p0, Lcom/nettv/livestore/MainActivity;->preferenceHelper:Lcom/nettv/livestore/helper/PreferenceHelper;

    const-string v0, "mobile"

    invoke-virtual {p1, v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceDeviceType(Ljava/lang/String;)V

    .line 12
    :cond_49
    :goto_49
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_53

    .line 13
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->CheckSDK23Permission()V

    goto :goto_56

    .line 14
    :cond_53
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->getMacAddress()V

    :goto_56
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/nettv/livestore/MainActivity;->getMacAddress()V

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
