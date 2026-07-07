.class public final synthetic Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$T-jpEF0RjGr_0G6tJYql52QO9g0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$T-jpEF0RjGr_0G6tJYql52QO9g0;->f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$T-jpEF0RjGr_0G6tJYql52QO9g0;->f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->lambda$requestByChannels$5$MedialaanEPGService(Lcom/android/volley/VolleyError;)V

    return-void
.end method
