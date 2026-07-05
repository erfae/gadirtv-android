.class final Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_nettv_livestore_models_SeriesModelRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeriesModelColumnInfo"
.end annotation


# instance fields
.field public castColKey:J

.field public category_idColKey:J

.field public category_nameColKey:J

.field public directorColKey:J

.field public episode_posColKey:J

.field public genreColKey:J

.field public is_favoriteColKey:J

.field public is_recentColKey:J

.field public is_watchedColKey:J

.field public last_modifiedColKey:J

.field public nameColKey:J

.field public numColKey:J

.field public plotColKey:J

.field public ratingColKey:J

.field public rating_5basedColKey:J

.field public releaseDateColKey:J

.field public season_posColKey:J

.field public series_idColKey:J

.field public stream_iconColKey:J

.field public stream_typeColKey:J

.field public tmdbColKey:J

.field public urlColKey:J

.field public youtubeColKey:J


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0x17

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "SeriesModel"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "num"

    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->numColKey:J

    const-string v0, "name"

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    const-string v0, "stream_type"

    .line 5
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    const-string v0, "series_id"

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    const-string v0, "stream_icon"

    .line 7
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    const-string v0, "youtube"

    .line 8
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    const-string v0, "plot"

    .line 9
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    const-string v0, "cast"

    .line 10
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    const-string v0, "director"

    .line 11
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    const-string v0, "genre"

    .line 12
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    const-string v0, "releaseDate"

    .line 13
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    const-string v0, "rating"

    .line 14
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    const-string v0, "rating_5based"

    .line 15
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->rating_5basedColKey:J

    const-string v0, "category_id"

    .line 16
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    const-string v0, "last_modified"

    .line 17
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    const-string v0, "tmdb"

    .line 18
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    const-string v0, "season_pos"

    .line 19
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->season_posColKey:J

    const-string v0, "episode_pos"

    .line 20
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->episode_posColKey:J

    const-string v0, "is_watched"

    .line 21
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_watchedColKey:J

    const-string v0, "is_favorite"

    .line 22
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_favoriteColKey:J

    const-string v0, "is_recent"

    .line 23
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_recentColKey:J

    const-string v0, "category_name"

    .line 24
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    const-string v0, "url"

    const-string v1, "url"

    .line 25
    invoke-virtual {p0, v0, v1, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    return-void
.end method


# virtual methods
.method public final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 1
    check-cast p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    .line 2
    check-cast p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;

    .line 3
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->numColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->numColKey:J

    .line 4
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->nameColKey:J

    .line 5
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_typeColKey:J

    .line 6
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->series_idColKey:J

    .line 7
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->stream_iconColKey:J

    .line 8
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->youtubeColKey:J

    .line 9
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->plotColKey:J

    .line 10
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->castColKey:J

    .line 11
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->directorColKey:J

    .line 12
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->genreColKey:J

    .line 13
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->releaseDateColKey:J

    .line 14
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->ratingColKey:J

    .line 15
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->rating_5basedColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->rating_5basedColKey:J

    .line 16
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_idColKey:J

    .line 17
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->last_modifiedColKey:J

    .line 18
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->tmdbColKey:J

    .line 19
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->season_posColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->season_posColKey:J

    .line 20
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->episode_posColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->episode_posColKey:J

    .line 21
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_watchedColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_watchedColKey:J

    .line 22
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_favoriteColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_favoriteColKey:J

    .line 23
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_recentColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->is_recentColKey:J

    .line 24
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->category_nameColKey:J

    .line 25
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_SeriesModelRealmProxy$SeriesModelColumnInfo;->urlColKey:J

    return-void
.end method
