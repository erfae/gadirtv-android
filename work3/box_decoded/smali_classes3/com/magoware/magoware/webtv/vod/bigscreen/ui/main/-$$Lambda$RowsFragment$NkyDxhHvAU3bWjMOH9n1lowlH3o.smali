.class public final synthetic Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$NkyDxhHvAU3bWjMOH9n1lowlH3o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$NkyDxhHvAU3bWjMOH9n1lowlH3o;->f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$NkyDxhHvAU3bWjMOH9n1lowlH3o;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$NkyDxhHvAU3bWjMOH9n1lowlH3o;->f$0:Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/-$$Lambda$RowsFragment$NkyDxhHvAU3bWjMOH9n1lowlH3o;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;->lambda$fetchRow$1$RowsFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V

    return-void
.end method
