.class Lcom/novoda/merlin/PingTaskFactory;
.super Ljava/lang/Object;
.source "PingTaskFactory.java"


# instance fields
.field private final responseCodeFetcher:Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;

.field private final responseCodeValidator:Lcom/novoda/merlin/ResponseCodeValidator;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;Lcom/novoda/merlin/ResponseCodeValidator;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/novoda/merlin/PingTaskFactory;->responseCodeFetcher:Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;

    .line 10
    iput-object p2, p0, Lcom/novoda/merlin/PingTaskFactory;->responseCodeValidator:Lcom/novoda/merlin/ResponseCodeValidator;

    return-void
.end method


# virtual methods
.method create(Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/EndpointPinger$PingerCallback;)Lcom/novoda/merlin/PingTask;
    .locals 3

    .line 14
    new-instance v0, Lcom/novoda/merlin/Ping;

    iget-object v1, p0, Lcom/novoda/merlin/PingTaskFactory;->responseCodeFetcher:Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;

    iget-object v2, p0, Lcom/novoda/merlin/PingTaskFactory;->responseCodeValidator:Lcom/novoda/merlin/ResponseCodeValidator;

    invoke-direct {v0, p1, v1, v2}, Lcom/novoda/merlin/Ping;-><init>(Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;Lcom/novoda/merlin/ResponseCodeValidator;)V

    .line 15
    new-instance p1, Lcom/novoda/merlin/PingTask;

    invoke-direct {p1, v0, p2}, Lcom/novoda/merlin/PingTask;-><init>(Lcom/novoda/merlin/Ping;Lcom/novoda/merlin/EndpointPinger$PingerCallback;)V

    return-object p1
.end method
