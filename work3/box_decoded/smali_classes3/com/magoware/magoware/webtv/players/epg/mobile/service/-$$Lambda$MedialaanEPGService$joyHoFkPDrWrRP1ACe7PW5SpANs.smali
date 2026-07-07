.class public final synthetic Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$joyHoFkPDrWrRP1ACe7PW5SpANs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$joyHoFkPDrWrRP1ACe7PW5SpANs;->f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$joyHoFkPDrWrRP1ACe7PW5SpANs;->f$1:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

    iput p3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$joyHoFkPDrWrRP1ACe7PW5SpANs;->f$2:I

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$joyHoFkPDrWrRP1ACe7PW5SpANs;->f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$joyHoFkPDrWrRP1ACe7PW5SpANs;->f$1:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$joyHoFkPDrWrRP1ACe7PW5SpANs;->f$2:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->lambda$requestByTime$2$MedialaanEPGService(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;ILjava/lang/String;)V

    return-void
.end method
