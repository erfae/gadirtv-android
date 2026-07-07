.class public Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;
.super Ljava/lang/Object;
.source "DrmSessionDrmManagerClient.java"

# interfaces
.implements Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;
.implements Landroid/drm/DrmManagerClient$OnErrorListener;
.implements Landroid/drm/DrmManagerClient$OnEventListener;
.implements Landroid/drm/DrmManagerClient$OnInfoListener;


# static fields
.field private static final ALL_LIC:Ljava/lang/String; = "AllLicenses"

.field private static final EXPIRE_LIC:Ljava/lang/String; = "AllExpiredLicenses"

.field private static final HEADER_KEY:Ljava/lang/String; = "Header"

.field private static final MIME:Ljava/lang/String; = "application/vnd.ms-playready.media.pyv"

.field private static final PLAYREADY_UUID:Ljava/util/UUID;

.field private static final RESPONSE_KEY:Ljava/lang/String; = "Response"

.field private static final STACK_INIT:Ljava/lang/String; = "EnterPersistentTZMode"

.field private static final STACK_UNINIT:Ljava/lang/String; = "LeavePersistentTZMode"

.field private static final TAG:Ljava/lang/String; = "@@@AmznPRLicMgr"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrmMgrClient:Landroid/drm/DrmManagerClient;

.field private mDrmMgrClientErr:Z

.field private mDrmSessionID:I

.field private mLicenseProcessed:Z

.field private mUserAbort:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x65fb0f8667bfbd7aL

    const-wide v3, -0x546d19a41f77a06bL    # -8.640911267670052E-99

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->PLAYREADY_UUID:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mContext:Landroid/content/Context;

    .line 64
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    .line 65
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmSessionID:I

    .line 67
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClientErr:Z

    .line 68
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mLicenseProcessed:Z

    .line 70
    iput-boolean v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mUserAbort:Z

    .line 74
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mContext:Landroid/content/Context;

    .line 75
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    .line 76
    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmSessionID:I

    return-void
.end method

.method private deleteLicenseInternal(Ljava/lang/String;)I
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    const/16 p1, -0x7d0

    return p1

    .line 386
    :cond_0
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->getPRLicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 387
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getDebugLicenseChallenge()[B
    .locals 4

    .line 158
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/license_challenge"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 160
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 161
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getPRLicPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playready://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".playready"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initDrmMgrClient()Z
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 140
    :cond_0
    new-instance v0, Landroid/drm/DrmManagerClient;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    .line 141
    invoke-virtual {v0, p0}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    .line 142
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 143
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p0}, Landroid/drm/DrmManagerClient;->setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V

    return v1
.end method

