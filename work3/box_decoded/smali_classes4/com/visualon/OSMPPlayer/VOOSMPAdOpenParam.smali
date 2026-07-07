.class public Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;
.super Ljava/lang/Object;
.source "VOOSMPAdOpenParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam$ADSettingsKey;
    }
.end annotation


# instance fields
.field private adContentInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

.field private adEngineType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

.field private adStreamType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

.field private advertisingID:Ljava/lang/String;

.field private debug:Z

.field private duration:J

.field private flag:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

.field private mDecoderType:I

.field private mSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private strOnceUXURL:Ljava/lang/String;

.field private type:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->debug:Z

    .line 33
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->VO_ADSMANAGER_OPENFLAG_PID:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->flag:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->advertisingID:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->strOnceUXURL:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_PHONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->type:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    .line 37
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_VO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->adEngineType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->adContentInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    const-wide/16 v1, 0x0

    .line 39
    iput-wide v1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->duration:J

    .line 41
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->VO_ADS_STREAM_TYPE_DEFAULT:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    iput-object v1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->adStreamType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    .line 42
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v1

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->mDecoderType:I

    .line 43
    iput-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->mSettings:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getAdContentInfo()Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->adContentInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    return-object v0
.end method

.method public getAdEngineType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->adEngineType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    return-object v0
.end method

.method public getAdStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->adStreamType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    return-object v0
.end method

.method public getAdvertisingID()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->advertisingID:Ljava/lang/String;

    return-object v0
.end method

.method public getDecoderType()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->mDecoderType:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->duration:J

    return-wide v0
.end method

.method public getFlag()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->flag:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    return-object v0
.end method

.method public getSettings()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->mSettings:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStrOnceUXURL()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->strOnceUXURL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->type:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->debug:Z

    return v0
.end method

.method public setAdContentInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->adContentInfo:Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    return-void
.end method

.method public setAdEngineType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->adEngineType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    return-void
.end method

.method public setAdStreamType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->adStreamType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    return-void
.end method

.method public setAdvertisingID(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->advertisingID:Ljava/lang/String;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->debug:Z

    return-void
.end method

.method public setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 181
    :goto_0
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 183
    invoke-static {}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->values()[Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v3

    .line 184
    sget-object v4, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_SW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v4}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v4

    if-ge v3, v4, :cond_0

    or-int/2addr v1, v3

    .line 187
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

    and-int v1, p1, v2

    if-lez v0, :cond_3

    if-lez v1, :cond_3

    .line 197
    iput p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->mDecoderType:I

    .line 198
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1

    .line 201
    :cond_3
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_UNKNOWN:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setDuration(J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->duration:J

    return-void
.end method

.method public setFlag(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->flag:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    return-void
.end method

.method public setSettings(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->mSettings:Ljava/util/HashMap;

    return-void
.end method

.method public setStrOnceUXURL(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->strOnceUXURL:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->type:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    return-void
.end method
