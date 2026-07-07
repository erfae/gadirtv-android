.class public Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGState;
.super Landroid/view/View$BaseSavedState;
.source "EPGState.java"


# instance fields
.field private currentEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;


# direct methods
.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superState"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGState;->currentEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-void
.end method


# virtual methods
.method public getCurrentEvent()Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGState;->currentEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-object v0
.end method

.method public setCurrentEvent(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentEvent"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGState;->currentEvent:Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;

    return-void
.end method
