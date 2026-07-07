.class public Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;
.super Ljava/lang/Object;
.source "DrmAdapter.java"

# interfaces
.implements Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface;


# instance fields
.field private mDrmType:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

.field private mIsUseMediaDrm:Z

.field unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    .line 39
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;->DRM_TYPE_UNKNOWN:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mDrmType:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    .line 42
    iput-boolean p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz p2, :cond_0

    .line 44
    new-instance p2, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;

    invoke-direct {p2, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionMediaDrm;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    goto :goto_0

    .line 46
    :cond_0
    new-instance p2, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;

    invoke-direct {p2, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionDrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    :goto_0
    return-void
.end method


# virtual methods
.method public checkRightStatus(Ljava/lang/String;)I
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mDrmType:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    .line 70
    invoke-interface {v0, p1, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->checkRightStatusMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    .line 71
    invoke-interface {v0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->checkRightStatusDrmManagerClient(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public closeSession()V
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->closeSessionMediaDrm()V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->closeSessionDrmManagerClient()V

    :goto_0
    return-void
.end method

.method public closeSessionByID([B)V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    invoke-interface {v0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->closeSessionByID([B)V

    :cond_0
    return-void
.end method

.method public deleteAllLicenses()I
    .locals 2

    .line 104
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mDrmType:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    .line 105
    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->deleteAllLicensesMediaDrm(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    .line 106
    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->deleteAllLicensesDrmManagerClient()I

    move-result v0

    :goto_0
    return v0
.end method

.method public deleteExpiredLicenses()I
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mDrmType:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    .line 112
    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->deleteExpiredLicensesMediaDrm(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    .line 113
    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->deleteExpiredLicensesDrmManagerClient()I

    move-result v0

    :goto_0
    return v0
.end method

.method public deleteLicense(Ljava/lang/String;)I
    .locals 2

    .line 97
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mDrmType:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    .line 98
    invoke-interface {v0, p1, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->deleteLicenseMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    .line 99
    invoke-interface {v0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->deleteLicenseDrmManagerClient(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public enablePersistentLcs(Z)V
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    invoke-interface {v0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->enablePersistentLcs(Z)V

    :cond_0
    return-void
.end method

.method public generateLicenseChallenge(Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 2

    .line 76
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mDrmType:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    .line 77
    invoke-interface {v0, p1, p2, v1, p3}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->generateLicenseChallengeMediaDrm(Ljava/lang/String;Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;Z)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    .line 78
    invoke-interface {p3, p1, p2}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->generateLicenseChallengeDrmManagerClient(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLicenseDetails(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 90
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mDrmType:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    .line 91
    invoke-interface {v0, p1, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->getLicenseDetailsMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)Landroid/content/ContentValues;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    .line 92
    invoke-interface {v0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->getLicenseDetailsDrmManagerClient(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public initDrmStack()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->initDrmStackDrmManagerClient()I

    move-result v0

    return v0
.end method

.method public initDrmStack(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    invoke-interface {v0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->initDrmStackMediaDrm(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    .line 119
    invoke-interface {v0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->isCryptoSchemeSupportedMediaDrm(Ljava/util/UUID;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    .line 120
    invoke-interface {v0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->isCryptoSchemeSupportedDrmManagerClient(Ljava/util/UUID;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public notifyAbort()V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->notifyAbortMediaDrm()V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->notifyAbortDrmManagerClient()V

    :goto_0
    return-void
.end method

.method public processLicenseResponse(Ljava/lang/String;)I
    .locals 2

    .line 83
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mDrmType:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    .line 84
    invoke-interface {v0, p1, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->processLicenseResponseMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    .line 85
    invoke-interface {v0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->processLicenseResponseDrmManagerClient(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public setDrmScheme(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mDrmType:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;

    return-void
.end method

.method public setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    invoke-interface {v0, p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)V

    return-void
.end method

.method public uninitDrmStack()I
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->mIsUseMediaDrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    .line 63
    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->uninitDrmStackMediaDrm()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmAdapter;->unifiedDrm:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;

    .line 64
    invoke-interface {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;->uninitDrmStackDrmManagerClient()I

    move-result v0

    :goto_0
    return v0
.end method
