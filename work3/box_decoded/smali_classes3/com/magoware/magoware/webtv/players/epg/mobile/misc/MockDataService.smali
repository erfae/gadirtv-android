.class public Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;
.super Ljava/lang/Object;
.source "MockDataService.java"


# static fields
.field private static availableChannelLogos:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static availableEventLength:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static availableEventTitles:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static current_category_id:I = 0x0

.field public static is_adult_content:Z = true

.field private static rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;->rand:Ljava/util/Random;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0xdbba0

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x1b7740

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x2932e0

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x36ee80

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x6ddd00

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 27
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;->availableEventLength:Ljava/util/List;

    const-string v1, "Avengers"

    const-string v2, "How I Met Your Mother"

    const-string v3, "Silicon Valley"

    const-string v4, "Late Night with Jimmy Fallon"

    const-string v5, "The Big Bang Theory"

    const-string v6, "Leon"

    const-string v7, "Die Hard"

    .line 35
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;->availableEventTitles:Ljava/util/List;

    const-string v0, "http://kmdev.se/epg/1.png"

    const-string v1, "http://kmdev.se/epg/2.png"

    const-string v2, "http://kmdev.se/epg/3.png"

    const-string v3, "http://kmdev.se/epg/4.png"

    const-string v4, "http://kmdev.se/epg/5.png"

    .line 45
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;->availableChannelLogos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEvents(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;J)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "epgChannel",
            "nowMillis"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;",
            "J)",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;",
            ">;"
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const-wide/32 v1, 0x2932e00

    sub-long v5, p1, v1

    const-wide/32 p1, 0x36ee80

    add-long v7, v5, p1

    .line 127
    new-instance p1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    const-string v9, "no epg"

    const/4 v10, 0x0

    const-string v11, "long descriptiooon"

    const/4 v12, 0x0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v12}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;-><init>(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->addEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-object v0
.end method

.method private static getEventEnd(J)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventStartMillis"
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;->availableEventLength:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;->randomBetween(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public static getMockData()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;",
            ">;>;"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    sget v1, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;->current_category_id:I

    if-nez v1, :cond_0

    .line 61
    sget-boolean v1, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;->is_adult_content:Z

    invoke-static {v1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(Z)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_0
    sget-boolean v2, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;->is_adult_content:Z

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(IZ)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 63
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 64
    new-instance v4, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v5, v5, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v7, v7, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v3, :cond_1

    .line 67
    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setNextChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 68
    invoke-virtual {v4, v3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 71
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static parseDataInitial()Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;
    .locals 8

    .line 87
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 88
    sget v1, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;->current_category_id:I

    if-nez v1, :cond_0

    .line 89
    sget-boolean v1, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;->is_adult_content:Z

    invoke-static {v1}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(Z)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 90
    :cond_0
    sget-boolean v2, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;->is_adult_content:Z

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/database/DatabaseQueries;->getAllObjectChannels(IZ)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    .line 91
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget v6, v6, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->channel_number:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;

    iget-object v6, v6, Lcom/magoware/magoware/webtv/database/objects/TVChannelObject;->icon_url:Ljava/lang/String;

    .line 94
    new-instance v7, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    invoke-direct {v7, v6, v3, v2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    if-nez v4, :cond_1

    move-object v4, v7

    :cond_1
    if-eqz v5, :cond_2

    .line 99
    invoke-virtual {v7, v5}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 100
    invoke-virtual {v5, v7}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setNextChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 103
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object v3, v7

    move-object v5, v3

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v3, v4}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setNextChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 106
    invoke-virtual {v4, v3}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 107
    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;

    invoke-direct {v1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static randomBetween(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/MockDataService;->rand:Ljava/util/Random;

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
