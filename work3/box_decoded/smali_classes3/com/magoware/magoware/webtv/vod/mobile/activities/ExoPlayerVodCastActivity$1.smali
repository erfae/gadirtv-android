.class Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity$1;
.super Ljava/util/TimerTask;
.source "ExoPlayerVodCastActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->logLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity$1;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity$1;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->access$000(Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 263
    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity$1;->this$0:Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;->access$100(Lcom/magoware/magoware/webtv/vod/mobile/activities/ExoPlayerVodCastActivity;)Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;

    move-result-object v2

    const-string v3, "play"

    const-string v4, "screen"

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/magoware/magoware/webtv/vod/mobile/activities/PlayerManager;->logMovie(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
