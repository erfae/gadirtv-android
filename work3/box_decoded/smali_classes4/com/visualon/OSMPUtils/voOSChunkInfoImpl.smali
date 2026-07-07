.class public Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;
.super Ljava/lang/Object;
.source "voOSChunkInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPUtils/voOSChunkInfo;


# static fields
.field private static final uSize:I = 0x800


# instance fields
.field private datablock:[B

.field mBitrate:I

.field mChunkID:J

.field mDownloadSize:I

.field mDownloadTime:J

.field mDuration:J

.field mErrorCode:I

.field mErrorType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

.field mPeriodSequenceNumber:I

.field mRootUrl:Ljava/lang/String;

.field mStartTime:J

.field mTimeScale:J

.field mType:I

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 155
    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JIJJIIJJII)V
    .locals 3

    move-object v0, p0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 155
    iput-object v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    move v1, p1

    .line 68
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mType:I

    move-object v1, p2

    .line 69
    iput-object v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mRootUrl:Ljava/lang/String;

    move-object v1, p3

    .line 70
    iput-object v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mUrl:Ljava/lang/String;

    move-wide v1, p4

    .line 71
    iput-wide v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mStartTime:J

    move v1, p6

    .line 72
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mPeriodSequenceNumber:I

    move-wide v1, p7

    .line 73
    iput-wide v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mDuration:J

    move-wide v1, p9

    .line 74
    iput-wide v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mTimeScale:J

    .line 75
    invoke-static {p11}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    move-result-object v1

    iput-object v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mErrorType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    move v1, p12

    .line 76
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mErrorCode:I

    move-wide/from16 v1, p13

    .line 77
    iput-wide v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mChunkID:J

    move-wide/from16 v1, p15

    .line 78
    iput-wide v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mDownloadTime:J

    move/from16 v1, p17

    .line 79
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mDownloadSize:I

    move/from16 v1, p18

    .line 80
    iput v1, v0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mBitrate:I

    return-void
.end method


# virtual methods
.method public Bitrate()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mBitrate:I

    return v0
.end method

.method public ChunkID()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mChunkID:J

    return-wide v0
.end method

.method public DownloadSize()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mDownloadSize:I

    return v0
.end method

.method public DownloadTime()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mDownloadTime:J

    return-wide v0
.end method

.method public Duration()J
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mDuration:J

    return-wide v0
.end method

.method public ErrorCode()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mErrorCode:I

    return v0
.end method

.method public ErrorType()Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mErrorType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    return-object v0
.end method

.method public PeriodSequenceNumber()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mPeriodSequenceNumber:I

    return v0
.end method

.method public RootUrl()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mRootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public StartTime()J
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mStartTime:J

    return-wide v0
.end method

.method public TimeScale()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mTimeScale:J

    return-wide v0
.end method

.method public Type()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mType:I

    return v0
.end method

.method public Url()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Landroid/os/Parcel;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 161
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mType:I

    .line 164
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x800

    if-ge v1, v2, :cond_2

    .line 167
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    aget-byte v3, v3, v1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x800

    .line 172
    :goto_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    invoke-direct {v3, v4, v0, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mRootUrl:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    .line 177
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    aget-byte v3, v3, v1

    if-nez v3, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 182
    :cond_4
    :goto_3
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->datablock:[B

    invoke-direct {v1, v3, v0, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mUrl:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mStartTime:J

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mPeriodSequenceNumber:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mDuration:J

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mTimeScale:J

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;->valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mErrorType:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_STREAMING_ERROR_TYPE;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mErrorCode:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mChunkID:J

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mDownloadTime:J

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mDownloadSize:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPUtils/voOSChunkInfoImpl;->mBitrate:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    const/4 p1, 0x1

    return p1
.end method
