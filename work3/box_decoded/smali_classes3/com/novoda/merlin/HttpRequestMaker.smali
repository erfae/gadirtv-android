.class Lcom/novoda/merlin/HttpRequestMaker;
.super Ljava/lang/Object;
.source "HttpRequestMaker.java"

# interfaces
.implements Lcom/novoda/merlin/RequestMaker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/novoda/merlin/HttpRequestMaker$MerlinHttpRequest;
    }
.end annotation


# static fields
.field private static final METHOD_HEAD:Ljava/lang/String; = "HEAD"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private connectTo(Lcom/novoda/merlin/Endpoint;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Lcom/novoda/merlin/Endpoint;->asURL()Ljava/net/URL;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private disableRedirects(Ljava/net/HttpURLConnection;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method private setConnectionToHeadRequest(Ljava/net/HttpURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const-string v0, "HEAD"

    .line 33
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public head(Lcom/novoda/merlin/Endpoint;)Lcom/novoda/merlin/Request;
    .locals 2

    .line 15
    :try_start_0
    invoke-direct {p0, p1}, Lcom/novoda/merlin/HttpRequestMaker;->connectTo(Lcom/novoda/merlin/Endpoint;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const-string v0, "Accept-Encoding"

    const-string v1, ""

    .line 16
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/novoda/merlin/HttpRequestMaker;->setConnectionToHeadRequest(Ljava/net/HttpURLConnection;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/novoda/merlin/HttpRequestMaker;->disableRedirects(Ljava/net/HttpURLConnection;)V

    .line 21
    new-instance v0, Lcom/novoda/merlin/HttpRequestMaker$MerlinHttpRequest;

    invoke-direct {v0, p1}, Lcom/novoda/merlin/HttpRequestMaker$MerlinHttpRequest;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Lcom/novoda/merlin/RequestException;

    invoke-direct {v0, p1}, Lcom/novoda/merlin/RequestException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
