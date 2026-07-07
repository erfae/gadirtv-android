.class public Lcom/magoware/magoware/webtv/network/MakeWebRequests;
.super Ljava/lang/Object;
.source "MakeWebRequests.java"


# static fields
.field public static final ACTION_ASK_STORAGE_PERMISSIONS:Ljava/lang/String; = "com.magoware.action.ASK_STORAGE_PERMISSIONS"

.field private static final CACHE_SIZE_BYTES:I = 0x200000

.field public static final INTENT_FILTER_ASK_PERMISSIONS:Ljava/lang/String; = "com.magoware.intent_filter.ASK_PERMISSIONS"

.field public static final KEY_APK_LOCATION:Ljava/lang/String; = "location"

.field public static final KEY_APK_NAME:Ljava/lang/String; = "name"

.field public static final REQUEST_STORAGE:I = 0x7b

.field static final TAG:Ljava/lang/String; = "MakeWebRequests"

.field static catchupEpgJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;",
            ">;"
        }
    .end annotation
.end field

.field static channelJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;",
            ">;"
        }
    .end annotation
.end field

.field static epgJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/EpgObject;",
            ">;"
        }
    .end annotation
.end field

.field static favoriteChannelJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static genreJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ChannelCategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field static googleAppIdJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static json:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LoginObject;",
            ">;"
        }
    .end annotation
.end field

.field static logoutJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/LogoutOject;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field static portalJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/CountryObject;",
            ">;"
        }
    .end annotation
.end field

.field static programInfoJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
            "Lcom/magoware/magoware/webtv/database/objects/ScheduleEpgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sub_number:I


# instance fields
.field private downloadReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->json:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 73
    new-instance v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->logoutJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 74
    new-instance v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->portalJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 75
    new-instance v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->googleAppIdJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 76
    new-instance v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->channelJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 77
    new-instance v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->genreJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 78
    new-instance v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->epgJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 79
    new-instance v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->favoriteChannelJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 80
    new-instance v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->programInfoJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    .line 81
    new-instance v0, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->catchupEpgJson:Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static askPermissions(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "location",
            "name"
        }
    .end annotation

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.magoware.action.ASK_STORAGE_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "location"

    .line 301
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "name"

    .line 302
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static downloadApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "mUrl",
            "name"
        }
    .end annotation

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 217
    invoke-static {p0, p1, p2}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->downloadUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/Download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :goto_0
    new-instance v7, Lcom/magoware/magoware/webtv/network/InputStreamVolleyRequest;

    const/4 v2, 0x0

    new-instance v4, Lcom/magoware/magoware/webtv/network/-$$Lambda$MakeWebRequests$OPPR0cssVsuU5cl1dn43DeyvUjU;

    invoke-direct {v4, v0, p2, p0}, Lcom/magoware/magoware/webtv/network/-$$Lambda$MakeWebRequests$OPPR0cssVsuU5cl1dn43DeyvUjU;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sget-object v5, Lcom/magoware/magoware/webtv/network/-$$Lambda$pzQB0PzWML8y9hmEvRZLjbKiTcQ;->INSTANCE:Lcom/magoware/magoware/webtv/network/-$$Lambda$pzQB0PzWML8y9hmEvRZLjbKiTcQ;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/magoware/magoware/webtv/network/InputStreamVolleyRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/HashMap;)V

    .line 238
    invoke-static {}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->getInstance()Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/magoware/magoware/webtv/network/RequestQueueSingleton;->addToRequestQueue(Lcom/android/volley/Request;)V

    return-void
.end method

