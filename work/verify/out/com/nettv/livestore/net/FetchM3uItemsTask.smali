.class public Lcom/nettv/livestore/net/FetchM3uItemsTask;
.super Lcom/nettv/livestore/net/NetworkTask;
.source "FetchM3uItemsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nettv/livestore/net/NetworkTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Liptv/m3u/parser/M3UItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private command:Lcom/nettv/livestore/net/LoadM3UItemsCommand;

.field private params:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private urlServer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
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
    invoke-direct {p0}, Lcom/nettv/livestore/net/NetworkTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nettv/livestore/net/FetchM3uItemsTask;->urlServer:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/nettv/livestore/net/FetchM3uItemsTask;->params:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final doNetworkAction()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nettv/livestore/net/LoadM3UItemsCommand;

    iget-object v1, p0, Lcom/nettv/livestore/net/FetchM3uItemsTask;->urlServer:Ljava/lang/String;

    iget-object v2, p0, Lcom/nettv/livestore/net/FetchM3uItemsTask;->params:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/nettv/livestore/net/LoadM3UItemsCommand;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/nettv/livestore/net/FetchM3uItemsTask;->command:Lcom/nettv/livestore/net/LoadM3UItemsCommand;

    .line 2
    invoke-virtual {v0}, Lcom/nettv/livestore/net/LoadM3UItemsCommand;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
