.class Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;
.super Ljava/lang/Object;
.source "MerlinServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novoda/merlin/MerlinServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MerlinServiceConnection"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final endpoint:Lcom/novoda/merlin/Endpoint;

.field private final listenerHolder:Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;

.field private final validator:Lcom/novoda/merlin/ResponseCodeValidator;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/ResponseCodeValidator;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;->listenerHolder:Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;

    .line 58
    iput-object p3, p0, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;->endpoint:Lcom/novoda/merlin/Endpoint;

    .line 59
    iput-object p4, p0, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;->validator:Lcom/novoda/merlin/ResponseCodeValidator;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onServiceConnected"

    aput-object v1, p1, v0

    .line 64
    invoke-static {p1}, Lcom/novoda/merlin/Logger;->d([Ljava/lang/Object;)V

    .line 65
    check-cast p2, Lcom/novoda/merlin/MerlinService$LocalBinder;

    .line 66
    iget-object p1, p0, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;->context:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 67
    new-instance v0, Lcom/novoda/merlin/ConnectivityChangeEventExtractor;

    invoke-direct {v0, p1}, Lcom/novoda/merlin/ConnectivityChangeEventExtractor;-><init>(Landroid/net/ConnectivityManager;)V

    .line 68
    new-instance v1, Lcom/novoda/merlin/ConnectivityChangesRegister;

    iget-object v2, p0, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;->context:Landroid/content/Context;

    new-instance v3, Lcom/novoda/merlin/AndroidVersion;

    invoke-direct {v3}, Lcom/novoda/merlin/AndroidVersion;-><init>()V

    invoke-direct {v1, v2, p1, v3, v0}, Lcom/novoda/merlin/ConnectivityChangesRegister;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Lcom/novoda/merlin/AndroidVersion;Lcom/novoda/merlin/ConnectivityChangeEventExtractor;)V

    .line 74
    new-instance v5, Lcom/novoda/merlin/NetworkStatusRetriever;

    iget-object p1, p0, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/novoda/merlin/MerlinsBeard;->from(Landroid/content/Context;)Lcom/novoda/merlin/MerlinsBeard;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/novoda/merlin/NetworkStatusRetriever;-><init>(Lcom/novoda/merlin/MerlinsBeard;)V

    .line 75
    iget-object p1, p0, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;->endpoint:Lcom/novoda/merlin/Endpoint;

    iget-object v0, p0, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;->validator:Lcom/novoda/merlin/ResponseCodeValidator;

    invoke-static {p1, v0}, Lcom/novoda/merlin/EndpointPinger;->withCustomEndpointAndValidation(Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/ResponseCodeValidator;)Lcom/novoda/merlin/EndpointPinger;

    move-result-object v9

    .line 76
    new-instance p1, Lcom/novoda/merlin/ConnectivityChangesForwarder;

    iget-object v0, p0, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;->listenerHolder:Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;

    .line 78
    invoke-static {v0}, Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;->access$000(Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;)Lcom/novoda/merlin/DisconnectCallbackManager;

    move-result-object v6

    iget-object v0, p0, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;->listenerHolder:Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;

    .line 79
    invoke-static {v0}, Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;->access$100(Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;)Lcom/novoda/merlin/ConnectCallbackManager;

    move-result-object v7

    iget-object v0, p0, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;->listenerHolder:Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;

    .line 80
    invoke-static {v0}, Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;->access$200(Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;)Lcom/novoda/merlin/BindCallbackManager;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/novoda/merlin/ConnectivityChangesForwarder;-><init>(Lcom/novoda/merlin/NetworkStatusRetriever;Lcom/novoda/merlin/DisconnectCallbackManager;Lcom/novoda/merlin/ConnectCallbackManager;Lcom/novoda/merlin/BindCallbackManager;Lcom/novoda/merlin/EndpointPinger;)V

    .line 84
    invoke-virtual {p2, v1}, Lcom/novoda/merlin/MerlinService$LocalBinder;->setConnectivityChangesRegister(Lcom/novoda/merlin/ConnectivityChangesRegister;)V

    .line 85
    invoke-virtual {p2, p1}, Lcom/novoda/merlin/MerlinService$LocalBinder;->setConnectivityChangesForwarder(Lcom/novoda/merlin/ConnectivityChangesForwarder;)V

    .line 86
    invoke-virtual {p2}, Lcom/novoda/merlin/MerlinService$LocalBinder;->onBindComplete()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
