.class final Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "com_nettv_livestore_models_EPGChannelRealmProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EPGChannelColumnInfo"
.end annotation


# instance fields
.field public IdColKey:J

.field public addedColKey:J

.field public category_idColKey:J

.field public category_nameColKey:J

.field public cellColKey:J

.field public channelIDColKey:J

.field public custom_sidColKey:J

.field public direct_sourceColKey:J

.field public is_favoriteColKey:J

.field public is_lockedColKey:J

.field public is_recentColKey:J

.field public nameColKey:J

.field public numColKey:J

.field public recent_posColKey:J

.field public selectedColKey:J

.field public stream_iconColKey:J

.field public stream_idColKey:J

.field public stream_typeColKey:J

.field public tv_archiveColKey:J

.field public tv_archive_durationColKey:J

.field public urlColKey:J


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSchemaInfo;)V
    .locals 2

    const/16 v0, 0x15

    .line 1
    invoke-direct {p0, v0}, Lio/realm/internal/ColumnInfo;-><init>(I)V

    const-string v0, "EPGChannel"

    .line 2
    invoke-virtual {p1, v0}, Lio/realm/internal/OsSchemaInfo;->getObjectSchemaInfo(Ljava/lang/String;)Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object p1

    const-string v0, "num"

    .line 3
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    const-string v0, "name"

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    const-string v0, "stream_type"

    .line 5
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    const-string v0, "stream_id"

    .line 6
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    const-string v0, "stream_icon"

    .line 7
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    const-string v0, "Id"

    .line 8
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    const-string v0, "added"

    .line 9
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    const-string v0, "category_id"

    .line 10
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    const-string v0, "custom_sid"

    .line 11
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    const-string v0, "tv_archive"

    .line 12
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    const-string v0, "direct_source"

    .line 13
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    const-string v0, "tv_archive_duration"

    .line 14
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    const-string v0, "url"

    .line 15
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    const-string v0, "category_name"

    .line 16
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    const-string v0, "is_locked"

    .line 17
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_lockedColKey:J

    const-string v0, "is_favorite"

    .line 18
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_favoriteColKey:J

    const-string v0, "is_recent"

    .line 19
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_recentColKey:J

    const-string v0, "recent_pos"

    .line 20
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->recent_posColKey:J

    const-string v0, "cell"

    .line 21
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->cellColKey:J

    const-string v0, "channelID"

    .line 22
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->channelIDColKey:J

    const-string v0, "selected"

    .line 23
    invoke-virtual {p0, v0, v0, p1}, Lio/realm/internal/ColumnInfo;->addColumnDetails(Ljava/lang/String;Ljava/lang/String;Lio/realm/internal/OsObjectSchemaInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->selectedColKey:J

    return-void
.end method


# virtual methods
.method public final copy(Lio/realm/internal/ColumnInfo;Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .line 1
    check-cast p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    .line 2
    check-cast p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;

    .line 3
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->numColKey:J

    .line 4
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->nameColKey:J

    .line 5
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_typeColKey:J

    .line 6
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_idColKey:J

    .line 7
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->stream_iconColKey:J

    .line 8
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->IdColKey:J

    .line 9
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->addedColKey:J

    .line 10
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_idColKey:J

    .line 11
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->custom_sidColKey:J

    .line 12
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archiveColKey:J

    .line 13
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->direct_sourceColKey:J

    .line 14
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->tv_archive_durationColKey:J

    .line 15
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->urlColKey:J

    .line 16
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->category_nameColKey:J

    .line 17
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_lockedColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_lockedColKey:J

    .line 18
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_favoriteColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_favoriteColKey:J

    .line 19
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_recentColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->is_recentColKey:J

    .line 20
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->recent_posColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->recent_posColKey:J

    .line 21
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->cellColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->cellColKey:J

    .line 22
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->channelIDColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->channelIDColKey:J

    .line 23
    iget-wide v0, p1, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->selectedColKey:J

    iput-wide v0, p2, Lio/realm/com_nettv_livestore_models_EPGChannelRealmProxy$EPGChannelColumnInfo;->selectedColKey:J

    return-void
.end method
