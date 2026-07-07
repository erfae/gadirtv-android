.class public final synthetic Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$VodFragment$D-K8EwAd-ljXrBMm43E78bSD9Lo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$VodFragment$D-K8EwAd-ljXrBMm43E78bSD9Lo;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$VodFragment$D-K8EwAd-ljXrBMm43E78bSD9Lo;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$VodFragment$D-K8EwAd-ljXrBMm43E78bSD9Lo;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$VodFragment$D-K8EwAd-ljXrBMm43E78bSD9Lo;->f$0:Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$VodFragment$D-K8EwAd-ljXrBMm43E78bSD9Lo;->f$1:Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/vod/mobile/fragments/-$$Lambda$VodFragment$D-K8EwAd-ljXrBMm43E78bSD9Lo;->f$2:Ljava/util/List;

    check-cast p1, Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;

    invoke-virtual {v0, v1, v2, p1}, Lcom/magoware/magoware/webtv/vod/mobile/fragments/VodFragment;->lambda$getCategories$0$VodFragment(Lcom/magoware/magoware/webtv/network/mvvm/models/Carousel;Ljava/util/List;Lcom/magoware/magoware/webtv/network/mvvm/models/VodListResponse;)V

    return-void
.end method
