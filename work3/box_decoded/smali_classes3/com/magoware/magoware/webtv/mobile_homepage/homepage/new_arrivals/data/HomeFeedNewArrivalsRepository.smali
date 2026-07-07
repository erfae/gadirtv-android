.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;
.super Ljava/lang/Object;
.source "HomeFeedNewArrivalsRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J \u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000b0\n2\u0006\u0010\u000e\u001a\u00020\u000fJ!\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015J+\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\rH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;",
        "",
        "dao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;",
        "remoteSource",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;",
        "appExecutors",
        "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V",
        "newMovies",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/data/Resource;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;",
        "url",
        "",
        "setFavoriteMovie",
        "",
        "vodId",
        "",
        "favorite",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "homeFeedMoviesNew",
        "(IILcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final appExecutors:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

.field private final dao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;

.field private final remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteSource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appExecutors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;->remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;->appExecutors:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    return-void
.end method

.method public static final synthetic access$getDao$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;

    return-object p0
.end method

.method public static final synthetic access$getRemoteSource$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;->remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;

    return-object p0
.end method


# virtual methods
.method public final newMovies(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$newMovies$1;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;->appExecutors:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    invoke-direct {v0, p0, p1, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$newMovies$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;Ljava/lang/String;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V

    .line 39
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$newMovies$1;->asLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final setFavoriteMovie(IILcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;

    iget v1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;

    invoke-direct {v0, p0, p4}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget v2, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    iget-object p1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;->L$1:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;

    iget-object p1, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    iget-object p4, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;->remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;

    iput-object p0, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;->label:I

    invoke-virtual {p4, p1, p2, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;->setVodFavorite(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_1
    if-eqz p3, :cond_5

    .line 19
    iget-object p1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository$setFavoriteMovie$1;->label:I

    invoke-interface {p1, p3, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewDao;->update(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNew;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 20
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setFavoriteMovie(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedNewArrivalsRepository;->remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;

    invoke-virtual {v0, p1, p2, p3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;->setVodFavorite(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    .line 24
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
