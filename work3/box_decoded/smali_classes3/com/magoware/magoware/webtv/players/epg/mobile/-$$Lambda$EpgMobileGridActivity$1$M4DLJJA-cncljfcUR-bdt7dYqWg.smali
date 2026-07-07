.class public final synthetic Lcom/magoware/magoware/webtv/players/epg/mobile/-$$Lambda$EpgMobileGridActivity$1$M4DLJJA-cncljfcUR-bdt7dYqWg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/-$$Lambda$EpgMobileGridActivity$1$M4DLJJA-cncljfcUR-bdt7dYqWg;->f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/epg/mobile/-$$Lambda$EpgMobileGridActivity$1$M4DLJJA-cncljfcUR-bdt7dYqWg;->f$0:Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;

    check-cast p1, Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/epg/mobile/EpgMobileGridActivity$1;->lambda$onEventClicked$0$EpgMobileGridActivity$1(Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;)V

    return-void
.end method
