.class public Lcom/nettv/livestore/models/TMDBVideoModel;
.super Ljava/lang/Object;
.source "TMDBVideoModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public id:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public published_at:Ljava/lang/String;

.field public site:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/TMDBVideoModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/TMDBVideoModel;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/TMDBVideoModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublished_at()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/TMDBVideoModel;->published_at:Ljava/lang/String;

    return-object v0
.end method

.method public getSite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/TMDBVideoModel;->site:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/TMDBVideoModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "TMDBVideoModel{name=\'"

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/models/TMDBVideoModel;->name:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", key=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/models/TMDBVideoModel;->key:Ljava/lang/String;

    const-string v3, ", site=\'"

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/models/TMDBVideoModel;->site:Ljava/lang/String;

    const-string v3, ", type=\'"

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/models/TMDBVideoModel;->type:Ljava/lang/String;

    const-string v3, ", published_at=\'"

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/nettv/livestore/models/TMDBVideoModel;->published_at:Ljava/lang/String;

    const-string v3, ", id=\'"

    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/nettv/livestore/models/TMDBVideoModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
