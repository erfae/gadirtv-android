.class public final synthetic Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$SFVgyFYCNTMB3XexWsnbVluFPjU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;Lcom/magoware/magoware/webtv/network/mvvm/models/Card;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$SFVgyFYCNTMB3XexWsnbVluFPjU;->f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$SFVgyFYCNTMB3XexWsnbVluFPjU;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iput-boolean p3, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$SFVgyFYCNTMB3XexWsnbVluFPjU;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$SFVgyFYCNTMB3XexWsnbVluFPjU;->f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$SFVgyFYCNTMB3XexWsnbVluFPjU;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Card;

    iget-boolean v2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$DetailFragment$SFVgyFYCNTMB3XexWsnbVluFPjU;->f$2:Z

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;

    invoke-virtual {v0, v1, v2, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/DetailFragment;->lambda$setTokenUrl$10$DetailFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/Card;ZLcom/magoware/magoware/webtv/network/mvvm/models/VodStreamResponse;)V

    return-void
.end method
