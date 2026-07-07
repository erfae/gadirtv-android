.class Lcom/novoda/merlin/EndpointPinger;
.super Ljava/lang/Object;
.source "EndpointPinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;,
        Lcom/novoda/merlin/EndpointPinger$PingerCallback;
    }
.end annotation


# instance fields
.field private final endpoint:Lcom/novoda/merlin/Endpoint;

.field private final pingTaskFactory:Lcom/novoda/merlin/PingTaskFactory;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/PingTaskFactory;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/novoda/merlin/EndpointPinger;->endpoint:Lcom/novoda/merlin/Endpoint;

    .line 23
    iput-object p2, p0, Lcom/novoda/merlin/EndpointPinger;->pingTaskFactory:Lcom/novoda/merlin/PingTaskFactory;

    return-void
.end method

.method static withCustomEndpointAndValidation(Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/ResponseCodeValidator;)Lcom/novoda/merlin/EndpointPinger;
    .locals 2

    .line 17
    new-instance v0, Lcom/novoda/merlin/PingTaskFactory;

    new-instance v1, Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;

    invoke-direct {v1}, Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/novoda/merlin/PingTaskFactory;-><init>(Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;Lcom/novoda/merlin/ResponseCodeValidator;)V

    .line 18
    new-instance p1, Lcom/novoda/merlin/EndpointPinger;

    invoke-direct {p1, p0, v0}, Lcom/novoda/merlin/EndpointPinger;-><init>(Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/PingTaskFactory;)V

    return-object p1
.end method


# virtual methods
.method noNetworkToPing(Lcom/novoda/merlin/EndpointPinger$PingerCallback;)V
    .locals 0

    .line 32
    invoke-interface {p1}, Lcom/novoda/merlin/EndpointPinger$PingerCallback;->onFailure()V

    return-void
.end method

.method ping(Lcom/novoda/merlin/EndpointPinger$PingerCallback;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/novoda/merlin/EndpointPinger;->pingTaskFactory:Lcom/novoda/merlin/PingTaskFactory;

    iget-object v1, p0, Lcom/novoda/merlin/EndpointPinger;->endpoint:Lcom/novoda/merlin/Endpoint;

    invoke-virtual {v0, v1, p1}, Lcom/novoda/merlin/PingTaskFactory;->create(Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/EndpointPinger$PingerCallback;)Lcom/novoda/merlin/PingTask;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 28
    invoke-virtual {p1, v0}, Lcom/novoda/merlin/PingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
