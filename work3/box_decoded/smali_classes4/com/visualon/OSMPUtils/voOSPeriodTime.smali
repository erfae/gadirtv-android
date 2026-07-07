.class public Lcom/visualon/OSMPUtils/voOSPeriodTime;
.super Ljava/lang/Object;
.source "voOSPeriodTime.java"


# instance fields
.field private mPeriodSequenceNumber:I

.field private mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPeriodSequenceNumber()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSPeriodTime;->mPeriodSequenceNumber:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSPeriodTime;->mTimeStamp:J

    return-wide v0
.end method

.method public setPeriodSequenceNumber(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSPeriodTime;->mPeriodSequenceNumber:I

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/visualon/OSMPUtils/voOSPeriodTime;->mTimeStamp:J

    return-void
.end method
