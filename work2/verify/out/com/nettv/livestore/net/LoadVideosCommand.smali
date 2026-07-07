.class public Lcom/nettv/livestore/net/LoadVideosCommand;
.super Ljava/lang/Object;
.source "LoadVideosCommand.java"


# instance fields
.field private generoHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/MovieModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/net/LoadVideosCommand;->generoHashMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public execute()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/nettv/livestore/models/MovieModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/nettv/livestore/apps/LTVApp;->getInstance()Lcom/nettv/livestore/apps/LTVApp;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/nettv/livestore/apps/LTVApp;->getM3UVideosItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liptv/m3u/parser/M3UItem;

    .line 4
    invoke-static {v3}, Lcom/nettv/livestore/models/MovieModel;->fromM3UItem(Liptv/m3u/parser/M3UItem;)Lcom/nettv/livestore/models/MovieModel;

    move-result-object v3

    if-eqz v3, :cond_12

    add-int/lit8 v2, v2, 0x1

    .line 5
    invoke-virtual {v3, v2}, Lcom/nettv/livestore/models/MovieModel;->setNum(I)V

    .line 6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2d
    return-object v1
.end method
