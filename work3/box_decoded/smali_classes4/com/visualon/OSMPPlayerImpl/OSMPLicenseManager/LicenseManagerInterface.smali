.class public interface abstract Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface;
.super Ljava/lang/Object;
.source "LicenseManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface$DRM_TYPE;
    }
.end annotation


# static fields
.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final RIGHTS_EXPIRED:I = 0x2

.field public static final RIGHTS_INVALID:I = 0x1

.field public static final RIGHTS_NOT_ACQUIRED:I = 0x3

.field public static final RIGHTS_VALID:I


# virtual methods
.method public abstract checkRightStatus(Ljava/lang/String;)I
.end method

.method public abstract deleteAllLicenses()I
.end method

.method public abstract deleteExpiredLicenses()I
.end method

.method public abstract deleteLicense(Ljava/lang/String;)I
.end method

.method public abstract generateLicenseChallenge(Ljava/lang/String;Ljava/lang/String;Z)[B
.end method

.method public abstract getLicenseDetails(Ljava/lang/String;)Landroid/content/ContentValues;
.end method

.method public abstract initDrmStack()I
.end method

.method public abstract initDrmStack(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation
.end method

.method public abstract isCryptoSchemeSupported(Ljava/util/UUID;)Z
.end method

.method public abstract processLicenseResponse(Ljava/lang/String;)I
.end method

.method public abstract uninitDrmStack()I
.end method
