.class public final synthetic Lcom/magoware/magoware/webtv/players/epg/big_screen/service/-$$Lambda$MedialaanEPGService$1$MWoq3ekSkCLUGQKQJk9nQ7_oC4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;

.field public final synthetic f$2:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

.field public final synthetic f$3:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/-$$Lambda$MedialaanEPGService$1$MWoq3ekSkCLUGQKQJk9nQ7_oC4c;->f$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/-$$Lambda$MedialaanEPGService$1$MWoq3ekSkCLUGQKQJk9nQ7_oC4c;->f$1:Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/-$$Lambda$MedialaanEPGService$1$MWoq3ekSkCLUGQKQJk9nQ7_oC4c;->f$2:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    iput-object p4, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/-$$Lambda$MedialaanEPGService$1$MWoq3ekSkCLUGQKQJk9nQ7_oC4c;->f$3:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/-$$Lambda$MedialaanEPGService$1$MWoq3ekSkCLUGQKQJk9nQ7_oC4c;->f$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/-$$Lambda$MedialaanEPGService$1$MWoq3ekSkCLUGQKQJk9nQ7_oC4c;->f$1:Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/-$$Lambda$MedialaanEPGService$1$MWoq3ekSkCLUGQKQJk9nQ7_oC4c;->f$2:Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/-$$Lambda$MedialaanEPGService$1$MWoq3ekSkCLUGQKQJk9nQ7_oC4c;->f$3:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/players/epg/big_screen/service/MedialaanEPGService$1;->lambda$run$0$MedialaanEPGService$1(Lcom/magoware/magoware/webtv/players/epg/big_screen/misc/EPGDataListener;Lcom/magoware/magoware/webtv/players/epg/big_screen/EPGData;Landroid/view/KeyEvent;)V

    return-void
.end method
