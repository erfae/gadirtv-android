.class public interface abstract Lcom/magoware/magoware/webtv/players/epg/mobile/EPGClickListener;
.super Ljava/lang/Object;
.source "EPGClickListener.java"


# virtual methods
.method public abstract onChannelClicked(ILcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGChannel;)V
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

.method public abstract onEventClicked(IILcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V
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
