.class public Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;
.super Ljava/lang/Object;
.source "VOOSMPVerificationInfo.java"


# instance fields
.field private DataFlag:I

.field private ResponseString:Ljava/lang/String;

.field private VerificationString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->VerificationString:Ljava/lang/String;

    const/4 v1, 0x0

    .line 108
    iput v1, p0, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->DataFlag:I

    .line 109
    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->ResponseString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->VerificationString:Ljava/lang/String;

    .line 97
    iput p2, p0, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->DataFlag:I

    .line 98
    iput-object p3, p0, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->ResponseString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDataFlag()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->DataFlag:I

    return v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->ResponseString:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationString()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->VerificationString:Ljava/lang/String;

    return-object v0
.end method

.method public setDataFlag(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 67
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->DataFlag:I

    .line 68
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setResponseString(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->ResponseString:Ljava/lang/String;

    .line 85
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setVerificationString(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPVerificationInfo;->VerificationString:Ljava/lang/String;

    .line 37
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method
