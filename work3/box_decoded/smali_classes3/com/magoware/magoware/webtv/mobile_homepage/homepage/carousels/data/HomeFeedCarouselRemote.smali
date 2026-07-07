.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;
.super Lcom/magoware/magoware/webtv/api/BaseDataSource;
.source "HomeFeedCarouselRemote.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J \u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\t0\u00082\u0006\u0010\u000c\u001a\u00020\rJ\u001d\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\n0\u000fH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;",
        "Lcom/magoware/magoware/webtv/api/BaseDataSource;",
        "apiService",
        "Lcom/magoware/magoware/webtv/api/HomePageService;",
        "accountService",
        "Lcom/magoware/magoware/webtv/api/AccountService;",
        "(Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)V",
        "fetchData",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/api/ApiResponse;",
        "Lcom/magoware/magoware/webtv/api/ResponseObject;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;",
        "url",
        "",
        "logout",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
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
.field private final accountService:Lcom/magoware/magoware/webtv/api/AccountService;

.field private final apiService:Lcom/magoware/magoware/webtv/api/HomePageService;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)V
    .locals 1

    const-string v0, "apiService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/api/BaseDataSource;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;->apiService:Lcom/magoware/magoware/webtv/api/HomePageService;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;->accountService:Lcom/magoware/magoware/webtv/api/AccountService;

    return-void
.end method

.method public static final synthetic access$getAccountService$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;)Lcom/magoware/magoware/webtv/api/AccountService;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;->accountService:Lcom/magoware/magoware/webtv/api/AccountService;

    return-object p0
.end method


# virtual methods
.method public final fetchData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/api/ApiResponse<",
            "Lcom/magoware/magoware/webtv/api/ResponseObject<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarousel;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;->apiService:Lcom/magoware/magoware/webtv/api/HomePageService;

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/api/HomePageService;->getHomeFeedCarousels(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final logout(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    .line 12
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote$logout$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote$logout$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/data/HomeFeedCarouselRemote;->getResult(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
