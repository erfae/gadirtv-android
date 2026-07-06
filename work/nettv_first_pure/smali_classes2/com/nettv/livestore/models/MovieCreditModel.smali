.class public Lcom/nettv/livestore/models/MovieCreditModel;
.super Ljava/lang/Object;
.source "MovieCreditModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public backdrop_path:Ljava/lang/String;

.field public character:Ljava/lang/String;

.field public credit_id:Ljava/lang/String;

.field public id:I

.field public original_language:Ljava/lang/String;

.field public original_title:Ljava/lang/String;

.field public overview:Ljava/lang/String;

.field public poster_path:Ljava/lang/String;

.field public release_date:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public vote_average:F

.field public vote_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackdrop_path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieCreditModel;->backdrop_path:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieCreditModel;->character:Ljava/lang/String;

    return-object v0
.end method

.method public getCredit_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieCreditModel;->credit_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/models/MovieCreditModel;->id:I

    return v0
.end method

.method public getOriginal_language()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieCreditModel;->original_language:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginal_title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieCreditModel;->original_title:Ljava/lang/String;

    return-object v0
.end method

.method public getOverview()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieCreditModel;->overview:Ljava/lang/String;

    return-object v0
.end method

.method public getPoster_path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieCreditModel;->poster_path:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease_date()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieCreditModel;->release_date:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieCreditModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVote_average()F
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/models/MovieCreditModel;->vote_average:F

    return v0
.end method

.method public getVote_count()I
    .locals 1

    iget v0, p0, Lcom/nettv/livestore/models/MovieCreditModel;->vote_count:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "MovieCreditModels{id=\'"

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/nettv/livestore/models/MovieCreditModel;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "character=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/models/MovieCreditModel;->character:Ljava/lang/String;

    const-string v3, ", credit_id=\'"

    .line 3
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/nettv/livestore/models/MovieCreditModel;->credit_id:Ljava/lang/String;

    const-string v3, ", release_date=\'"

    .line 5
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/nettv/livestore/models/MovieCreditModel;->release_date:Ljava/lang/String;

    const-string v3, ", vote_count="

    .line 7
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget v2, p0, Lcom/nettv/livestore/models/MovieCreditModel;->vote_count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vote_average="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nettv/livestore/models/MovieCreditModel;->vote_average:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/models/MovieCreditModel;->title:Ljava/lang/String;

    const-string v3, ", original_language=\'"

    .line 9
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/nettv/livestore/models/MovieCreditModel;->original_language:Ljava/lang/String;

    const-string v3, ", original_title=\'"

    .line 11
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/nettv/livestore/models/MovieCreditModel;->original_title:Ljava/lang/String;

    const-string v3, ", backdrop_path=\'"

    .line 13
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/nettv/livestore/models/MovieCreditModel;->backdrop_path:Ljava/lang/String;

    const-string v3, ", overview=\'"

    .line 15
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-object v2, p0, Lcom/nettv/livestore/models/MovieCreditModel;->overview:Ljava/lang/String;

    const-string v3, ", poster_path=\'"

    .line 17
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 18
    iget-object v2, p0, Lcom/nettv/livestore/models/MovieCreditModel;->poster_path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
