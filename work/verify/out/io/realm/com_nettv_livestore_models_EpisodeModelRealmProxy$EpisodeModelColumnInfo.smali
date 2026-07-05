.class final Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_nettv_livestore_models_EpisodeModelRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EpisodeModelColumnInfo"
.end annotation


# instance fields
.field public category_nameColKey:J

.field public container_extensionColKey:J

.field public episode_numColKey:J

.field public idColKey:J

.field public infoColKey:J

.field public seasonColKey:J

.field public season_nameColKey:J

.field public series_nameColKey:J

.field public stream_iconColKey:J

.field public titleColKey:J

.field public urlColKey:J


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 4

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "EpisodeModel"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "id"

    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    const-string v0, "episode_num"

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    const-string v0, "title"

    .line 5
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    const-string v0, "container_extension"

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    const-string v0, "season"

    .line 7
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->seasonColKey:J

    const-string v0, "info"

    .line 8
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    const-string v0, "category_name"

    .line 9
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    const-string v0, "stream_icon"

    .line 10
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    const-string v0, "season_name"

    .line 11
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    const-string v0, "series_name"

    .line 12
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    const-string v0, "url"

    .line 13
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    return-void
.end method


# virtual methods
.method public final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 5

    .line 1
    check-cast p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    .line 2
    check-cast p2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;

    .line 3
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->idColKey:J

    .line 4
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->episode_numColKey:J

    .line 5
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->titleColKey:J

    .line 6
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->container_extensionColKey:J

    .line 7
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->seasonColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->seasonColKey:J

    .line 8
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->infoColKey:J

    .line 9
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->category_nameColKey:J

    .line 10
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->stream_iconColKey:J

    .line 11
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->season_nameColKey:J

    .line 12
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->series_nameColKey:J

    .line 13
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EpisodeModelRealmProxy$EpisodeModelColumnInfo;->urlColKey:J

    return-void
.end method
