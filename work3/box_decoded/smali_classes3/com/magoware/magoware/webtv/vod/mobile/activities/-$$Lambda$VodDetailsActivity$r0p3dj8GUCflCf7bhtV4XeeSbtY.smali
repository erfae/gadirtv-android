.class public final synthetic Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$r0p3dj8GUCflCf7bhtV4XeeSbtY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$r0p3dj8GUCflCf7bhtV4XeeSbtY;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$r0p3dj8GUCflCf7bhtV4XeeSbtY;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$r0p3dj8GUCflCf7bhtV4XeeSbtY;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$VodDetailsActivity$r0p3dj8GUCflCf7bhtV4XeeSbtY;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/VodDetailsActivity;->lambda$setTvShowsFavorite$10$VodDetailsActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Landroid/view/View;)V

    return-void
.end method
