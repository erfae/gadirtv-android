.class public abstract Lcom/inka/ncg2/Ncg2Agent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;,
        Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;,
        Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;,
        Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;,
        Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;,
        Lcom/inka/ncg2/Ncg2Agent$NcgHttpRequestException;,
        Lcom/inka/ncg2/Ncg2Agent$NcgCenc;,
        Lcom/inka/ncg2/Ncg2Agent$NcgFile;,
        Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;
    }
.end annotation


# static fields
.field public static final DEFAULT_COUNT_OF_EXECUTION_LIMIT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract acquireLicenseByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ServerResponseErrorException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract acquireLicenseByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ServerResponseErrorException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract acquireLicenseByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ServerResponseErrorException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract acquireLicenseByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ServerResponseErrorException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract acquireLicenseByPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ServerResponseErrorException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract acquireLicenseByToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ServerResponseErrorException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract addLicense(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract addLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract checkLicenseValid(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract checkLicenseValidByCID(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract checkLicenseValidByCID(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract checkMethodTypeA(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract createNcgFile()Lcom/inka/ncg2/Ncg2Agent$NcgFile;
.end method

.method public abstract decreasePlayCount(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract disableLog()V
.end method

.method public abstract downloadAndDecryptByNcgSdkPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;,
            Lcom/inka/ncg2/Ncg2HttpException;
        }
    .end annotation
.end method

.method public abstract enableDirectlyDeviceID()V
.end method

.method public abstract enableLog()V
.end method

.method public abstract enableScreenRecorderDetecting(Z)V
.end method

.method public abstract getCurrentSecureTime()Ljava/lang/String;
.end method

.method public abstract getHeaderInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$HeaderInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;,
            Lcom/inka/ncg2/Ncg2HttpException;
        }
    .end annotation
.end method

.method public abstract getHttpRequestCallback()Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;
.end method

.method public abstract getLicenseInfo(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract getLicenseInfoByCID(Ljava/lang/String;Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseInformation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation
.end method

.method public abstract getLocalWebServer()Lcom/inka/ncg2/Ncg2LocalWebServer;
.end method

.method public abstract getNcgCenc()Lcom/inka/ncg2/Ncg2Agent$NcgCenc;
.end method

.method public abstract getNcgCoreContext()J
.end method

.method public abstract getSecureDeviceID()Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ReadPhoneStateException;,
            Lcom/inka/ncg2/Ncg2ModifiedDBFileInoException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ReadPhoneStateException;,
            Lcom/inka/ncg2/Ncg2ModifiedDBFileInoException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ReadPhoneStateException;,
            Lcom/inka/ncg2/Ncg2ModifiedDBFileInoException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Lcom/inka/ncg2/Ncg2Agent$OfflineSupportPolicy;Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2ReadPhoneStateException;,
            Lcom/inka/ncg2/Ncg2ModifiedDBFileInoException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract isEnabledLog()Z
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract isLicenseValid(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract isNcgContent(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract isPallyconFile(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method abstract processAfterDownload(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract readPallyconInfoTypeA()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract readPallyconInfoTypeB()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract readPallyconInternalInfoTypeA()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract removeAllTemporaryLicense()V
.end method

.method public abstract removeLicenseAllCID()V
.end method

.method public abstract removeLicenseByCID(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract removeLicenseByCID(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract removeLicenseByPath(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract removeRODBFile(Landroid/content/Context;)V
.end method

.method public abstract removeRODBFile(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract sendCustomChannelRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2Exception;,
            Lcom/inka/ncg2/Ncg2HttpException;
        }
    .end annotation
.end method

.method public abstract serialAuthentication(Landroid/content/Context;[Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2DeviceNotMatchedException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract setExceptionalEventListener(Lcom/inka/ncg2/Ncg2Agent$NcgExceptionalEventListener;)V
.end method

.method public abstract setHttpRequestCallback(Lcom/inka/ncg2/Ncg2Agent$HttpRequestCallback;)V
.end method

.method public abstract updateSecureTime()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/j;,
            Lcom/inka/ncg2/m;,
            Lcom/inka/ncg2/Ncg2NotAuthorizedAppID;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method
