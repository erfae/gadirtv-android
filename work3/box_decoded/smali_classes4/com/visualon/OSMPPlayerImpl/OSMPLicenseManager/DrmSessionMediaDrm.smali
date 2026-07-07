.class public Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;
.super Ljava/lang/Object;
.source "DrmSessionMediaDrm.java"

# interfaces
.implements Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmKeyStatusChangeListener;,
        Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmEventListener;
    }
.end annotation


# static fields
.field private static final CHK_BYTES:[B

.field private static final MDTAG:Ljava/lang/String; = "@@@LicMgrMediaDrm"

.field private static final OFFLINEKEY:Ljava/lang/String; = "INFO"

.field private static final PREFKEY:Ljava/lang/String; = "com.vo.apry.info"

.field private static final WV_MEDIA_MIME:Ljava/lang/String; = "video/mp4"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurntKid:Ljava/lang/String;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mEnablePersistentKey:Z

.field private mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

.field private mMediaDrm:Landroid/media/MediaDrm;

.field private mMediaDrmOpenCount:S

.field private mMediaDrmSessionID:[B

.field private mMediaDrmUuid:Ljava/util/UUID;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mUserAbort:Z

.field private mWidevinePSSH:Ljava/lang/String;

.field private optionalParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 71
    fill-array-data v0, :array_0

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->CHK_BYTES:[B

    return-void

    :array_0
    .array-data 1
        0xdt
        0xet
        0xat
        0xdt
        0xct
        0xat
        0xft
        0xet
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    .line 78
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    .line 80
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mSharedPref:Landroid/content/SharedPreferences;

    .line 81
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEditor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mUserAbort:Z

    .line 84
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    .line 85
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEnablePersistentKey:Z

    .line 88
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mContext:Landroid/content/Context;

    const-string v0, "com.vo.apry.info"

    .line 89
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mSharedPref:Landroid/content/SharedPreferences;

    .line 90
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method static synthetic access$200(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;)Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    return-object p0
.end method

.method private checkValid([B)[B
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 408
    array-length v1, p1

    sget-object v2, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->CHK_BYTES:[B

    array-length v3, v2

    if-gt v1, v3, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    array-length v1, v2

    new-array v1, v1, [B

    .line 413
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 418
    :cond_1
    array-length v0, p1

    array-length v1, v2

    sub-int/2addr v0, v1

    .line 419
    new-array v1, v0, [B

    .line 420
    array-length v2, v2

    invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private doProvision()V
    .locals 7

    .line 141
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&signedRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 156
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    :goto_0
    const-string v3, "POST"

    .line 165
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x1

    .line 167
    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 168
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 169
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 171
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v4, v3, [B

    .line 178
    :goto_2
    :try_start_2
    invoke-virtual {v0, v4, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 179
    invoke-virtual {v1, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 184
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 187
    :try_start_3
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1, v0}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_3
    .catch Landroid/media/DeniedByServerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 189
    invoke-virtual {v0}, Landroid/media/DeniedByServerException;->printStackTrace()V

    :goto_3
    return-void

    :catch_3
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-void
.end method

.method private getOfflineKeyFromPref(Ljava/lang/String;Z)[B
    .locals 7

    .line 345
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "@@@LicMgrMediaDrm"

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "[BEGIN] getOfflineKeyFromPref"

    .line 346
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "INFO"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v5, 0x2

    .line 350
    invoke-static {v0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 351
    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->checkValid([B)[B

    move-result-object v0

    if-nez v0, :cond_1

    return-object v4

    .line 354
    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 358
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_2

    .line 369
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 370
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 372
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->prepandChkBytes([B)[B

    move-result-object p2

    .line 374
    invoke-static {p2, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p2

    .line 375
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 376
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 380
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 382
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 383
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OFFLINE_KEY_NULL]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_5

    .line 389
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    goto :goto_1

    :catch_1
    move-exception p1

    .line 360
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 361
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[NO_OFFLINE_KEY]..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-object v4

    .line 392
    :cond_5
    :goto_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "[END] getOfflineKeyFromPref"

    .line 393
    invoke-static {v2, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-object v4
.end method

.method private getOfflineKeys()Lorg/json/JSONObject;
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "INFO"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 469
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 470
    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->checkValid([B)[B

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    .line 473
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 476
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    nop

    .line 478
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@LicMgrMediaDrm"

    const-string v3, "[WARNING] offline = null"

    .line 479
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v2
.end method

.method private initMediaDrm()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 196
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const-string v1, "@@@LicMgrMediaDrm"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "[BEGIN] initDrmMgrClientMediaDrm: "

    .line 197
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_0
    iget-short v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmOpenCount:S

    const/4 v3, 0x1

    add-int/2addr v0, v3

    int-to-short v0, v0

    iput-short v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmOpenCount:S

    if-eq v0, v3, :cond_1

    return v2

    .line 204
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "[INFO] new MediaDrm(uuid)"

    .line 205
    invoke-static {v1, v4, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_2
    new-instance v0, Landroid/media/MediaDrm;

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmUuid:Ljava/util/UUID;

    invoke-direct {v0, v4}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 208
    new-instance v4, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmEventListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmEventListener;-><init>(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$1;)V

    invoke-virtual {v0, v4}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_3

    .line 210
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    new-instance v4, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmKeyStatusChangeListener;

    invoke-direct {v4, p0, v5}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$MediaDrmKeyStatusChangeListener;-><init>(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    .line 219
    :cond_3
    iput-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mUserAbort:Z

    .line 220
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[END] initMediaDrm : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmUuid:Ljava/util/UUID;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v3
.end method

.method private prepandChkBytes([B)[B
    .locals 4

    .line 399
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->CHK_BYTES:[B

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 400
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private saveOfflineKeyToPref([BLjava/lang/String;)V
    .locals 7

    .line 425
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "@@@LicMgrMediaDrm"

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "[BEGIN] saveOfflineKeyToPref"

    .line 426
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v3, "INFO"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    if-eqz v0, :cond_1

    .line 431
    invoke-static {v0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 432
    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->checkValid([B)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 434
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 437
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 439
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    if-nez v4, :cond_2

    .line 445
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 447
    :cond_2
    invoke-static {p1, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    .line 448
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 450
    :try_start_1
    invoke-virtual {v4, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 452
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 455
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 456
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->prepandChkBytes([B)[B

    move-result-object p1

    .line 458
    invoke-static {p1, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    .line 459
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 460
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 461
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "[END] saveOfflineKeyToPref"

    .line 462
    invoke-static {v2, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private toString([B)Ljava/lang/String;
    .locals 4

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " byte[]: "

    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 605
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 606
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 608
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private uninitMediaDrm()Z
    .locals 6

    .line 253
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const-string v1, "@@@LicMgrMediaDrm"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "[BEGIN] uninitDrmMgrClientMediaDrm: "

    .line 254
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :cond_0
    iget-short v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmOpenCount:S

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    int-to-short v0, v0

    iput-short v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmOpenCount:S

    if-eqz v0, :cond_1

    return v2

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 262
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v5, "[INFO] mMediaDrm.closeSession()"

    .line 263
    invoke-static {v1, v5, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    invoke-virtual {v0, v5}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 266
    iput-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_4

    new-array v0, v2, [Ljava/lang/Object;

    const-string v5, "[INFO] mMediaDrm.release()"

    .line 270
    invoke-static {v1, v5, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 272
    iput-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    .line 274
    :cond_4
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "[END] uninitDrmMgrClientMediaDrm: "

    .line 275
    invoke-static {v1, v2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return v3
.end method


# virtual methods
.method public checkRightStatusDrmManagerClient(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public checkRightStatusMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
    .locals 5

    .line 283
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const-string v1, "@@@LicMgrMediaDrm"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "[BEGIN] checkRightStatus"

    .line 284
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_PLAYREADY_STREAM:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    const/4 v3, 0x1

    if-ne p2, v0, :cond_1

    return v3

    .line 293
    :cond_1
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_WIDEVINE:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    if-ne p2, v0, :cond_2

    .line 295
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mWidevinePSSH:Ljava/lang/String;

    goto :goto_0

    .line 301
    :cond_2
    new-instance p2, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-direct {p2, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->isRead()Z

    move-result p1

    if-nez p1, :cond_3

    return v3

    .line 305
    :cond_3
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getKID()Ljava/lang/String;

    move-result-object p1

    .line 306
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mCurntKid:Ljava/lang/String;

    .line 312
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->getOfflineKeyFromPref(Ljava/lang/String;Z)[B

    move-result-object p2

    if-nez p2, :cond_5

    .line 314
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "getOfflineKeyFromPref(): offlineKeySetId is null"

    .line 315
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v3

    :cond_5
    const/4 v0, 0x3

    if-eqz p2, :cond_8

    .line 322
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "[INFO] mMediaDrm.restoreKeys"

    new-array v4, v2, [Ljava/lang/Object;

    .line 323
    invoke-static {v1, v0, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    :cond_6
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    invoke-virtual {v0, v4, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 329
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ERROR] mMediaDrm.restoreKeys"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p2, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    :cond_7
    invoke-direct {p0, p1, v3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->getOfflineKeyFromPref(Ljava/lang/String;Z)[B

    const/4 v0, 0x2

    .line 338
    :cond_8
    :goto_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_9

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "[END] checkRightStatus"

    .line 339
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return v0
.end method

.method public closeSessionByID([B)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    :cond_1
    return-void
.end method

.method public closeSessionDrmManagerClient()V
    .locals 0

    return-void
.end method

.method public closeSessionMediaDrm()V
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    return-void

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    if-eqz v1, :cond_1

    .line 870
    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V

    const/4 v0, 0x0

    .line 871
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    :cond_1
    return-void
.end method

.method public deleteAllLicensesDrmManagerClient()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public deleteAllLicensesMediaDrm(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
    .locals 10

    .line 771
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    const-string v0, "@@@LicMgrMediaDrm"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "[BEGIN] deleteAllLicenseMediaDrm"

    .line 772
    invoke-static {v0, v2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    :cond_0
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    invoke-virtual {p1, v2}, Landroid/media/MediaDrm;->removeKeys([B)V

    .line 779
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->getOfflineKeys()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 781
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 782
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 783
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 785
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 787
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    .line 789
    :try_start_0
    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 797
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 798
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WARN] deleteAllLicensesMediaDrm : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 793
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WARN] : NotProvisionedException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 805
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 806
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 808
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "[END] deleteAllLicenseMediaDrm"

    .line 809
    invoke-static {v0, v2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v1
.end method

.method public deleteExpiredLicensesDrmManagerClient()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public deleteExpiredLicensesMediaDrm(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public deleteLicenseDrmManagerClient(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public deleteLicenseMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
    .locals 9

    .line 727
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const-string v1, "@@@LicMgrMediaDrm"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "[BEGIN] deleteLicenseMediaDrm"

    .line 728
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    invoke-virtual {v0, v3}, Landroid/media/MediaDrm;->removeKeys([B)V

    .line 738
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_WIDEVINE:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    if-ne p2, v0, :cond_1

    .line 739
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mWidevinePSSH:Ljava/lang/String;

    goto :goto_0

    .line 741
    :cond_1
    new-instance p2, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-direct {p2, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->isRead()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, -0x7d0

    return p1

    .line 746
    :cond_2
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getKID()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    .line 749
    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->getOfflineKeyFromPref(Ljava/lang/String;Z)[B

    move-result-object v4

    if-eqz v4, :cond_3

    .line 753
    :try_start_0
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 756
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 757
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ERROR] getKeyRequest : KEY_TYPE_RELEASE :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    :cond_3
    :goto_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "[END] deleteLicenseMediaDrm"

    .line 763
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return v2
.end method

.method public enablePersistentLcs(Z)V
    .locals 0

    .line 950
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEnablePersistentKey:Z

    return-void
.end method

.method public generateLicenseChallengeDrmManagerClient(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public generateLicenseChallengeMediaDrm(Ljava/lang/String;Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;Z)[B
    .locals 10

    .line 490
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const-string v1, "@@@LicMgrMediaDrm"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "[BEGIN] generateLicenseChallengeMediaDrm"

    .line 491
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 495
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "[WARNING] mMediaDrm == null"

    .line 496
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v3

    .line 503
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    .line 505
    sget-object p1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_PLAYREADY:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    const-string v0, "[ERROR] mMediaDrm.getKeyRequest : NotProvisionException"

    if-eq p3, p1, :cond_a

    sget-object p1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_PLAYREADY_STREAM:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    if-ne p3, p1, :cond_3

    goto/16 :goto_2

    .line 545
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 547
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    .line 549
    :try_start_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 550
    new-instance p3, Landroid/util/JsonReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p3, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 551
    invoke-virtual {p3}, Landroid/util/JsonReader;->beginObject()V

    .line 552
    :goto_0
    invoke-virtual {p3}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 553
    invoke-virtual {p3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    .line 554
    invoke-virtual {p3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    .line 555
    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 557
    :cond_4
    invoke-virtual {p3}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 559
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 560
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WARNING] an Exception : "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " occured when parse customData to HashMap<String, String>! "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, p3}, Lcom/visualon/OSMPUtils/voLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 565
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    const-string p3, "WVCustomData"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 571
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[INFO] mMediaDrm.getKeyRequest() : KEY_TYPE_OFFLINE: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",enablePersistentKey "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEnablePersistentKey:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " init "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->toString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    :cond_7
    iget-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEnablePersistentKey:Z

    if-eqz p1, :cond_8

    .line 575
    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    const-string v7, "video/mp4"

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1

    goto/16 :goto_4

    :cond_8
    if-eqz p4, :cond_9

    .line 580
    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    const-string v7, "video/mp4"

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1

    goto/16 :goto_4

    .line 583
    :cond_9
    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    const-string v7, "video/mp4"

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    nop

    .line 588
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_f

    new-array p1, v2, [Ljava/lang/Object;

    .line 589
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 509
    :cond_a
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 510
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    const-string p4, "PRCustomData"

    .line 511
    invoke-virtual {p1, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    :cond_b
    sget-object p1, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_PLAYREADY:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    if-ne p3, p1, :cond_d

    .line 515
    :try_start_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "[INFO] mMediaDrm.getKeyRequest() : KEY_TYPE_OFFLINE"

    new-array p2, v2, [Ljava/lang/Object;

    .line 516
    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    :cond_c
    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    const/4 v7, 0x0

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    nop

    .line 521
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_f

    new-array p1, v2, [Ljava/lang/Object;

    .line 522
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 528
    :cond_d
    :try_start_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "[INFO] mMediaDrm.getKeyRequest() : KEY_TYPE_STREAMING"

    new-array p2, v2, [Ljava/lang/Object;

    .line 529
    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    :cond_e
    iget-object v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->optionalParameters:Ljava/util/HashMap;

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1
    :try_end_3
    .catch Landroid/media/NotProvisionedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    nop

    .line 534
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_f

    new-array p1, v2, [Ljava/lang/Object;

    .line 535
    invoke-static {v1, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    :goto_3
    move-object p1, v3

    .line 595
    :goto_4
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_10

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "[END] generateLicenseChallengeMediaDrm"

    .line 596
    invoke-static {v1, p3, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    if-nez p1, :cond_11

    goto :goto_5

    .line 598
    :cond_11
    invoke-virtual {p1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v3

    :goto_5
    return-object v3
.end method

.method public getLicenseDetailsDrmManagerClient(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLicenseDetailsMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)Landroid/content/ContentValues;
    .locals 5

    .line 669
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    const-string v0, "@@@LicMgrMediaDrm"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    const-string v2, "[BEGIN] getLicenseDetailsMediaDrm"

    .line 670
    invoke-static {v0, v2, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    :cond_0
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    const/4 v2, 0x0

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz p1, :cond_4

    .line 678
    new-instance p2, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-direct {p2, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;-><init>(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->isRead()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 685
    invoke-virtual {p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getKID()Ljava/lang/String;

    move-result-object p1

    .line 686
    invoke-direct {p0, p1, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->getOfflineKeyFromPref(Ljava/lang/String;Z)[B

    move-result-object p1

    if-eqz p1, :cond_4

    .line 689
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "[INFO] mMediaDrm.restoreKeys"

    new-array v3, v1, [Ljava/lang/Object;

    .line 690
    invoke-static {v0, p2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    :cond_2
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    invoke-virtual {p2, v3, p1}, Landroid/media/MediaDrm;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 694
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 695
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERROR] mMediaDrm.restoreKeys"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-object v2

    .line 706
    :cond_4
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    invoke-virtual {p1, p2}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 713
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 714
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 715
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 718
    :cond_5
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "[RETURN] getLicenseDetailsMediaDrm"

    .line 719
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-object p2

    :catch_1
    move-exception p1

    .line 708
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 709
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERROR] mMediaDrm.queryKeyStatus: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-object v2
.end method

.method public initDrmStackDrmManagerClient()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initDrmStackMediaDrm(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "@@@LicMgrMediaDrm"

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BEGIN] initDrmStackMediaDrm : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmUuid:Ljava/util/UUID;

    .line 106
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->initMediaDrm()Z

    .line 109
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[INFO] mMediaDrm.openSession()"

    new-array v0, v1, [Ljava/lang/Object;

    .line 110
    invoke-static {v2, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/ResourceBusyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 126
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "[ERROR] mMediaDrm.openSession() : ResourceBusyException"

    .line 127
    invoke-static {v2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 114
    :catch_1
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->doProvision()V

    .line 116
    :try_start_1
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {p1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/media/ResourceBusyException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 120
    invoke-virtual {p1}, Landroid/media/ResourceBusyException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 118
    invoke-virtual {p1}, Landroid/media/NotProvisionedException;->printStackTrace()V

    .line 122
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "[ERROR] mMediaDrm.openSession() : NotProvisionedException"

    .line 123
    invoke-static {v2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    if-nez p1, :cond_3

    return-object p1

    .line 134
    :cond_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "[END] initDrmStackMediaDrm"

    .line 135
    invoke-static {v2, v0, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_4
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    return-object p1
.end method

.method public isCryptoSchemeSupportedDrmManagerClient(Ljava/util/UUID;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCryptoSchemeSupportedMediaDrm(Ljava/util/UUID;)Z
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 862
    :cond_0
    invoke-static {p1}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result p1

    return p1
.end method

.method public notifyAbortDrmManagerClient()V
    .locals 0

    return-void
.end method

.method public notifyAbortMediaDrm()V
    .locals 1

    const/4 v0, 0x1

    .line 877
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mUserAbort:Z

    return-void
.end method

.method public processLicenseResponseDrmManagerClient(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processLicenseResponseMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
    .locals 6

    .line 616
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const-string v1, "@@@LicMgrMediaDrm"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "[BEGIN] processLicenseResponseMediaDrm"

    .line 617
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    :cond_0
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_PLAYREADY:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_PLAYREADY_STREAM:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 622
    :goto_1
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    const/16 v4, -0x7d0

    if-nez v3, :cond_4

    .line 623
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "[WARNING] mMediaDrm == null"

    .line 624
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v4

    :cond_4
    if-eqz v0, :cond_5

    .line 631
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    .line 633
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 636
    :goto_2
    :try_start_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "[INFO] mediaDrm.provideKeyResponse"

    new-array v5, v2, [Ljava/lang/Object;

    .line 637
    invoke-static {v1, v3, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    :cond_6
    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrm:Landroid/media/MediaDrm;

    iget-object v5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mMediaDrmSessionID:[B

    invoke-virtual {v3, v5, p1}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 641
    array-length v0, p1

    if-eqz v0, :cond_7

    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_PLAYREADY:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    if-ne p2, v0, :cond_7

    .line 643
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mCurntKid:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->saveOfflineKeyToPref([BLjava/lang/String;)V

    :cond_7
    if-eqz p1, :cond_8

    .line 645
    array-length v0, p1

    if-eqz v0, :cond_8

    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_WIDEVINE:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    if-ne p2, v0, :cond_8

    .line 649
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mWidevinePSSH:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->saveOfflineKeyToPref([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :cond_8
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_9

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "[END] processLicenseResponseMediaDrm"

    .line 660
    invoke-static {v1, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return v2

    :catch_0
    move-exception p1

    .line 652
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 653
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ERROR] mediaDrm.provideKeyResponse : Exception"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return v4
.end method

.method public setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)V
    .locals 0

    .line 945
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->mEventListener:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    return-void
.end method

.method public uninitDrmStackDrmManagerClient()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uninitDrmStackMediaDrm()I
    .locals 4

    .line 228
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const-string v1, "@@@LicMgrMediaDrm"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "[BEGIN] uninitDrmStackMediaDrm"

    .line 229
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;->uninitMediaDrm()Z

    .line 234
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "[END] uninitDrmStackMediaDrm"

    .line 235
    invoke-static {v1, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v2
.end method
