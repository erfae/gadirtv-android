.class Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;
.super Ljava/lang/Object;
.source "VOOSMPAdPeriodImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;


# instance fields
.field private isEpisode:I

.field private isTV:Z

.field private mCaptionURL:Ljava/lang/String;

.field private mEndTime:J

.field private mId:I

.field private mPeriodID:Ljava/lang/String;

.field private mPeriodTitle:Ljava/lang/String;

.field private mPeriodType:I

.field private mPeriodURL:Ljava/lang/String;

.field private mSeriesTitle:Ljava/lang/String;

.field private mStartTime:J

.field private strChannel:Ljava/lang/String;

.field private strEpisodeTitle:Ljava/lang/String;

.field private streamType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

.field private ullSkipoffset:J

.field private videoGuid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->ullSkipoffset:J

    return-void
.end method


# virtual methods
.method public getCaptionURL()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mCaptionURL:Ljava/lang/String;

    return-object v0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodID:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mEndTime:J

    return-wide v0
.end method

.method public getID()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mId:I

    return v0
.end method

.method public getPeriodID()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodID:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodTitle()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriodType()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodType:I

    return v0
.end method

.method public getPeriodURL()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesTitle()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mSeriesTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipoffset()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->ullSkipoffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mStartTime:J

    return-wide v0
.end method

.method public getStrChannel()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->strChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getStrEpisodeTitle()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->strEpisodeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->streamType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    return-object v0
.end method

.method public getVideoGuid()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->videoGuid:Ljava/lang/String;

    return-object v0
.end method

.method public isEpisode()Z
    .locals 1

    .line 143
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->isEpisode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isTV()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->isTV:Z

    return v0
.end method

.method parse(Landroid/os/Parcel;)Z
    .locals 5

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mId:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodType:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodURL:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mStartTime:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mEndTime:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mCaptionURL:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodTitle:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodID:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    invoke-static {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->streamType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_STREAM_TYPE;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->isEpisode:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mSeriesTitle:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->strEpisodeTitle:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->isTV:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->strChannel:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->videoGuid:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->ullSkipoffset:J

    .line 77
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VOOSMPADSPeriod mId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  mPeriodType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  mPeriodURL = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mStartTime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mStartTime:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  mEndTime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mEndTime:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  mCaptionURL = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mCaptionURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mPeriodTitle = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  mContentID = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mPeriodID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mSeriesTitle = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->mSeriesTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " strEpisodeTitle = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->strEpisodeTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  isTV = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->isTV:Z

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " strChannel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->strChannel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " videoGuid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->videoGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "adsCallBack"

    .line 78
    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v2
.end method

.method public setVideoGuid(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPAdPeriodImpl;->videoGuid:Ljava/lang/String;

    return-void
.end method
