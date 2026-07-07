.class public Lcom/magoware/magoware/webtv/global/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static COMPANY_ID:I = 0x1

.field public static final ENABLE_NETWORK_LOGS:Z = true

.field public static applicationName:Ljava/lang/String; = ""

.field public static auto_timezone:Z = true

.field public static bean:Ljava/lang/String; = ""

.field public static categoryFilmsEtag:Ljava/lang/String; = null

.field public static channelsFavoritesEtag:Ljava/lang/String; = null

.field public static channelsGenreEtag:Ljava/lang/String; = null

.field public static channelsListEtag:Ljava/lang/String; = null

.field public static database:Lcom/framework/utilityframe/database/DatabaseManager; = null

.field public static db_queries:Lcom/magoware/magoware/webtv/database/DatabaseQueries; = null

.field public static deviceTimezone:D = 100.0

.field public static devicebrand:Ljava/lang/String; = ""

.field public static firmware_version:Ljava/lang/String; = ""

.field public static first_time_run:Z = true

.field public static hdmi:Z = false

.field public static http_request:Lcom/framework/utilityframe/webhelper/HttpRequest; = null

.field public static interstitialFrequency:I = 0x2

.field public static logtype:Ljava/lang/String; = ""

.field public static mainMenuEtag:Ljava/lang/String; = null

.field public static operating_system:Ljava/lang/String; = ""

.field public static package_info:Landroid/content/pm/PackageInfo; = null

.field public static pages_of_movies:I = 0x0

.field public static pallyTok:Ljava/lang/String; = ""

.field public static personalchannelsGenreEtag:Ljava/lang/String; = null

.field public static screenHeight:I = 0x0

.field public static screenWidth:I = 0x0

.field public static screensize:Ljava/lang/String; = ""

.field public static server_timestamp:J = 0x0L

.field public static settingsEtagAtLivetv:Ljava/lang/String; = "0"

.field public static settingsEtagAtMenu:Ljava/lang/String; = "0"

.field public static settingsEtagAtVod:Ljava/lang/String; = "0"

.field public static shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager; = null

.field public static shouldShowEPG:Z = true

.field public static time_zone:I = 0x0

.field public static tokenAllowedDelta:J = 0x1d4c0L

.field public static tokenDeltaValue:J

.field public static tokenTimestamp:J

.field public static updatedTok:J

.field public static upgradeEtag:Ljava/lang/String;

.field public static upgrade_message:Ljava/lang/String;

.field public static useCustomTime:Z

.field public static vodCategoriesEtag:Ljava/lang/String;

.field public static vodListEtag:Ljava/lang/String;

.field public static vodMostratedEtag:Ljava/lang/String;

.field public static vodMostwatchedEtag:Ljava/lang/String;

.field public static vodSubtitlesEtag:Ljava/lang/String;

.field public static vodSuggestionsEtag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;
    .locals 2

    .line 93
    sget-object v0, Lcom/magoware/magoware/webtv/global/Global;->database:Lcom/framework/utilityframe/database/DatabaseManager;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/framework/utilityframe/database/DatabaseManager;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/magoware/magoware/webtv/global/Global;->database:Lcom/framework/utilityframe/database/DatabaseManager;

    .line 96
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/global/Global;->database:Lcom/framework/utilityframe/database/DatabaseManager;

    return-object v0
.end method

.method public static getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3

    .line 100
    sget-object v0, Lcom/magoware/magoware/webtv/global/Global;->package_info:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 103
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/global/Global;->package_info:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 109
    :cond_0
    :goto_0
    sget-object v0, Lcom/magoware/magoware/webtv/global/Global;->package_info:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public static getTokenTimestamp()J
    .locals 4

    .line 132
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->shouldConsiderCustomTime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 135
    :cond_0
    sget-boolean v0, Lcom/magoware/magoware/webtv/global/Global;->useCustomTime:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/magoware/magoware/webtv/global/Global;->tokenDeltaValue:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static initializeDatabase()V
    .locals 3

    .line 113
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/ServerObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/ServerObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/MenuObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 117
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/ComboObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/ComboObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/SubscriptionObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/SubscriptionObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 119
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/VODCategoryObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 120
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/VODObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/VODObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 121
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/SubtitleObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/SubtitleObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 122
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/VodRecommendedObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/VodRecommendedObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 123
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/VodTopRatedObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/VodTopRatedObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 124
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/VodMostWatchedObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/VodMostWatchedObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 125
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/VodRelatedObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/VodRelatedObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 126
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 128
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/magoware/magoware/webtv/global/Global;->applicationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_gradle12"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/framework/utilityframe/database/DatabaseManager;->createDatabase(Ljava/lang/String;I)Z

    return-void
.end method

.method public static initializeGlobalVariables()V
    .locals 4

    .line 84
    new-instance v0, Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Settings"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lcom/magoware/magoware/webtv/global/Global;->shared_preference:Lcom/framework/utilityframe/sharedpreference/SharedPreferenceManager;

    .line 85
    new-instance v0, Lcom/framework/utilityframe/webhelper/HttpRequest;

    invoke-direct {v0}, Lcom/framework/utilityframe/webhelper/HttpRequest;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/global/Global;->http_request:Lcom/framework/utilityframe/webhelper/HttpRequest;

    .line 86
    new-instance v0, Lcom/magoware/magoware/webtv/database/DatabaseQueries;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/global/Global;->db_queries:Lcom/magoware/magoware/webtv/database/DatabaseQueries;

    .line 87
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/global/Global;->applicationName:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->initTimezone()V

    .line 89
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->initializeDatabase()V

    return-void
.end method

.method public static setTokenTimestamp(J)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverTokenTimestamp"
        }
    .end annotation

    .line 139
    sput-wide p0, Lcom/magoware/magoware/webtv/global/Global;->tokenTimestamp:J

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p0, v0

    sget-wide v2, Lcom/magoware/magoware/webtv/global/Global;->tokenAllowedDelta:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/magoware/magoware/webtv/global/Global;->useCustomTime:Z

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p0, v0

    const-wide/32 v2, 0xa4cb800

    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    sput-boolean v4, Lcom/magoware/magoware/webtv/global/Global;->shouldShowEPG:Z

    .line 144
    sget-boolean v0, Lcom/magoware/magoware/webtv/global/Global;->useCustomTime:Z

    if-eqz v0, :cond_2

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p0, v0

    sput-wide p0, Lcom/magoware/magoware/webtv/global/Global;->tokenDeltaValue:J

    :cond_2
    return-void
.end method
