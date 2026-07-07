.class public Lcom/inka/ncg2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inka/ncg2/Ncg2LocalWebServer;


# static fields
.field private static a:Ljava/lang/String; = "Ncg2LocalWebServer"


# instance fields
.field private b:Lcom/inka/ncg/jni/NcgCoreWrapper;

.field private c:Lcom/inka/ncg2/i;

.field private d:Landroid/content/Context;

.field private e:Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/inka/ncg/jni/NcgCoreWrapper;Landroid/content/Context;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/inka/ncg2/i;->a()Lcom/inka/ncg2/i;

    move-result-object v0

    iput-object v0, p0, Lcom/inka/ncg2/l;->c:Lcom/inka/ncg2/i;

    .line 29
    new-instance v0, Lcom/inka/ncg2/l$1;

    invoke-direct {v0, p0}, Lcom/inka/ncg2/l$1;-><init>(Lcom/inka/ncg2/l;)V

    iput-object v0, p0, Lcom/inka/ncg2/l;->h:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;

    .line 105
    iput-object p1, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    .line 106
    iput-object p2, p0, Lcom/inka/ncg2/l;->d:Landroid/content/Context;

    .line 107
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/inka/ncg2/l;->g:Landroid/os/Handler;

    .line 108
    iget-object p1, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    iget-object p2, p0, Lcom/inka/ncg2/l;->h:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;

    invoke-virtual {p1, p2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->HTTP_SetOnNcgLocalWebServerListener(Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;)V

    .line 109
    iget-object p1, p0, Lcom/inka/ncg2/l;->h:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;

    invoke-static {p1}, Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;->setOnNcgLocalWebServerListener(Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/inka/ncg2/l;->c:Lcom/inka/ncg2/i;

    invoke-virtual {v0, p1}, Lcom/inka/ncg2/i;->getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    move-result-object p1

    .line 357
    iget-object v0, p1, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->contentID:Ljava/lang/String;

    iget-object p1, p1, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->siteID:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/inka/ncg2/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/inka/ncg2/l;->c:Lcom/inka/ncg2/i;

    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg2/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 363
    invoke-static {}, Lcom/inka/ncg2/g;->a()Lcom/inka/ncg2/g;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/inka/ncg2/g;->a(Z)V

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {}, Lcom/inka/ncg2/g;->a()Lcom/inka/ncg2/g;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/inka/ncg2/g;->a(Z)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/inka/ncg2/l;->c:Lcom/inka/ncg2/i;

    invoke-virtual {v0, p2, p3}, Lcom/inka/ncg2/i;->checkLicenseValidByCID(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    move-result-object p2

    goto :goto_1

    .line 245
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/inka/ncg2/l;->c:Lcom/inka/ncg2/i;

    invoke-virtual {p2, p1}, Lcom/inka/ncg2/i;->checkLicenseValid(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    move-result-object p2

    .line 249
    :goto_1
    sget-object p3, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ValidLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    if-eq p2, p3, :cond_2

    .line 250
    iget-object p3, p0, Lcom/inka/ncg2/l;->c:Lcom/inka/ncg2/i;

    invoke-virtual {p3, p1}, Lcom/inka/ncg2/i;->getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;

    move-result-object p3

    .line 251
    sget-object v0, Lcom/inka/ncg2/l$2;->a:[I

    invoke-virtual {p2}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Invalid License : "

    packed-switch v0, :pswitch_data_0

    .line 284
    new-instance v6, Lcom/inka/ncg2/Ncg2InvalidLicenseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p2}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v3, p3, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->contentID:Ljava/lang/String;

    .line 288
    invoke-virtual {p2}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->name()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/inka/ncg2/Ncg2InvalidLicenseException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 281
    :pswitch_0
    new-instance p1, Lcom/inka/ncg2/Ncg2DetectedScreenRecorder;

    invoke-direct {p1}, Lcom/inka/ncg2/Ncg2DetectedScreenRecorder;-><init>()V

    throw p1

    .line 278
    :pswitch_1
    new-instance p1, Lcom/inka/ncg2/Ncg2NotAuthorizedAppID;

    invoke-direct {p1}, Lcom/inka/ncg2/Ncg2NotAuthorizedAppID;-><init>()V

    throw p1

    .line 275
    :pswitch_2
    new-instance p1, Lcom/inka/ncg2/Ncg2DetectedExternalDisplayException;

    invoke-direct {p1}, Lcom/inka/ncg2/Ncg2DetectedExternalDisplayException;-><init>()V

    throw p1

    .line 272
    :pswitch_3
    new-instance p1, Lcom/inka/ncg2/Ncg2DeviceTimeIsNotSyncedByOnline;

    invoke-direct {p1}, Lcom/inka/ncg2/Ncg2DeviceTimeIsNotSyncedByOnline;-><init>()V

    throw p1

    .line 269
    :pswitch_4
    new-instance p1, Lcom/inka/ncg2/Ncg2DetectedRootingDeviceException;

    invoke-direct {p1}, Lcom/inka/ncg2/Ncg2DetectedRootingDeviceException;-><init>()V

    throw p1

    .line 262
    :pswitch_5
    new-instance v6, Lcom/inka/ncg2/Ncg2InvalidLicenseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p2}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v3, p3, Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;->contentID:Ljava/lang/String;

    .line 266
    invoke-virtual {p2}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->name()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/inka/ncg2/Ncg2InvalidLicenseException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 256
    :pswitch_6
    new-instance p1, Lcom/inka/ncg2/m;

    invoke-direct {p1}, Lcom/inka/ncg2/m;-><init>()V

    throw p1

    .line 253
    :pswitch_7
    new-instance p1, Lcom/inka/ncg2/j;

    invoke-direct {p1}, Lcom/inka/ncg2/j;-><init>()V

    throw p1

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/inka/ncg2/l;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/inka/ncg2/l;->f:Z

    return p0
.end method

.method static synthetic a(Lcom/inka/ncg2/l;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/inka/ncg2/l;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/inka/ncg2/l;)Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/inka/ncg2/l;->e:Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;

    return-object p0
.end method

.method static synthetic c(Lcom/inka/ncg2/l;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/inka/ncg2/l;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/inka/ncg2/l;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/inka/ncg2/l;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/inka/ncg2/l;)Lcom/inka/ncg2/i;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/inka/ncg2/l;->c:Lcom/inka/ncg2/i;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x2362

    add-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    :goto_0
    if-lez v2, :cond_1

    .line 311
    iget-object v3, p0, Lcom/inka/ncg2/l;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 312
    iget-object v4, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/inka/ncg/jni/NcgCoreWrapper;->HTTP_Start(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 318
    :cond_0
    sget-object v0, Lcom/inka/ncg2/l;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP started on ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], port:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->HTTP_GetPort()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v3, :cond_2

    return-void

    .line 323
    :cond_2
    sget-object v0, Lcom/inka/ncg2/l;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NCG_HTTP_Start() ErrorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start HTTP Web Server.\nErrorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/inka/ncg2/l;->h:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0, p1, p2}, Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;->onNotification(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public addHttpLiveStreamUrlForPlayback(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/inka/ncg2/l;->addHttpLiveStreamUrlForPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addHttpLiveStreamUrlForPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/inka/ncg2/l;->addHttpLiveStreamUrlForPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addHttpLiveStreamUrlForPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 p3, 0x0

    .line 129
    iput-boolean p3, p0, Lcom/inka/ncg2/l;->f:Z

    if-eqz p2, :cond_0

    .line 131
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    .line 132
    :cond_0
    new-instance p2, Lcom/inka/ncg2/M3U8KeyFileExtractor;

    invoke-direct {p2}, Lcom/inka/ncg2/M3U8KeyFileExtractor;-><init>()V

    .line 134
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->doExtract(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    invoke-virtual {p2}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->isNcgContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p2}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->getCID()Ljava/lang/String;

    move-result-object p3

    .line 142
    invoke-virtual {p2}, Lcom/inka/ncg2/M3U8KeyFileExtractor;->getSiteID()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Lcom/inka/ncg2/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/inka/ncg2/i;->a()Lcom/inka/ncg2/i;

    move-result-object p2

    iget-boolean p2, p2, Lcom/inka/ncg2/i;->a:Z

    invoke-static {p2}, Lcom/inka/ncg2/ScreenRecorderDetector;->enableScreenRecorderDetecting(Z)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {}, Lcom/inka/ncg2/g;->a()Lcom/inka/ncg2/g;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/inka/ncg2/g;->a(Z)V

    .line 147
    invoke-static {p3}, Lcom/inka/ncg2/ScreenRecorderDetector;->enableScreenRecorderDetecting(Z)V

    .line 151
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p2, p1, p4}, Lcom/inka/ncg/jni/NcgCoreWrapper;->HTTP_AddHttpLiveStreamUrlForPlayback(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    .line 153
    :cond_3
    new-instance p1, Lcom/inka/ncg2/Ncg2Exception;

    iget-object p2, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    new-instance p2, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {p2, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public addHttpLiveStreamUrlForPlayback(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const-string v0, ""

    .line 119
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/inka/ncg2/l;->addHttpLiveStreamUrlForPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addHttpLiveStreamUrlForPlaybackWithoutChecking(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->HTTP_AddHttpLiveStreamUrlForPlayback(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 163
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastErrorMsg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1001"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 165
    new-instance v1, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-direct {v1, p1, v0, v2}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 168
    :cond_2
    new-instance p1, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {p1, v0}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLocalFilePathForPlayback(Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p2

    .line 208
    invoke-virtual/range {v0 .. v6}, Lcom/inka/ncg2/l;->addLocalFilePathForPlaybackByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addLocalFilePathForPlayback(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-wide v5, p3

    .line 218
    invoke-virtual/range {v0 .. v6}, Lcom/inka/ncg2/l;->addLocalFilePathForPlaybackByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addLocalFilePathForPlaybackByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    .line 213
    invoke-virtual/range {v0 .. v6}, Lcom/inka/ncg2/l;->addLocalFilePathForPlaybackByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addLocalFilePathForPlaybackByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/inka/ncg2/l;->f:Z

    .line 224
    iget-object v1, p0, Lcom/inka/ncg2/l;->c:Lcom/inka/ncg2/i;

    invoke-virtual {v1, p1}, Lcom/inka/ncg2/i;->isNcgContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-direct {p0, p1}, Lcom/inka/ncg2/l;->a(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/inka/ncg2/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/inka/ncg2/i;->a()Lcom/inka/ncg2/i;

    move-result-object v0

    iget-boolean v0, v0, Lcom/inka/ncg2/i;->a:Z

    invoke-static {v0}, Lcom/inka/ncg2/ScreenRecorderDetector;->enableScreenRecorderDetecting(Z)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {}, Lcom/inka/ncg2/g;->a()Lcom/inka/ncg2/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inka/ncg2/g;->a(Z)V

    .line 231
    invoke-static {v0}, Lcom/inka/ncg2/ScreenRecorderDetector;->enableScreenRecorderDetecting(Z)V

    .line 234
    :goto_0
    iget-object v2, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/inka/ncg/jni/NcgCoreWrapper;->HTTP_AddLocalContentPathForPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 236
    :cond_1
    new-instance p1, Lcom/inka/ncg2/Ncg2Exception;

    iget-object p2, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addProgressiveDownloadUrlForPlayback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, p1, v0, v0}, Lcom/inka/ncg2/l;->addProgressiveDownloadUrlForPlaybackByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addProgressiveDownloadUrlForPlaybackByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/inka/ncg2/l;->f:Z

    .line 183
    iget-object v1, p0, Lcom/inka/ncg2/l;->c:Lcom/inka/ncg2/i;

    invoke-virtual {v1, p1}, Lcom/inka/ncg2/i;->isNcgContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-direct {p0, p1}, Lcom/inka/ncg2/l;->a(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/inka/ncg2/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/inka/ncg2/i;->a()Lcom/inka/ncg2/i;

    move-result-object v0

    iget-boolean v0, v0, Lcom/inka/ncg2/i;->a:Z

    invoke-static {v0}, Lcom/inka/ncg2/ScreenRecorderDetector;->enableScreenRecorderDetecting(Z)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {}, Lcom/inka/ncg2/g;->a()Lcom/inka/ncg2/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inka/ncg2/g;->a(Z)V

    .line 189
    invoke-static {v0}, Lcom/inka/ncg2/ScreenRecorderDetector;->enableScreenRecorderDetecting(Z)V

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inka/ncg/jni/NcgCoreWrapper;->HTTP_AddProgressiveDownloadUrlForPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 193
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    return-object p2

    .line 194
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {p2}, Lcom/inka/ncg/jni/NcgCoreWrapper;->getLastErrorMsg()Ljava/lang/String;

    move-result-object p2

    const-string p3, "1001"

    .line 195
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_3

    .line 196
    new-instance p3, Lcom/inka/ncg2/Ncg2HttpException;

    invoke-direct {p3, p1, p2, v0}, Lcom/inka/ncg2/Ncg2HttpException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p3

    .line 199
    :cond_3
    new-instance p1, Lcom/inka/ncg2/Ncg2Exception;

    invoke-direct {p1, p2}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->HTTP_Stop()V

    return-void
.end method

.method public clearPlaybackUrls()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0}, Lcom/inka/ncg/jni/NcgCoreWrapper;->HTTP_ClearPlaybackUrls()V

    return-void
.end method

.method public isHdmiDetecting()Z
    .locals 1

    .line 379
    invoke-static {}, Lcom/inka/ncg2/g;->a()Lcom/inka/ncg2/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inka/ncg2/g;->c()Z

    move-result v0

    return v0
.end method

.method public setCookieChecking(Z)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0, p1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->HTTP_SetCookieChecking(Z)V

    return-void
.end method

.method public setCustomCookie(Ljava/lang/String;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0, p1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->setCustomCookie(Ljava/lang/String;)V

    return-void
.end method

.method public setEnableMultipleConnectDetection(Z)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0, p1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->HTTP_SetMultipleConnectionDeny(Z)V

    return-void
.end method

.method public setEnableUserAgentChecking(Z)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/inka/ncg2/l;->b:Lcom/inka/ncg/jni/NcgCoreWrapper;

    invoke-virtual {v0, p1}, Lcom/inka/ncg/jni/NcgCoreWrapper;->HTTP_SetUserAgentChecking(Z)V

    return-void
.end method

.method public setWebServerListener(Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;)V
    .locals 1

    .line 300
    iput-object p1, p0, Lcom/inka/ncg2/l;->e:Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;

    .line 302
    invoke-static {}, Lcom/inka/ncg2/g;->a()Lcom/inka/ncg2/g;

    move-result-object p1

    iget-object v0, p0, Lcom/inka/ncg2/l;->h:Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;

    invoke-virtual {p1, v0}, Lcom/inka/ncg2/g;->a(Lcom/inka/ncg/jni/OnNcgLocalWebServerListener;)V

    return-void
.end method
