.class public Lcom/nettv/livestore/net/FetchEpisodeTask;
.super Lcom/nettv/livestore/net/NetworkTask;
.source "FetchEpisodeTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nettv/livestore/net/NetworkTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/nettv/livestore/models/EpisodeModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private command:Lcom/nettv/livestore/net/LoadEpisodeCommand;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/nettv/livestore/net/NetworkTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doNetworkAction()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nettv/livestore/net/LoadEpisodeCommand;

    invoke-direct {v0}, Lcom/nettv/livestore/net/LoadEpisodeCommand;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/net/FetchEpisodeTask;->command:Lcom/nettv/livestore/net/LoadEpisodeCommand;

    .line 2
    invoke-virtual {v0}, Lcom/nettv/livestore/net/LoadEpisodeCommand;->execute()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final onPreExecute()V
    .registers 1

    return-void
.end method
