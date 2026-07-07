.class public final synthetic Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$QgdPMAkYe6SaTBG-zoN7rGNhMWc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$QgdPMAkYe6SaTBG-zoN7rGNhMWc;->f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$QgdPMAkYe6SaTBG-zoN7rGNhMWc;->f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->lambda$setTokenUrl$1$LiveTvPlayerSuperclass(Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;)V

    return-void
.end method
