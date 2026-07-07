.class public final synthetic Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$-rIniy7Rh2WsmKAL70hw504GkxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field public final synthetic f$2:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$-rIniy7Rh2WsmKAL70hw504GkxI;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$-rIniy7Rh2WsmKAL70hw504GkxI;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$-rIniy7Rh2WsmKAL70hw504GkxI;->f$2:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$-rIniy7Rh2WsmKAL70hw504GkxI;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$-rIniy7Rh2WsmKAL70hw504GkxI;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$-rIniy7Rh2WsmKAL70hw504GkxI;->f$2:Ljava/lang/Boolean;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;

    invoke-virtual {v0, v1, v2, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->lambda$setTokenUrl$6$VodDetailsActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Ljava/lang/Boolean;Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;)V

    return-void
.end method
