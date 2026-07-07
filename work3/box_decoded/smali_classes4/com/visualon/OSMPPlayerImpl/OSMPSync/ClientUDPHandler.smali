.class public Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;
.super Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;
.source "ClientUDPHandler.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field ackNumber:I

.field avgDelay:I

.field delay:J

.field lastReceiveTs:J

.field lastReqId:J

.field nextDelay:J

.field nextOffset:J

.field offset:J

.field phase:Z

.field private final playerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/visualon/OSMPPlayer/VOCommonPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final printPeriod:I

.field reqId:I

.field serverIp:Ljava/lang/String;

.field serverPort:I

.field final shuffelInterval:I

.field final sleepTimeAfterWarmup:I

.field final sleepTimeBeforeWarmup:I

.field startRequest:Z

.field final udpTimeout:J

.field warmup:Z

.field final warmupCount:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILcom/visualon/OSMPPlayer/VOCommonPlayer;Landroid/net/ConnectivityManager;)V
    .locals 4

    .line 37
    invoke-direct {p0, p1, p5}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;-><init>(ILandroid/net/ConnectivityManager;)V

    const-string p1, "ClientUDPHandler"

    .line 13
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->TAG:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 14
    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->delay:J

    const-wide/16 v2, 0x0

    .line 15
    iput-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->offset:J

    .line 16
    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->nextDelay:J

    .line 17
    iput-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->nextOffset:J

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->ackNumber:I

    const/4 p5, 0x1

    .line 19
    iput p5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->reqId:I

    .line 20
    iput-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->lastReqId:J

    .line 21
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->warmup:Z

    .line 22
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->phase:Z

    .line 23
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->startRequest:Z

    .line 24
    iput-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->lastReceiveTs:J

    const/16 p5, 0x64

    .line 25
    iput p5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->shuffelInterval:I

    const/16 p5, 0xa

    .line 26
    iput p5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->warmupCount:I

    .line 27
    iput p5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->sleepTimeBeforeWarmup:I

    const/16 p5, 0x1f4

    .line 28
    iput p5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->sleepTimeAfterWarmup:I

    const/16 p5, 0x1388

    .line 29
    iput p5, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->printPeriod:I

    const-wide/16 v0, 0x1388

    .line 30
    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->udpTimeout:J

    .line 31
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->avgDelay:I

    .line 38
    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->serverIp:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->serverPort:I

    .line 40
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;)Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->generatePacket()Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;)Z
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->isServerConnected()Z

    move-result p0

    return p0
.end method

