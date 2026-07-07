.class public final synthetic Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$SearchVodActivity$im1uo53kuXX0jviIjnLqerlixug;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$SearchVodActivity$im1uo53kuXX0jviIjnLqerlixug;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$SearchVodActivity$im1uo53kuXX0jviIjnLqerlixug;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SearchVodActivity;->lambda$searchFor$0$SearchVodActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V

    return-void
.end method
