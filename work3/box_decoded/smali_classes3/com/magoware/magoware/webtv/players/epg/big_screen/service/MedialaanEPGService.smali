.class public Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;
.super Ljava/lang/Object;
.source "MedialaanEPGService.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private goToLiveNowEvent:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MedialaanEPGService "

    .line 26
    iput-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;->TAG:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;)Landroid/app/Activity;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;->goToLiveNowEvent:Z

    return p0
.end method


# virtual methods
.method public requestByChannels(Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "listener",
            "channelNumbers",
            "event"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;-><init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;Ljava/lang/String;Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;Landroid/view/KeyEvent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setGoToLiveNowEvent(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "goToLiveNowEvent"
        }
    .end annotation

    .line 51
    iput-boolean p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService;->goToLiveNowEvent:Z

    return-void
.end method
