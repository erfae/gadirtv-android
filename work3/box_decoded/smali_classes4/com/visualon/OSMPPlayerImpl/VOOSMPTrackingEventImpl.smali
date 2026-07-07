.class Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;
.super Ljava/lang/Object;
.source "VOOSMPTrackingEventImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPTrackingEvent;


# instance fields
.field private mElapsedTime:J

.field private mEventText:[Ljava/lang/String;

.field private mEventValue:J

.field private mPeriodID:I

.field private mPlayingTime:J

.field private mTrackingEventType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;IJJJ[Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mTrackingEventType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    .line 34
    iput p2, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mPeriodID:I

    .line 35
    iput-wide p3, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mElapsedTime:J

    .line 36
    iput-wide p5, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mEventValue:J

    .line 37
    iput-wide p7, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mPlayingTime:J

    .line 38
    iput-object p9, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mEventText:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getElapsedTime()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mElapsedTime:J

    return-wide v0
.end method

.method public getEventText()[Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mEventText:[Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mTrackingEventType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    return-object v0
.end method

.method public getEventValue()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mEventValue:J

    return-wide v0
.end method

.method public getPeriodID()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mPeriodID:I

    return v0
.end method

.method public getPlayingTime()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mPlayingTime:J

    return-wide v0
.end method

.method public setElapsedTime(J)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mElapsedTime:J

    .line 53
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setEventValue(J)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mEventValue:J

    .line 58
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setPeriodID(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 47
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mPeriodID:I

    .line 48
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setPlayingTime(J)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 62
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mPlayingTime:J

    .line 63
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method

.method public setTrackingEventType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPTrackingEventImpl;->mTrackingEventType:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ADS_TRACKING_EVENT_TYPE;

    .line 43
    sget-object p1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    return-object p1
.end method
