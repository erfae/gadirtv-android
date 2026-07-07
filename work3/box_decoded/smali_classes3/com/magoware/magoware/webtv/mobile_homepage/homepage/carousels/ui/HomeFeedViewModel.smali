.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "HomeFeedViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0007R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u0008\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "repository",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;)V",
        "_carousels",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "homeFeedCarousels",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/data/Resource;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;",
        "getHomeFeedCarousels",
        "()Landroidx/lifecycle/LiveData;",
        "logout",
        "",
        "setUrl",
        "url",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final _carousels:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final homeFeedCarousels:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final repository:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;->repository:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;

    .line 12
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;->_carousels:Landroidx/lifecycle/MutableLiveData;

    .line 15
    check-cast p1, Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel$homeFeedCarousels$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel$homeFeedCarousels$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;)V

    check-cast v0, Landroidx/arch/core/util/Function;

    invoke-static {p1, v0}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string v0, "Transformations\n        \u2026          }\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;->homeFeedCarousels:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;->repository:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;

    return-object p0
.end method


# virtual methods
.method public final getHomeFeedCarousels()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;",
            ">;>;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;->homeFeedCarousels:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final logout()V
    .locals 6

    .line 28
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel$logout$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel$logout$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedViewModel;->_carousels:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
