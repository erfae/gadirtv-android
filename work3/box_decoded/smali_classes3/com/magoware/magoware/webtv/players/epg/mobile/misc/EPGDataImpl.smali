.class public Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;
.super Ljava/lang/Object;
.source "EPGDataImpl.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;


# instance fields
.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;",
            ">;"
        }
    .end annotation
.end field

.field private channelsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channels:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channelsByName:Ljava/util/Map;

    .line 22
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channels:Ljava/util/List;

    .line 23
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->indexChannels()V

    return-void
.end method

.method private indexChannels()V
    .locals 4

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channelsByName:Ljava/util/Map;

    const/4 v0, 0x0

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    .line 94
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channelsByName:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addNewChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelName",
            "url"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 78
    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    invoke-direct {v1, p2, p1, v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    if-lez v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channels:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    .line 81
    invoke-virtual {p1, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setNextChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 82
    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channelsByName:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getChannel(I)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    return-object p1
.end method

.method public getChannelCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChannelPosition(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epgChannel"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getChannelID()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getEvent(II)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelPosition",
            "programPosition"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    .line 53
    invoke-virtual {p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;->getChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->setChannelID(I)V

    return-object p2
.end method

.method public getEvents(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->getEvents()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getOrCreateChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelName",
            "url"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channelsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    if-eqz v0, :cond_0

    return-object v0

    .line 38
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->addNewChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    move-result-object p1

    return-object p1
.end method

.method public hasData()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
