.class public Lcom/nettv/livestore/net/LoadChannelsCommand;
.super Ljava/lang/Object;
.source "LoadChannelsCommand.java"


# instance fields
.field public epgChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/nettv/livestore/models/EPGChannel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/nettv/livestore/apps/LTVApp;->getInstance()Lcom/nettv/livestore/apps/LTVApp;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nettv/livestore/net/LoadChannelsCommand;->epgChannels:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/apps/LTVApp;->getM3UChannelsItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Liptv/m3u/parser/M3UItem;

    .line 4
    invoke-static {v2}, Lcom/nettv/livestore/models/EPGChannel;->fromM3UItem(Liptv/m3u/parser/M3UItem;)Lcom/nettv/livestore/models/EPGChannel;

    move-result-object v2

    if-eqz v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nettv/livestore/models/EPGChannel;->setNum(Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lcom/nettv/livestore/net/LoadChannelsCommand;->epgChannels:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 7
    :cond_35
    iget-object v0, p0, Lcom/nettv/livestore/net/LoadChannelsCommand;->epgChannels:Ljava/util/ArrayList;

    return-object v0
.end method
