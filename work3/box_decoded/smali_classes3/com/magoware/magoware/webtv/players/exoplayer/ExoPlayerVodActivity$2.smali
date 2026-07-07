.class Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$2;
.super Ljava/util/TimerTask;
.source "ExoPlayerVodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->logLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 529
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$2;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$2;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->access$300(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 534
    iget-object v2, p0, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity$2;->this$0:Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;

    invoke-static {v2}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->access$400(Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "screen"

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/magoware/magoware/webtv/players/exoplayer/ExoPlayerVodActivity;->logMovie(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
