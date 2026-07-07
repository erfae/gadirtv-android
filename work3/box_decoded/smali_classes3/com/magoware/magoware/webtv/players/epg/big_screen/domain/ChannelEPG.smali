.class public Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;
.super Ljava/lang/Object;
.source "ChannelEPG.java"


# instance fields
.field private channelID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private channelNumber:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel_number"
    .end annotation
.end field

.field private channelPosition:I

.field private channelTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private epgEventList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "epg_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;",
            ">;"
        }
    .end annotation
.end field

.field private iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon_url"
    .end annotation
.end field

.field private nextChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

.field private previousChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelID()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->channelID:I

    return v0
.end method

.method public getChannelNumber()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->channelNumber:I

    return v0
.end method

.method public getChannelPosition()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->channelPosition:I

    return v0
.end method

.method public getChannelTitle()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->channelTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getEpgEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->epgEventList:Ljava/util/List;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNextChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->nextChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    return-object v0
.end method

.method public getPreviousChannel()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->previousChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    return-object v0
.end method

.method public setChannelPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelPosition"
        }
    .end annotation

    .line 27
    iput p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->channelPosition:I

    return-void
.end method

.method public setNextChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextChannel"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->nextChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    return-void
.end method

.method public setPreviousChannel(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previousChannel"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;->previousChannel:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;

    return-void
.end method
