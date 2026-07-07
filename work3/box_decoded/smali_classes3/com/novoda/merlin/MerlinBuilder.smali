.class public Lcom/novoda/merlin/MerlinBuilder;
.super Ljava/lang/Object;
.source "MerlinBuilder.java"


# instance fields
.field private bindables:Lcom/novoda/merlin/Register;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/novoda/merlin/Register<",
            "Lcom/novoda/merlin/Bindable;",
            ">;"
        }
    .end annotation
.end field

.field private connectables:Lcom/novoda/merlin/Register;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/novoda/merlin/Register<",
            "Lcom/novoda/merlin/Connectable;",
            ">;"
        }
    .end annotation
.end field

.field private disconnectables:Lcom/novoda/merlin/Register;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/novoda/merlin/Register<",
            "Lcom/novoda/merlin/Disconnectable;",
            ">;"
        }
    .end annotation
.end field

.field private endpoint:Lcom/novoda/merlin/Endpoint;

.field private merlinConnector:Lcom/novoda/merlin/ConnectCallbackManager;

.field private merlinDisconnector:Lcom/novoda/merlin/DisconnectCallbackManager;

.field private merlinOnBinder:Lcom/novoda/merlin/BindCallbackManager;

.field private responseCodeValidator:Lcom/novoda/merlin/ResponseCodeValidator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/novoda/merlin/Endpoint;->captivePortalEndpoint()Lcom/novoda/merlin/Endpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/novoda/merlin/MerlinBuilder;->endpoint:Lcom/novoda/merlin/Endpoint;

    .line 18
    new-instance v0, Lcom/novoda/merlin/ResponseCodeValidator$CaptivePortalResponseCodeValidator;

    invoke-direct {v0}, Lcom/novoda/merlin/ResponseCodeValidator$CaptivePortalResponseCodeValidator;-><init>()V

    iput-object v0, p0, Lcom/novoda/merlin/MerlinBuilder;->responseCodeValidator:Lcom/novoda/merlin/ResponseCodeValidator;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/novoda/merlin/Merlin;
    .locals 8

    .line 119
    new-instance v7, Lcom/novoda/merlin/MerlinServiceBinder;

    iget-object v2, p0, Lcom/novoda/merlin/MerlinBuilder;->merlinConnector:Lcom/novoda/merlin/ConnectCallbackManager;

    iget-object v3, p0, Lcom/novoda/merlin/MerlinBuilder;->merlinDisconnector:Lcom/novoda/merlin/DisconnectCallbackManager;

    iget-object v4, p0, Lcom/novoda/merlin/MerlinBuilder;->merlinOnBinder:Lcom/novoda/merlin/BindCallbackManager;

    iget-object v5, p0, Lcom/novoda/merlin/MerlinBuilder;->endpoint:Lcom/novoda/merlin/Endpoint;

    iget-object v6, p0, Lcom/novoda/merlin/MerlinBuilder;->responseCodeValidator:Lcom/novoda/merlin/ResponseCodeValidator;

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/novoda/merlin/MerlinServiceBinder;-><init>(Landroid/content/Context;Lcom/novoda/merlin/ConnectCallbackManager;Lcom/novoda/merlin/DisconnectCallbackManager;Lcom/novoda/merlin/BindCallbackManager;Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/ResponseCodeValidator;)V

    .line 128
    new-instance p1, Lcom/novoda/merlin/Registrar;

    iget-object v0, p0, Lcom/novoda/merlin/MerlinBuilder;->connectables:Lcom/novoda/merlin/Register;

    iget-object v1, p0, Lcom/novoda/merlin/MerlinBuilder;->disconnectables:Lcom/novoda/merlin/Register;

    iget-object v2, p0, Lcom/novoda/merlin/MerlinBuilder;->bindables:Lcom/novoda/merlin/Register;

    invoke-direct {p1, v0, v1, v2}, Lcom/novoda/merlin/Registrar;-><init>(Lcom/novoda/merlin/Register;Lcom/novoda/merlin/Register;Lcom/novoda/merlin/Register;)V

    .line 129
    new-instance v0, Lcom/novoda/merlin/Merlin;

    invoke-direct {v0, v7, p1}, Lcom/novoda/merlin/Merlin;-><init>(Lcom/novoda/merlin/MerlinServiceBinder;Lcom/novoda/merlin/Registrar;)V

    return-object v0