.method private uninitDrmMgrClient()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public checkRightStatusDrmManagerClient(Ljava/lang/String;)I
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 206
    :cond_0
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->getPRLicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, v1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public checkRightStatusMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public closeSessionByID([B)V
    .locals 0

    return-void
.end method

.method public closeSessionDrmManagerClient()V
    .locals 1

    const/4 v0, 0x0

    .line 314
    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmSessionID:I

    return-void
.end method

.method public closeSessionMediaDrm()V
    .locals 0

    return-void
.end method

.method public deleteAllLicensesDrmManagerClient()I
    .locals 1

    const-string v0, "AllLicenses"

    .line 297
    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->deleteLicenseInternal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteAllLicensesMediaDrm(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public deleteExpiredLicensesDrmManagerClient()I
    .locals 1

    const-string v0, "AllExpiredLicenses"

    .line 302
    invoke-direct {p0, v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->deleteLicenseInternal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteExpiredLicensesMediaDrm(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public deleteLicenseDrmManagerClient(Ljava/lang/String;)I
    .locals 1

    .line 288
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;

    invoke-direct {v0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->isRead()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, -0x7d0

    return p1

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmProtectionHeader;->getKID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->deleteLicenseInternal(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deleteLicenseMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public enablePersistentLcs(Z)V
    .locals 0

    return-void
.end method

.method public generateLicenseChallengeDrmManagerClient(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 218
    :cond_0
    new-instance v0, Landroid/drm/DrmInfoRequest;

    const/4 v2, 0x3

    const-string v3, "application/vnd.ms-playready.media.pyv"

    invoke-direct {v0, v2, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string v2, "Header"

    .line 221
    invoke-virtual {v0, v2, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "PRCustomData"

    .line 224
    invoke-virtual {v0, p1, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {p1, v0}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object p1

    .line 230
    array-length p2, p1

    const/16 v0, 0xa

    if-ne p2, v0, :cond_3

    const/4 p2, 0x4

    const/4 v0, 0x4

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    .line 234
    aget-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    return-object p1
.end method

.method public generateLicenseChallengeMediaDrm(Ljava/lang/String;Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;Z)[B
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public getLicenseDetailsDrmManagerClient(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 282
    :cond_0
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->getPRLicPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 283
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public getLicenseDetailsMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)Landroid/content/ContentValues;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public initDrmStackDrmManagerClient()I
    .locals 6

    const-string v0, "Invalid DRM session ID "

    .line 82
    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmSessionID:I

    if-eqz v1, :cond_0

    return v1

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    return v1

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->initDrmMgrClient()Z

    .line 92
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/4 v2, 0x3

    const-string v3, "application/vnd.ms-playready.media.pyv"

    invoke-direct {v1, v2, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string v2, "Header"

    const-string v3, "EnterPersistentTZMode"

    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 98
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmSessionID:I

    return v0

    .line 100
    :cond_2
    invoke-virtual {v1}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v1

    .line 101
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    const-string v3, "@@@AmznPRLicMgr"

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initDrmStack data.length is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    const-string v2, "8"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    const/16 v5, 0x8

    .line 114
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 116
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    .line 118
    iput v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmSessionID:I

    goto :goto_1

    .line 121
    :cond_5
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 127
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 109
    :cond_6
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireDrmInfo failed to get DRM session ID, error = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_7
    :goto_1
    iput-boolean v4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mUserAbort:Z

    .line 133
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmSessionID:I

    return v0
.end method

.method public initDrmStackMediaDrm(Ljava/lang/String;)[B
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public isCryptoSchemeSupportedDrmManagerClient(Ljava/util/UUID;)Z
    .locals 1

    .line 307
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isCryptoSchemeSupportedMediaDrm(Ljava/util/UUID;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyAbortDrmManagerClient()V
    .locals 1

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mUserAbort:Z

    return-void
.end method

.method public notifyAbortMediaDrm()V
    .locals 0

    return-void
.end method

.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .locals 3

    const/4 p1, 0x1

    .line 393
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClientErr:Z

    .line 394
    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "@@@AmznPRLicMgr"

    const-string v2, "DrmManagerClient onError DrmErrorEvent."

    packed-switch p1, :pswitch_data_0

    .line 436
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmManagerClient onError unknown error"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 396
    :pswitch_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 397
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_ALL_RIGHTS_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 421
    :pswitch_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_REMOVE_ALL_RIGHTS_FAILED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 416
    :pswitch_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_PROCESS_DRM_INFO_FAILED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 406
    :pswitch_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_NO_INTERNET_CONNECTION"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 411
    :pswitch_4
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 412
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_OUT_OF_MEMORY"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 401
    :pswitch_5
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 402
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_NOT_SUPPORTED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    :pswitch_6
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_RIGHTS_RENEWAL_NOT_ALLOWED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    :pswitch_7
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 427
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_RIGHTS_NOT_INSTALLED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V
    .locals 4

    .line 446
    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result p1

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    const-string v2, "@@@AmznPRLicMgr"

    const-string v3, "DrmManagerClient onEvent DrmEvent."

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    .line 459
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 460
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DrmManagerClient onEvent unknown event "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 453
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mLicenseProcessed:Z

    .line 454
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 455
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_DRM_INFO_PROCESSED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 448
    :cond_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_ALL_RIGHTS_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V
    .locals 3

    .line 469
    invoke-virtual {p2}, Landroid/drm/DrmInfoEvent;->getType()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "@@@AmznPRLicMgr"

    const-string v2, "DrmManagerClient onInfo DrmInfoEvent."

    packed-switch p1, :pswitch_data_0

    .line 501
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 502
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmManagerClient onInfo unknown info "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 491
    :pswitch_0
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_RIGHTS_REMOVED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 471
    :pswitch_1
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 472
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_ACCOUNT_ALREADY_REGISTERED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 496
    :pswitch_2
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 497
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_WAIT_FOR_RIGHTS"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 486
    :pswitch_3
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_RIGHTS_INSTALLED"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 481
    :pswitch_4
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_REMOVE_RIGHTS"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 476
    :pswitch_5
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "TYPE_ALREADY_REGISTERED_BY_ANOTHER_ACCOUNT"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processLicenseResponseDrmManagerClient(Ljava/lang/String;)I
    .locals 5

    .line 248
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    const/16 v1, -0x7d0

    if-nez v0, :cond_0

    return v1

    .line 249
    :cond_0
    new-instance v0, Landroid/drm/DrmInfo;

    const/4 v2, 0x3

    const/4 v3, 0x1

    new-array v3, v3, [B

    const-string v4, "application/vnd.ms-playready.media.pyv"

    invoke-direct {v0, v2, v3, v4}, Landroid/drm/DrmInfo;-><init>(I[BLjava/lang/String;)V

    const-string v2, "Response"

    .line 251
    invoke-virtual {v0, v2, p1}, Landroid/drm/DrmInfo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClientErr:Z

    .line 254
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mLicenseProcessed:Z

    .line 255
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x28

    :goto_0
    if-eqz v0, :cond_1

    .line 260
    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClientErr:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mLicenseProcessed:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mUserAbort:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x32

    .line 261
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 264
    :cond_1
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mUserAbort:Z

    .line 265
    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClientErr:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mLicenseProcessed:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    .line 268
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    if-eqz v0, :cond_4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@AmznPRLicMgr"

    const-string v2, "processDrmInfo timed out"

    .line 269
    invoke-static {v0, v2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v1, v0

    :cond_4
    :goto_1
    return v1
.end method

.method public processLicenseResponseMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)V
    .locals 0

    return-void
.end method

.method public uninitDrmStackDrmManagerClient()I
    .locals 5

    .line 177
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "@@@AmznPRLicMgr"

    const-string v3, "calling uninitDrmStack"

    .line 178
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_2

    .line 182
    new-instance v0, Landroid/drm/DrmInfoRequest;

    const/4 v2, 0x3

    const-string v3, "application/vnd.ms-playready.media.pyv"

    invoke-direct {v0, v2, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    const-string v2, "Header"

    const-string v3, "LeavePersistentTZMode"

    .line 185
    invoke-virtual {v0, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->mDrmMgrClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v0

    .line 190
    array-length v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    const/4 v2, 0x4

    const/4 v3, 0x4

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    if-le v3, v2, :cond_1

    shl-int/lit8 v1, v1, 0x8

    .line 194
    :cond_1
    aget-byte v4, v0, v3

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    :cond_2
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;->uninitDrmMgrClient()Z

    return v1
.end method

.method public uninitDrmStackMediaDrm()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
