.class public Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;
.super Ljava/lang/Object;
.source "Ncg2SdkWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;,
        Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$UpdateSecureTimeTask;,
        Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHttpRequestCallback:Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;

.field private mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

.field private mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

.field private mWebserverListener:Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$1;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mWebserverListener:Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;

    .line 75
    invoke-static {}, Lcom/inka/ncg2/Ncg2SdkFactory;->getNcgAgentInstance()Lcom/inka/ncg2/Ncg2Agent;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)Lcom/inka/ncg2/Ncg2Agent;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    return-object p0
.end method

.method private checkLicenseAndNotifyIfInvalid(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    invoke-virtual {v0, p1}, Lcom/inka/ncg2/Ncg2Agent;->checkLicenseValid(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    move-result-object v0

    .line 284
    sget-object v1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ValidLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    invoke-interface {v1, p1, v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onInvalidNcgLicense(Ljava/lang/String;Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;)V

    const/4 p1, 0x0

    return p1
.end method

.method private decreasePlayCountAndDisplayMsg(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    invoke-virtual {v0, p1}, Lcom/inka/ncg2/Ncg2Agent;->isNcgContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    invoke-virtual {v0, p1}, Lcom/inka/ncg2/Ncg2Agent;->getLicenseInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;

    move-result-object v0

    .line 271
    iget v1, v0, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->playTotalCount:I

    if-gtz v1, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    invoke-virtual {v1, p1}, Lcom/inka/ncg2/Ncg2Agent;->decreasePlayCount(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapper$UPc1dMuOJBo-PnQQ00e5wSWgCJ0;

    invoke-direct {v1, p0, v0}, Lcom/magoware/magoware/webtv/pallycon/-$$Lambda$Ncg2SdkWrapper$UPc1dMuOJBo-PnQQ00e5wSWgCJ0;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;
    .locals 1

    .line 68
    sget-object v0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mInstance:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    invoke-direct {v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mInstance:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    .line 71
    :cond_0
    sget-object v0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mInstance:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;

    return-object v0
.end method


# virtual methods
.method public acquireLicense(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "contentPath",
            "userID",
            "orderID"
        }
    .end annotation

    .line 317
    new-instance v6, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v6, p1, p2}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$AcquireLicenseTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ncgFilePath"
        }
    .end annotation

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    invoke-virtual {v0, p1}, Lcom/inka/ncg2/Ncg2Agent;->getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    move-result-object p1
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 196
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->printStackTrace()V

    .line 197
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHeaderInfo() : Ncg2Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 193
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2HttpException;->printStackTrace()V

    .line 194
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHeaderInfo() : Ncg2HttpException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLicenseInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ncgFilePath"
        }
    .end annotation

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    invoke-virtual {v0, p1}, Lcom/inka/ncg2/Ncg2Agent;->getLicenseInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;

    move-result-object p1
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->printStackTrace()V

    .line 210
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLicenseInfo() : Ncg2Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 206
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2HttpException;->printStackTrace()V

    .line 207
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLicenseInfo() : Ncg2HttpException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNcgAgent()Lcom/inka/ncg2/Ncg2Agent;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    return-object v0
.end method

.method public getPlaybackUrl(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "contentPath",
            "remotePath",
            "fileSize"
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    invoke-virtual {v1, p1}, Lcom/inka/ncg2/Ncg2Agent;->isNcgContent(Ljava/lang/String;)Z

    move-result v1

    .line 220
    iget-object v2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    invoke-virtual {v2}, Lcom/inka/ncg2/Ncg2Agent;->getLocalWebServer()Lcom/inka/ncg2/Ncg2LocalWebServer;

    move-result-object v2
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "http://"

    if-nez v1, :cond_2

    .line 226
    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v1, p3, v3

    if-eqz v1, :cond_6

    .line 231
    :cond_1
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/inka/ncg2/Ncg2LocalWebServer;->addLocalFilePathForPlayback(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 241
    :cond_2
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->checkLicenseAndNotifyIfInvalid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    const-string v1, ".m3u8"

    .line 244
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    invoke-interface {v2, p1}, Lcom/inka/ncg2/Ncg2LocalWebServer;->addHttpLiveStreamUrlForPlayback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 247
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 249
    invoke-interface {v2, p1}, Lcom/inka/ncg2/Ncg2LocalWebServer;->addProgressiveDownloadUrlForPlayback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 252
    :cond_5
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/inka/ncg2/Ncg2LocalWebServer;->addLocalFilePathForPlayback(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    .line 255
    :goto_0
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->decreasePlayCountAndDisplayMsg(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, p2

    :cond_6
    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->printStackTrace()V

    .line 262
    iget-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getPlaybackUrl() Exception : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 85
    iput-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    .line 86
    iput-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mContext:Landroid/content/Context;

    .line 87
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance p2, Lcom/magoware/magoware/webtv/pallycon/NcgHttpRequestCallbackImpl;

    invoke-direct {p2, p1}, Lcom/magoware/magoware/webtv/pallycon/NcgHttpRequestCallbackImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mHttpRequestCallback:Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;

    .line 89
    sget-object p2, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->OfflineSupport:Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p2, v0}, Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;->setCountOfExecutionLimit(I)V

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    invoke-virtual {v1, p1, p2}, Lcom/inka/ncg2/Ncg2Agent;->init(Landroid/content/Context;Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;)V

    .line 93
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    iget-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mHttpRequestCallback:Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;

    invoke-virtual {p1, p2}, Lcom/inka/ncg2/Ncg2Agent;->setHttpRequestCallback(Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;)V

    .line 94
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Agent;->enableLog()V
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2FatalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/inka/ncg2/Ncg2ReadPhoneStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->printStackTrace()V

    .line 108
    iget-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    return v0

    :catch_1
    move-exception p1

    .line 102
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2ReadPhoneStateException;->printStackTrace()V

    .line 103
    iget-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    invoke-interface {p2, p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onSecurityError(Ljava/lang/Exception;)V

    return v0

    :catch_2
    move-exception p1

    .line 97
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2FatalException;->printStackTrace()V

    .line 98
    iget-object p2, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    invoke-interface {p2, p1}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onAppFinishedError(Ljava/lang/Exception;)V

    return v0
.end method

.method public isNcgContent(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, "isNcgContent() : Ncg2HttpException : "

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    invoke-virtual {v1, p1}, Lcom/inka/ncg2/Ncg2Agent;->isNcgContent(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->printStackTrace()V

    .line 182
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 178
    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2HttpException;->printStackTrace()V

    .line 179
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/inka/ncg2/Ncg2HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$decreasePlayCountAndDisplayMsg$0$Ncg2SdkWrapper(Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;)V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayCount Decreases. remain playcount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;->playRemainCount:I

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    invoke-virtual {v0}, Lcom/inka/ncg2/Ncg2Agent;->release()V

    return-void
.end method

.method public unpackNcg2File(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ncgFilePath",
            "unpackFilePath"
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 122
    iget-object v1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mNcg2Agent:Lcom/inka/ncg2/Ncg2Agent;

    invoke-virtual {v1}, Lcom/inka/ncg2/Ncg2Agent;->createNcgFile()Lcom/inka/ncg2/Ncg2Agent$NcgFile;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 124
    :try_start_0
    invoke-interface {v1, p1}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->open(Ljava/lang/String;)V

    .line 125
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;->End:Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v4, v5, p1}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->seek(JLcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;)V

    .line 128
    invoke-interface {v1}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->getCurrentFilePointer()J

    move-result-wide v6

    .line 129
    sget-object p1, Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;->Begin:Lcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;

    invoke-interface {v1, v4, v5, p1}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->seek(JLcom/inka/ncg2/Ncg2Agent$NcgFile$SeekMethod;)V

    .line 132
    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v8, v4

    :goto_0
    const-wide/16 v10, 0x400

    .line 135
    :try_start_1
    invoke-interface {v1, v0, v10, v11}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->read([BJ)J

    move-result-wide v10
    :try_end_1
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p2, v10, v4

    if-gtz p2, :cond_3

    cmp-long p2, v8, v6

    if-nez p2, :cond_1

    const/4 p2, 0x1

    if-eqz v1, :cond_0

    .line 161
    :try_start_2
    invoke-interface {v1}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->close()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 164
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 167
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return p2

    :cond_1
    if-eqz v1, :cond_2

    .line 161
    :try_start_3
    invoke-interface {v1}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->close()V

    .line 164
    :cond_2
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_9

    :cond_3
    long-to-int p2, v10

    .line 139
    :try_start_4
    invoke-virtual {p1, v0, v2, p2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Lcom/inka/ncg2/Ncg2Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-long/2addr v8, v10

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v3, p1

    goto/16 :goto_a

    :catch_1
    move-exception p2

    move-object v3, p1

    goto :goto_4

    :catch_2
    move-exception p2

    move-object v3, p1

    goto :goto_5

    :catch_3
    move-exception p2

    move-object v3, p1

    goto :goto_6

    :catchall_1
    move-exception p2

    goto/16 :goto_a

    :catch_4
    move-exception p2

    .line 155
    :goto_4
    :try_start_5
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 156
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unpackNcg2File() IOException : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_4

    .line 161
    :try_start_6
    invoke-interface {v1}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->close()V

    :cond_4
    if-eqz v3, :cond_7

    .line 164
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_9

    :catch_5
    move-exception p2

    .line 151
    :goto_5
    :try_start_7
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 152
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unpackNcg2File() FileNotFoundException : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_5

    .line 161
    :try_start_8
    invoke-interface {v1}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->close()V

    :cond_5
    if-eqz v3, :cond_7

    .line 164
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_6
    move-exception p2

    .line 147
    :goto_6
    :try_start_9
    invoke-virtual {p2}, Lcom/inka/ncg2/Ncg2Exception;->printStackTrace()V

    .line 148
    iget-object p1, p0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;->mListener:Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unpackNcg2File() Ncg2Exception : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/inka/ncg2/Ncg2Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;->onError(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_6

    .line 161
    :try_start_a
    invoke-interface {v1}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->close()V

    goto :goto_7

    :catch_7
    move-exception p1

    goto :goto_8

    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    .line 164
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_9

    .line 167
    :goto_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_9
    return v2

    :goto_a
    if-eqz v1, :cond_8

    .line 161
    :try_start_b
    invoke-interface {v1}, Lcom/inka/ncg2/Ncg2Agent$NcgFile;->close()V

    goto :goto_b

    :catch_8
    move-exception p1

    goto :goto_c

    :cond_8
    :goto_b
    if-eqz v3, :cond_9

    .line 164
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_d

    .line 167
    :goto_c
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    :cond_9
    :goto_d
    throw p2
.end method

.method public updateSecureTime()V
    .locals 3

    .line 322
    new-instance v0, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$UpdateSecureTimeTask;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$UpdateSecureTimeTask;-><init>(Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;)V

    .line 323
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$UpdateSecureTimeTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
