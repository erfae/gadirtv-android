.class Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;
.super Ljava/lang/Object;
.source "VOOSMPSEIPicTimingImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPSEIPicTiming;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPSEIPicTimingImpl"


# instance fields
.field private mCpbDpbDelaysPresentFlag:I

.field private mCpbRemovalDelay:I

.field private mDpbOutputDelay:I

.field private mNumClockTs:I

.field private mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

.field private mPictureStructure:I

.field private mPictureStructurePresentFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSSEIPicTiming;)V
    .locals 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    .line 48
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getCpbDpbDelaysPresentFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbDpbDelaysPresentFlag:I

    .line 49
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getCpbRemovalDelay()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbRemovalDelay:I

    .line 50
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getDpbOutputDelay()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mDpbOutputDelay:I

    .line 51
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getPictureStructurePresentFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructurePresentFlag:I

    .line 52
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getPictureStructure()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructure:I

    .line 53
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getNumClockTs()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mNumClockTs:I

    .line 55
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEI INFO VOOSMPSEIPicTiming CpbDpbDelaysPresentFlag is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbDpbDelaysPresentFlag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CpbRemovalDelay is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbRemovalDelay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", DpbOutputDelay is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mDpbOutputDelay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPictureStructurePresentFlag is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructurePresentFlag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", PictureStructure is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructure:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", NumClockTs is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mNumClockTs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "@@@VOOSMPSEIPicTimingImpl"

    invoke-static {v3, v0, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getClock()[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-direct {v0, v2}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;-><init>(Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;)V

    .line 62
    new-instance v2, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getClock()[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;-><init>(Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;)V

    .line 63
    new-instance v3, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIPicTiming;->getClock()[Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;

    move-result-object p1

    const/4 v5, 0x2

    aget-object p1, p1, v5

    invoke-direct {v3, p1}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;-><init>(Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;)V

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aput-object v0, p1, v1

    aput-object v2, p1, v4

    aput-object v3, p1, v5

    .line 64
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    return-void
.end method


# virtual methods
.method public getClock()[Lcom/visualon/OSMPPlayer/VOOSMPSEIClockTimestamp;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    return-object v0
.end method

.method public getCpbDpbDelaysPresentFlag()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbDpbDelaysPresentFlag:I

    return v0
.end method

.method public getCpbRemovalDelay()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbRemovalDelay:I

    return v0
.end method

.method public getDpbOutputDelay()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mDpbOutputDelay:I

    return v0
.end method

.method public getNumClockTs()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mNumClockTs:I

    return v0
.end method

.method public getPictureStructure()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructure:I

    return v0
.end method

.method public getPictureStructurePresentFlag()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructurePresentFlag:I

    return v0
.end method

.method public parse(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbDpbDelaysPresentFlag:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbRemovalDelay:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mDpbOutputDelay:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructurePresentFlag:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructure:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mNumClockTs:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    new-array v2, v1, [Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    iput-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    :goto_0
    if-ge v0, v1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setClockTimestampFlag(I)V

    .line 84
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setCtType(I)V

    .line 85
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setNuitFieldBasedFlag(I)V

    .line 86
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setCountingType(I)V

    .line 87
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setFullTimestampFlag(I)V

    .line 88
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setDiscontinuityFlag(I)V

    .line 89
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setCntDroppedFlag(I)V

    .line 90
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setFrames(I)V

    .line 91
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setSecondsValue(I)V

    .line 92
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setMinutesValue(I)V

    .line 93
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setHoursValue(I)V

    .line 94
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setSecondsFlag(I)V

    .line 95
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setMinutesFlag(I)V

    .line 96
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setHoursFlag(I)V

    .line 97
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->setTimeOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VOOSMPSEIPicTimingImpl [mCpbDpbDelaysPresentFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbDpbDelaysPresentFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCpbRemovalDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mCpbRemovalDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDpbOutputDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mDpbOutputDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPictureStructurePresentFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructurePresentFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPictureStructure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mPictureStructure:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNumClockTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mNumClockTs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOSClockArr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIPicTimingImpl;->mOSClockArr:[Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;

    .line 145
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
