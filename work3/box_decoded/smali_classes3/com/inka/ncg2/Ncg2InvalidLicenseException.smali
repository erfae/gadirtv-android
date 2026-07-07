.class public Lcom/inka/ncg2/Ncg2InvalidLicenseException;
.super Lcom/inka/ncg2/Ncg2Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCID:Ljava/lang/String;

.field private mContentPath:Ljava/lang/String;

.field private mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/inka/ncg2/Ncg2Exception;-><init>(Ljava/lang/String;)V

    .line 28
    iput p2, p0, Lcom/inka/ncg2/Ncg2InvalidLicenseException;->mErrorCode:I

    .line 29
    iput-object p3, p0, Lcom/inka/ncg2/Ncg2InvalidLicenseException;->mCID:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/inka/ncg2/Ncg2InvalidLicenseException;->mContentPath:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/inka/ncg2/Ncg2InvalidLicenseException;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    iget v1, p0, Lcom/inka/ncg2/Ncg2InvalidLicenseException;->mErrorCode:I

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/inka/ncg2/Ncg2InvalidLicenseException;->mCID:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/inka/ncg2/Ncg2InvalidLicenseException;->mContentPath:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/inka/ncg2/Ncg2InvalidLicenseException;->mReason:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 47
    invoke-super {p0}, Lcom/inka/ncg2/Ncg2Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Ncg2InvalidLicenseException Exception\n\t result code : [0x%08x]\n\t CID : [%s]\n\t Path : [%s]\n\t Resason : [%s]\n\t message : [%s]\n"

    .line 36
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
