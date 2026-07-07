.class public Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;
.super Ljava/lang/Object;
.source "EPGDataListener.java"


# instance fields
.field private epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "epg"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    return-void
.end method


# virtual methods
.method public processData(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->setEPGData(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;)V

    .line 22
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;Z)V

    return-void
.end method

.method public processData(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "currentChannelPosition",
            "recalculateAndRedraw"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->setEPGData(Lcom/magoware/magoware/webtv/players/epg/mobile/EPGData;)V

    if-eqz p3, :cond_0

    .line 29
    iget-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;->epg:Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/magoware/magoware/webtv/players/epg/mobile/EPG;->recalculateAndRedraw(Lcom/magoware/magoware/webtv/players/epg/mobile/domain/EPGEvent;ZIZ)V

    :cond_0
    return-void
.end method
