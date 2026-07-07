.class Lcom/novoda/merlin/HttpRequestMaker$MerlinHttpRequest;
.super Ljava/lang/Object;
.source "HttpRequestMaker.java"

# interfaces
.implements Lcom/novoda/merlin/Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novoda/merlin/HttpRequestMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MerlinHttpRequest"
.end annotation


# instance fields
.field private request:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/novoda/merlin/HttpRequestMaker$MerlinHttpRequest;->request:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 2

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/novoda/merlin/HttpRequestMaker$MerlinHttpRequest;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v1, p0, Lcom/novoda/merlin/HttpRequestMaker$MerlinHttpRequest;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    :try_start_1
    new-instance v1, Lcom/novoda/merlin/RequestException;

    invoke-direct {v1, v0}, Lcom/novoda/merlin/RequestException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/novoda/merlin/HttpRequestMaker$MerlinHttpRequest;->request:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method
