.class public final synthetic Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$8AA61KpCHUbksHD3lfS5-S-jEDA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$8AA61KpCHUbksHD3lfS5-S-jEDA;->f$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/default_player/-$$Lambda$CustomVideoView$8AA61KpCHUbksHD3lfS5-S-jEDA;->f$0:Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/magoware/magoware/webtv/players/default_player/CustomVideoView;->lambda$onPrepared$1$CustomVideoView(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
