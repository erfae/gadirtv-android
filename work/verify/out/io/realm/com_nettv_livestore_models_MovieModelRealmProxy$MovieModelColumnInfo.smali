.class final Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_nettv_livestore_models_MovieModelRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MovieModelColumnInfo"
.end annotation


# instance fields
.field public addedColKey:J

.field public category_idColKey:J

.field public category_nameColKey:J

.field public custom_sidColKey:J

.field public extensionColKey:J

.field public is_favoriteColKey:J

.field public is_lockedColKey:J

.field public is_recentColKey:J

.field public nameColKey:J

.field public numColKey:J

.field public proColKey:J

.field public ratingColKey:J

.field public recent_milColKey:J

.field public stream_iconColKey:J

.field public stream_idColKey:J

.field public stream_typeColKey:J

.field public timeColKey:J

.field public tmdb_idColKey:J

.field public typeColKey:J

.field public urlColKey:J


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .registers 4

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "MovieModel"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "num"

    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->numColKey:J

    const-string v0, "name"

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    const-string v0, "stream_type"

    .line 5
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    const-string v0, "stream_id"

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    const-string v0, "stream_icon"

    .line 7
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    const-string v0, "extension"

    .line 8
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    const-string v0, "type"

    .line 9
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    const-string v0, "rating"

    .line 10
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    const-string v0, "category_id"

    .line 11
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    const-string v0, "custom_sid"

    .line 12
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    const-string v0, "added"

    .line 13
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    const-string v0, "tmdb_id"

    .line 14
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    const-string v0, "pro"

    .line 15
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->proColKey:J

    const-string v0, "time"

    .line 16
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->timeColKey:J

    const-string v0, "recent_mil"

    .line 17
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->recent_milColKey:J

    const-string v0, "is_locked"

    .line 18
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_lockedColKey:J

    const-string v0, "is_favorite"

    .line 19
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_favoriteColKey:J

    const-string v0, "is_recent"

    .line 20
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_recentColKey:J

    const-string v0, "category_name"

    .line 21
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    const-string v0, "url"

    .line 22
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    return-void
.end method


# virtual methods
.method public final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .registers 5

    .line 1
    check-cast p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    .line 2
    check-cast p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;

    .line 3
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->numColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->numColKey:J

    .line 4
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->nameColKey:J

    .line 5
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_typeColKey:J

    .line 6
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_idColKey:J

    .line 7
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->stream_iconColKey:J

    .line 8
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->extensionColKey:J

    .line 9
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->typeColKey:J

    .line 10
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->ratingColKey:J

    .line 11
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_idColKey:J

    .line 12
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->custom_sidColKey:J

    .line 13
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->addedColKey:J

    .line 14
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->tmdb_idColKey:J

    .line 15
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->proColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->proColKey:J

    .line 16
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->timeColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->timeColKey:J

    .line 17
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->recent_milColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->recent_milColKey:J

    .line 18
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_lockedColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_lockedColKey:J

    .line 19
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_favoriteColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_favoriteColKey:J

    .line 20
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_recentColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->is_recentColKey:J

    .line 21
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->category_nameColKey:J

    .line 22
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_MovieModelRealmProxy$MovieModelColumnInfo;->urlColKey:J

    return-void
.end method
