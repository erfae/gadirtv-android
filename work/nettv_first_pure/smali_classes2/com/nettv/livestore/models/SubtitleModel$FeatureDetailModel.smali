.class public Lcom/nettv/livestore/models/SubtitleModel$FeatureDetailModel;
.super Ljava/lang/Object;
.source "SubtitleModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nettv/livestore/models/SubtitleModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeatureDetailModel"
.end annotation


# instance fields
.field public feature_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feature_id"
    .end annotation
.end field

.field public feature_type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feature_type"
    .end annotation
.end field

.field public imdb_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imdb_id"
    .end annotation
.end field

.field public movie_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "movie_name"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field public tmdb_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tmdb_id"
    .end annotation
.end field

.field public year:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "year"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeature_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleModel$FeatureDetailModel;->feature_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleModel$FeatureDetailModel;->feature_type:Ljava/lang/String;

    return-object v0
.end method

.method public getImdb_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleModel$FeatureDetailModel;->imdb_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMovie_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleModel$FeatureDetailModel;->movie_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleModel$FeatureDetailModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTmdb_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleModel$FeatureDetailModel;->tmdb_id:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nettv/livestore/models/SubtitleModel$FeatureDetailModel;->year:Ljava/lang/String;

    return-object v0
.end method
