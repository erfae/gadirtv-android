.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository$loadMovies$1;
.super Lcom/magoware/magoware/webtv/api/NetworkBoundResource;
.source "HomeFeedMovieRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;->loadMovies(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/magoware/magoware/webtv/api/NetworkBoundResource<",
        "Ljava/util/List<",
        "+",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;",
        ">;",
        "Lcom/magoware/magoware/webtv/api/ResponseObject<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00040\u0001J\u001a\u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00040\u00070\u0006H\u0014J\u0014\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0006H\u0014J\u0016\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0004H\u0014J\u0018\u0010\u000c\u001a\u00020\r2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0014\u00a8\u0006\u000f"
    }
    d2 = {
        "com/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository$loadMovies$1",
        "Lcom/magoware/magoware/webtv/api/NetworkBoundResource;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;",
        "Lcom/magoware/magoware/webtv/api/ResponseObject;",
        "createCall",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/api/ApiResponse;",
        "loadFromDb",
        "saveCallResult",
        "",
        "item",
        "shouldFetch",
        "",
        "data",
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
.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;Ljava/lang/String;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
            ")V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository$loadMovies$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository$loadMovies$1;->$url:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/magoware/magoware/webtv/api/NetworkBoundResource;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V

    return-void
.end method


# virtual methods
.method protected createCall()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/api/ApiResponse<",
            "Lcom/magoware/magoware/webtv/api/ResponseObject<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;",
            ">;>;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository$loadMovies$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;->access$getRemoteSource$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;

    move-result-object v0

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository$loadMovies$1;->$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;->fetchData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method protected loadFromDb()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;",
            ">;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository$loadMovies$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;->access$getDao$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;->getHomeFeedMovies()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method protected saveCallResult(Lcom/magoware/magoware/webtv/api/ResponseObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/api/ResponseObject<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/api/ResponseObject;->getResponse_object()Ljava/util/List;

    move-result-object v0

    .line 21
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;

    invoke-virtual {v3, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;->setIdd(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository$loadMovies$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;

    invoke-static {v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;->access$getDao$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;->insertAll(Ljava/util/List;)V

    .line 25
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository$loadMovies$1;->this$0:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;->access$getMediaRepository$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;->saveVod(Lcom/magoware/magoware/webtv/api/ResponseObject;)V

    return-void
.end method

.method public bridge synthetic saveCallResult(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/magoware/magoware/webtv/api/ResponseObject;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository$loadMovies$1;->saveCallResult(Lcom/magoware/magoware/webtv/api/ResponseObject;)V

    return-void
.end method

.method public bridge synthetic shouldFetch(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository$loadMovies$1;->shouldFetch(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected shouldFetch(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovies;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
