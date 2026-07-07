.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "HomeFeedChannelsTrendingViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0008\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\n0\tJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0007R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "repository",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRepository;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRepository;)V",
        "_trendingChannels",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "homeFeedChannelsTrending",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/data/Resource;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;",
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
.field private final _trendingChannels:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final repository:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRepository;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRepository;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;->repository:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRepository;

    .line 15
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;->_trendingChannels:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRepository;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;->repository:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRepository;

    return-object p0
.end method


# virtual methods
.method public final homeFeedChannelsTrending()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsWithEpg;",
            ">;>;>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;->_trendingChannels:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel$homeFeedChannelsTrending$1;

    invoke-direct {v1, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel$homeFeedChannelsTrending$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;)V

    check-cast v1, Landroidx/arch/core/util/Function;

    invoke-static {v0, v1}, Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "Transformations\n        \u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/ui/HomeFeedChannelsTrendingViewModel;->_trendingChannels:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
