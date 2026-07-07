.class public final synthetic Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$SIctXR79TVh2oe7E5APJco4Ui0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$SIctXR79TVh2oe7E5APJco4Ui0U;->f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$SIctXR79TVh2oe7E5APJco4Ui0U;->f$1:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$SIctXR79TVh2oe7E5APJco4Ui0U;->f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$SIctXR79TVh2oe7E5APJco4Ui0U;->f$1:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->lambda$requestByTime$0$MedialaanEPGService(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;Ljava/lang/String;)V

    return-void
.end method