.end method

.method public withAllCallbacks()Lcom/novoda/merlin/MerlinBuilder;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/novoda/merlin/MerlinBuilder;->withConnectableCallbacks()Lcom/novoda/merlin/MerlinBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/novoda/merlin/MerlinBuilder;->withDisconnectableCallbacks()Lcom/novoda/merlin/MerlinBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/novoda/merlin/MerlinBuilder;->withBindableCallbacks()Lcom/novoda/merlin/MerlinBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withBindableCallbacks()Lcom/novoda/merlin/MerlinBuilder;
    .locals 2

    .line 51
    new-instance v0, Lcom/novoda/merlin/Register;

    invoke-direct {v0}, Lcom/novoda/merlin/Register;-><init>()V

    iput-object v0, p0, Lcom/novoda/merlin/MerlinBuilder;->bindables:Lcom/novoda/merlin/Register;

    .line 52
    new-instance v1, Lcom/novoda/merlin/BindCallbackManager;

    invoke-direct {v1, v0}, Lcom/novoda/merlin/BindCallbackManager;-><init>(Lcom/novoda/merlin/Register;)V

    iput-object v1, p0, Lcom/novoda/merlin/MerlinBuilder;->merlinOnBinder:Lcom/novoda/merlin/BindCallbackManager;

    return-object p0
.end method

.method public withConnectableCallbacks()Lcom/novoda/merlin/MerlinBuilder;
    .locals 2

    .line 29
    new-instance v0, Lcom/novoda/merlin/Register;

    invoke-direct {v0}, Lcom/novoda/merlin/Register;-><init>()V

    iput-object v0, p0, Lcom/novoda/merlin/MerlinBuilder;->connectables:Lcom/novoda/merlin/Register;

    .line 30
    new-instance v1, Lcom/novoda/merlin/ConnectCallbackManager;

    invoke-direct {v1, v0}, Lcom/novoda/merlin/ConnectCallbackManager;-><init>(Lcom/novoda/merlin/Register;)V

    iput-object v1, p0, Lcom/novoda/merlin/MerlinBuilder;->merlinConnector:Lcom/novoda/merlin/ConnectCallbackManager;

    return-object p0
.end method

.method public withDisconnectableCallbacks()Lcom/novoda/merlin/MerlinBuilder;
    .locals 2

    .line 40
    new-instance v0, Lcom/novoda/merlin/Register;

    invoke-direct {v0}, Lcom/novoda/merlin/Register;-><init>()V

    iput-object v0, p0, Lcom/novoda/merlin/MerlinBuilder;->disconnectables:Lcom/novoda/merlin/Register;

    .line 41
    new-instance v1, Lcom/novoda/merlin/DisconnectCallbackManager;

    invoke-direct {v1, v0}, Lcom/novoda/merlin/DisconnectCallbackManager;-><init>(Lcom/novoda/merlin/Register;)V

    iput-object v1, p0, Lcom/novoda/merlin/MerlinBuilder;->merlinDisconnector:Lcom/novoda/merlin/DisconnectCallbackManager;

    return-object p0
.end method

.method public withEndpoint(Lcom/novoda/merlin/Endpoint;)Lcom/novoda/merlin/MerlinBuilder;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/novoda/merlin/MerlinBuilder;->endpoint:Lcom/novoda/merlin/Endpoint;

    return-object p0
.end method

.method public withLogging(Z)Lcom/novoda/merlin/MerlinBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    invoke-static {}, Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;->getInstance()Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;

    move-result-object v0

    invoke-static {v0}, Lcom/novoda/merlin/Logger;->detach(Lcom/novoda/merlin/Logger$LogHandle;)V

    if-eqz p1, :cond_0

    .line 83
    invoke-static {}, Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;->getInstance()Lcom/novoda/merlin/MerlinBackwardsCompatibleLog;

    move-result-object p1

    invoke-static {p1}, Lcom/novoda/merlin/Logger;->attach(Lcom/novoda/merlin/Logger$LogHandle;)V

    :cond_0
    return-object p0
.end method

.method public withResponseCodeValidator(Lcom/novoda/merlin/ResponseCodeValidator;)Lcom/novoda/merlin/MerlinBuilder;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/novoda/merlin/MerlinBuilder;->responseCodeValidator:Lcom/novoda/merlin/ResponseCodeValidator;

    return-object p0
.end method
