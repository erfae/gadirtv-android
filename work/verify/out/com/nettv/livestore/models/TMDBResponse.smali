.class public Lcom/nettv/livestore/models/TMDBResponse;
.super Ljava/lang/Object;
.source "TMDBResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public backdrop_path:Ljava/lang/String;

.field public id:I

.field public imdb_id:Ljava/lang/String;

.field public original_language:Ljava/lang/String;

.field public overview:Ljava/lang/String;

.field public poster_path:Ljava/lang/String;

.field public release_date:Ljava/lang/String;

.field public runtime:I

.field public vote_average:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackdrop_path()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/TMDBResponse;->backdrop_path:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/TMDBResponse;->id:I

    return v0
.end method

.method public getImdb_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/TMDBResponse;->imdb_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal_language()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/TMDBResponse;->original_language:Ljava/lang/String;

    return-object v0
.end method

.method public getOverview()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/TMDBResponse;->overview:Ljava/lang/String;

    return-object v0
.end method

.method public getPoster_path()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/TMDBResponse;->poster_path:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease_date()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/TMDBResponse;->release_date:Ljava/lang/String;

    return-object v0
.end method

.method public getRuntime()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/TMDBResponse;->runtime:I

    return v0
.end method

.method public getVote_average()F
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/TMDBResponse;->vote_average:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "TMDBResponse{backdrop_path=\'"

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/models/TMDBResponse;->backdrop_path:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", id=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget v1, p0, Lcom/nettv/livestore/models/TMDBResponse;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", imdb_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/models/TMDBResponse;->imdb_id:Ljava/lang/String;

    const-string v3, ", original_language=\'"

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/models/TMDBResponse;->original_language:Ljava/lang/String;

    const-string v3, ", overview=\'"

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/models/TMDBResponse;->overview:Ljava/lang/String;

    const-string v3, ", poster_path=\'"

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/nettv/livestore/models/TMDBResponse;->poster_path:Ljava/lang/String;

    const-string v3, ", release_date=\'"

    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/nettv/livestore/models/TMDBResponse;->release_date:Ljava/lang/String;

    const-string v3, ", runtime="

    .line 13
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 14
    iget v1, p0, Lcom/nettv/livestore/models/TMDBResponse;->runtime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vote_average="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nettv/livestore/models/TMDBResponse;->vote_average:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
