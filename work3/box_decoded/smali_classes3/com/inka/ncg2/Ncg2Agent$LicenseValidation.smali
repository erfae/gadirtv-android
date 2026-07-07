.class public final enum Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/Ncg2Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LicenseValidation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public static final enum BeforeStartDate:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public static final enum DeviceTimeModified:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public static final enum ExceededPlayCount:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public static final enum ExpiredLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public static final enum ExternalDeviceDisallowed:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public static final enum NotAuthorizedAppID:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public static final enum NotExistLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public static final enum OfflineNotSupported:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public static final enum OfflineStatusTooLong:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public static final enum RootedDeviceDisallowed:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public static final enum ScreenRecorderDetected:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

.field public static final enum ValidLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;


# instance fields
.field private mExtraData:Ljava/util/HashMap;
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
    .locals 16

    .line 1958
    new-instance v0, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    const-string v1, "ValidLicense"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ValidLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    .line 1969
    new-instance v1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    const-string v3, "NotExistLicense"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->NotExistLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    .line 1980
    new-instance v3, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    const-string v5, "ExpiredLicense"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ExpiredLicense:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    .line 1991
    new-instance v5, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    const-string v7, "BeforeStartDate"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->BeforeStartDate:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    .line 2002
    new-instance v7, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    const-string v9, "ExceededPlayCount"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ExceededPlayCount:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    .line 2013
    new-instance v9, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    const-string v11, "ExternalDeviceDisallowed"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ExternalDeviceDisallowed:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    .line 2024
    new-instance v11, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    const-string v13, "RootedDeviceDisallowed"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->RootedDeviceDisallowed:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    .line 2037
    new-instance v13, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    const-string v15, "DeviceTimeModified"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->DeviceTimeModified:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    .line 2050
    new-instance v15, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    const-string v14, "OfflineNotSupported"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->OfflineNotSupported:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    .line 2063
    new-instance v14, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    const-string v12, "OfflineStatusTooLong"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->OfflineStatusTooLong:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    .line 2074
    new-instance v12, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    const-string v10, "NotAuthorizedAppID"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->NotAuthorizedAppID:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    .line 2095
    new-instance v10, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    const-string v8, "ScreenRecorderDetected"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->ScreenRecorderDetected:Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 1948
    sput-object v8, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->$VALUES:[Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1948
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;
    .locals 1

    .line 1948
    const-class v0, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object p0
.end method

.method public static values()[Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;
    .locals 1

    .line 1948
    sget-object v0, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->$VALUES:[Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    invoke-virtual {v0}, [Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;

    return-object v0
.end method


# virtual methods
.method public getExtraData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2104
    iget-object v0, p0, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->mExtraData:Ljava/util/HashMap;

    return-object v0
.end method

.method public setExtraData(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2100
    iput-object p1, p0, Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;->mExtraData:Ljava/util/HashMap;

    return-void
.end method
