.class public Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;
.super Ljava/lang/Object;
.source "EPGEvent.java"


# instance fields
.field public Id:I

.field private final channel:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

.field private final end:J

.field private final longDescription:Ljava/lang/String;

.field private nextEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

.field private previousEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

.field private final programUrl:Ljava/lang/String;

.field public scheduled:Z

.field public selected:Z

.field private final start:J

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "epgChannel",
            "start",
            "end",
            "title",
            "programUrl",
            "longDescription",
            "id"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->channel:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    .line 25
    iput-wide p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->start:J

    .line 26
    iput-wide p4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->end:J

    .line 27
    iput-object p6, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->title:Ljava/lang/String;

    .line 28
    iput-object p7, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->programUrl:Ljava/lang/String;

    .line 29
    iput-object p8, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->longDescription:Ljava/lang/String;

    .line 30
    iput p9, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->Id:I

    return-void
.end method


# virtual methods
.method public getChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->channel:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->end:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->Id:I

    return v0
.end method

.method public getNextEvent()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->nextEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-object v0
.end method

.method public getPreviousEvent()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->previousEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-object v0
.end method

.method public getProgramUrl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->programUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->start:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getlongDescription()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->longDescription:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrent()Z
    .locals 5

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->start:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->end:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScheduled()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->scheduled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->selected:Z

    return v0
.end method

.method public setNextEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextEvent"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->nextEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-void
.end method

.method public setPreviousEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previousEvent"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->previousEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-void
.end method

.method public setScheduled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "schedule"
        }
    .end annotation

    .line 87
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->scheduled:Z

    return-void
.end method
