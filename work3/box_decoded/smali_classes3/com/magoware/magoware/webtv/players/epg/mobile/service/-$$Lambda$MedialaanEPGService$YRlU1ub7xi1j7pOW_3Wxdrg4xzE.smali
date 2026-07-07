.class public final synthetic Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$YRlU1ub7xi1j7pOW_3Wxdrg4xzE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$YRlU1ub7xi1j7pOW_3Wxdrg4xzE;->f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$YRlU1ub7xi1j7pOW_3Wxdrg4xzE;->f$1:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

    iput p3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$YRlU1ub7xi1j7pOW_3Wxdrg4xzE;->f$2:I

    iput p4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$YRlU1ub7xi1j7pOW_3Wxdrg4xzE;->f$3:I

    iput-boolean p5, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$YRlU1ub7xi1j7pOW_3Wxdrg4xzE;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$YRlU1ub7xi1j7pOW_3Wxdrg4xzE;->f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$YRlU1ub7xi1j7pOW_3Wxdrg4xzE;->f$1:Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;

    iget v2, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$YRlU1ub7xi1j7pOW_3Wxdrg4xzE;->f$2:I

    iget v3, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$YRlU1ub7xi1j7pOW_3Wxdrg4xzE;->f$3:I

    iget-boolean v4, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/service/-$$Lambda$MedialaanEPGService$YRlU1ub7xi1j7pOW_3Wxdrg4xzE;->f$4:Z

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/magoware/magoware/webtv/players/epg/mobile/service/MedialaanEPGService;->lambda$requestByChannels$4$MedialaanEPGService(Lcom/magoware/magoware/webtv/players/epg/mobile/misc/EPGDataListener;IIZLjava/lang/String;)V

    return-void
.end method
