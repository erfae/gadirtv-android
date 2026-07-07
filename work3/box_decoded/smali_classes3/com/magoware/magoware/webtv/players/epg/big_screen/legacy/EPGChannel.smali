.class public Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;
.super Ljava/lang/Object;
.source "EPGChannel.java"


# instance fields
.field private final channelID:I

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final imageURL:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private nextChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;

.field private final number:I

.field private previousChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "imageURL",
            "name",
            "channelID",
            "number"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->events:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->imageURL:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->name:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->channelID:I

    .line 25
    iput p4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->number:I

    return-void
.end method


# virtual methods
.method public addEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;)Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->events:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getChannelID()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->channelID:I

    return v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGEvent;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->events:Ljava/util/List;

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->imageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->nextChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->number:I

    return v0
.end method

.method public getPreviousChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->previousChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;

    return-object v0
.end method

.method public setNextChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextChannel"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->nextChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;

    return-void
.end method

.method public setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previousChannel"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;->previousChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;

    return-void
.end method
