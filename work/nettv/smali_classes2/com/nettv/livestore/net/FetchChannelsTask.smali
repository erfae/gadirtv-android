.class public Lcom/nettv/livestore/net/FetchChannelsTask;
.super Lcom/nettv/livestore/net/NetworkTask;
.source "FetchChannelsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nettv/livestore/net/NetworkTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/nettv/livestore/models/EPGChannel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private command:Lcom/nettv/livestore/net/LoadChannelsCommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nettv/livestore/net/NetworkTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doNetworkAction()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nettv/livestore/net/LoadChannelsCommand;

    invoke-direct {v0}, Lcom/nettv/livestore/net/LoadChannelsCommand;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/net/FetchChannelsTask;->command:Lcom/nettv/livestore/net/LoadChannelsCommand;

    .line 2
    invoke-virtual {v0}, Lcom/nettv/livestore/net/LoadChannelsCommand;->execute()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final onPreExecute()V
    .locals 0

    return-void
.end method
