.class public Lcom/nettv/livestore/models/CastModel;
.super Ljava/lang/Object;
.source "CastModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public adult:Z

.field public cast_id:I

.field public character:Ljava/lang/String;

.field public credit_id:Ljava/lang/String;

.field public gender:I

.field public id:I

.field public known_for_department:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public order:I

.field public original_name:Ljava/lang/String;

.field public popularity:F

.field public profile_path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCast_id()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/CastModel;->cast_id:I

    return v0
.end method

.method public getCharacter()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/CastModel;->character:Ljava/lang/String;

    return-object v0
.end method

.method public getCredit_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/CastModel;->credit_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/CastModel;->gender:I

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/CastModel;->id:I

    return v0
.end method

.method public getKnown_for_department()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/CastModel;->known_for_department:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/CastModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/CastModel;->order:I

    return v0
.end method

.method public getOriginal_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/CastModel;->original_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPopularity()F
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/CastModel;->popularity:F

    return v0
.end method

.method public getProfile_path()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/CastModel;->profile_path:Ljava/lang/String;

    return-object v0
.end method

.method public isAdult()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nettv/livestore/models/CastModel;->adult:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "CastModel{adult=\'"

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/nettv/livestore/models/CastModel;->adult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gender="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nettv/livestore/models/CastModel;->gender:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nettv/livestore/models/CastModel;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", known_for_department=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/models/CastModel;->known_for_department:Ljava/lang/String;

    const-string v3, ", name=\'"

    .line 3
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/nettv/livestore/models/CastModel;->name:Ljava/lang/String;

    const-string v3, ", original_name=\'"

    .line 5
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/nettv/livestore/models/CastModel;->original_name:Ljava/lang/String;

    const-string v3, ", popularity="

    .line 7
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget v2, p0, Lcom/nettv/livestore/models/CastModel;->popularity:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", profile_path=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/models/CastModel;->profile_path:Ljava/lang/String;

    const-string v3, ", cast_id="

    .line 9
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 10
    iget v2, p0, Lcom/nettv/livestore/models/CastModel;->cast_id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", character=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nettv/livestore/models/CastModel;->character:Ljava/lang/String;

    const-string v3, ", credit_id=\'"

    .line 11
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/nettv/livestore/models/CastModel;->credit_id:Ljava/lang/String;

    const-string v3, ", order="

    .line 13
    invoke-static {v0, v2, v1, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 14
    iget v1, p0, Lcom/nettv/livestore/models/CastModel;->order:I

    const/16 v2, 0x7d

    .line 15
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
