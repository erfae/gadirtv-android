.class public final synthetic Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$O0OA41lK9oqZQRtzJCKCRw-UfSs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$O0OA41lK9oqZQRtzJCKCRw-UfSs;->f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$O0OA41lK9oqZQRtzJCKCRw-UfSs;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$O0OA41lK9oqZQRtzJCKCRw-UfSs;->f$0:Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/players/-$$Lambda$LiveTvPlayerSuperclass$O0OA41lK9oqZQRtzJCKCRw-UfSs;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/players/LiveTvPlayerSuperclass;->lambda$scrollToCertainPosition$32$LiveTvPlayerSuperclass(Ljava/lang/String;)V

    return-void
.end method
