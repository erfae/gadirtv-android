.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;
.super Ljava/lang/Object;
.source "HomeFeedMovieRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final appExecutorsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
            ">;"
        }
    .end annotation
.end field

.field private final daoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "daoProvider",
            "mediaRepositoryProvider",
            "remoteSourceProvider",
            "appExecutorsProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;->daoProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;->mediaRepositoryProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;->remoteSourceProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p4, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;->appExecutorsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "daoProvider",
            "mediaRepositoryProvider",
            "remoteSourceProvider",
            "appExecutorsProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
            ">;)",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dao",
            "mediaRepository",
            "remoteSource",
            "appExecutors"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;
    .locals 5

    .line 34
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;->daoProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;->mediaRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;->remoteSourceProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;

    iget-object v4, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;->appExecutorsProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesDao;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMoviesRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository_Factory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies/data/HomeFeedMovieRepository;

    move-result-object v0

    return-object v0
.end method
