.class public interface abstract Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/DrmSessionUnified;
.super Ljava/lang/Object;
.source "DrmSessionUnified.java"


# static fields
.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"

.field public static final RIGHTS_EXPIRED:I = 0x2

.field public static final RIGHTS_INVALID:I = 0x1

.field public static final RIGHTS_NOT_ACQUIRED:I = 0x3

.field public static final RIGHTS_VALID:I = 0x0

.field public static final WIDEVINE_CUSTOM_DATA_KEY:Ljava/lang/String; = "WVCustomData"


# virtual methods
.method public abstract checkRightStatusDrmManagerClient(Ljava/lang/String;)I
.end method

.method public abstract checkRightStatusMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
.end method

.method public abstract closeSessionByID([B)V
.end method

.method public abstract closeSessionDrmManagerClient()V
.end method

.method public abstract closeSessionMediaDrm()V
.end method

.method public abstract deleteAllLicensesDrmManagerClient()I
.end method

.method public abstract deleteAllLicensesMediaDrm(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
.end method

.method public abstract deleteExpiredLicensesDrmManagerClient()I
.end method

.method public abstract deleteExpiredLicensesMediaDrm(Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
.end method

.method public abstract deleteLicenseDrmManagerClient(Ljava/lang/String;)I
.end method

.method public abstract deleteLicenseMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
.end method

.method public abstract enablePersistentLcs(Z)V
.end method

.method public abstract generateLicenseChallengeDrmManagerClient(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public abstract generateLicenseChallengeMediaDrm(Ljava/lang/String;Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;Z)[B
.end method

.method public abstract getLicenseDetailsDrmManagerClient(Ljava/lang/String;)Landroid/content/ContentValues;
.end method

.method public abstract getLicenseDetailsMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)Landroid/content/ContentValues;
.end method

.method public abstract initDrmStackDrmManagerClient()I
.end method

.method public abstract initDrmStackMediaDrm(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation
.end method

.method public abstract isCryptoSchemeSupportedDrmManagerClient(Ljava/util/UUID;)Z
.end method

.method public abstract isCryptoSchemeSupportedMediaDrm(Ljava/util/UUID;)Z
.end method

.method public abstract notifyAbortDrmManagerClient()V
.end method

.method public abstract notifyAbortMediaDrm()V
.end method

.method public abstract processLicenseResponseDrmManagerClient(Ljava/lang/String;)I
.end method

.method public abstract processLicenseResponseMediaDrm(Ljava/lang/String;Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;)I
.end method

.method public abstract setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)V
.end method

.method public abstract uninitDrmStackDrmManagerClient()I
.end method

.method public abstract uninitDrmStackMediaDrm()I
.end method
