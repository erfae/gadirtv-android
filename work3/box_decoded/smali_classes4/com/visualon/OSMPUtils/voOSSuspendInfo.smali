.class public Lcom/visualon/OSMPUtils/voOSSuspendInfo;
.super Ljava/lang/Object;
.source "voOSSuspendInfo.java"


# instance fields
.field APILevel:I

.field bPaused:Z

.field bSuspend:Z

.field suspendTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->bSuspend:Z

    .line 27
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->bPaused:Z

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->suspendTimeStamp:J

    const/4 v0, 0x2

    .line 29
    iput v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->APILevel:I

    return-void
.end method


# virtual methods
.method public getAPILevel()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->APILevel:I

    return v0
.end method

.method public getSuspendTimeStamp()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->suspendTimeStamp:J

    return-wide v0
.end method

.method public isPaused()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->bPaused:Z

    return v0
.end method

.method public isSuspend()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->bSuspend:Z

    return v0
.end method

.method public setAPILevel(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->APILevel:I

    return-void
.end method

.method public setPausedStatus(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->bPaused:Z

    return-void
.end method

.method public setSuspendStatus(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->bSuspend:Z

    return-void
.end method

.method public setSuspendTimeStamp(J)V
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/visualon/OSMPUtils/voOSSuspendInfo;->suspendTimeStamp:J

    return-void
.end method
