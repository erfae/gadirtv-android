.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;
.super Ljava/lang/Object;
.source "HomeFeedCarouselRepository.kt"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J \u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000b0\n2\u0006\u0010\u000e\u001a\u00020\u000fJ\u001d\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120\u0011H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;",
        "",
        "dao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;",
        "remoteSource",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;",
        "appExecutors",
        "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V",
        "carousels",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/data/Resource;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;",
        "url",
        "",
        "logout",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "Lcom/magoware/magoware/webtv/api/ResponseObject;",
        "Lcom/google/gson/JsonObject;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private appExecutors:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

.field private final dao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;

.field private final remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appExecutors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;->remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;->appExecutors:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    return-void
.end method

.method public static final synthetic access$getDao$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselDao;

    return-object p0
.end method

.method public static final synthetic access$getRemoteSource$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;->remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;

    return-object p0
.end method


# virtual methods
.method public final carousels(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository$carousels$1;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;->appExecutors:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    invoke-direct {v0, p0, p1, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository$carousels$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;Ljava/lang/String;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V

    .line 31
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository$carousels$1;->asLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final logout(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "Lcom/magoware/magoware/webtv/api/ResponseObject<",
            "Lcom/google/gson/JsonObject;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRepository;->remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;->logout(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
