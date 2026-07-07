.class public Lcom/magoware/magoware/webtv/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/util/Utils$CustomDialogActions;
    }
.end annotation


# static fields
.field public static AD_DURATION:Ljava/lang/String; = "duration"

.field public static AD_PICTURE:Ljava/lang/String; = "picture"

.field public static AD_VIDEO_ID:Ljava/lang/String; = "videoid"

.field public static final ALL_CATEGORIES:I = 0x0

.field public static APP:Ljava/lang/String; = "app"

.field public static AppID:Ljava/lang/String; = ""

.field public static CATCHUP_TV:Ljava/lang/String; = "2"

.field public static CLIENT_MESSAGE:Ljava/lang/String; = "CLIENT_MESSAGE"

.field public static CLIENT_PHOTO:Ljava/lang/String; = "CLIENT_PHOTO"

.field public static CURRENT_CATEGORY_ID:Ljava/lang/String; = "current_category_id"

.field public static DELETE_DATA:Ljava/lang/String; = "DELETE_DATA"

.field public static DELETE_SHP:Ljava/lang/String; = "DELETE_SHP"

.field public static DIALOG_DATA_KEY:Ljava/lang/String; = null

.field public static final FAVORITE_CATEGORY_ID:I = 0x29a

.field public static HH_MM:Ljava/text/SimpleDateFormat; = null

.field public static HH_mm_ss:Ljava/text/SimpleDateFormat; = null

.field public static INFO_CHANNEL:Ljava/lang/String; = "1"

.field public static IS_MENU_LANGUAGE:Ljava/lang/String; = "menu_change_language"

.field public static LIVE_TV:Ljava/lang/String; = "0"

.field public static MAIL_DESCRIPTION:Ljava/lang/String; = "description"

.field public static MAIL_TITLE:Ljava/lang/String; = "title"

.field public static final MENU_CODE_APPS:I = 0x4

.field public static final MENU_CODE_CATCH_UP:I = 0x15

.field public static final MENU_CODE_HOTEL_INFO:I = 0x17

.field public static final MENU_CODE_HOTEL_SERVICES:I = 0x18

.field public static final MENU_CODE_INFO_CHANNEL:I = 0x16

.field public static final MENU_CODE_INSTALLED_APP:I = 0xc

.field public static final MENU_CODE_LANGUAGE:I = 0x6

.field public static final MENU_CODE_LIVE_TV:I = 0x1

.field public static final MENU_CODE_LOGIN:I = 0x2

.field public static final MENU_CODE_LOGOUT:I = 0x3

.field public static final MENU_CODE_MY_INFO:I = 0x5

.field public static final MENU_CODE_NETWORK_TEST:I = 0xa

.field public static final MENU_CODE_PERSONALE:I = 0x14

.field public static final MENU_CODE_SHOP_SUBSCRIPTION:I = 0x7

.field public static final MENU_CODE_TV_SHOWS:I = 0x19

.field public static final MENU_CODE_VIDEO_ON_DEMAND:I = 0xb

.field public static final MENU_CODE_VIDEO_URL:I = 0xe

.field public static final MENU_CODE_WEB_URL:I = 0x0

.field public static final MENU_CODE_WEB_URL_WEBVIEW:I = 0x8

.field public static final MOBILE_NAVIGATION_BAR_ALPHA:F = 0.8f

.field public static M_d_yyyy_h_m_s:Ljava/text/SimpleDateFormat; = null

.field public static PASSWORD_DIALOG_TITLE:Ljava/lang/String; = "password_dialog_title"

.field public static REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field public static RESPONSE_CODE_LOGOUT:I = 0x2bf

.field public static RESPONSE_CODE_NOT_MODIFIED:I = 0x130

.field public static RESPONSE_ERROR:Ljava/lang/String; = "Error"

.field public static RESPONSE_NULL:Ljava/lang/String; = "null"

.field public static RESPONSE_OK:Ljava/lang/String; = "ok"

.field public static RESPONSE_TIME_OUT:Ljava/lang/String; = "time_out"

.field public static SENDER:Ljava/lang/String; = "sender"

.field public static SENDER_ID:Ljava/lang/String; = "447302365288"

.field public static SOFTWARE_INSTALL:Ljava/lang/String; = "SOFTWARE_INSTALL"

