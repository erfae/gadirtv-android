.class public Lcom/nettv/livestore/models/InfoSerie;
.super Ljava/lang/Object;
.source "InfoSerie.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public episodes:Lcom/nettv/livestore/models/ListEpisode;

.field public seasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/Season;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/models/InfoSerie;->seasons:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/nettv/livestore/models/ListEpisode;

    invoke-direct {v0}, Lcom/nettv/livestore/models/ListEpisode;-><init>()V

    iput-object v0, p0, Lcom/nettv/livestore/models/InfoSerie;->episodes:Lcom/nettv/livestore/models/ListEpisode;

    return-void
.end method


# virtual methods
.method public getEpisodes()Lcom/nettv/livestore/models/ListEpisode;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/InfoSerie;->episodes:Lcom/nettv/livestore/models/ListEpisode;

    return-object v0
.end method

.method public getSeasons()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/Season;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nettv/livestore/models/InfoSerie;->seasons:Ljava/util/List;

    return-object v0
.end method

.method public setEpisodes(Lcom/nettv/livestore/models/ListEpisode;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/InfoSerie;->episodes:Lcom/nettv/livestore/models/ListEpisode;

    return-void
.end method

.method public setSeasons(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nettv/livestore/models/Season;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nettv/livestore/models/InfoSerie;->seasons:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "InfoSerie{seasons="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/models/InfoSerie;->seasons:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "episodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/models/InfoSerie;->episodes:Lcom/nettv/livestore/models/ListEpisode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
