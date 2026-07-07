.class public final Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;
.super Ljava/lang/Object;
.source "NewsFeedRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\rJ(\u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00100\u000f0\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;",
        "",
        "dao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;",
        "remoteSource",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;)V",
        "clearTable",
        "",
        "getNews",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
        "id",
        "",
        "newsList",
        "Lcom/magoware/magoware/webtv/data/ErrorHandling;",
        "",
        "url",
        "",
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
.field private final dao:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;

.field private final remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;->remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;

    return-void
.end method

.method public static final synthetic access$getDao$p(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;

    return-object p0
.end method

.method public static final synthetic access$getRemoteSource$p(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;->remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;

    return-object p0
.end method


# virtual methods
.method public final clearTable()V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;->clearTable()V

    return-void
.end method

.method public final getNews(J)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;

    invoke-interface {v0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;->getNews(J)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final newsList(Ljava/lang/String;I)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/ErrorHandling<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeed;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository$newsList$1;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository$newsList$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 10
    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository$newsList$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository$newsList$2;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 11
    new-instance p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository$newsList$3;

    invoke-direct {p1, p0, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository$newsList$3;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 8
    invoke-static {v0, v1, p1}, Lcom/magoware/magoware/webtv/api/NetworkBoundResourceKt;->resultLiveData(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