.method private calculateSpeedValue(JFF)F
    .locals 6

    .line 176
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/16 v3, 0xf

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    return v2

    :cond_0
    const v0, 0x44bb8000    # 1500.0f

    long-to-float p1, p1

    div-float/2addr p1, v0

    add-float/2addr p1, v2

    .line 181
    invoke-static {p1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 182
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private generatePacket()Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;
    .locals 3

    .line 187
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;-><init>()V

    .line 188
    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->reqId:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->id:J

    const-wide/16 v1, 0x0

    .line 189
    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->ts0:J

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->ts1:J

    .line 191
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPTSPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->pts:J

    .line 192
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPlayerState()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    move-result-object v1

    iput-object v1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->state:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    .line 193
    iget v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->reqId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->reqId:I

    return-object v0
.end method

.method private isServerConnected()Z
    .locals 5

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->lastReceiveTs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateOffset(JJJ)V
    .locals 4

    sub-long v0, p5, p1

    const-wide/16 v2, 0x2

    .line 101
    div-long/2addr v0, v2

    sub-long p1, p3, p1

    sub-long/2addr p3, p5

    add-long/2addr p1, p3

    .line 102
    div-long/2addr p1, v2

    .line 103
    iget p3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->avgDelay:I

    int-to-long p3, p3

    add-long/2addr p3, v0

    long-to-int p4, p3

    iput p4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->avgDelay:I

    .line 104
    iget-wide p3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->delay:J

    cmp-long p5, v0, p3

    if-gez p5, :cond_0

    .line 105
    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->delay:J

    .line 106
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->offset:J

    .line 108
    :cond_0
    iget-boolean p3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->phase:Z

    if-eqz p3, :cond_1

    iget-wide p4, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->nextDelay:J

    cmp-long p6, v0, p4

    if-gez p6, :cond_1

    .line 109
    iput-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->nextDelay:J

    .line 110
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->nextOffset:J

    .line 112
    :cond_1
    iget p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->ackNumber:I

    const/16 p2, 0x64

    const-string p4, "ClientUDPHandler"

    if-ne p1, p2, :cond_3

    if-eqz p3, :cond_2

    .line 114
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->nextDelay:J

    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->delay:J

    .line 115
    iget-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->nextOffset:J

    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->offset:J

    const-wide p1, 0x7fffffffffffffffL

    .line 116
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->nextDelay:J

    const-wide/16 p1, 0x0

    .line 117
    iput-wide p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->nextOffset:J

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->phase:Z

    .line 121
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Average Delay:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->avgDelay:I

    iget p3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->ackNumber:I

    div-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 122
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->avgDelay:I

    .line 123
    iput p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->ackNumber:I

    .line 125
    :cond_3
    iget p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->ackNumber:I

    rem-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_4

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Offset:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->offset:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",Delay:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->delay:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private updateSpeed(JJ)V
    .locals 8

    .line 159
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->isLiveStreaming()Z

    move-result v0

    .line 160
    iget-wide v1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->offset:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    sub-long v1, p1, v1

    sub-long v1, p3, v1

    iget-object v3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPTSPosition()J

    move-result-wide v3

    sub-long/2addr v1, v3

    if-eqz v0, :cond_0

    const/high16 v3, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v3, 0x41800000    # 16.0f

    :goto_0
    if-eqz v0, :cond_1

    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    const v4, 0x3c23d70a    # 0.01f

    .line 163
    :goto_1
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->calculateSpeedValue(JFF)F

    move-result v3

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time Diff :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ClientUDPHandler"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v6, 0x2710

    cmp-long v4, v1, v6

    if-ltz v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    .line 169
    :cond_2
    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->offset:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    sub-long/2addr p1, v0

    sub-long/2addr p3, p1

    .line 170
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {p1, p3, p4}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setPosition(J)J

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Seek to: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 166
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {p1, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setAudioPlaybackSpeed(F)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "playback speed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private updateState(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;J)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPlayerState()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->isLiveStreaming()Z

    move-result v0

    .line 135
    sget-object v1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$2;->$SwitchMap$com$visualon$OSMPPlayer$VOOSMPType$VO_OSMP_STATE:[I

    invoke-virtual {p1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    .line 154
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-interface {p1, p2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setAudioPlaybackSpeed(F)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->start()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-nez v0, :cond_3

    .line 139
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {p1, p2, p3}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setPosition(J)J

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->startRequest:Z

    .line 97
    invoke-super {p0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;->close()V

    return-void
.end method

.method public initRequest()V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->startRequest:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->startRequest:Z

    .line 71
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;

    invoke-direct {v0, p0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler$1;-><init>(Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onMessage(Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;Ljava/lang/String;I)V
    .locals 7

    .line 45
    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_2

    iget-wide p2, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->id:J

    iget-wide v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->lastReqId:J

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->lastReceiveTs:J

    .line 49
    iget-wide p2, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->id:J

    iput-wide p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->lastReqId:J

    .line 50
    iget p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->ackNumber:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->ackNumber:I

    .line 51
    iget-wide v1, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->ts0:J

    iget-wide v3, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->ts1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->updateOffset(JJJ)V

    .line 52
    iget-object p2, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->state:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    iget-wide v0, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->pts:J

    invoke-direct {p0, p2, v0, v1}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->updateState(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;J)V

    .line 53
    iget-object p2, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->state:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;->VO_OSMP_STATE_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {p2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPlayerState()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    move-result-object p2

    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;->VO_OSMP_STATE_PLAYING:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    if-ne p2, v0, :cond_1

    .line 54
    iget-wide v0, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->ts1:J

    iget-wide p1, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->pts:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->updateSpeed(JJ)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-interface {p1, p2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setAudioPlaybackSpeed(F)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 58
    :goto_0
    iget-boolean p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->warmup:Z

    if-nez p1, :cond_2

    .line 59
    iget p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->ackNumber:I

    const/16 p2, 0xa

    if-ne p1, p2, :cond_2

    .line 60
    iput-boolean p3, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ClientUDPHandler;->warmup:Z

    :cond_2
    :goto_1
    return-void
.end method
