.class public Liptv/m3u/parser/M3UParser;
.super Ljava/lang/Object;
.source "M3UParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liptv/m3u/parser/M3UParser$Status;
    }
.end annotation


# static fields
.field private static final ATTR_CHANNEL_ID:Ljava/lang/String; = "id"

.field private static final ATTR_CHANNEL_NAME:Ljava/lang/String; = "channel_name"

.field private static final ATTR_DLNA_EXTRAS:Ljava/lang/String; = "dlna_extras"

.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_GROUP_TITLE:Ljava/lang/String; = "group-title"

.field private static final ATTR_LOGO:Ljava/lang/String; = "logo"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PLUGIN:Ljava/lang/String; = "plugin"

.field private static final ATTR_TVG_PREFIX:Ljava/lang/String; = "tvg-"

.field private static final ATTR_TVG_SUFFIX:Ljava/lang/String; = "-tvg"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final INVALID_STREAM_URL:Ljava/lang/String; = "http://0.0.0.0:1234"

.field private static final PREFIX_COMMENT:Ljava/lang/String; = "#"

.field private static final PREFIX_EXTINF:Ljava/lang/String; = "#EXTINF:"

.field private static final PREFIX_EXTM3U:Ljava/lang/String; = "#EXTM3U"

.field private static mInstance:Liptv/m3u/parser/M3UParser;


# instance fields
.field private mHandler:Liptv/m3u/parser/M3UHandler;

.field private mTempItem:Liptv/m3u/parser/M3UItem;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Liptv/m3u/parser/M3UParser;->mHandler:Liptv/m3u/parser/M3UHandler;

    .line 3
    iput-object v0, p0, Liptv/m3u/parser/M3UParser;->mTempItem:Liptv/m3u/parser/M3UItem;

    return-void
.end method

