.class public interface abstract Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGClickListener;
.super Ljava/lang/Object;
.source "EPGClickListener.java"


# virtual methods
.method public abstract onChannelClicked(ILcom/magoware/magoware/webtv/players/epg/big_screen/domain/ChannelEPG;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelPosition",
            "epgChannel"
        }
    .end annotation
.end method

.method public abstract onEventClicked(IILcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "channelPosition",
            "programPosition",
            "epgEvent"
        }
    .end annotation
.end method

.method public abstract onResetButtonClicked()V
.end method
