.class public Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;
.super Ljava/lang/Object;
.source "EpgEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent$ProgramStatus;
    }
.end annotation


# static fields
.field private static date:Ljava/lang/String;

.field private static dateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private channelNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel_number"
    .end annotation
.end field

.field private channelTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel.title"
    .end annotation
.end field

.field private durationSeconds:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration_seconds"
    .end annotation
.end field

.field private endTime:J

.field private epgId:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private epgTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private eventChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

.field private iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_url"
    .end annotation
.end field

.field private longDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "long_description"
    .end annotation
.end field

.field private nextEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

.field private previousEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

.field private programEnd:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "program_end"
    .end annotation
.end field

.field private programStart:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "program_start"
    .end annotation
.end field

.field private scheduled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allow_recording"
    .end annotation
.end field

.field private selected:Z

.field private shortDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_description"
    .end annotation
.end field

.field private shortName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_name"
    .end annotation
.end field

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->dateFormat:Ljava/text/SimpleDateFormat;

    const-string v0, "Mar 19, 2021 6:00:00 PM"

    .line 63
    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->date:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->epgId:Ljava/lang/Object;

    .line 68
    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineStart()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->startTime:J

    .line 69
    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineEnd()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->endTime:J

    .line 70
    iget-wide v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->startTime:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->durationSeconds:I

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startMillis",
            "endMillis"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->epgId:Ljava/lang/Object;

    sub-long v0, p3, p1

    long-to-int v1, v0

    .line 76
    div-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->durationSeconds:I

    .line 77
    iput-wide p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->startTime:J

    .line 78
    iput-wide p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->endTime:J

    return-void
.end method

.method private fillerText()Ljava/lang/String;
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->eventChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/magoware/magoware/webtv/util/Utils;->getEpgFillerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->eventChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getChannelTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static parseSimpleDate(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->programStart:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->programEnd:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM dd, yyyy hh:mm:ss aaa"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->date:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 223
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->date:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public static parseTimeToDate(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgEvent"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->programStart:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->programEnd:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    :try_start_0
    sget-object v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->timeZoneOffset:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->startTime:J

    .line 208
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->programEnd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->timeZoneOffset:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->endTime:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-wide/16 v1, 0x0

    .line 211
    iput-wide v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->startTime:J

    .line 212
    iput-wide v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->endTime:J

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->eventChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    return-object v0
.end method

.method public getChannelNumber()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->channelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelTitle()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->channelTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationSeconds()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->durationSeconds:I

    return v0
.end method

.method public getEpgId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->epgId:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEpgTitle()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->epgTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->fillerText()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFormatDate()Ljava/lang/String;
    .locals 4

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 83
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "dd-MM-yyyy"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->programStart:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 91
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLongDescription()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->longDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->fillerText()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNextEvent()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->nextEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    return-object v0
.end method

.method public getPreviousEvent()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->previousEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    return-object v0
.end method

.method public getProgramEnd()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->endTime:J

    return-wide v0
.end method

.method public getProgramStart()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->startTime:J

    return-wide v0
.end method

.method public getProgramStatus()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent$ProgramStatus;
    .locals 5

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 146
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 147
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent$ProgramStatus;->PAST:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent$ProgramStatus;

    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 149
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent$ProgramStatus;->LIVE:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent$ProgramStatus;

    return-object v0

    .line 150
    :cond_1
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent$ProgramStatus;->FUTURE:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent$ProgramStatus;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->shortDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->fillerText()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->shortName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->fillerText()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isCurrent()Z
    .locals 5

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 141
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFuture()Z
    .locals 5

    .line 154
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPast()Z
    .locals 5

    .line 158
    iget-wide v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->endTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

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

    .line 166
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->scheduled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->selected:Z

    return v0
.end method

.method public setEventChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventChannel"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->eventChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    return-void
.end method

.method public setNextEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextEvent"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->nextEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    return-void
.end method

.method public setPreviousEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previousEvent"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->previousEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

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

    .line 162
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->scheduled:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    .line 170
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->selected:Z

    return-void
.end method
