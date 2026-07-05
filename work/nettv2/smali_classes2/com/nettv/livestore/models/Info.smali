.class public Lcom/nettv/livestore/models/Info;
.super Ljava/lang/Object;
.source "Info.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private movie_image:Ljava/lang/String;

.field private plot:Ljava/lang/String;

.field private rating:Ljava/lang/String;

.field private releasedate:Ljava/lang/String;

.field private tmdb_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovie_image()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/Info;->movie_image:Ljava/lang/String;

    return-object v0
.end method

.method public getPlot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/Info;->plot:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/Info;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public getReleasedate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/Info;->releasedate:Ljava/lang/String;

    return-object v0
.end method

.method public getTmdb_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/Info;->tmdb_id:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setMovie_image(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/Info;->movie_image:Ljava/lang/String;

    return-void
.end method

.method public setPlot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/Info;->plot:Ljava/lang/String;

    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/Info;->rating:Ljava/lang/String;

    return-void
.end method

.method public setReleasedate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nettv/livestore/models/Info;->releasedate:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Info{movie_image=\'"

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/models/Info;->movie_image:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", plot=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/models/Info;->plot:Ljava/lang/String;

    const-string v3, ", releasedate=\'"

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/models/Info;->releasedate:Ljava/lang/String;

    const-string v3, ", rating=\'"

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/models/Info;->rating:Ljava/lang/String;

    const-string v3, ", tmdb_id=\'"

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/nettv/livestore/models/Info;->tmdb_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
