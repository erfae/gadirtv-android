.class public final Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "NewsFeedViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u000f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120\u00110\u00102\u0006\u0010\u0014\u001a\u00020\u0015R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "repository",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;)V",
        "clearTable",
        "Lkotlinx/coroutines/Job;",
        "getClearTable",
        "()Lkotlinx/coroutines/Job;",
        "url",
        "",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "newsFeeds",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
        "page",
        "",
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
.field private final clearTable:Lkotlinx/coroutines/Job;

.field private final repository:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;)V
    .locals 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;->repository:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;

    .line 15
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel$clearTable$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel$clearTable$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;->clearTable:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;)Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;->repository:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;

    return-object p0
.end method


# virtual methods
.method public final getClearTable()Lkotlinx/coroutines/Job;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;->clearTable:Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "url"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final newsFeeds(I)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
            ">;>;>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;->repository:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;->url:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "url"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;->newsList(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFeedViewModel;->url:Ljava/lang/String;

    return-void
.end method
