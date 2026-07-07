.class public Lcom/magoware/magoware/webtv/players/ChannelActivity;
.super Lcom/magoware/magoware/webtv/activities/CustomActivity;
.source "ChannelActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "ChannelActivity"

.field public static bool:Z

.field public static current_category_id:I


# instance fields
.field private category_response:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private channel_list_response:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;"
        }
    .end annotation
.end field

.field private channels_grid_view:Landroid/widget/GridView;

.field private daysLeft:I

.field private dialog:Landroid/app/AlertDialog;

.field private magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

.field private problem_description:Ljava/lang/String;

.field private updateCategories:Z

.field private updateChannels:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->problem_description:Ljava/lang/String;

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->updateChannels:Z

    .line 78
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->updateCategories:Z

    const v0, 0x4c4b40

    .line 79
    iput v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->daysLeft:I

    return-void
.end method

.method private InsertCategories(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category_response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;)V"
        }
    .end annotation

    .line 235
    invoke-static {}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllCategoriesObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->updateCategories:Z

    .line 238
    :cond_0
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->updateCategories:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->updateCategories:Z

    .line 241
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    const-class v2, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 242
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 243
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    .line 244
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    .line 248
    new-instance p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;-><init>()V

    const v1, 0x7f140068

    .line 249
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->name:Ljava/lang/String;

    .line 250
    iput v0, p1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;->id:I

    .line 251
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    :cond_2
    return-void
.end method

