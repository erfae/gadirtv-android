.class public final synthetic Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$EpisodeActivity$Fuoul8U-fy8j49x5nHoBpMgR8xg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$EpisodeActivity$Fuoul8U-fy8j49x5nHoBpMgR8xg;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/-$$Lambda$EpisodeActivity$Fuoul8U-fy8j49x5nHoBpMgR8xg;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/EpisodeActivity;->lambda$setTokenUrl$1$EpisodeActivity(Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;)V

    return-void
.end method
