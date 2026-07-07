.class public Lcom/nettv/livestore/apps/LTVApp;
.super Landroidx/multidex/MultiDexApplication;
.source "LTVApp.java"


# static fields
.field public static SCREEN_HEIGHT:F = 1080.0f

.field public static SCREEN_WIDTH:F = 1920.0f

.field public static SEVER_OFFSET:J

.field public static channelName:Ljava/lang/String;

.field public static homeType:Lcom/nettv/livestore/apps/HomeType;

.field public static instance:Lcom/nettv/livestore/apps/LTVApp;

.field public static live_categories_filter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field public static series_categories_filter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field

.field public static version_name:Ljava/lang/String;

.field public static vod_categories_filter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/CategoryModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m3UChannelsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Liptv/m3u/parser/M3UItem;",
            ">;"
        }
    .end annotation
.end field

.field private m3USeriesItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Liptv/m3u/parser/M3UItem;",
            ">;"
        }
    .end annotation
.end field

.field private m3UVideosItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Liptv/m3u/parser/M3UItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nettv/livestore/apps/LTVApp;->vod_categories_filter:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nettv/livestore/apps/LTVApp;->live_categories_filter:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nettv/livestore/apps/LTVApp;->series_categories_filter:Ljava/util/List;

    const-string v0, "1.0"

    .line 4
    sput-object v0, Lcom/nettv/livestore/apps/LTVApp;->version_name:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/nettv/livestore/apps/HomeType;->live:Lcom/nettv/livestore/apps/HomeType;

    sput-object v0, Lcom/nettv/livestore/apps/LTVApp;->homeType:Lcom/nettv/livestore/apps/HomeType;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/apps/LTVApp;->m3UChannelsItems:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/apps/LTVApp;->m3UVideosItems:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/apps/LTVApp;->m3USeriesItems:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/nettv/livestore/apps/LTVApp;
    .registers 1

    .line 1
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->instance:Lcom/nettv/livestore/apps/LTVApp;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lcom/nettv/livestore/apps/LTVApp;

    invoke-direct {v0}, Lcom/nettv/livestore/apps/LTVApp;-><init>()V

    sput-object v0, Lcom/nettv/livestore/apps/LTVApp;->instance:Lcom/nettv/livestore/apps/LTVApp;

    .line 3
    :cond_b
    sget-object v0, Lcom/nettv/livestore/apps/LTVApp;->instance:Lcom/nettv/livestore/apps/LTVApp;

    return-object v0
.end method


# virtual methods
.method public getM3UChannelsItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Liptv/m3u/parser/M3UItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nettv/livestore/apps/LTVApp;->m3UChannelsItems:Ljava/util/List;

    return-object v0
.end method

.method public getM3USeriesItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Liptv/m3u/parser/M3UItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nettv/livestore/apps/LTVApp;->m3USeriesItems:Ljava/util/List;

    return-object v0
.end method

.method public getM3UVideosItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Liptv/m3u/parser/M3UItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nettv/livestore/apps/LTVApp;->m3UVideosItems:Ljava/util/List;

    return-object v0
.end method

.method public getM3uDate()Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/nettv/livestore/helper/PreferenceHelper;->getSharedPreferenceLastM3uDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationBarHeight(Landroid/app/Activity;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 3
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p1, p1

    sput p1, Lcom/nettv/livestore/apps/LTVApp;->SCREEN_HEIGHT:F

    .line 4
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sput v0, Lcom/nettv/livestore/apps/LTVApp;->SCREEN_WIDTH:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_22

    .line 5
    sput p1, Lcom/nettv/livestore/apps/LTVApp;->SCREEN_WIDTH:F

    .line 6
    sput v0, Lcom/nettv/livestore/apps/LTVApp;->SCREEN_HEIGHT:F

    :cond_22
    return-void
.end method

.method public loadVersion()V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_13

    :catch_e
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 3
    :goto_13
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/nettv/livestore/apps/LTVApp;->version_name:Ljava/lang/String;

    return-void
.end method

.method public onCreate()V
    .registers 1

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sput-object p0, Lcom/nettv/livestore/apps/LTVApp;->instance:Lcom/nettv/livestore/apps/LTVApp;

    return-void
.end method

.method public setM3UChannelsItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Liptv/m3u/parser/M3UItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nettv/livestore/apps/LTVApp;->m3UChannelsItems:Ljava/util/List;

    return-void
.end method

.method public setM3USeriesItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Liptv/m3u/parser/M3UItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nettv/livestore/apps/LTVApp;->m3USeriesItems:Ljava/util/List;

    return-void
.end method

.method public setM3UVideosItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Liptv/m3u/parser/M3UItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nettv/livestore/apps/LTVApp;->m3UVideosItems:Ljava/util/List;

    return-void
.end method

.method public setM3uDate(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/nettv/livestore/helper/PreferenceHelper;

    invoke-direct {v0, p0}, Lcom/nettv/livestore/helper/PreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/nettv/livestore/helper/PreferenceHelper;->setSharedPreferenceLastM3uDate(Ljava/lang/String;)V

    return-void
.end method

.method public versionCheck()V
    .registers 2

    .line 1
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 2
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method