.field public static SYNCHRONIZED:Z = false

.field public static final VIRTUAL_REMOTE_EPG_KEYCODE:I = 0x4d3

.field public static final VIRTUAL_REMOTE_SLEEP_KEYCODE:I = 0x4d2

.field private static context:Landroid/content/Context; = null

.field public static d_M_yyyy_h_m_s:Ljava/text/SimpleDateFormat; = null

.field public static dd_MMMM_yyy:Ljava/text/SimpleDateFormat; = null

.field public static dd_MMM_yyy:Ljava/text/SimpleDateFormat; = null

.field public static dd_MM_yyyy:Ljava/text/SimpleDateFormat; = null

.field private static instance:Lcom/magoware/magoware/webtv/util/Utils; = null

.field public static localCatchupStream:Ljava/lang/String; = "http://wpc.9C446.rhocdn.net/809C446/dvr2/topnewsit/tracks-v1a1/index-"

.field public static localCatchupTokenUrl:Ljava/lang/String;

.field public static localStreamPrefix:Ljava/lang/String;

.field private static macAddressInstance:Ljava/lang/String;

.field public static milisecond:Ljava/text/SimpleDateFormat;

.field public static mm_dd_yyyy_HH_mm_ss:Ljava/text/SimpleDateFormat;

.field public static mm_dd_yyyy_h_mm_ss:Ljava/text/SimpleDateFormat;

.field public static mm_dd_yyyy_h_mm_ss_a:Ljava/text/SimpleDateFormat;

.field public static mm_dd_yyyy_hh_mm_ss:Ljava/text/SimpleDateFormat;

.field public static standart_format:Ljava/text/SimpleDateFormat;

.field public static yyyy_M_d_h_m_s:Ljava/text/SimpleDateFormat;

