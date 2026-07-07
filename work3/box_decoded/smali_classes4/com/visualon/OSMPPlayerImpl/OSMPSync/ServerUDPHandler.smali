.class public Lcom/visualon/OSMPPlayerImpl/OSMPSync/ServerUDPHandler;
.super Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;
.source "ServerUDPHandler.java"


# instance fields
.field private final playerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/visualon/OSMPPlayer/VOCommonPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/visualon/OSMPPlayer/VOCommonPlayer;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p3}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/UDPHandler;-><init>(ILandroid/net/ConnectivityManager;)V

    .line 14
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ServerUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public initRequest()V
    .locals 0

    return-void
.end method

.method public onMessage(Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;Ljava/lang/String;I)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ServerUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;-><init>()V

    .line 21
    iget-wide v1, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->id:J

    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->id:J

    .line 22
    iget-wide v1, p1, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->ts1:J

    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->ts0:J

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->ts1:J

    .line 24
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ServerUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPTSPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->pts:J

    .line 25
    iget-object p1, p0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ServerUDPHandler;->playerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {p1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPlayerState()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    move-result-object p1

    iput-object p1, v0, Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;->state:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATE;

    .line 26
    invoke-virtual {p0, v0, p2, p3}, Lcom/visualon/OSMPPlayerImpl/OSMPSync/ServerUDPHandler;->send(Lcom/visualon/OSMPPlayerImpl/OSMPSync/Packet;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
