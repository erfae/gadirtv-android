.class public Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;
.super Ljava/lang/Object;
.source "EPGChannel.java"


# instance fields
.field private channelID:I

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final imageURL:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private nextChannel:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

.field private previousChannel:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageURL",
            "name",
            "channelID"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->events:Ljava/util/List;

    .line 21
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->imageURL:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->name:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->channelID:I

    return-void
.end method


# virtual methods
.method public addEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getChannelID()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->channelID:I

    return v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->events:Ljava/util/List;

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->imageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->nextChannel:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    return-object v0
.end method

.method public getPreviousChannel()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->previousChannel:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    return-object v0
.end method

.method public setChannelID(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 64
    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->channelID:I

    return-void
.end method

.method public setNextChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextChannel"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->nextChannel:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    return-void
.end method

.method public setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previousChannel"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;->previousChannel:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;

    return-void
.end method
