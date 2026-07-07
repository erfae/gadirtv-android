.class public Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EPGState;
.super Landroid/view/View$BaseSavedState;
.source "EPGState.java"


# instance fields
.field private currentEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;


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

    .line 16
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EPGState;->currentEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    return-void
.end method


# virtual methods
.method public getCurrentEvent()Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EPGState;->currentEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    return-object v0
.end method

.method public setCurrentEvent(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentEvent"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EPGState;->currentEvent:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    return-void
.end method
