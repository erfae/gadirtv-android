.class public Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;
.super Ljava/lang/Object;
.source "NewEPGDataImpl.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;


# instance fields
.field private TAG:Ljava/lang/String;

.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    const-string v0, "NewEPGDataImpl "

    .line 17
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->TAG:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    .line 21
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->chainChannels()V

    return-void
.end method

.method private addEndDummyEpg(Ljava/util/List;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "epgEvents",
            "channelEPG",
            "dummyEpg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;",
            ">;",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;",
            ")V"
        }
    .end annotation

    .line 160
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p3, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setEventChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V

    .line 162
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p2, p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setPreviousEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setNextEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    return-void
.end method

.method private addStartDummyEpg(Ljava/util/List;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "epgEvents",
            "channelEPG",
            "dummyEpg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;",
            ">;",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    invoke-interface {p1, v0, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 154
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p3, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setEventChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V

    .line 155
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p2, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setNextEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    .line 156
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {p2, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setPreviousEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    return-void
.end method

.method private chainChannels()V
    .locals 4

    const/4 v0, 0x0

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    if-nez v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->setNextChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V

    goto :goto_1

    :cond_0
    if-lez v0, :cond_1

    .line 73
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V

    goto :goto_1

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 76
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->setNextChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V

    .line 77
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    invoke-virtual {v1, v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V

    .line 79
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    invoke-virtual {v1, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->setChannelPosition(I)V

    .line 80
    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    invoke-direct {p0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->chainEpgEvents(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private chainEpgEvents(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelEPG"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getEpgEventList()Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-direct {p0, v0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->fillEmptyEpg(Ljava/util/List;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V

    .line 92
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1

    .line 93
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setEventChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V

    return-void

    .line 97
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 98
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->parseTimeToDate(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    if-nez v2, :cond_2

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v1, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setNextEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    goto :goto_1

    .line 105
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v2, v1, :cond_3

    .line 106
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v1, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setPreviousEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    goto :goto_1

    .line 108
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v1, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setNextEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v1, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setPreviousEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    .line 112
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v1, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setEventChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->fillTimeLine(Ljava/util/List;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V

    return-void
.end method

.method private fillEmptyEpg(Ljava/util/List;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "epgEvents",
            "channelEPG"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;",
            ">;",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;",
            ")V"
        }
    .end annotation

    .line 119
    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineEnd()J

    move-result-wide v0

    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineStart()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 122
    new-instance v3, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineStart()J

    move-result-wide v4

    int-to-long v6, v2

    mul-long v6, v6, v0

    const-wide/16 v8, 0x18

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineStart()J

    move-result-wide v6

    add-int/lit8 v10, v2, 0x1

    int-to-long v11, v10

    mul-long v11, v11, v0

    div-long/2addr v11, v8

    add-long/2addr v6, v11

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;-><init>(JJ)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v2, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->setEventChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V

    move v2, v10

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fillTimeLine(Ljava/util/List;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "epgEvents",
            "channelEPG"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;",
            ">;",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramStart()J

    move-result-wide v0

    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-virtual {v2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;->getProgramEnd()J

    move-result-wide v2

    .line 136
    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineStart()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v8, v0, v4

    if-lez v8, :cond_0

    .line 138
    new-instance v4, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineStart()J

    move-result-wide v8

    invoke-direct {v4, v8, v9, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;-><init>(JJ)V

    invoke-direct {p0, p1, p2, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->addStartDummyEpg(Ljava/util/List;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    .line 140
    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineStart()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineStart()J

    move-result-wide v8

    invoke-direct {v0, v4, v5, v8, v9}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;-><init>(JJ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->addStartDummyEpg(Ljava/util/List;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    .line 144
    :cond_0
    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineEnd()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 146
    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineEnd()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;-><init>(JJ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->addEndDummyEpg(Ljava/util/List;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    .line 148
    new-instance v0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineEnd()J

    move-result-wide v1

    invoke-static {}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->getEpgTimelineEnd()J

    move-result-wide v3

    add-long/2addr v3, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;-><init>(JJ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->addEndDummyEpg(Ljava/util/List;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V

    :cond_1
    return-void
.end method

.method public static getEpgTimelineEnd()J
    .locals 4

    .line 29
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->getCurrentHoursInMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->timeZoneOffset:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7b98a00

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getEpgTimelineStart()J
    .locals 4

    .line 25
    invoke-static {}, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->getCurrentHoursInMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/magoware/magoware/webtv/util/TimezoneUtil;->timeZoneOffset:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7b98a00

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addNewChannel(Ljava/lang/String;Ljava/lang/String;I)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelName",
            "iconUrl",
            "channelNumber"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getChannel(I)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    return-object p1
.end method

.method public getChannelCount()I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEvent(II)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;
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

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getEpgEventList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 52
    new-instance p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    invoke-direct {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;-><init>()V

    return-object p1
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
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->getEpgEventList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getOrCreateChannel(Ljava/lang/String;Ljava/lang/String;I)Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelName",
            "iconUrl",
            "channelNumber"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasData()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/NewEPGDataImpl;->channels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
