.class public final synthetic Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$EpgBigScreen$WubKDlfyDe28dK1oPKWWoc6w--E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$EpgBigScreen$WubKDlfyDe28dK1oPKWWoc6w--E;->f$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$EpgBigScreen$WubKDlfyDe28dK1oPKWWoc6w--E;->f$1:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$EpgBigScreen$WubKDlfyDe28dK1oPKWWoc6w--E;->f$0:Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/big_screen/-$$Lambda$EpgBigScreen$WubKDlfyDe28dK1oPKWWoc6w--E;->f$1:Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/players/epg/big_screen/EpgBigScreen;->lambda$showEventInfo$0$EpgBigScreen(Lcom/magoware/magoware/webtv/players/epg/big_screen/domain/EpgEvent;Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
