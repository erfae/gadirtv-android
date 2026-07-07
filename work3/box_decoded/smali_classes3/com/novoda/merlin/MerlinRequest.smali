.class Lcom/novoda/merlin/MerlinRequest;
.super Ljava/lang/Object;
.source "MerlinRequest.java"

# interfaces
.implements Lcom/novoda/merlin/Request;


# instance fields
.field private final request:Lcom/novoda/merlin/Request;


# direct methods
.method private constructor <init>(Lcom/novoda/merlin/Request;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/novoda/merlin/MerlinRequest;->request:Lcom/novoda/merlin/Request;

    return-void
.end method

.method static head(Lcom/novoda/merlin/Endpoint;)Lcom/novoda/merlin/MerlinRequest;
    .locals 1

    .line 8
    new-instance v0, Lcom/novoda/merlin/HttpRequestMaker;

    invoke-direct {v0}, Lcom/novoda/merlin/HttpRequestMaker;-><init>()V

    invoke-static {v0, p0}, Lcom/novoda/merlin/MerlinRequest;->head(Lcom/novoda/merlin/RequestMaker;Lcom/novoda/merlin/Endpoint;)Lcom/novoda/merlin/MerlinRequest;

    move-result-object p0

    return-object p0
.end method

.method private static head(Lcom/novoda/merlin/RequestMaker;Lcom/novoda/merlin/Endpoint;)Lcom/novoda/merlin/MerlinRequest;
    .locals 1

    .line 12
    new-instance v0, Lcom/novoda/merlin/MerlinRequest;

    invoke-interface {p0, p1}, Lcom/novoda/merlin/RequestMaker;->head(Lcom/novoda/merlin/Endpoint;)Lcom/novoda/merlin/Request;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/novoda/merlin/MerlinRequest;-><init>(Lcom/novoda/merlin/Request;)V

    return-object v0
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/novoda/merlin/MerlinRequest;->request:Lcom/novoda/merlin/Request;

    invoke-interface {v0}, Lcom/novoda/merlin/Request;->getResponseCode()I

    move-result v0

    return v0
.end method