.method private InsertChannels(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channel_list_response",
            "startTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;J)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 259
    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->updateChannels:Z

    .line 263
    :cond_0
    iget-boolean v1, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->updateChannels:Z

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 265
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->updateChannels:Z

    .line 267
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    const-class v4, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 268
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/framework/utilityframe/database/DatabaseManager;->startTransaction()V

    .line 271
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 272
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/framework/utilityframe/database/DatabaseManager;->insertRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 275
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/framework/utilityframe/database/DatabaseManager;->endTransaction()V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 277
    invoke-static {p2, p3, v4, v5}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logChannelsLoadingTime(JJ)V

    .line 279
    iget-object p2, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    .line 280
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-nez p3, :cond_3

    :cond_2
    const p3, 0x7f1402e7

    .line 281
    invoke-virtual {p0, p3}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->problem_description:Ljava/lang/String;

    .line 282
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p3

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LiveTvError:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->problem_description:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 284
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p3

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYER:Ljava/lang/String;

    invoke-virtual {p3, v1, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "-1"

    invoke-static {v1, p1, p3}, Lcom/magoware/magoware/webtv/network/SendAnalyticsLogs;->logSendError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    .line 289
    iget-object p2, p2, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    invoke-static {p2, v2, p0}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->getPermanentFile(Ljava/lang/String;ZLandroid/content/Context;)V

    goto :goto_1

    .line 292
    :cond_4
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 293
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->RUNNING_ACTIVITY:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/magoware/magoware/webtv/homepage/smarttv/MainActivity2SmartTv;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 294
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 295
    sget-object p2, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/Utils;->LIVE_TV:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p1, p2, :cond_7

    .line 297
    :cond_5
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p1

    sget-object p2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYER:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Default"

    invoke-static {p1, p2}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/magoware/magoware/webtv/players/ChannelActivity;->bool:Z

    .line 299
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->isCategoryEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 300
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->setCurrentCategoryToAllCategories()V

    goto :goto_2

    .line 302
    :cond_6
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->createPlayIntent(Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 305
    :goto_2
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->finish()V

    :cond_7
    return-void
.end method

.method private addAnalytics()V
    .locals 4

    .line 382
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    const-string v1, "Analytics Type"

    .line 383
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$9saKsGkY9p5YJ7J3Rvp8St8dkAM;

    invoke-direct {v2, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$9saKsGkY9p5YJ7J3Rvp8St8dkAM;-><init>(Lcom/magoware/magoware/webtv/players/ChannelActivity;)V

    const/high16 v3, 0x7f030000

    .line 384
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private createPlayIntent(Z)Landroid/content/Intent;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldContinueLastChannel"
        }
    .end annotation

    .line 311
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 312
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->exoplayer:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isPlayer(Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;)Z

    move-result v1

    const-string v2, "should_continue_last_channel"

    const-string v3, "current_cat_id"

    if-eqz v1, :cond_0

    .line 313
    const-class v1, Lcom/magoware/magoware/webtv/exoplayer_activities/ExoPlayerActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "com.google.android.exoplayer.demo.action.VIEW"

    .line 314
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "extension"

    const-string v5, ""

    .line 315
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget v4, Lcom/magoware/magoware/webtv/players/ChannelActivity;->current_category_id:I

    .line 316
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 317
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 318
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 319
    :cond_0
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->visualOn:Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isPlayer(Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_1

    .line 322
    invoke-static {p0, p0}, Lcom/magoware/magoware/webtv/visualon/PlayerPermissions;->permsAreGranted(Landroid/content/Context;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->finish()V

    .line 326
    :cond_1
    const-class v1, Lcom/magoware/magoware/webtv/visualon/VisualonPlayer;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 327
    sget v1, Lcom/magoware/magoware/webtv/players/ChannelActivity;->current_category_id:I

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 328
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "Analytics Type"

    const-string v2, "Analytics Null"

    .line 329
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 331
    :cond_2
    const-class v1, Lcom/magoware/magoware/webtv/activities/PlayerActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    sget v4, Lcom/magoware/magoware/webtv/players/ChannelActivity;->current_category_id:I

    .line 332
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 333
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method private getAllCategories()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getChannelCategoryObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$l3yTPLWxot33KAOnTTuu86EQiTk;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$l3yTPLWxot33KAOnTTuu86EQiTk;-><init>(Lcom/magoware/magoware/webtv/players/ChannelActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getChannelsList()V
    .locals 4

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 222
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getChannelsListObservable()Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$iwUw7IBuYiZJtZDegUEguuTNPZ0;

    invoke-direct {v3, p0, v0, v1}, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$iwUw7IBuYiZJtZDegUEguuTNPZ0;-><init>(Lcom/magoware/magoware/webtv/players/ChannelActivity;J)V

    invoke-virtual {v2, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private getMainActivityIntent()Landroid/content/Intent;
    .locals 2

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 118
    :cond_0
    const-class v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    const-class v1, Lcom/magoware/magoware/webtv/homepage/smarttv/MainActivity2SmartTv;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 122
    :cond_2
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    const-class v1, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 125
    :cond_3
    const-class v1, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method private getSettings()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;->getSettingsObservable()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$ZlE-03cFYaYAO-clwJt_2GSvk8w;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$ZlE-03cFYaYAO-clwJt_2GSvk8w;-><init>(Lcom/magoware/magoware/webtv/players/ChannelActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private intentVisualOn(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "analyticType"
        }
    .end annotation

    .line 350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 351
    invoke-static {p0, p0}, Lcom/magoware/magoware/webtv/visualon/PlayerPermissions;->permsAreGranted(Landroid/content/Context;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 356
    const-class v1, Lcom/magoware/magoware/webtv/visualon/VisualonPlayer;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 357
    sget v1, Lcom/magoware/magoware/webtv/players/ChannelActivity;->current_category_id:I

    const-string v2, "current_cat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Analytics Type"

    .line 358
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->isCategoryEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f14014e

    .line 361
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 365
    :goto_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->finish()V

    return-void
.end method

.method private intentWebView()V
    .locals 3

    .line 449
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magoware/magoware/webtv/payment/ChoosePaymentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 452
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ONLINE_PAYMENT_URL:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/magoware/magoware/webtv/util/Server;->AppHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/apiv2/help_support"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ONLINE_PAYMENT_URL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 455
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YESNET:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 459
    :cond_2
    const-class v2, Lcom/magoware/magoware/webtv/webview/WebViewActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "WEB_URL"

    .line 460
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 461
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 463
    :goto_1
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method private isCategoryEmpty()Z
    .locals 3

    .line 404
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ADULT_CHANNEL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 405
    sget v1, Lcom/magoware/magoware/webtv/players/ChannelActivity;->current_category_id:I

    if-nez v1, :cond_0

    .line 406
    invoke-static {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_0
    invoke-static {v1, v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(IZ)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 408
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    return v2
.end method

.method private setCurrentCategoryToAllCategories()V
    .locals 4

    const/4 v0, 0x0

    .line 339
    sput v0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->current_category_id:I

    .line 340
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->isCategoryEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f14014e

    .line 341
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f14014d

    .line 344
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    .line 345
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$glPRnARoMPHIbGdnhrJRhzryz_k;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$glPRnARoMPHIbGdnhrJRhzryz_k;-><init>(Lcom/magoware/magoware/webtv/players/ChannelActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$addAnalytics$5$ChannelActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const-string p1, "Analytics Null"

    .line 397
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->intentVisualOn(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "Analytics Render"

    .line 393
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->intentVisualOn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "Analytics Source"

    .line 390
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->intentVisualOn(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "Analytics Player"

    .line 387
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->intentVisualOn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$getAllCategories$1$ChannelActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->updateCategories:Z

    .line 212
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->InsertCategories(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$getChannelsList$2$ChannelActivity(JLcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 1

    if-eqz p3, :cond_1

    .line 224
    iget-object v0, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p3}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->isFromCache()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->updateChannels:Z

    .line 227
    invoke-direct {p0, p3, p1, p2}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->InsertChannels(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;J)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object p1, p3, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    invoke-static {p1}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$getSettings$0$ChannelActivity(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V
    .locals 5

    const/high16 v0, 0x10000000

    if-eqz p1, :cond_0

    .line 159
    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 160
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-boolean v1, v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->auto_timezone:Z

    sput-boolean v1, Lcom/magoware/magoware/webtv/global/Global;->auto_timezone:Z

    .line 161
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->timezone:I

    sput v1, Lcom/magoware/magoware/webtv/global/Global;->time_zone:I

    .line 162
    iget-wide v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->timestamp:J

    sput-wide v3, Lcom/magoware/magoware/webtv/global/Global;->server_timestamp:J

    .line 163
    iget-object v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v1, v1, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->daysleft:I

    iput v1, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->daysLeft:I

    .line 165
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->DAYSLEFT:Ljava/lang/String;

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v4, v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->daysleft:I

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 166
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYER:Ljava/lang/String;

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->player:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->pin:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SHOWADULT:Ljava/lang/String;

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-boolean v4, v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->showadult:Z

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Z)V

    .line 169
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->MAIN_MENU_BACKGROUND_URL:Ljava/lang/String;

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->background_url:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    iget-object v3, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v3, v3, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->portrait_background_url:Ljava/lang/String;

    const-string v4, "main_menu_portrait_background_url"

    invoke-virtual {v1, v4, v3}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ACTIVITY_TIMEOUT:Ljava/lang/String;

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v4, v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->activity_timeout:I

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 172
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->CHANNEL_LOG_TIME:Ljava/lang/String;

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget v4, v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->channel_log_time:I

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;I)V

    .line 173
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SUBSCRIPTION_ENDED_MESSAGE:Ljava/lang/String;

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->days_left_message:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->AVAILABLE_UPGRADE:Ljava/lang/String;

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-boolean v4, v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->available_upgrade:Z

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Z)V

    .line 175
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->LOGO_URL:Ljava/lang/String;

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v4, v4, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->logo_url:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ONLINE_PAYMENT_URL:Ljava/lang/String;

    iget-object v4, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->response_object:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    iget-object v2, v2, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->online_payment_url:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 178
    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v2, 0x2bf

    if-ne v1, v2, :cond_1

    const-string v1, "0"

    .line 179
    sput-object v1, Lcom/magoware/magoware/webtv/global/Global;->settingsEtagAtMenu:Ljava/lang/String;

    .line 180
    sput-object v1, Lcom/magoware/magoware/webtv/global/Global;->mainMenuEtag:Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 182
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->finish()V

    .line 188
    :cond_1
    :goto_0
    iget v1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v2, 0x2c0

    if-ne v1, v2, :cond_2

    .line 189
    iget-object p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->extra_data:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 190
    :cond_2
    iget p1, p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;->status_code:I

    const/16 v1, 0x378

    if-ne p1, v1, :cond_3

    .line 192
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object p1

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->finish()V

    goto :goto_1

    .line 196
    :cond_3
    iget p1, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->daysLeft:I

    if-gtz p1, :cond_4

    .line 197
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->subscriptionEndedDialog()V

    goto :goto_1

    .line 199
    :cond_4
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getAllCategories()V

    .line 200
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getChannelsList()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$setCurrentCategoryToAllCategories$3$ChannelActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, v0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->createPlayIntent(Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$setCurrentCategoryToAllCategories$4$ChannelActivity()V
    .locals 1

    .line 345
    new-instance v0, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$Tl4T0gMxjABr477ecajvF4s3neA;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$Tl4T0gMxjABr477ecajvF4s3neA;-><init>(Lcom/magoware/magoware/webtv/players/ChannelActivity;)V

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$subscriptionEndedDialog$6$ChannelActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 428
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->intentWebView()V

    return-void
.end method

.method public synthetic lambda$subscriptionEndedDialog$7$ChannelActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 430
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->finish()V

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

    .line 85
    invoke-super {p0, p1}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->requestWindowFeature(I)Z

    const v0, 0x7f0e0067

    .line 87
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->setContentView(I)V

    .line 88
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->magowareViewModel:Lcom/magoware/magoware/webtv/network/mvvm/viewmodel/MagowareViewModel;

    const v0, 0x7f0b0166

    .line 90
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f0b0165

    .line 93
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->channels_grid_view:Landroid/widget/GridView;

    .line 95
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getSettings()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/high16 v0, 0x20000

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getMainActivityIntent()Landroid/content/Intent;

    move-result-object p1

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v1, 0x52

    if-ne p1, v1, :cond_5

    .line 138
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 139
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isMobile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    const-class v2, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 143
    :cond_1
    const-class v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 145
    const-class v2, Lcom/magoware/magoware/webtv/homepage/smarttv/MainActivity2SmartTv;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 146
    :cond_3
    sget-object v2, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->PES:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    const-class v2, Lcom/magoware/magoware/webtv/linkvue/MainMenuLinkvue;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 149
    :cond_4
    const-class v2, Lcom/magoware/magoware/webtv/homepage/dashboard/DashboardActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 150
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 152
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->finish()V

    .line 154
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 371
    invoke-super {p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 372
    invoke-static {p1, p2, p3}, Lcom/magoware/magoware/webtv/visualon/PlayerPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Analytics Null"

    .line 373
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->intentVisualOn(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, "Closing the application as it will not work properly without write permissions"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 377
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/magoware/magoware/webtv/activities/CustomActivity;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->channels_grid_view:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    return-void
.end method

.method public subscriptionEndedDialog()V
    .locals 5

    .line 414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f0802eb

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    .line 416
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    const v3, 0x7f150002

    invoke-direct {v0, p0, v3}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 418
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0802ec

    const v1, 0x7f0802ec

    .line 422
    :cond_1
    new-instance v0, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/util/AlertDialogFocusedButton;-><init>(Landroid/content/Context;)V

    .line 425
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f14041e

    .line 426
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f140082

    .line 427
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$y0ol_mAgXrTOB_7_ucodAuCTSB4;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$y0ol_mAgXrTOB_7_ucodAuCTSB4;-><init>(Lcom/magoware/magoware/webtv/players/ChannelActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f140083

    .line 429
    invoke-virtual {p0, v3}, Lcom/magoware/magoware/webtv/players/ChannelActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$MM1Vm8Q9he9gqxxPkSo7pRVqQ98;

    invoke-direct {v4, p0}, Lcom/magoware/magoware/webtv/players/-$$Lambda$ChannelActivity$MM1Vm8Q9he9gqxxPkSo7pRVqQ98;-><init>(Lcom/magoware/magoware/webtv/players/ChannelActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 431
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 433
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 434
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->SUBSCRIPTION_ENDED_MESSAGE:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v1, v3, v4}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 437
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->dialog:Landroid/app/AlertDialog;

    .line 438
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 439
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 440
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocusFromTouch()Z

    .line 442
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v2, :cond_3

    .line 443
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0800a2

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 444
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/ChannelActivity;->dialog:Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method
