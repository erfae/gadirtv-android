.class public Lcom/novoda/merlin/MerlinsBeardBuilder;
.super Ljava/lang/Object;
.source "MerlinsBeardBuilder.java"


# instance fields
.field private endpoint:Lcom/novoda/merlin/Endpoint;

.field private responseCodeValidator:Lcom/novoda/merlin/ResponseCodeValidator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Lcom/novoda/merlin/Endpoint;->captivePortalEndpoint()Lcom/novoda/merlin/Endpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/novoda/merlin/MerlinsBeardBuilder;->endpoint:Lcom/novoda/merlin/Endpoint;

    .line 9
    new-instance v0, Lcom/novoda/merlin/ResponseCodeValidator$CaptivePortalResponseCodeValidator;

    invoke-direct {v0}, Lcom/novoda/merlin/ResponseCodeValidator$CaptivePortalResponseCodeValidator;-><init>()V

    iput-object v0, p0, Lcom/novoda/merlin/MerlinsBeardBuilder;->responseCodeValidator:Lcom/novoda/merlin/ResponseCodeValidator;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/novoda/merlin/MerlinsBeard;
    .locals 6

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 40
    new-instance v0, Lcom/novoda/merlin/AndroidVersion;

    invoke-direct {v0}, Lcom/novoda/merlin/AndroidVersion;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/novoda/merlin/MerlinsBeardBuilder;->endpoint:Lcom/novoda/merlin/Endpoint;

    iget-object v2, p0, Lcom/novoda/merlin/MerlinsBeardBuilder;->responseCodeValidator:Lcom/novoda/merlin/ResponseCodeValidator;

    invoke-static {v1, v2}, Lcom/novoda/merlin/EndpointPinger;->withCustomEndpointAndValidation(Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/ResponseCodeValidator;)Lcom/novoda/merlin/EndpointPinger;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/novoda/merlin/Ping;

    iget-object v3, p0, Lcom/novoda/merlin/MerlinsBeardBuilder;->endpoint:Lcom/novoda/merlin/Endpoint;

    new-instance v4, Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;

    invoke-direct {v4}, Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;-><init>()V

    iget-object v5, p0, Lcom/novoda/merlin/MerlinsBeardBuilder;->responseCodeValidator:Lcom/novoda/merlin/ResponseCodeValidator;

    invoke-direct {v2, v3, v4, v5}, Lcom/novoda/merlin/Ping;-><init>(Lcom/novoda/merlin/Endpoint;Lcom/novoda/merlin/EndpointPinger$ResponseCodeFetcher;Lcom/novoda/merlin/ResponseCodeValidator;)V

    .line 44
    new-instance v3, Lcom/novoda/merlin/MerlinsBeard;

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/novoda/merlin/MerlinsBeard;-><init>(Landroid/net/ConnectivityManager;Lcom/novoda/merlin/AndroidVersion;Lcom/novoda/merlin/EndpointPinger;Lcom/novoda/merlin/Ping;)V

    return-object v3
.end method

.method public withEndpoint(Lcom/novoda/merlin/Endpoint;)Lcom/novoda/merlin/MerlinsBeardBuilder;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/novoda/merlin/MerlinsBeardBuilder;->endpoint:Lcom/novoda/merlin/Endpoint;

    return-object p0
.end method

.method public withResponseCodeValidator(Lcom/novoda/merlin/ResponseCodeValidator;)Lcom/novoda/merlin/MerlinsBeardBuilder;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/novoda/merlin/MerlinsBeardBuilder;->responseCodeValidator:Lcom/novoda/merlin/ResponseCodeValidator;

    return-object p0
.end method
