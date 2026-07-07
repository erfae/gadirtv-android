.class public Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManager;
.super Ljava/lang/Object;
.source "LicenseManager.java"

# interfaces
.implements Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManagerInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@LicenseManager"


# instance fields
.field mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    .line 40
    invoke-static {p1}, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;->newLicenseManager(Landroid/content/Context;)Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/LicenseManager;->mLicenseManager:Lcom/visualon/OSMPPlayerImpl/OSMPLicenseManager/VOOSMPLicenseManager;

    return-void
.end method


# virtual methods
.method public checkRightStatus(Ljava/lang/String;)I
    .locals 3

    .line 65
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "@@@LicenseManager"

    const-string v2, "calling checkRightStatus() is obsoleted!"

    .line 66
    invoke-static {v1, v2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public deleteAllLicenses()I
    .locals 4

    .line 100
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "@@@LicenseManager"

    const-string v3, "calling deleteAllLicenses() is obsoleted!"

    .line 101
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method

.method public deleteExpiredLicenses()I
    .locals 4

    .line 107
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "@@@LicenseManager"

    const-string v3, "calling deleteExpiredLicenses() is obsoleted!"

    .line 108
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method

.method public deleteLicense(Ljava/lang/String;)I
    .locals 3

    .line 93
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "@@@LicenseManager"

    const-string v2, "calling deleteLicense() is obsoleted!"

    .line 94
    invoke-static {v1, v2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public generateLicenseChallenge(Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 0

    .line 72
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "@@@LicenseManager"

    const-string p3, "calling generateLicenseChallenge() is obsoleted!"

    .line 73
    invoke-static {p2, p3, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLicenseDetails(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 86
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@LicenseManager"

    const-string v1, "calling getLicenseDetials() is obsoleted!"

    .line 87
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public initDrmStack()I
    .locals 4

    .line 44
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "@@@LicenseManager"

    const-string v3, "calling initDrmStack() is obsoleted!"

    .line 45
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method

.method public initDrmStack(Ljava/lang/String;)[B
    .locals 2

    .line 51
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "@@@LicenseManager"

    const-string v1, "calling initDrmStack() is obsoleted!"

    .line 52
    invoke-static {v0, v1, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isCryptoSchemeSupported(Ljava/util/UUID;)Z
    .locals 3

    .line 114
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "@@@LicenseManager"

    const-string v2, "calling isCryptoSchemeSupported() is obsoleted!"

    .line 115
    invoke-static {v1, v2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public processLicenseResponse(Ljava/lang/String;)I
    .locals 3

    .line 79
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "@@@LicenseManager"

    const-string v2, "calling generateLicenseChallenge() is obsoleted!"

    .line 80
    invoke-static {v1, v2, p1}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public uninitDrmStack()I
    .locals 4

    .line 58
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "@@@LicenseManager"

    const-string v3, "calling uninitDrmStack() is obsoleted!"

    .line 59
    invoke-static {v2, v3, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method
