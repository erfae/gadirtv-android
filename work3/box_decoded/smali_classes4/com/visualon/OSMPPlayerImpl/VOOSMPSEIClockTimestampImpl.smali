.class Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;
.super Ljava/lang/Object;
.source "VOOSMPSEIClockTimestampImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPSEIClockTimestamp;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPSEIClockTimestampImpl"


# instance fields
.field private mClockTimestampFlag:I

.field private mCntDroppedFlag:I

.field private mCountingType:I

.field private mCtType:I

.field private mDiscontinuityFlag:I

.field private mFrames:I

.field private mFullTimestampFlag:I

.field private mHoursFlag:I

.field private mHoursValue:I

.field private mMinutesFlag:I

.field private mMinutesValue:I

.field private mNuitFieldBasedFlag:I

.field private mSecondsFlag:I

.field private mSecondsValue:I

.field private mTimeOffset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getClockTimestampFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mClockTimestampFlag:I

    .line 44
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getCtType()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCtType:I

    .line 45
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getNuitFieldBasedFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mNuitFieldBasedFlag:I

    .line 46
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getCountingType()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCountingType:I

    .line 47
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getFullTimestampFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFullTimestampFlag:I

    .line 48
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getDiscontinuityFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mDiscontinuityFlag:I

    .line 49
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getCntDroppedFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCntDroppedFlag:I

    .line 50
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getFrames()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFrames:I

    .line 51
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getSecondsValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsValue:I

    .line 52
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getMinutesValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesValue:I

    .line 53
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getHoursValue()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursValue:I

    .line 54
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getSecondsFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsFlag:I

    .line 55
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getMinutesFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesFlag:I

    .line 56
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getHoursFlag()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursFlag:I

    .line 57
    invoke-interface {p1}, Lcom/visualon/OSMPUtils/voOSSEIClockTimeStamp;->getTimeOffset()I

    move-result p1

    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mTimeOffset:I

    .line 59
    invoke-static {}, Lcom/visualon/OSMPUtils/voLog;->enablePrintLog()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mClockTimestampFlag is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mClockTimestampFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCtType is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCtType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mNuitFieldBasedFlag is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mNuitFieldBasedFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCountingType is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCountingType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mFullTimestampFlag is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFullTimestampFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\r\nmDiscontinuityFlag is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mDiscontinuityFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCntDroppedFlag is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCntDroppedFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mFrames is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFrames:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mSecondsValue is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mMinutesValue is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\r\nmHoursValue is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mSecondsFlag is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mMinutesFlag is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mHoursFlag is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mTimeOffset is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mTimeOffset:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@@@VOOSMPSEIClockTimestampImpl"

    invoke-static {v1, p1, v0}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getClockTimestampFlag()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mClockTimestampFlag:I

    return v0
.end method

.method public getCntDroppedFlag()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCntDroppedFlag:I

    return v0
.end method

.method public getCountingType()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCountingType:I

    return v0
.end method

.method public getCtType()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCtType:I

    return v0
.end method

.method public getDiscontinuityFlag()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mDiscontinuityFlag:I

    return v0
.end method

.method public getFrames()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFrames:I

    return v0
.end method

.method public getFullTimestampFlag()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFullTimestampFlag:I

    return v0
.end method

.method public getHoursFlag()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursFlag:I

    return v0
.end method

.method public getHoursValue()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursValue:I

    return v0
.end method

.method public getMinutesFlag()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesFlag:I

    return v0
.end method

.method public getMinutesValue()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesValue:I

    return v0
.end method

.method public getNuitFieldBasedFlag()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mNuitFieldBasedFlag:I

    return v0
.end method

.method public getSecondsFlag()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsFlag:I

    return v0
.end method

.method public getSecondsValue()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsValue:I

    return v0
.end method

.method public getTimeOffset()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mTimeOffset:I

    return v0
.end method

.method public setClockTimestampFlag(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mClockTimestampFlag:I

    return-void
.end method

.method public setCntDroppedFlag(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCntDroppedFlag:I

    return-void
.end method

.method public setCountingType(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCountingType:I

    return-void
.end method

.method public setCtType(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mCtType:I

    return-void
.end method

.method public setDiscontinuityFlag(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mDiscontinuityFlag:I

    return-void
.end method

.method public setFrames(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFrames:I

    return-void
.end method

.method public setFullTimestampFlag(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mFullTimestampFlag:I

    return-void
.end method

.method public setHoursFlag(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursFlag:I

    return-void
.end method

.method public setHoursValue(I)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mHoursValue:I

    return-void
.end method

.method public setMinutesFlag(I)V
    .locals 0

    .line 212
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesFlag:I

    return-void
.end method

.method public setMinutesValue(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mMinutesValue:I

    return-void
.end method

.method public setNuitFieldBasedFlag(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mNuitFieldBasedFlag:I

    return-void
.end method

.method public setSecondsFlag(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsFlag:I

    return-void
.end method

.method public setSecondsValue(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mSecondsValue:I

    return-void
.end method

.method public setTimeOffset(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPSEIClockTimestampImpl;->mTimeOffset:I

    return-void
.end method
