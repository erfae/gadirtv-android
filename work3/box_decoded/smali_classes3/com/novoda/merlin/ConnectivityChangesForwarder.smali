.class Lcom/novoda/merlin/ConnectivityChangesForwarder;
.super Ljava/lang/Object;
.source "ConnectivityChangesForwarder.java"


# instance fields
.field private final bindCallbackManager:Lcom/novoda/merlin/BindCallbackManager;

.field private final connectCallbackManager:Lcom/novoda/merlin/ConnectCallbackManager;

.field private final disconnectCallbackManager:Lcom/novoda/merlin/DisconnectCallbackManager;

.field private final endpointPinger:Lcom/novoda/merlin/EndpointPinger;

.field private final endpointPingerCallback:Lcom/novoda/merlin/EndpointPinger$PingerCallback;

.field private lastEndpointPingNetworkStatus:Lcom/novoda/merlin/NetworkStatus;

.field private final networkStatusRetriever:Lcom/novoda/merlin/NetworkStatusRetriever;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/NetworkStatusRetriever;Lcom/novoda/merlin/DisconnectCallbackManager;Lcom/novoda/merlin/ConnectCallbackManager;Lcom/novoda/merlin/BindCallbackManager;Lcom/novoda/merlin/EndpointPinger;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/novoda/merlin/ConnectivityChangesForwarder$1;

    invoke-direct {v0, p0}, Lcom/novoda/merlin/ConnectivityChangesForwarder$1;-><init>(Lcom/novoda/merlin/ConnectivityChangesForwarder;)V

    iput-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->endpointPingerCallback:Lcom/novoda/merlin/EndpointPinger$PingerCallback;

    .line 18
    iput-object p1, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->networkStatusRetriever:Lcom/novoda/merlin/NetworkStatusRetriever;

    .line 19
    iput-object p2, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->disconnectCallbackManager:Lcom/novoda/merlin/DisconnectCallbackManager;

    .line 20
    iput-object p3, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->connectCallbackManager:Lcom/novoda/merlin/ConnectCallbackManager;

    .line 21
    iput-object p4, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->bindCallbackManager:Lcom/novoda/merlin/BindCallbackManager;

    .line 22
    iput-object p5, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->endpointPinger:Lcom/novoda/merlin/EndpointPinger;

    return-void
.end method

.method static synthetic access$002(Lcom/novoda/merlin/ConnectivityChangesForwarder;Lcom/novoda/merlin/NetworkStatus;)Lcom/novoda/merlin/NetworkStatus;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->lastEndpointPingNetworkStatus:Lcom/novoda/merlin/NetworkStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/novoda/merlin/ConnectivityChangesForwarder;)Lcom/novoda/merlin/ConnectCallbackManager;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->connectCallbackManager:Lcom/novoda/merlin/ConnectCallbackManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/novoda/merlin/ConnectivityChangesForwarder;)Lcom/novoda/merlin/DisconnectCallbackManager;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->disconnectCallbackManager:Lcom/novoda/merlin/DisconnectCallbackManager;

    return-object p0
.end method

.method private hasPerformedEndpointPing()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->lastEndpointPingNetworkStatus:Lcom/novoda/merlin/NetworkStatus;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private matchesPreviousEndpointPingNetworkStatus(Lcom/novoda/merlin/ConnectivityChangeEvent;)Z
    .locals 1

    .line 52
    invoke-virtual {p1}, Lcom/novoda/merlin/ConnectivityChangeEvent;->asNetworkStatus()Lcom/novoda/merlin/NetworkStatus;

    move-result-object p1

    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->lastEndpointPingNetworkStatus:Lcom/novoda/merlin/NetworkStatus;

    invoke-virtual {p1, v0}, Lcom/novoda/merlin/NetworkStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method forward(Lcom/novoda/merlin/ConnectivityChangeEvent;)V
    .locals 3

    .line 43
    invoke-direct {p0, p1}, Lcom/novoda/merlin/ConnectivityChangesForwarder;->matchesPreviousEndpointPingNetworkStatus(Lcom/novoda/merlin/ConnectivityChangeEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->networkStatusRetriever:Lcom/novoda/merlin/NetworkStatusRetriever;

    iget-object v1, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->endpointPinger:Lcom/novoda/merlin/EndpointPinger;

    iget-object v2, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->endpointPingerCallback:Lcom/novoda/merlin/EndpointPinger$PingerCallback;

    invoke-virtual {v0, v1, v2}, Lcom/novoda/merlin/NetworkStatusRetriever;->fetchWithPing(Lcom/novoda/merlin/EndpointPinger;Lcom/novoda/merlin/EndpointPinger$PingerCallback;)V

    .line 48
    invoke-virtual {p1}, Lcom/novoda/merlin/ConnectivityChangeEvent;->asNetworkStatus()Lcom/novoda/merlin/NetworkStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->lastEndpointPingNetworkStatus:Lcom/novoda/merlin/NetworkStatus;

    return-void
.end method

.method forwardInitialNetworkStatus()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->bindCallbackManager:Lcom/novoda/merlin/BindCallbackManager;

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/novoda/merlin/ConnectivityChangesForwarder;->hasPerformedEndpointPing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->bindCallbackManager:Lcom/novoda/merlin/BindCallbackManager;

    iget-object v1, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->lastEndpointPingNetworkStatus:Lcom/novoda/merlin/NetworkStatus;

    invoke-virtual {v0, v1}, Lcom/novoda/merlin/BindCallbackManager;->onMerlinBind(Lcom/novoda/merlin/NetworkStatus;)V

    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->bindCallbackManager:Lcom/novoda/merlin/BindCallbackManager;

    iget-object v1, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder;->networkStatusRetriever:Lcom/novoda/merlin/NetworkStatusRetriever;

    invoke-virtual {v1}, Lcom/novoda/merlin/NetworkStatusRetriever;->retrieveNetworkStatus()Lcom/novoda/merlin/NetworkStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/novoda/merlin/BindCallbackManager;->onMerlinBind(Lcom/novoda/merlin/NetworkStatus;)V

    return-void
.end method
