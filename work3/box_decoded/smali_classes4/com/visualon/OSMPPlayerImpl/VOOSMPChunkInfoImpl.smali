.class Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;
.super Ljava/lang/Object;
.source "VOOSMPChunkInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPChunkInfo;


# instance fields
.field mBitrate:I

.field mChunkID:J

.field mDownloadSize:I

.field mDownloadTime:J

.field mDuration:J

.field mErrorCode:I

.field mErrorType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STREAMING_ERROR_TYPE;

.field mRootUrl:Ljava/lang/String;

.field mStartTime:J

.field mTimeScale:J

.field mType:I

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JJJIIJJII)V
    .locals 3

    move-object v0, p0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 51
    iput v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mType:I

    move-object v1, p2

    .line 52
    iput-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mRootUrl:Ljava/lang/String;

    move-object v1, p3

    .line 53
    iput-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mUrl:Ljava/lang/String;

    move-wide v1, p4

    .line 54
    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mStartTime:J

    move-wide v1, p6

    .line 55
    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mDuration:J

    move-wide v1, p8

    .line 56
    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mTimeScale:J

    .line 57
    invoke-static {p10}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STREAMING_ERROR_TYPE;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STREAMING_ERROR_TYPE;

    move-result-object v1

    iput-object v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mErrorType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STREAMING_ERROR_TYPE;

    move v1, p11

    .line 58
    iput v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mErrorCode:I

    move-wide v1, p12

    .line 59
    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mChunkID:J

    move-wide/from16 v1, p14

    .line 60
    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mDownloadTime:J

    move/from16 v1, p16

    .line 61
    iput v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mDownloadSize:I

    move/from16 v1, p17

    .line 62
    iput v1, v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mBitrate:I

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mBitrate:I

    return v0
.end method

.method public getChunkID()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mChunkID:J

    return-wide v0
.end method

.method public getDownloadSize()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mDownloadSize:I

    return v0
.end method

.method public getDownloadTime()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mDownloadTime:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mDuration:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mErrorCode:I

    return v0
.end method

.method public getErrorType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STREAMING_ERROR_TYPE;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mErrorType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STREAMING_ERROR_TYPE;

    return-object v0
.end method

.method public getRootURL()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mRootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mStartTime:J

    return-wide v0
.end method

.method public getTimeScale()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mTimeScale:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mType:I

    return v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPChunkInfoImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method
