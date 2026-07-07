.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "HomeFeedSmallBannerViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0007R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u0008\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "repository",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository;)V",
        "banners",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "homeFeedSmallBanners",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/data/Resource;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBanners;",
        "getHomeFeedSmallBanners",
        "()Landroidx/lifecycle/LiveData;",
        "setUrl",
        "",
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
.field private final banners:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final homeFeedSmallBanners:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBanners;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 15
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;->banners:Landroidx/lifecycle/MutableLiveData;

    .line 17
    check-cast v0, Landroidx/lifecycle/LiveData;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel$homeFeedSmallBanners$1;

    invoke-direct {v1, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel$homeFeedSmallBanners$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository;)V

    check-cast v1, Landroidx/arch/core/util/Function;

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string v0, "Transformations.switchMa\u2026ners(url)\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;->homeFeedSmallBanners:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public final getHomeFeedSmallBanners()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBanners;",
            ">;>;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;->homeFeedSmallBanners:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/HomeFeedSmallBannerViewModel;->banners:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