.method public static downloadManagerAPK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "apkUrl",
            "apkName"
        }
    .end annotation

    .line 199
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 200
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-direct {v0, p0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 p0, 0x3

    .line 201
    invoke-virtual {v0, p0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    const/4 p0, 0x0

    .line 202
    invoke-virtual {v0, p0}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 203
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v1

    const v2, 0x7f14006f

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/MagowareApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 204
    invoke-virtual {v0, p0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    const-string p0, "Software Update"

    .line 205
    invoke-virtual {v0, p0}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 206
    sget-object p0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 207
    invoke-virtual {v0}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 208
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/MagowareApplication;->getAndroidDownloadManager()Landroid/app/DownloadManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    return-void
.end method

.method public static downloadUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "location",
            "name"
        }
    .end annotation

    .line 286
    invoke-static {p0}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {p1, p2}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->downloadManagerAPK(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->askPermissions(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getPermanentFile(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "replace",
            "context"
        }
    .end annotation

    const-string p1, " "

    const-string v0, "%20"

    .line 89
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2f

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-static {p0, p2, p1}, Lcom/androidnetworking/AndroidNetworking;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p0

    const-string p1, "downloadImageFromUrl"

    .line 96
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p0

    sget-object p1, Lcom/androidnetworking/common/Priority;->HIGH:Lcom/androidnetworking/common/Priority;

    .line 97
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object p0

    sget-object p1, Lcom/magoware/magoware/webtv/network/-$$Lambda$MakeWebRequests$reWdvuAPFOEemuKtjMYCoyj2WNg;->INSTANCE:Lcom/magoware/magoware/webtv/network/-$$Lambda$MakeWebRequests$reWdvuAPFOEemuKtjMYCoyj2WNg;

    .line 99
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest;->setDownloadProgressListener(Lcom/androidnetworking/interfaces/DownloadProgressListener;)Lcom/androidnetworking/common/ANRequest;

    move-result-object p0

    new-instance p1, Lcom/magoware/magoware/webtv/network/MakeWebRequests$1;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/network/MakeWebRequests$1;-><init>()V

    .line 102
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest;->startDownload(Lcom/androidnetworking/interfaces/DownloadListener;)V

    :cond_0
    return-void
.end method

.method public static getPermanentFile1(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "replace",
            "context"
        }
    .end annotation

    const-string p1, " "

    const-string v0, "%20"

    .line 119
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2f

    .line 120
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-static {p0, p2, p1}, Lcom/androidnetworking/AndroidNetworking;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p0

    const-string p1, "downloadImageFromUrl"

    .line 126
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->setTag(Ljava/lang/Object;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p0

    sget-object p1, Lcom/androidnetworking/common/Priority;->HIGH:Lcom/androidnetworking/common/Priority;

    .line 127
    invoke-virtual {p0, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->setPriority(Lcom/androidnetworking/common/Priority;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const p2, 0x15180

    .line 128
    invoke-virtual {p0, p2, p1}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->setMaxAgeCacheControl(ILjava/util/concurrent/TimeUnit;)Lcom/androidnetworking/common/ANRequest$DownloadBuilder;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest$DownloadBuilder;->build()Lcom/androidnetworking/common/ANRequest;

    move-result-object p0

    .line 130
    invoke-virtual {p0}, Lcom/androidnetworking/common/ANRequest;->executeForDownload()Lcom/androidnetworking/common/ANResponse;

    return-void
.end method

.method public static getUpgradeDetails(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/network/mvvm/RetrofitHelper;->apiService(I)Lcom/magoware/magoware/webtv/network/mvvm/MagoService;

    move-result-object v0

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/network/mvvm/MagoService;->getUpgrade()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/network/MakeWebRequests$2;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/network/MakeWebRequests$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public static hasStoragePermission(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 294
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 295
    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static varargs httpRequestParameters([Ljava/lang/Long;)Ljava/util/HashMap;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenTimestamp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, ""

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v0, :cond_0

    .line 135
    array-length v4, v0

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .line 136
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 138
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 143
    :try_start_0
    invoke-static {}, Lcom/magoware/magoware/webtv/global/Global;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    .line 145
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v5, v1

    .line 148
    :goto_0
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v6, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v6, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->PASSWORD_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v6

    sget-object v7, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTED_LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-static {v0, v6}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v1

    .line 153
    :goto_1
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v7, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v7, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->USERNAME_ENCRYPTED:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v7

    sget-object v8, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTED_LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 154
    invoke-static {v0, v7}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v1

    .line 159
    :goto_2
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v8, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->isSet(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, ";mac_address="

    const-string v9, ";timestamp="

    const-string v10, ";appid="

    const-string v11, ";boxid="

    const-string v12, ";password="

    const-string v13, "username="

    if-eqz v0, :cond_3

    .line 161
    :try_start_2
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v14, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v0, v14, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v14

    sget-object v15, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->ENCRYPTED_LOCAL_ENCRYPTION_KEY:Ljava/lang/String;

    invoke-virtual {v14, v15, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 161
    invoke-static {v0, v14}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 p0, v5

    :try_start_3
    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->BOXID:Ljava/lang/String;

    invoke-virtual {v15, v5, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-static {v5, v0}, Lcom/magoware/magoware/webtv/encryption/Encryption;->Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 p0, v5

    .line 167
    :goto_3
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v6

    sget-object v7, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->BOXID:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_4

    :cond_3
    move-object/from16 p0, v5

    .line 173
    invoke-static {}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getInstance()Lcom/magoware/magoware/webtv/util/PrefsHelper;

    move-result-object v0

    sget-object v5, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->BOXID:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcom/magoware/magoware/webtv/util/PrefsHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_4
    sget-object v2, Lcom/magoware/magoware/webtv/util/MagowareCacheKey;->COMPANY_ID:Ljava/lang/String;

    sget v3, Lcom/magoware/magoware/webtv/global/Global;->COMPANY_ID:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "auth"

    .line 177
    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "macaddress"

    .line 178
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appid"

    .line 179
    sget-object v2, Lcom/magoware/magoware/webtv/util/Utils;->AppID:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appversion"

    move-object/from16 v2, p0

    .line 180
    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "api_version"

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "language"

    .line 182
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ntype"

    .line 183
    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getNetType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os"

    .line 184
    sget-object v1, Lcom/magoware/magoware/webtv/global/Global;->operating_system:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "screensize"

    .line 185
    sget-object v1, Lcom/magoware/magoware/webtv/global/Global;->screensize:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "devicebrand"

    .line 186
    sget-object v1, Lcom/magoware/magoware/webtv/global/Global;->devicebrand:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "firmwareversion"

    .line 187
    sget-object v1, Lcom/magoware/magoware/webtv/global/Global;->firmware_version:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hdmi"

    .line 188
    sget-boolean v1, Lcom/magoware/magoware/webtv/global/Global;->hdmi:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device_timezone"

    .line 189
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->getTimezone()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_name"

    .line 190
    sget-object v1, Lcom/magoware/magoware/webtv/global/Global;->applicationName:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 193
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-object v4
.end method

.method public static installApk(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uri"
        }
    .end annotation

    const-string v0, "com.magoware.blingtv.stb"

    .line 250
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 251
    invoke-static {}, Lcom/magoware/magoware/webtv/MagowareApplication;->get()Lcom/magoware/magoware/webtv/MagowareApplication;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "com.magoware.blingtv.stb.provider"

    invoke-static {v1, p1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 253
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "application/vnd.android.package-archive"

    .line 254
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 255
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 256
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static installApk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "name"
        }
    .end annotation

    const-string v0, "com.magoware.blingtv.stb"

    .line 242
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 243
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 244
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 245
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$downloadApk$1(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;[B)V
    .locals 3

    const-string v0, "/"

    if-eqz p3, :cond_0

    .line 228
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 230
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    const-string p3, "Download complete."

    const/4 v1, 0x1

    .line 231
    invoke-static {p2, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 232
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/magoware/magoware/webtv/network/MakeWebRequests;->installApk(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$getPermanentFile$0(JJ)V
    .locals 0

    return-void
.end method
