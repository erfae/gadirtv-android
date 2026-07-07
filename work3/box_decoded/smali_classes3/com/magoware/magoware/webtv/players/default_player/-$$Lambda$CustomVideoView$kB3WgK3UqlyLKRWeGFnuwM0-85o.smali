.class public final synthetic Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$kB3WgK3UqlyLKRWeGFnuwM0-85o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$kB3WgK3UqlyLKRWeGFnuwM0-85o;->f$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$kB3WgK3UqlyLKRWeGFnuwM0-85o;->f$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->lambda$onPrepared$3$CustomVideoView(Landroid/media/MediaPlayer;I)V

    return-void
.end method
