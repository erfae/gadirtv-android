.class public interface abstract Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;
.super Ljava/lang/Object;
.source "EPGData.java"


# virtual methods
.method public abstract addNewChannel(Ljava/lang/String;Ljava/lang/String;I)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;
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
.end method

.method public abstract getChannel(I)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract getChannelCount()I
.end method

.method public abstract getEvent(II)Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;
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
.end method

.method public abstract getEvents(I)Ljava/util/List;
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
.end method

.method public abstract getOrCreateChannel(Ljava/lang/String;Ljava/lang/String;I)Lcom/magoware/magoware/webtv/players/epg/big_screen/legacy/EPGChannel;
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
.end method

.method public abstract hasData()Z
.end method
