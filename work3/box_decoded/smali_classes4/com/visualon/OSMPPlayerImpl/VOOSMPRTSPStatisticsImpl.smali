.class Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;
.super Ljava/lang/Object;
.source "VOOSMPRTSPStatisticsImpl.java"

# interfaces
.implements Lcom/visualon/OSMPPlayer/VOOSMPRTSPStatistics;


# instance fields
.field mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSRTSPStatus;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    return-void
.end method


# virtual methods
.method public getAverageJitter()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRTSPStatus;->getAverageJitter()I

    move-result v0

    return v0
.end method

.method public getAverageLatency()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRTSPStatus;->getAverageLatency()I

    move-result v0

    return v0
.end method

.method public getPacketDuplicated()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRTSPStatus;->getPacketDuplicated()I

    move-result v0

    return v0
.end method

.method public getPacketLost()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRTSPStatus;->getPacketLost()I

    move-result v0

    return v0
.end method

.method public getPacketReceived()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRTSPStatus;->getPacketRecved()I

    move-result v0

    return v0
.end method

.method public getPacketSent()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSRTSPStatus;->getPacketSent()I

    move-result v0

    return v0
.end method

.method public parse(Landroid/os/Parcel;)V
    .locals 9

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    new-instance v0, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;

    sget-object v2, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;->VOOSMP_SS_NONE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/visualon/OSMPUtils/voOSRTSPStatusImpl;-><init>(Lcom/visualon/OSMPUtils/voOSType$VOOSMP_SOURCE_STREAMTYPE;IIIIII)V

    .line 39
    iput-object v0, p0, Lcom/visualon/OSMPPlayerImpl/VOOSMPRTSPStatisticsImpl;->mRtspStatistics:Lcom/visualon/OSMPUtils/voOSRTSPStatus;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-void
.end method
