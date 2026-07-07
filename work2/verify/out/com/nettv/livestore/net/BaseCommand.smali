.class public Lcom/nettv/livestore/net/BaseCommand;
.super Ljava/lang/Object;
.source "BaseCommand.java"


# instance fields
.field public client:Lorg/apache/http/client/HttpClient;

.field private timeOut:Ljava/lang/Integer;

.field public urlServer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p2, 0xea60

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/nettv/livestore/net/BaseCommand;->timeOut:Ljava/lang/Integer;

    .line 3
    new-instance p2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object p2, p0, Lcom/nettv/livestore/net/BaseCommand;->client:Lorg/apache/http/client/HttpClient;

    .line 4
    invoke-interface {p2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    iget-object v0, p0, Lcom/nettv/livestore/net/BaseCommand;->timeOut:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 5
    iget-object p2, p0, Lcom/nettv/livestore/net/BaseCommand;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {p2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    iget-object v0, p0, Lcom/nettv/livestore/net/BaseCommand;->timeOut:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p2, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 6
    iget-object p2, p0, Lcom/nettv/livestore/net/BaseCommand;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {p2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    iget-object v0, p0, Lcom/nettv/livestore/net/BaseCommand;->timeOut:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2, v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 7
    iput-object p1, p0, Lcom/nettv/livestore/net/BaseCommand;->urlServer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
