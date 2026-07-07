.class public final synthetic Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$SeeAllMoviesActivity$o7EHLfnxv7pcwWeu2emFOktckw4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$SeeAllMoviesActivity$o7EHLfnxv7pcwWeu2emFOktckw4;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$SeeAllMoviesActivity$o7EHLfnxv7pcwWeu2emFOktckw4;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/SeeAllMoviesActivity;->lambda$loadData$0$SeeAllMoviesActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V

    return-void
.end method
