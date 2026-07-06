.class public Lcom/nettv/livestore/models/MovieData;
.super Ljava/lang/Object;
.source "MovieData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private added:Ljava/lang/String;

.field private category_id:Ljava/lang/String;

.field private container_extension:Ljava/lang/String;

.field private custom_sid:Ljava/lang/String;

.field private direct_source:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private stream_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdded()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieData;->added:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieData;->category_id:Ljava/lang/String;

    return-object v0
.end method

.method public getContainer_extension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieData;->container_extension:Ljava/lang/String;

    return-object v0
.end method

.method public getCustom_sid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieData;->custom_sid:Ljava/lang/String;

    return-object v0
.end method

.method public getDirect_source()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieData;->direct_source:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStream_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieData;->stream_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAdded(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieData;->added:Ljava/lang/String;

    return-void
.end method

.method public setCategory_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieData;->category_id:Ljava/lang/String;

    return-void
.end method

.method public setContainer_extension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieData;->container_extension:Ljava/lang/String;

    return-void
.end method

.method public setCustom_sid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieData;->custom_sid:Ljava/lang/String;

    return-void
.end method

.method public setDirect_source(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieData;->direct_source:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieData;->name:Ljava/lang/String;

    return-void
.end method

.method public setStream_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/MovieData;->stream_id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "MovieData{stream_id=\'"

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieData;->stream_id:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", name=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieData;->name:Ljava/lang/String;

    const-string v3, ", added=\'"

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieData;->added:Ljava/lang/String;

    const-string v3, ", category_id=\'"

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieData;->category_id:Ljava/lang/String;

    const-string v3, ", container_extension=\'"

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieData;->container_extension:Ljava/lang/String;

    const-string v3, ", custom_sid=\'"

    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieData;->custom_sid:Ljava/lang/String;

    const-string v3, ", direct_source=\'"

    .line 13
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieData;->direct_source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
