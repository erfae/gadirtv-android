.class public Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;
.super Ljava/lang/Object;
.source "VOOSMPOpenParam.java"


# instance fields
.field private mDecoderType:I

.field private mDrmLicenseManager:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

.field private mDuration:J

.field private mFileSize:J

.field private mIsDecoderTypeSet:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mFileSize:J

    .line 21
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDecoderType:I

    .line 22
    iput-wide v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDuration:J

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mIsDecoderTypeSet:Z

    return-void
.end method


# virtual methods
.method public getDecoderType()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDecoderType:I

    return v0
.end method

.method public getDrmLicenseManager()Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDrmLicenseManager:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDuration:J

    return-wide v0
.end method

.method public getFileSize()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mFileSize:J

    return-wide v0
.end method

.method public isDecoderTypeSet()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mIsDecoderTypeSet:Z

    return v0
.end method

.method public setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 53
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 55
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v3

    .line 56
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v4

    if-ge v3, v4, :cond_0

    or-int/2addr v1, v3

    .line 59
    :cond_0
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v4

    if-lt v3, v4, :cond_1

    const v4, 0x7fffffff

    if-ge v3, v4, :cond_1

    or-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    and-int v0, p1, v1

    and-int/2addr p1, v2

    const/4 v3, 0x1

    if-gtz p1, :cond_3

    .line 67
    iget p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDecoderType:I

    and-int/2addr p1, v2

    goto :goto_1

    .line 70
    :cond_3
    iput-boolean v3, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mIsDecoderTypeSet:Z

    :goto_1
    if-gtz v0, :cond_4

    .line 73
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDecoderType:I

    and-int/2addr v0, v1

    goto :goto_2

    .line 76
    :cond_4
    iput-boolean v3, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mIsDecoderTypeSet:Z

    .line 80
    :goto_2
    iget-boolean v1, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mIsDecoderTypeSet:Z

    if-eqz v1, :cond_5

    or-int/2addr p1, v0

    .line 81
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDecoderType:I

    .line 82
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 85
    :cond_5
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setDrmLicenseManager(Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDrmLicenseManager:Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;

    return-void
.end method

.method public setDuration(J)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 124
    iput-wide p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mDuration:J

    .line 125
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setFileSize(J)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 107
    iput-wide p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPOpenParam;->mFileSize:J

    .line 108
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method
