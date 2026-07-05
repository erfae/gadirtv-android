.class public Lcom/nettv/livestore/models/MovieInfo;
.super Ljava/lang/Object;
.source "MovieInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actors:Ljava/lang/String;

.field private age:Ljava/lang/String;

.field private backdrop:Ljava/lang/String;

.field private backdrop_path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cast:Ljava/lang/String;

.field private category_id:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private cover_big:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private director:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private duration_secs:Ljava/lang/String;

.field private episode_run_time:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field private kinopoisk_url:Ljava/lang/String;

.field private movie_image:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private o_name:Ljava/lang/String;

.field private plot:Ljava/lang/String;

.field private rating:Ljava/lang/String;

.field private rating_count_kinopoisk:Ljava/lang/String;

.field private rating_mpaa:Ljava/lang/String;

.field private releasedate:Ljava/lang/String;

.field private tmdb_id:Ljava/lang/String;

.field private youtube_trailer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->age:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getBackdrop()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->backdrop:Ljava/lang/String;

    return-object v0
.end method

.method public getCast()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->cast:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getCategory_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->category_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_big()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->backdrop_path:Ljava/util/List;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_15

    .line 2
    :cond_b
    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->backdrop_path:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->backdrop:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_23

    .line 4
    :cond_20
    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->backdrop:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->cover_big:Ljava/lang/String;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_31

    .line 6
    :cond_2e
    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->cover_big:Ljava/lang/String;

    return-object v0

    :cond_31
    :goto_31
    const-string v0, ""

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->description:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_e

    .line 2
    :cond_b
    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->description:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->plot:Ljava/lang/String;

    if-nez v0, :cond_14

    const-string v0, ""

    :cond_14
    return-object v0
.end method

.method public getDirector()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->director:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration_secs()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->duration_secs:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->genre:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getKinopoisk_url()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->kinopoisk_url:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_image()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->movie_image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getO_name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->o_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlot()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->plot:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->rating:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_15

    .line 2
    :cond_b
    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->rating:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method public getRating_count_kinopoisk()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->rating_count_kinopoisk:Ljava/lang/String;

    return-object v0
.end method

.method public getRating_mpaa()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->rating_mpaa:Ljava/lang/String;

    return-object v0
.end method

.method public getReleasedate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->releasedate:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getTmdb_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->tmdb_id:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getYoutube_trailer()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/MovieInfo;->youtube_trailer:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "MovieInfo{movie_image=\'"

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->movie_image:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", youtube_trailer=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->youtube_trailer:Ljava/lang/String;

    const-string v3, ", genre=\'"

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->genre:Ljava/lang/String;

    const-string v3, ", plot=\'"

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->plot:Ljava/lang/String;

    const-string v3, ", cast=\'"

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->cast:Ljava/lang/String;

    const-string v3, ", rating=\'"

    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->rating:Ljava/lang/String;

    const-string v3, ", director=\'"

    .line 13
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->director:Ljava/lang/String;

    const-string v3, ", releasedate=\'"

    .line 15
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->releasedate:Ljava/lang/String;

    const-string v3, ", tmdb_id=\'"

    .line 17
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->tmdb_id:Ljava/lang/String;

    const-string v3, ", kinopoisk_url=\'"

    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->kinopoisk_url:Ljava/lang/String;

    const-string v3, ", name=\'"

    .line 21
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->name:Ljava/lang/String;

    const-string v3, ", o_name=\'"

    .line 23
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->o_name:Ljava/lang/String;

    const-string v3, ", cover_big=\'"

    .line 25
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->cover_big:Ljava/lang/String;

    const-string v3, ", episode_run_time=\'"

    .line 27
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->episode_run_time:Ljava/lang/String;

    const-string v3, ", actors=\'"

    .line 29
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->actors:Ljava/lang/String;

    const-string v3, ", description=\'"

    .line 31
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->description:Ljava/lang/String;

    const-string v3, ", age=\'"

    .line 33
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->age:Ljava/lang/String;

    const-string v3, ", rating_mpaa=\'"

    .line 35
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->rating_mpaa:Ljava/lang/String;

    const-string v3, ", rating_count_kinopoisk=\'"

    .line 37
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->rating_count_kinopoisk:Ljava/lang/String;

    const-string v3, ", country=\'"

    .line 39
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->country:Ljava/lang/String;

    const-string v3, ", duration=\'"

    .line 41
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->duration:Ljava/lang/String;

    const-string v3, ", backdrop=\'"

    .line 43
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->backdrop:Ljava/lang/String;

    const-string v3, ", duration_secs=\'"

    .line 45
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->duration_secs:Ljava/lang/String;

    const-string v3, ", backdrop_path=\'"

    .line 47
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->backdrop_path:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", category_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/models/MovieInfo;->category_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
