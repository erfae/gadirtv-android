.class public Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;
.super Ljava/lang/Object;
.source "EPGEvent.java"


# instance fields
.field private final channel:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;

.field private final duration:I

.field private final end:J

.field private final id:Ljava/lang/String;

.field private final longDescription:Ljava/lang/String;

.field private nextEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;

.field private previousEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;

.field private final programUrl:Ljava/lang/String;

.field private scheduled:Z

.field public selected:Z

.field private final start:J

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "id",
            "start",
            "end",
            "title",
            "programUrl",
            "scheduled",
            "longDescription"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->id:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->channel:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;

    .line 27
    iput-wide p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->start:J

    .line 28
    iput-wide p5, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->end:J

    .line 29
    iput-object p7, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->title:Ljava/lang/String;

    .line 30
    iput-object p8, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->programUrl:Ljava/lang/String;

    .line 31
    iput-boolean p9, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->scheduled:Z

    sub-long/2addr p5, p3

    long-to-int p1, p5

    .line 32
    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->duration:I

    .line 33
    iput-object p10, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->longDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->channel:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->duration:I

    return v0
.end method

.method public getEnd()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->end:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->longDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getNextEvent()Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->nextEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;

    return-object v0
.end method

.method public getPreviousEvent()Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->previousEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;

    return-object v0
.end method

.method public getProgramUrl()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->programUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->start:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrent()Z
    .locals 5

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->start:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->end:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScheduled()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->scheduled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->selected:Z

    return v0
.end method

.method public setNextEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextEvent"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->nextEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;

    return-void
.end method

.method public setPreviousEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previousEvent"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->previousEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;

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

    .line 82
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->scheduled:Z

    return-void
.end method
