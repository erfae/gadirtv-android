.class final Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_nettv_livestore_models_EpisodeInfoModelRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EpisodeInfoModelColumnInfo"
.end annotation


# instance fields
.field public bitrateColKey:J

.field public durationColKey:J

.field public duration_secsColKey:J

.field public movie_imageColKey:J

.field public nameColKey:J

.field public plotColKey:J

.field public ratingColKey:J

.field public releasedateColKey:J

.field public tmdb_idColKey:J


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 4

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "EpisodeInfoModel"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "bitrate"

    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->bitrateColKey:J

    const-string v0, "duration"

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    const-string v0, "duration_secs"

    .line 5
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->duration_secsColKey:J

    const-string v0, "name"

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    const-string v0, "rating"

    .line 7
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    const-string v0, "releasedate"

    .line 8
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    const-string v0, "plot"

    .line 9
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    const-string v0, "movie_image"

    .line 10
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    const-string v0, "tmdb_id"

    .line 11
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    return-void
.end method


# virtual methods
.method public final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 5

    .line 1
    check-cast p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    .line 2
    check-cast p2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;

    .line 3
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->bitrateColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->bitrateColKey:J

    .line 4
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->durationColKey:J

    .line 5
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->duration_secsColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->duration_secsColKey:J

    .line 6
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->nameColKey:J

    .line 7
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->ratingColKey:J

    .line 8
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->releasedateColKey:J

    .line 9
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->plotColKey:J

    .line 10
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->movie_imageColKey:J

    .line 11
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeInfoModelRealmProxy$EpisodeInfoModelColumnInfo;->tmdb_idColKey:J

    return-void
.end method
