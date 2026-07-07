.class public final synthetic Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$VerticalGridFragment$UatWPW4Z6oIlvYxRDReIqx6JMaY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$VerticalGridFragment$UatWPW4Z6oIlvYxRDReIqx6JMaY;->f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$VerticalGridFragment$UatWPW4Z6oIlvYxRDReIqx6JMaY;->f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/VerticalGridFragment;->lambda$loadMovies$1$VerticalGridFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V

    return-void
.end method
