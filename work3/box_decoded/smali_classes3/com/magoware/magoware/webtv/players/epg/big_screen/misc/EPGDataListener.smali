.class public Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;
.super Ljava/lang/Object;
.source "EPGDataListener.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epg"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EPGDataListener "

    .line 15
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;->TAG:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    return-void
.end method


# virtual methods
.method public processData(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;Landroid/view/KeyEvent;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "event",
            "goToLiveNowEvent"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->setEPGData(Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;)V

    if-eqz p3, :cond_0

    .line 25
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {p1, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->recalculateAndRedrawAndGoToLiveNow(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, p2}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;ZLandroid/view/KeyEvent;)V

    :goto_0
    return-void
.end method

.method public releaseKeys()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;->epg:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;

    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EPG;->releaseKeys()V

    return-void
.end method
