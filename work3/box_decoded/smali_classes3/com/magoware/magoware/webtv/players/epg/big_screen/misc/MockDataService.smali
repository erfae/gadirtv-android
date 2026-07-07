.class public Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;
.super Ljava/lang/Object;
.source "MockDataService.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static availableChannelLogos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static availableEventLength:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static availableEventTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->rand:Ljava/util/Random;

    const-string v0, "MockDataService "

    .line 20
    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0xdbba0

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x1b7740

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x2932e0

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x36ee80

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x6ddd00

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 21
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->availableEventLength:Ljava/util/List;

    const-string v1, "Avengers"

    const-string v2, "How I Met Your Mother"

    const-string v3, "Silicon Valley"

    const-string v4, "Late Night with Jimmy Fallon"

    const-string v5, "The Big Bang Theory"

    const-string v6, "Leon"

    const-string v7, "Die Hard"

    .line 29
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->availableEventTitles:Ljava/util/List;

    const-string v0, "http://kmdev.se/epg/1.png"

    const-string v1, "http://kmdev.se/epg/2.png"

    const-string v2, "http://kmdev.se/epg/3.png"

    const-string v3, "http://kmdev.se/epg/4.png"

    const-string v4, "http://kmdev.se/epg/5.png"

    .line 39
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->availableChannelLogos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEmptyEvents(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;J)Ljava/util/List;
    .locals 16
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
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;",
            "J)",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x1b7740

    sub-long v8, v1, v3

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long v10, v1, v3

    .line 127
    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;

    const-string v7, "0"

    const-string v12, "no epg"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "long desc"

    move-object v5, v1

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v15}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    .line 134
    invoke-virtual {v2, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->addEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;)Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;

    return-object v0
.end method

.method private static createEvents(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;J)Ljava/util/List;
    .locals 19
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
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;",
            "J)",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const-wide/32 v1, 0x7b98a00

    sub-long v3, p1, v1

    add-long v1, p1, v1

    const/4 v5, 0x0

    move-wide v9, v3

    :goto_0
    cmp-long v3, v9, v1

    if-gtz v3, :cond_1

    .line 76
    invoke-static {v9, v10}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->getEventEnd(J)J

    move-result-wide v3

    .line 77
    new-instance v15, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;

    sget-object v6, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->availableEventTitles:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-static {v7, v8}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->randomBetween(II)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-string v8, "0"

    const-string v17, "long desc"

    move-object v6, v15

    move-object/from16 v7, p0

    move-wide v11, v3

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v6 .. v16}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v6, v18

    if-eqz v5, :cond_0

    .line 79
    invoke-virtual {v5, v6}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->setNextEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;)V

    .line 80
    invoke-virtual {v6, v5}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;->setPreviousEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;)V

    .line 83
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p0

    .line 85
    invoke-virtual {v5, v6}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->addEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;)Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;

    move-wide v9, v3

    move-object v5, v6

    goto :goto_0

    :cond_1
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

    .line 92
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->availableEventLength:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->randomBetween(II)I

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
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;",
            ">;>;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x14

    if-ge v4, v5, :cond_1

    .line 54
    new-instance v5, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;

    sget-object v6, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->availableChannelLogos:Ljava/util/List;

    rem-int/lit8 v7, v4, 0x5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Channel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x5

    invoke-direct {v5, v6, v7, v4, v9}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {v3, v5}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->setNextChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;)V

    .line 58
    invoke-virtual {v5, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;)V

    .line 60
    :cond_0
    invoke-static {v5, v1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->createEvents(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;J)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v5

    move v4, v8

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getMockDataChannelsOnly()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;",
            ">;>;"
        }
    .end annotation

    .line 101
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x12

    new-array v4, v3, [I

    .line 106
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    .line 108
    new-instance v7, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;

    sget-object v8, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->availableChannelLogos:Ljava/util/List;

    rem-int/lit8 v9, v6, 0x5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget v10, v4, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-direct {v7, v8, v9, v6, v10}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz v5, :cond_0

    .line 111
    invoke-virtual {v5, v7}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->setNextChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;)V

    .line 112
    invoke-virtual {v7, v5}, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;)V

    .line 114
    :cond_0
    invoke-static {v7, v1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->createEmptyEvents(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;J)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    move-object v5, v7

    goto :goto_0

    :cond_1
    return-object v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
    .end array-data
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

    .line 97
    sget-object v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/MockDataService;->rand:Ljava/util/Random;

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