.method private convert2int(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private flush(Liptv/m3u/parser/M3UHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liptv/m3u/parser/M3UParser;->mTempItem:Liptv/m3u/parser/M3UItem;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Liptv/m3u/parser/M3UItem;->getStreamURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Liptv/m3u/parser/M3UParser;->mTempItem:Liptv/m3u/parser/M3UItem;

    invoke-interface {p1, v0}, Liptv/m3u/parser/M3UHandler;->onReadEXTINF(Liptv/m3u/parser/M3UItem;)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Liptv/m3u/parser/M3UParser;->mTempItem:Liptv/m3u/parser/M3UItem;

    :cond_1
    return-void
.end method

.method private getAttr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tvg-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-tvg"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static final getInstance()Liptv/m3u/parser/M3UParser;
    .locals 1

    .line 1
    sget-object v0, Liptv/m3u/parser/M3UParser;->mInstance:Liptv/m3u/parser/M3UParser;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Liptv/m3u/parser/M3UParser;

    invoke-direct {v0}, Liptv/m3u/parser/M3UParser;-><init>()V

    sput-object v0, Liptv/m3u/parser/M3UParser;->mInstance:Liptv/m3u/parser/M3UParser;

    .line 3
    :cond_0
    sget-object v0, Liptv/m3u/parser/M3UParser;->mInstance:Liptv/m3u/parser/M3UParser;

    return-object v0
.end method

.method private parseAttributes(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_13

    const-string v1, ""

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    sget-object v2, Liptv/m3u/parser/M3UParser$Status;->READY:Liptv/m3u/parser/M3UParser$Status;

    .line 4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    .line 6
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7
    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    :goto_0
    add-int/2addr v4, v6

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 9
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 10
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "duration"

    invoke-direct {p0, v0, v5, v4}, Liptv/m3u/parser/M3UParser;->putAttr(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Liptv/m3u/parser/M3UParser;->shrink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p0, v3}, Liptv/m3u/parser/M3UParser;->reset(Ljava/lang/StringBuffer;)V

    :cond_3
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    move-object v7, v1

    .line 15
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_12

    add-int/lit8 v8, v4, 0x1

    .line 16
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 17
    sget-object v9, Liptv/m3u/parser/M3UParser$1;->$SwitchMap$iptv$m3u$parser$M3UParser$Status:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v6, :cond_e

    const/4 v10, 0x2

    if-eq v9, v10, :cond_c

    const/4 v10, 0x3

    const/16 v11, 0x22

    if-eq v9, v10, :cond_a

    const/4 v10, 0x4

    if-eq v9, v10, :cond_4

    goto/16 :goto_5

    :cond_4
    if-eqz v5, :cond_7

    :goto_3
    if-eq v4, v11, :cond_5

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v8, v2, :cond_5

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v8, 0x1

    .line 20
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v8, v2

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v7, v2}, Liptv/m3u/parser/M3UParser;->putAttr(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, v3}, Liptv/m3u/parser/M3UParser;->reset(Ljava/lang/StringBuffer;)V

    .line 24
    :cond_6
    sget-object v2, Liptv/m3u/parser/M3UParser$Status;->READY:Liptv/m3u/parser/M3UParser$Status;

    move v4, v8

    goto :goto_1

    .line 25
    :cond_7
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v7, v2}, Liptv/m3u/parser/M3UParser;->putAttr(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, v3}, Liptv/m3u/parser/M3UParser;->reset(Ljava/lang/StringBuffer;)V

    .line 29
    :cond_8
    sget-object v2, Liptv/m3u/parser/M3UParser$Status;->READY:Liptv/m3u/parser/M3UParser$Status;

    move-object v7, v1

    goto :goto_5

    .line 30
    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 31
    :cond_a
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_11

    if-ne v4, v11, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    .line 32
    :cond_b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 33
    :goto_4
    sget-object v2, Liptv/m3u/parser/M3UParser$Status;->READING_VALUE:Liptv/m3u/parser/M3UParser$Status;

    goto :goto_5

    :cond_c
    const/16 v9, 0x3d

    if-ne v4, v9, :cond_d

    .line 34
    invoke-static {v7}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Liptv/m3u/parser/M3UParser;->shrink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-direct {p0, v3}, Liptv/m3u/parser/M3UParser;->reset(Ljava/lang/StringBuffer;)V

    .line 37
    sget-object v4, Liptv/m3u/parser/M3UParser$Status;->KEY_READY:Liptv/m3u/parser/M3UParser$Status;

    move-object v7, v2

    move-object v2, v4

    goto :goto_5

    .line 38
    :cond_d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 39
    :cond_e
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_5

    :cond_f
    const/16 v9, 0x2c

    if-ne v4, v9, :cond_10

    .line 40
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "channel_name"

    invoke-direct {p0, v0, v8, v4}, Liptv/m3u/parser/M3UParser;->putAttr(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto/16 :goto_2

    .line 42
    :cond_10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    sget-object v2, Liptv/m3u/parser/M3UParser$Status;->READING_KEY:Liptv/m3u/parser/M3UParser$Status;

    :cond_11
    :goto_5
    move v4, v8

    goto/16 :goto_2

    .line 44
    :cond_12
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_13

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v7, p1}, Liptv/m3u/parser/M3UParser;->putAttr(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, v3}, Liptv/m3u/parser/M3UParser;->reset(Ljava/lang/StringBuffer;)V

    :cond_13
    :goto_6
    return-object v0
.end method

.method private parseHead(Ljava/lang/String;)Liptv/m3u/parser/M3UHead;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Liptv/m3u/parser/M3UParser;->parseAttributes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 2
    new-instance v0, Liptv/m3u/parser/M3UHead;

    invoke-direct {v0}, Liptv/m3u/parser/M3UHead;-><init>()V

    const-string v1, "name"

    .line 3
    invoke-direct {p0, p1, v1}, Liptv/m3u/parser/M3UParser;->getAttr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liptv/m3u/parser/M3UHead;->setName(Ljava/lang/String;)V

    const-string v1, "type"

    .line 4
    invoke-direct {p0, p1, v1}, Liptv/m3u/parser/M3UParser;->getAttr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liptv/m3u/parser/M3UHead;->setType(Ljava/lang/String;)V

    const-string v1, "dlna_extras"

    .line 5
    invoke-direct {p0, p1, v1}, Liptv/m3u/parser/M3UParser;->getAttr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liptv/m3u/parser/M3UHead;->setDLNAExtras(Ljava/lang/String;)V

    const-string v1, "plugin"

    .line 6
    invoke-direct {p0, p1, v1}, Liptv/m3u/parser/M3UParser;->getAttr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Liptv/m3u/parser/M3UHead;->setPlugin(Ljava/lang/String;)V

    return-object v0
.end method

.method private parseItem(Ljava/lang/String;)Liptv/m3u/parser/M3UItem;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Liptv/m3u/parser/M3UParser;->parseAttributes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 2
    new-instance v0, Liptv/m3u/parser/M3UItem;

    invoke-direct {v0}, Liptv/m3u/parser/M3UItem;-><init>()V

    const-string v1, "id"

    .line 3
    invoke-direct {p0, p1, v1}, Liptv/m3u/parser/M3UParser;->getAttr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liptv/m3u/parser/M3UItem;->setChannelID(Ljava/lang/String;)V

    const-string v1, "channel_name"

    .line 4
    invoke-direct {p0, p1, v1}, Liptv/m3u/parser/M3UParser;->getAttr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liptv/m3u/parser/M3UItem;->setChannelName(Ljava/lang/String;)V

    const-string v1, "duration"

    .line 5
    invoke-direct {p0, p1, v1}, Liptv/m3u/parser/M3UParser;->getAttr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Liptv/m3u/parser/M3UParser;->convert2int(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Liptv/m3u/parser/M3UItem;->setDuration(I)V

    const-string v1, "logo"

    .line 6
    invoke-direct {p0, p1, v1}, Liptv/m3u/parser/M3UParser;->getAttr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liptv/m3u/parser/M3UItem;->setLogoURL(Ljava/lang/String;)V

    const-string v1, "group-title"

    .line 7
    invoke-direct {p0, p1, v1}, Liptv/m3u/parser/M3UParser;->getAttr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liptv/m3u/parser/M3UItem;->setGroupTitle(Ljava/lang/String;)V

    const-string v1, "type"

    .line 8
    invoke-direct {p0, p1, v1}, Liptv/m3u/parser/M3UParser;->getAttr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liptv/m3u/parser/M3UItem;->setType(Ljava/lang/String;)V

    const-string v1, "dlna_extras"

    .line 9
    invoke-direct {p0, p1, v1}, Liptv/m3u/parser/M3UParser;->getAttr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liptv/m3u/parser/M3UItem;->setDLNAExtras(Ljava/lang/String;)V

    const-string v1, "plugin"

    .line 10
    invoke-direct {p0, p1, v1}, Liptv/m3u/parser/M3UParser;->getAttr(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Liptv/m3u/parser/M3UItem;->setPlugin(Ljava/lang/String;)V

    return-object v0
.end method

.method private putAttr(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private reset(Ljava/lang/StringBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-void
.end method

.method private shrink(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private updateURL(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liptv/m3u/parser/M3UParser;->mTempItem:Liptv/m3u/parser/M3UItem;

    if-eqz v0, :cond_0

    const-string v0, "http://0.0.0.0:1234"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Liptv/m3u/parser/M3UParser;->mTempItem:Liptv/m3u/parser/M3UItem;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Liptv/m3u/parser/M3UItem;->setStreamURL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Liptv/m3u/parser/M3UParser;->mHandler:Liptv/m3u/parser/M3UHandler;

    invoke-virtual {p0, p1, v0}, Liptv/m3u/parser/M3UParser;->parse(Ljava/lang/String;Liptv/m3u/parser/M3UHandler;)V

    return-void
.end method

.method public parse(Ljava/lang/String;Liptv/m3u/parser/M3UHandler;)V
    .locals 5

    const-string v0, "#EXTINF:"

    const-string v1, "#EXTM3U"

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Liptv/m3u/parser/M3UParser;->shrink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v3, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Liptv/m3u/parser/M3UParser;->shrink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Liptv/m3u/parser/M3UParser;->parseHead(Ljava/lang/String;)Liptv/m3u/parser/M3UHead;

    move-result-object p1

    invoke-interface {p2, p1}, Liptv/m3u/parser/M3UHandler;->onReadEXTM3U(Liptv/m3u/parser/M3UHead;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-direct {p0, p2}, Liptv/m3u/parser/M3UParser;->flush(Liptv/m3u/parser/M3UHandler;)V

    .line 8
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Liptv/m3u/parser/M3UParser;->shrink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Liptv/m3u/parser/M3UParser;->parseItem(Ljava/lang/String;)Liptv/m3u/parser/M3UItem;

    move-result-object p1

    iput-object p1, p0, Liptv/m3u/parser/M3UParser;->mTempItem:Liptv/m3u/parser/M3UItem;

    goto :goto_0

    :cond_2
    const-string v3, "#"

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-direct {p0, p1}, Liptv/m3u/parser/M3UParser;->updateURL(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_5
    invoke-direct {p0, p2}, Liptv/m3u/parser/M3UParser;->flush(Liptv/m3u/parser/M3UHandler;)V

    .line 13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setHandler(Liptv/m3u/parser/M3UHandler;)V
    .locals 0

    iput-object p1, p0, Liptv/m3u/parser/M3UParser;->mHandler:Liptv/m3u/parser/M3UHandler;

    return-void
.end method
