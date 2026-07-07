.class Lcom/novoda/merlin/Ping;
.super Ljava/lang/Object;
.source "Ping.java"


# instance fields
.field private final endpoint:Lcom/novoda/merlin/Endpoint;

.field private final responseCodeFetcher:Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;

.field private final validator:Lcom/novoda/merlin/ResponseCodeValidator;


# direct methods
.method constructor <init>(Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;Lcom/novoda/merlin/ResponseCodeValidator;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/novoda/merlin/Ping;->endpoint:Lcom/novoda/merlin/Endpoint;

    .line 11
    iput-object p2, p0, Lcom/novoda/merlin/Ping;->responseCodeFetcher:Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;

    .line 12
    iput-object p3, p0, Lcom/novoda/merlin/Ping;->validator:Lcom/novoda/merlin/ResponseCodeValidator;

    return-void
.end method


# virtual methods
.method doSynchronousPing()Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pinging: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/novoda/merlin/Ping;->endpoint:Lcom/novoda/merlin/Endpoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/novoda/merlin/Logger;->d([Ljava/lang/Object;)V

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/novoda/merlin/Ping;->validator:Lcom/novoda/merlin/ResponseCodeValidator;

    iget-object v2, p0, Lcom/novoda/merlin/Ping;->responseCodeFetcher:Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;

    iget-object v4, p0, Lcom/novoda/merlin/Ping;->endpoint:Lcom/novoda/merlin/Endpoint;

    invoke-virtual {v2, v4}, Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;->from(Lcom/novoda/merlin/Endpoint;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/novoda/merlin/ResponseCodeValidator;->isResponseCodeValid(I)Z

    move-result v0
    :try_end_0
    .catch Lcom/novoda/merlin/RequestException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 20
    invoke-virtual {v1}, Lcom/novoda/merlin/RequestException;->causedByIO()Z

    move-result v2

    if-nez v2, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ping task failed due to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/novoda/merlin/RequestException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/novoda/merlin/Logger;->e([Ljava/lang/Object;)V

    :cond_0
    return v3
.end method
