.class Lcom/novoda/merlin/ConnectivityChangesForwarder$1;
.super Ljava/lang/Object;
.source "ConnectivityChangesForwarder.java"

# interfaces
.implements Lcom/novoda/merlin/EndpointPinger$PingerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novoda/merlin/ConnectivityChangesForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novoda/merlin/ConnectivityChangesForwarder;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/ConnectivityChangesForwarder;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder$1;->this$0:Lcom/novoda/merlin/ConnectivityChangesForwarder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder$1;->this$0:Lcom/novoda/merlin/ConnectivityChangesForwarder;

    invoke-static {}, Lcom/novoda/merlin/NetworkStatus;->newUnavailableInstance()Lcom/novoda/merlin/NetworkStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novoda/merlin/ConnectivityChangesForwarder;->access$002(Lcom/novoda/merlin/ConnectivityChangesForwarder;Lcom/novoda/merlin/NetworkStatus;)Lcom/novoda/merlin/NetworkStatus;

    .line 67
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder$1;->this$0:Lcom/novoda/merlin/ConnectivityChangesForwarder;

    invoke-static {v0}, Lcom/novoda/merlin/ConnectivityChangesForwarder;->access$200(Lcom/novoda/merlin/ConnectivityChangesForwarder;)Lcom/novoda/merlin/DisconnectCallbackManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder$1;->this$0:Lcom/novoda/merlin/ConnectivityChangesForwarder;

    invoke-static {v0}, Lcom/novoda/merlin/ConnectivityChangesForwarder;->access$200(Lcom/novoda/merlin/ConnectivityChangesForwarder;)Lcom/novoda/merlin/DisconnectCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/novoda/merlin/DisconnectCallbackManager;->onDisconnect()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder$1;->this$0:Lcom/novoda/merlin/ConnectivityChangesForwarder;

    invoke-static {}, Lcom/novoda/merlin/NetworkStatus;->newAvailableInstance()Lcom/novoda/merlin/NetworkStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novoda/merlin/ConnectivityChangesForwarder;->access$002(Lcom/novoda/merlin/ConnectivityChangesForwarder;Lcom/novoda/merlin/NetworkStatus;)Lcom/novoda/merlin/NetworkStatus;

    .line 59
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder$1;->this$0:Lcom/novoda/merlin/ConnectivityChangesForwarder;

    invoke-static {v0}, Lcom/novoda/merlin/ConnectivityChangesForwarder;->access$100(Lcom/novoda/merlin/ConnectivityChangesForwarder;)Lcom/novoda/merlin/ConnectCallbackManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/novoda/merlin/ConnectivityChangesForwarder$1;->this$0:Lcom/novoda/merlin/ConnectivityChangesForwarder;

    invoke-static {v0}, Lcom/novoda/merlin/ConnectivityChangesForwarder;->access$100(Lcom/novoda/merlin/ConnectivityChangesForwarder;)Lcom/novoda/merlin/ConnectCallbackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/novoda/merlin/ConnectCallbackManager;->onConnect()V

    :cond_0
    return-void
.end method
