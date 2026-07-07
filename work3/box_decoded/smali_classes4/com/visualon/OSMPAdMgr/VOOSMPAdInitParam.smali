.class public Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;
.super Ljava/lang/Object;
.source "VOOSMPAdInitParam.java"


# instance fields
.field private mLibPath:Ljava/lang/String;

.field private mLicContent:[B

.field private mLicPath:Ljava/lang/String;

.field private mLicText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;->mLibPath:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;->mLicContent:[B

    .line 31
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;->mLicPath:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;->mLicText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLibraryPath()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;->mLibPath:Ljava/lang/String;

    return-object v0
.end method

.method getLicenseContent()[B
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;->mLicContent:[B

    return-object v0
.end method

.method getLicenseLicenseFilePath()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;->mLicPath:Ljava/lang/String;

    return-object v0
.end method

.method getPreAgreedLicense()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;->mLicText:Ljava/lang/String;

    return-object v0
.end method

.method public setLibraryPath(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;->mLibPath:Ljava/lang/String;

    .line 92
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method public setLicenseContent([B)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;->mLicContent:[B

    .line 110
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method setLicenseFilePath(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;->mLicPath:Ljava/lang/String;

    .line 128
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method

.method setPreAgreedLicense(Ljava/lang/String;)Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPAdInitParam;->mLicText:Ljava/lang/String;

    .line 145
    sget-object p1, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;->VO_OSMP_AD_ERR_NONE:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_AD_RETURN_CODE;

    return-object p1
.end method
