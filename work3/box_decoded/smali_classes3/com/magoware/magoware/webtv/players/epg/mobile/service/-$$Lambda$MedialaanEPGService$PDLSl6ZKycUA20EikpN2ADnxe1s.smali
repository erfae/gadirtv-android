.class public final synthetic Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$PDLSl6ZKycUA20EikpN2ADnxe1s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$PDLSl6ZKycUA20EikpN2ADnxe1s;->f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$PDLSl6ZKycUA20EikpN2ADnxe1s;->f$1:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

    iput p3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$PDLSl6ZKycUA20EikpN2ADnxe1s;->f$2:I

    iput p4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$PDLSl6ZKycUA20EikpN2ADnxe1s;->f$3:I

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$PDLSl6ZKycUA20EikpN2ADnxe1s;->f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$PDLSl6ZKycUA20EikpN2ADnxe1s;->f$1:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$PDLSl6ZKycUA20EikpN2ADnxe1s;->f$2:I

    iget v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$PDLSl6ZKycUA20EikpN2ADnxe1s;->f$3:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->lambda$getCurrentChannels$6$MedialaanEPGService(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;IILjava/lang/String;)V

    return-void
.end method
