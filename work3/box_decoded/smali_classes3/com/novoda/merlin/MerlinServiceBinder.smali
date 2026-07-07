.class Lcom/novoda/merlin/MerlinServiceBinder;
.super Ljava/lang/Object;
.source "MerlinServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;,
        Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private endpoint:Lcom/novoda/merlin/Endpoint;

.field private final listenerHolder:Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;

.field private merlinServiceConnection:Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;

.field private validator:Lcom/novoda/merlin/ResponseCodeValidator;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/novoda/merlin/ConnectCallbackManager;Lcom/novoda/merlin/DisconnectCallbackManager;Lcom/novoda/merlin/BindCallbackManager;Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/ResponseCodeValidator;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p6, p0, Lcom/novoda/merlin/MerlinServiceBinder;->validator:Lcom/novoda/merlin/ResponseCodeValidator;

    .line 22
    new-instance p6, Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;

    invoke-direct {p6, p2, p3, p4}, Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;-><init>(Lcom/novoda/merlin/ConnectCallbackManager;Lcom/novoda/merlin/DisconnectCallbackManager;Lcom/novoda/merlin/BindCallbackManager;)V

    iput-object p6, p0, Lcom/novoda/merlin/MerlinServiceBinder;->listenerHolder:Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;

    .line 23
    iput-object p1, p0, Lcom/novoda/merlin/MerlinServiceBinder;->context:Landroid/content/Context;

    .line 24
    iput-object p5, p0, Lcom/novoda/merlin/MerlinServiceBinder;->endpoint:Lcom/novoda/merlin/Endpoint;

    return-void
.end method


# virtual methods
.method bindService()V
    .locals 5

    .line 33
    iget-object v0, p0, Lcom/novoda/merlin/MerlinServiceBinder;->merlinServiceConnection:Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;

    iget-object v1, p0, Lcom/novoda/merlin/MerlinServiceBinder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/novoda/merlin/MerlinServiceBinder;->listenerHolder:Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;

    iget-object v3, p0, Lcom/novoda/merlin/MerlinServiceBinder;->endpoint:Lcom/novoda/merlin/Endpoint;

    iget-object v4, p0, Lcom/novoda/merlin/MerlinServiceBinder;->validator:Lcom/novoda/merlin/ResponseCodeValidator;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;-><init>(Landroid/content/Context;Lcom/novoda/merlin/MerlinServiceBinder$ListenerHolder;Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/ResponseCodeValidator;)V

    iput-object v0, p0, Lcom/novoda/merlin/MerlinServiceBinder;->merlinServiceConnection:Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;

    .line 36
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/novoda/merlin/MerlinServiceBinder;->context:Landroid/content/Context;

    const-class v2, Lcom/novoda/merlin/MerlinService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    iget-object v1, p0, Lcom/novoda/merlin/MerlinServiceBinder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/novoda/merlin/MerlinServiceBinder;->merlinServiceConnection:Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method setEndpoint(Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/ResponseCodeValidator;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/novoda/merlin/MerlinServiceBinder;->endpoint:Lcom/novoda/merlin/Endpoint;

    .line 29
    iput-object p2, p0, Lcom/novoda/merlin/MerlinServiceBinder;->validator:Lcom/novoda/merlin/ResponseCodeValidator;

    return-void
.end method

.method unbind()V
    .locals 4

    .line 41
    invoke-static {}, Lcom/novoda/merlin/MerlinService;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/novoda/merlin/MerlinServiceBinder;->merlinServiceConnection:Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/novoda/merlin/MerlinServiceBinder;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 43
    iget-object v0, p0, Lcom/novoda/merlin/MerlinServiceBinder;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/novoda/merlin/MerlinServiceBinder;->context:Landroid/content/Context;

    const-class v3, Lcom/novoda/merlin/MerlinService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/novoda/merlin/MerlinServiceBinder;->merlinServiceConnection:Lcom/novoda/merlin/MerlinServiceBinder$MerlinServiceConnection;

    :cond_0
    return-void
.end method
