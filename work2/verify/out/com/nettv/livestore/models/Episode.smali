.class public Lcom/nettv/livestore/models/Episode;
.super Ljava/lang/Object;
.source "Episode.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private container_extension:Ljava/lang/String;

.field private episode_num:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private info:Ljava/lang/Object;

.field private season:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContainer_extension()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/Episode;->container_extension:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisode_num()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/Episode;->episode_num:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/Episode;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/Episode;->info:Ljava/lang/Object;

    return-object v0
.end method

.method public getSeason()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/Episode;->season:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/Episode;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContainer_extension(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/Episode;->container_extension:Ljava/lang/String;

    return-void
.end method

.method public setEpisode_num(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/Episode;->episode_num:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/Episode;->id:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/Episode;->info:Ljava/lang/Object;

    return-void
.end method

.method public setSeason(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/Episode;->season:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/Episode;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "Episode{id=\'"

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/models/Episode;->id:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", episode_num=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/models/Episode;->episode_num:Ljava/lang/String;

    const-string v3, ", title=\'"

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/models/Episode;->title:Ljava/lang/String;

    const-string v3, ", container_extension=\'"

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/models/Episode;->container_extension:Ljava/lang/String;

    const-string v3, ", season="

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 10
    iget v1, p0, Lcom/nettv/livestore/models/Episode;->season:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/models/Episode;->info:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
