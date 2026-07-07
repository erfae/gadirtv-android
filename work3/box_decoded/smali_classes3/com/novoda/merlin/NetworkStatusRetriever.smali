.class Lcom/novoda/merlin/NetworkStatusRetriever;
.super Ljava/lang/Object;
.source "NetworkStatusRetriever.java"


# instance fields
.field private final merlinsBeard:Lcom/novoda/merlin/MerlinsBeard;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/MerlinsBeard;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/novoda/merlin/NetworkStatusRetriever;->merlinsBeard:Lcom/novoda/merlin/MerlinsBeard;

    return-void
.end method


# virtual methods
.method fetchWithPing(Lcom/novoda/merlin/EndpointPinger;Lcom/novoda/merlin/EndpointPinger$PingerCallback;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/novoda/merlin/NetworkStatusRetriever;->merlinsBeard:Lcom/novoda/merlin/MerlinsBeard;

    invoke-virtual {v0}, Lcom/novoda/merlin/MerlinsBeard;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1, p2}, Lcom/novoda/merlin/EndpointPinger;->ping(Lcom/novoda/merlin/EndpointPinger$PingerCallback;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1, p2}, Lcom/novoda/merlin/EndpointPinger;->noNetworkToPing(Lcom/novoda/merlin/EndpointPinger$PingerCallback;)V

    :goto_0
    return-void
.end method

.method retrieveNetworkStatus()Lcom/novoda/merlin/NetworkStatus;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/novoda/merlin/NetworkStatusRetriever;->merlinsBeard:Lcom/novoda/merlin/MerlinsBeard;

    invoke-virtual {v0}, Lcom/novoda/merlin/MerlinsBeard;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/novoda/merlin/NetworkStatus;->newAvailableInstance()Lcom/novoda/merlin/NetworkStatus;

    move-result-object v0

    return-object v0

    .line 23
    :cond_0
    invoke-static {}, Lcom/novoda/merlin/NetworkStatus;->newUnavailableInstance()Lcom/novoda/merlin/NetworkStatus;

    move-result-object v0

    return-object v0
.end method