.field public static yyyy_mm_dd_hh_mm_ss:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/magoware/magoware/webtv/util/CustomServer;->currentServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/apiv2/token/verizon/aa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->localCatchupTokenUrl:Ljava/lang/String;

    const-string v0, "/storage/external_storage/sda1/"

    .line 135
    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->localStreamPrefix:Ljava/lang/String;

    const-string v0, "dialog_data"

    .line 136
    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->DIALOG_DATA_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToastMessage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 730
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static appInstalledOrNot(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 749
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 751
    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 754
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static bitrateToString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nBitr"
        }
    .end annotation

    const/16 v0, 0x3e8

    .line 836
    div-int/2addr p0, v0

    if-ge p0, v0, :cond_0

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "kbps"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p0, v0

    .line 840
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 841
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 842
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x2

    .line 843
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 845
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Mbps"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static canUseYoutubeApi(Landroid/content/Context;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 574
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 575
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 576
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 577
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "youtube"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 578
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    const-wide v6, 0x4010cccccccccccdL    # 4.2

    cmpl-double v8, v3, v6

    if-lez v8, :cond_0

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    if-nez v8, :cond_1

    .line 583
    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 584
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static checkForNullParams([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 855
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static convertDPI(Landroid/content/Context;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "imgDpi"
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dipValue"
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getAndroidVersion()Ljava/lang/String;
    .locals 1

    .line 634
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppID()Ljava/lang/String;
    .locals 4

    .line 498
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->VIALA:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_0

    .line 499
    sput-object v1, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    return-object v1

    .line 501
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->NPLAY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    const-string v2, "4"

    if-eqz v0, :cond_1

    .line 502
    sput-object v2, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    return-object v2

    :cond_1
    const/4 v0, 0x0

    const-string v3, "2.9.77"

    .line 505
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    .line 513
    sput-object v1, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    return-object v1

    .line 511
    :cond_2
    sput-object v2, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    return-object v2

    :cond_3
    const-string v0, "2"

    .line 509
    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    return-object v0
.end method

.method public static getAuth()Ljava/lang/String;
    .locals 7

    .line 211
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ";mac_address="

    const-string v2, ";timestamp="

    const-string v3, ";appid="

    const-string v4, ";boxid="

    const-string v5, ";password="

    const-string v6, "username="

    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getBoxId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getEncriptionKey()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getBoxId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
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

    .line 195
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ";mac_address="

    const-string v2, ";timestamp="

    const-string v3, ";appid="

    const-string v4, ";boxid="

    const-string v5, ";password="

    const-string v6, "username="

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getBoxId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getEncriptionKey()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-static {p0, p1}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    goto :goto_0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getBoxId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getBackgroundImageUrl(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 563
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->MAIN_MENU_BACKGROUND_URL:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    const-string v3, "main_menu_portrait_background_url"

    invoke-virtual {v1, v3, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static getBoxId()Ljava/lang/String;
    .locals 2

    .line 638
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCompanyId()I
    .locals 1

    .line 291
    sget v0, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 174
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->context:Landroid/content/Context;

    .line 177
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getDayOfWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 734
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 737
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 739
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    const-string v1, "EEE"

    .line 741
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 743
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Mon"

    return-object p0
.end method

.method public static getDefaultBackgroundImage(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x7f0803c5

    goto :goto_0

    :cond_0
    const p0, 0x7f0803c6

    :goto_0
    return p0
.end method

.method public static getDigitsfromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    .line 326
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 328
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 331
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static getDrawableURL(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawableResource"
        }
    .end annotation

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://com.magoware.blingtv.stb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEncriptionKey()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 227
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v1

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTED_LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 229
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getEpgFillerName()Ljava/lang/String;
    .locals 2

    .line 851
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    const v1, 0x7f140169

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/MagowareApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileNameFromUrlUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    const-string v0, "?"

    .line 310
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_0

    .line 311
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 312
    aget-object v1, p0, v0

    aget-object p0, p0, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 314
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    const/16 v0, 0x2f

    .line 339
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getFilenameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    const-class v0, Lcom/magoware/magoware/webtv/util/Utils;

    monitor-enter v0

    :try_start_0
    const-string v1, " "

    const-string v2, "%20"

    .line 318
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2f

    .line 319
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getHttpParams()Ljava/lang/String;
    .locals 2

    .line 263
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/util/Utils;->getAuth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->httpRequestParameters(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 625
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isSmartTv()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->YUVTV:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TUTVNOW:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 626
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/Locale;

    invoke-static {p0}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 15

    const-string v0, "eth0"

    const-string v1, "000000000000"

    .line 651
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    move-object v5, v1

    move-object v6, v5

    const/4 v4, 0x0

    .line 652
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 653
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/NetworkInterface;

    .line 654
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "wlan0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 656
    :cond_0
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v8

    if-eqz v8, :cond_4

    .line 658
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    array-length v10, v8

    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x1

    if-ge v11, v10, :cond_1

    aget-byte v13, v8, v11

    const-string v14, "%02X:"

    new-array v12, v12, [Ljava/lang/Object;

    .line 660
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {v14, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 663
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 664
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v12

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 666
    :cond_2
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, ""

    const-string v10, ":"

    if-eqz v7, :cond_3

    .line 667
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 669
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v1

    move-object v6, v5

    .line 675
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 678
    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  MAC ADDRESS  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v5, v6

    :goto_4
    return-object v5
.end method

.method public static getNetType()Ljava/lang/String;
    .locals 1

    .line 711
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->hasWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "2"

    :goto_0
    return-object v0
.end method

.method public static getPaletteColors(Landroidx/palette/graphics/Palette;)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "palette"
        }
    .end annotation

    .line 595
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;-><init>()V

    .line 598
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getDarkVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getDarkVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->setToolbarBackgroundColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    .line 600
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getDarkVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Swatch;->getBodyTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->setTextColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    .line 601
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getDarkVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getTitleTextColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->setTitleColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    goto :goto_0

    .line 602
    :cond_0
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getDarkMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 603
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getDarkMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->setToolbarBackgroundColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    .line 604
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getDarkMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Swatch;->getBodyTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->setTextColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    .line 605
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getDarkMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getTitleTextColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->setTitleColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    goto :goto_0

    .line 606
    :cond_1
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 607
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->setToolbarBackgroundColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    .line 608
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/palette/graphics/Palette$Swatch;->getBodyTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->setTextColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    .line 609
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->getTitleTextColor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->setTitleColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    .line 613
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->getToolbarBackgroundColor()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    new-array p0, p0, [F

    .line 615
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->getToolbarBackgroundColor()I

    move-result v1

    .line 616
    invoke-static {v1, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    .line 617
    aget v2, p0, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    aput v2, p0, v1

    .line 618
    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;->setStatusBarColor(I)Lcom/magoware/magoware/webtv/network/mvvm/models/PaletteColors;

    :cond_3
    return-object v0
.end method

.method public static getPassword()Ljava/lang/String;
    .locals 4

    .line 249
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 251
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTED_LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v0, v2}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public static getPlayer()Ljava/lang/String;
    .locals 4

    .line 824
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYER:Ljava/lang/String;

    const-string v2, "nativeplayer"

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "exoplayer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    .line 827
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "visualon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    return-object v2
.end method

.method public static getPublicIpAddress()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 686
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://checkip.amazonaws.com"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 688
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v1, v0

    .line 693
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 694
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 702
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 704
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 697
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_0

    .line 702
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    .line 704
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_3
    return-object v0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_1

    .line 702
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 704
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 707
    :cond_1
    :goto_5
    throw v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "window"

    .line 379
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 380
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    return p0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    const-string v0, "http.agent"

    .line 809
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserPin()Ljava/lang/String;
    .locals 3

    .line 297
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PIN:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 4

    .line 236
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v2

    sget-object v3, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTED_LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {v0, v2}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public static getUtilInstance()Lcom/magoware/magoware/webtv/util/Utils;
    .locals 1

    .line 167
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->instance:Lcom/magoware/magoware/webtv/util/Utils;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/magoware/magoware/webtv/util/Utils;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/util/Utils;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->instance:Lcom/magoware/magoware/webtv/util/Utils;

    .line 170
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->instance:Lcom/magoware/magoware/webtv/util/Utils;

    return-object v0
.end method

.method public static hasWifi()Z
    .locals 3

    .line 642
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 643
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 644
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static httpRequestParameters(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 273
    sget-object v1, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->COMPANY_ID:Ljava/lang/String;

    sget v2, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "auth"

    .line 274
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object p0, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    const-string v1, "appid"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "appversion"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "api_version"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p0

    const-string v1, "language"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->hasWifi()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "2"

    :goto_0
    const-string v1, "ntype"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object p0, Lcom/magoware/magoware/webtv/global/Global;->operating_system:Ljava/lang/String;

    const-string v1, "os"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object p0, Lcom/magoware/magoware/webtv/global/Global;->screensize:Ljava/lang/String;

    const-string v1, "screensize"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object p0, Lcom/magoware/magoware/webtv/global/Global;->devicebrand:Ljava/lang/String;

    const-string v1, "devicebrand"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object p0, Lcom/magoware/magoware/webtv/global/Global;->firmware_version:Ljava/lang/String;

    const-string v1, "firmwareversion"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-boolean p0, Lcom/magoware/magoware/webtv/global/Global;->hdmi:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "hdmi"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->getTimezone()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    const-string v1, "device_timezone"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object p0, Lcom/magoware/magoware/webtv/global/Global;->applicationName:Ljava/lang/String;

    const-string v1, "app_name"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static initUtil()V
    .locals 3

    .line 144
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/LocaleHelper;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ALB"

    invoke-static {v0, v2}, Lcom/framework/utilityframe/utility/utility;->stringCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 149
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->standart_format:Ljava/text/SimpleDateFormat;

    .line 150
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->HH_MM:Ljava/text/SimpleDateFormat;

    .line 151
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->dd_MM_yyyy:Ljava/text/SimpleDateFormat;

    .line 152
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->dd_MMM_yyy:Ljava/text/SimpleDateFormat;

    .line 153
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMMM yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->dd_MMMM_yyy:Ljava/text/SimpleDateFormat;

    .line 154
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy hh:mm:ss a"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->M_d_yyyy_h_m_s:Ljava/text/SimpleDateFormat;

    .line 155
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "d/M/yyyy h:m:s"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->d_M_yyyy_h_m_s:Ljava/text/SimpleDateFormat;

    .line 156
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->yyyy_M_d_h_m_s:Ljava/text/SimpleDateFormat;

    .line 157
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->HH_mm_ss:Ljava/text/SimpleDateFormat;

    .line 158
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->milisecond:Ljava/text/SimpleDateFormat;

    .line 159
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy h:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->mm_dd_yyyy_h_mm_ss:Ljava/text/SimpleDateFormat;

    .line 160
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy h:mm:ss a"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->mm_dd_yyyy_h_mm_ss_a:Ljava/text/SimpleDateFormat;

    .line 161
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy hh:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->mm_dd_yyyy_hh_mm_ss:Ljava/text/SimpleDateFormat;

    .line 162
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->mm_dd_yyyy_HH_mm_ss:Ljava/text/SimpleDateFormat;

    .line 163
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd hh:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/magoware/magoware/webtv/util/Utils;->yyyy_mm_dd_hh_mm_ss:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static isAmazonFireTv()Z
    .locals 2

    .line 541
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "AFTN"

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 546
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "amazon.hardware.fire_tv"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAppValid()Z
    .locals 2

    .line 550
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isAmazonFireTv()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 551
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->DMCENTER:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->context:Landroid/content/Context;

    const v1, 0x7f1401fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->ToastMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isBox()Z
    .locals 2

    .line 518
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getAppID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clients"
        }
    .end annotation

    .line 403
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Client:[I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/16 v0, 0x18

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isExoplayerDefault()Z
    .locals 1

    .line 815
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->HOSPITALITY:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->VBN:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isHDMIPluggedIn()Z
    .locals 3

    const/4 v0, 0x0

    .line 776
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 778
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/switch/hdmi/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 781
    :cond_0
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 782
    invoke-virtual {v2}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    .line 783
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public static isLoginWithQrCodeAvailable()Z
    .locals 1

    .line 493
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->MAGOWARE:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMagoAppOnForeground(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "activity"

    .line 360
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 361
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMobile()Z
    .locals 2

    .line 522
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getAppID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isTypeTelevision()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOnline()Z
    .locals 3

    .line 181
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/MagowareApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 184
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 188
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0
.end method

.method public static isPlayer(Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPlayer"
        }
    .end annotation

    .line 386
    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$CurrentPlayer:[I

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/network/mvvm/models/CurrentPlayer;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const-string v1, "Default"

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 396
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p0

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "exoplayer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    .line 392
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p0

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "visualon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    .line 388
    :cond_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object p0

    sget-object v0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PLAYER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static isSmartTv()Z
    .locals 2

    .line 526
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getAppID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isTypeTelevision()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static isTypeTelevision()Z
    .locals 4

    .line 531
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/MagowareApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 536
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.type.television"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static liveTvPackage()Ljava/lang/String;
    .locals 4

    const-string v0, "com.google.android.tv"

    const-string v1, "com.android.tv"

    .line 760
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 761
    aget-object v2, v0, v1

    .line 762
    invoke-static {v2}, Lcom/magoware/magoware/webtv/util/Utils;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "pxValue"
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static refresh()V
    .locals 2

    .line 716
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/ServerObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 717
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 718
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 719
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 720
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    const-class v1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->deleteEntity(Ljava/lang/String;)Z

    .line 722
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/ServerObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/ServerObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 723
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 724
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/MenuObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/MenuObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 725
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    .line 726
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getDatabaseManager()Lcom/framework/utilityframe/database/DatabaseManager;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;

    invoke-direct {v1}, Lcom/magoware/magoware/webtv/database/objects/MenuObjectLayer;-><init>()V

    invoke-virtual {v0, v1}, Lcom/framework/utilityframe/database/DatabaseManager;->addTable(Ljava/lang/Object;)V

    return-void
.end method

.method public static setViewGoneWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "anim"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 352
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 353
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/16 p1, 0x8

    .line 354
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static setViewVisibleWithAnimation(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "anim"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 343
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 345
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 p1, 0x0

    .line 346
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static shouldConsiderCustomTime()Z
    .locals 2

    .line 769
    sget-object v0, Lcom/magoware/magoware/webtv/network/mvvm/models/Client;->TIBO:Lcom/magoware/magoware/webtv/network/mvvm/models/Client;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/util/Utils;->isClient(Lcom/magoware/magoware/webtv/network/mvvm/models/Client;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->isBox()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.magoware.blingtv.stb"

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.9.77"

    return-object v0
.end method

.method public getDeviceBrand()Ljava/lang/String;
    .locals 3

    const-string v0, "http.agent"

    .line 804
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    .line 805
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatingSystem()Ljava/lang/String;
    .locals 3

    const-string v0, "http.agent"

    .line 799
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    .line 800
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
