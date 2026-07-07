.class public Lcom/nettv/livestore/models/CatchUpEpg;
.super Ljava/lang/Object;
.source "CatchUpEpg.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private channel_id:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private end:Ljava/lang/String;

.field private epg_id:J

.field private has_archive:I

.field private id:J

.field private lang:Ljava/lang/String;

.field private now_playing:I

.field private start:Ljava/lang/String;

.field private start_timestamp:J

.field private stop_timestamp:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/CatchUpEpg;->channel_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/CatchUpEpg;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/nettv/livestore/models/CatchUpEpg;->getStart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v0}, Lcom/nettv/livestore/utils/Utils;->getDateFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/nettv/livestore/models/CatchUpEpg;->getEnd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nettv/livestore/utils/Utils;->getDateFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    long-to-int v0, v1

    return v0
.end method

.method public getEnd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/CatchUpEpg;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getEpg_id()J
    .registers 3

    iget-wide v0, p0, Lcom/nettv/livestore/models/CatchUpEpg;->epg_id:J

    return-wide v0
.end method

.method public getHas_archive()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/CatchUpEpg;->has_archive:I

    return v0
.end method

.method public getId()J
    .registers 3

    iget-wide v0, p0, Lcom/nettv/livestore/models/CatchUpEpg;->id:J

    return-wide v0
.end method

.method public getLang()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/CatchUpEpg;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getNow_playing()I
    .registers 2

    iget v0, p0, Lcom/nettv/livestore/models/CatchUpEpg;->now_playing:I

    return v0
.end method

.method public getProgress()I
    .registers 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Lcom/nettv/livestore/models/CatchUpEpg;->getStart_timestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/CatchUpEpg;->getStop_timestamp()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/nettv/livestore/models/CatchUpEpg;->getStart_timestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getStart()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/CatchUpEpg;->start:Ljava/lang/String;

    return-object v0
.end method

.method public getStartForUrl()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/nettv/livestore/models/CatchUpEpg;->getStart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    const-string v2, "yyyy-MM-dd:HH-mm"

    invoke-static {v1, v2, v0}, Lcom/nettv/livestore/utils/Utils;->formatDateFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStart_timestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/nettv/livestore/models/CatchUpEpg;->start_timestamp:J

    return-wide v0
.end method

.method public getStop_timestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/nettv/livestore/models/CatchUpEpg;->stop_timestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nettv/livestore/models/CatchUpEpg;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/timeshift/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/nettv/livestore/models/CatchUpEpg;->getDuration()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nettv/livestore/models/CatchUpEpg;->getStartForUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".ts"

    .line 3
    invoke-static {v0, p4, p1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setChannel_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->channel_id:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->description:Ljava/lang/String;

    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->end:Ljava/lang/String;

    return-void
.end method

.method public setEpg_id(J)V
    .registers 3

    iput-wide p1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->epg_id:J

    return-void
.end method

.method public setHas_archive(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->has_archive:I

    return-void
.end method

.method public setId(J)V
    .registers 3

    iput-wide p1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->id:J

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->lang:Ljava/lang/String;

    return-void
.end method

.method public setNow_playing(I)V
    .registers 2

    iput p1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->now_playing:I

    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->start:Ljava/lang/String;

    return-void
.end method

.method public setStart_timestamp(J)V
    .registers 3

    iput-wide p1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->start_timestamp:J

    return-void
.end method

.method public setStop_timestamp(J)V
    .registers 3

    iput-wide p1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->stop_timestamp:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "Epg{id="

    .line 1
    invoke-static {v0}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", epg_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->epg_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->title:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", lang=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->lang:Ljava/lang/String;

    const-string v3, ", start=\'"

    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->start:Ljava/lang/String;

    const-string v3, ", end=\'"

    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->end:Ljava/lang/String;

    const-string v3, ", description=\'"

    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->description:Ljava/lang/String;

    const-string v3, ", channel_id=\'"

    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->channel_id:Ljava/lang/String;

    const-string v3, ", start_timestamp="

    .line 13
    invoke-static {v0, v1, v2, v3}, Lcom/nettv/livestore/MainActivity$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 14
    iget-wide v1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->start_timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", stop_timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->stop_timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", now_playing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->now_playing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", has_archive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nettv/livestore/models/CatchUpEpg;->has_archive:I

    const/16 v2, 0x7d

    .line 15
    invoke-static {v0, v1, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
